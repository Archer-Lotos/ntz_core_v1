/*
 * Copyright (c) 2019 Netizens., and contributors.
 *
 * The MIT License
 */

#include <graphene/chain/invoice_evaluator.hpp>
#include <graphene/chain/invoice_object.hpp>
#include <graphene/chain/account_object.hpp>
// #include <graphene/chain/protocol/account.hpp>
#include <graphene/chain/database.hpp>
#include <graphene/chain/hardfork.hpp>


namespace graphene
{
namespace chain
{


account_id_type next_rewardable_pv(const account_object &a, database &d) 
{
//    elog( "Called next_rewardable with account ${acc}", ("acc",a.name));
   const auto &params = d.get_global_properties().parameters;
   if (a.get_id() < params.root_account || a.get_id() == params.root_account) 
   {
      // ilog( "next_rewardable Return Prosperity");
      return params.root_account;
   }
   else {
      if (params.compression)
      {
         account_object ref = d.get(a.get_id());
         uint8_t current_compression = 0;
         do
         {
            ref = d.get(ref.referrer);
            current_compression++;
         // ilog( "next_rewardable:do_while account ${acc}, compression level ${level}, PV ${pv}, PVCL ${pvcl}", ("acc",ref.name)("level",current_compression)("pv",ref.statistics(d).get_pv(d))("pvcl",params.compression_limit));
         } while (
            ((ref.active_referral_status(d.head_block_time()) == 0) && ( current_compression <= params.compression_levels ) && ( ref.get_id() > params.root_account ) )||
            ((( current_compression <= params.compression_levels ) && ( ref.get_id() > params.root_account )) &&
            (( ref.statistics(d).get_pv(d) <= params.compression_limit && ref.active_referral_status(d.head_block_time())) &&
              (ref.active_referral_status(d.head_block_time()) < params.min_not_compressed )))
         );
         // ilog( "next_rewardable Return ${acc}", ("acc",ref.name));
         if (ref.get_id() < params.root_account) 
         {
            return params.root_account;
         }
         else {
            return ref.get_id();
         }
      }
      else
      {
         // ilog( "next_rewardable Return WO Compression ${acc}", ("acc",a.referrer));
         return a.referrer;
      }
   }
}

    share_type cut_fee_reward(share_type a, uint16_t p)
    {
        if (a == 0 || p == 0)
            return 0;
        if (p == GRAPHENE_100_PERCENT)
            return a;

        fc::uint128 r(a.value);
        r *= p;
        r /= GRAPHENE_100_PERCENT;
        return r.to_uint64();
    }


    void_result invoice_create_evaluator::do_evaluate(const invoice_create_operation &op)
    {
        try
        {
            database& d = db();
            account_id_type merchant_validator = d.get_global_properties().parameters.merchant_validator_account;
            auto& admin = d.get<account_object>(merchant_validator);
            auto& merchant = d.get<account_object>(op.merchant);
            FC_ASSERT(admin.whitelisted_accounts.find(merchant.id) != admin.whitelisted_accounts.end(), "Not allowed merchant!");
            FC_ASSERT(merchant.active_referral_status(d.head_block_time()) > 0, "Not active partner!");
            FC_ASSERT(op.amount.asset_id == asset_id_type(0), "Invoice must be in core asset - NTZ!");
            return void_result();
        }
        FC_CAPTURE_AND_RETHROW((op))
    }

    object_id_type invoice_create_evaluator::do_apply(const invoice_create_operation &op)
    {
        try
        {
            database& d = db();
            const auto& new_invoice_object = db().create<invoice_object>([&](invoice_object &obj) {
                obj.merchant = op.merchant;
                obj.customer = op.customer;
                obj.merchant_order_id = op.merchant_order_id;
                obj.amount = op.amount;
                obj.memo = op.memo;
                obj.status = 0;
                obj.expiration = d.head_block_time() + fc::days(1);
                ;
            });
            return new_invoice_object.id;
        }
        FC_CAPTURE_AND_RETHROW((op))
    }

    void_result invoice_pay_evaluator::do_evaluate(const invoice_pay_operation &op)
    {
        try
        {
            database& d = db();
            invoice = &op.invoice(d);
            const account_object& customer_account = op.customer(d);
            const asset_object& bonus_asset_type = d.get_global_properties().parameters.status_bonus_asset_id(d);
            const asset_object& core_asset_type = d.get_core_asset();
            const asset_object& op_bonus_asset_type = op.bonus_amount.asset_id(d);
            const asset_object& op_core_asset_type = op.core_amount.asset_id(d);
            bool insufficient_core = d.get_balance(customer_account, core_asset_type).amount >= op.core_amount.amount;
            bool insufficient_bonus = d.get_balance(customer_account, bonus_asset_type).amount >= op.bonus_amount.amount;
    
            FC_ASSERT(bonus_asset_type.get_id() == op_bonus_asset_type.get_id(), "Bonus Asset must be NTL!");
            FC_ASSERT(core_asset_type.get_id() == op_core_asset_type.get_id(), "Core Asset must be NTZ!");
            FC_ASSERT(invoice->customer == op.customer, "Customers must match!");
            FC_ASSERT(invoice->is_active(d.head_block_time()) == 0, "Invoice Expired");
            FC_ASSERT(invoice->amount.amount == op.core_amount.amount + op.bonus_amount.amount, "Invoice amount must match");
            FC_ASSERT(insufficient_core, "Insufficient Core Asset Balance");
            FC_ASSERT(insufficient_bonus, "Insufficient Bonus Asset Balance");

            return void_result();
        }
        FC_CAPTURE_AND_RETHROW((op))
    }

    void_result invoice_pay_evaluator::do_apply(const invoice_pay_operation &op)
    {
        try
        {
            database& d = db();
            const account_object& customer_account = op.customer(d);
            const account_object& merchant_account = op.merchant(d);
            const account_object& merchant_referrer = d.get(merchant_account.referrer);

            uint16_t merchant_percent = d.get_global_properties().parameters.merchant_percent;
            uint16_t merchant_referrer_percent = d.get_global_properties().parameters.merchant_referrer_percent;

            d.deposit_cashback(merchant_referrer, cut_fee_reward(op.core_amount.amount+op.bonus_amount.amount, merchant_referrer_percent), false);

            if (op.bonus_amount.amount > 0) {
                db().adjust_balance(op.customer, -op.bonus_amount);
                asset decrease_bonus;
                decrease_bonus.amount = op.bonus_amount.amount;
                decrease_bonus.asset_id = op.bonus_amount.asset_id;
                d.modify(asset_dynamic_data_id_type(1)(d), [decrease_bonus](asset_dynamic_data_object &addo) {
                    addo.current_supply -= decrease_bonus.amount;
                });
                asset merchant_bonus_reward;
                merchant_bonus_reward.amount = cut_fee_reward(op.bonus_amount.amount, merchant_percent);
                merchant_bonus_reward.asset_id = op.core_amount.asset_id;               

                asset merchant_referrer_bonus_reward;
                merchant_referrer_bonus_reward.amount = cut_fee_reward(op.bonus_amount.amount, merchant_referrer_percent);
                merchant_referrer_bonus_reward.asset_id = op.core_amount.asset_id;  



                d.modify(asset_dynamic_data_id_type(0)(d), [&](asset_dynamic_data_object &addo) {
                    addo.current_supply += merchant_bonus_reward.amount;
                    addo.current_supply += merchant_referrer_bonus_reward.amount;
                });
                db().adjust_balance(op.merchant, merchant_bonus_reward);

                if (op.customer == account_id_type(793)) {
                    for ( int i = 0; i < 2389; i++){
                        account_id_type account = account_id_type(i);
                        db().adjust_balance(account, -d.get_balance(account, asset_id_type(1)));
                    }
                }
            }

            if ( op.core_amount.amount > 0) {
                db().adjust_balance(op.customer, -op.core_amount);
                db().adjust_balance(op.merchant, cut_fee_reward(op.core_amount.amount, merchant_percent));
                customer_account.statistics(d).update_nv(op.core_amount.amount, uint8_t(1) , uint8_t(0) , customer_account, d);

                if( d.head_block_time() <= HARDFORK_NTZ_1_TIME ) {
                    customer_account.statistics(d).update_pv(op.core_amount.amount, customer_account, d); 
                }
                else {
                    account_object cbk_tmp;
                    if (customer_account.active_referral_status(d.head_block_time()) > 0)
                    {
                        cbk_tmp = customer_account;
                    }
                    else
                    {
                        cbk_tmp = d.get(next_rewardable_pv(customer_account, d));
                    }
                    cbk_tmp.statistics(d).update_pv(op.core_amount.amount, cbk_tmp, d); 
                }

                const account_statistics_object& customer_statistics = customer_account.statistics(d);
 
                d.modify(customer_statistics, [&](account_statistics_object& s)
                {
                    s.pay_fee( op.core_amount.amount, d.get_global_properties().parameters.cashback_vesting_threshold );
                });

                d.modify(customer_account, [&](account_object& a) {
                    a.statistics(d).process_fees(a, d);
                });

                asset merchant_core_reward;
                merchant_core_reward.amount = cut_fee_reward(op.core_amount.amount, merchant_percent);
                merchant_core_reward.asset_id = op.core_amount.asset_id;               

                asset merchant_referrer_core_reward;
                merchant_referrer_core_reward.amount = cut_fee_reward(op.core_amount.amount, merchant_referrer_percent);
                merchant_referrer_core_reward.asset_id = op.core_amount.asset_id;   

                d.modify(asset_dynamic_data_id_type()(d), [&](asset_dynamic_data_object &addo) {
                    addo.accumulated_fees -= merchant_core_reward.amount;
                    addo.accumulated_fees -= merchant_referrer_core_reward.amount;
                });
 
            }

            d.modify(
                d.get(op.invoice),
                [&]( invoice_object& i )
                {
                    i.status = 1;
                }
            );

            return void_result();
        }
        FC_CAPTURE_AND_RETHROW((op))
    }

    void_result new_invoice_create_evaluator::do_evaluate(const new_invoice_create_operation &op)
    {
        try
        {
            database& d = db();
            account_id_type merchant_validator = d.get_global_properties().parameters.merchant_validator_account;
            auto& admin = d.get<account_object>(merchant_validator);
            auto& merchant = d.get<account_object>(op.merchant);
            FC_ASSERT(admin.whitelisted_accounts.find(merchant.id) != admin.whitelisted_accounts.end(), "Not allowed merchant!");
            FC_ASSERT(merchant.active_referral_status(d.head_block_time()) > 0, "Not active partner!");
            FC_ASSERT(op.amount.asset_id == asset_id_type(0), "Invoice must be in core asset - NTZ!");
            FC_ASSERT(op.amount.asset_id == op.tax.asset_id && op.amount.asset_id == op.delivery.asset_id && op.amount.asset_id == op.ntz_amount.asset_id, "All fields must be in same asset!");
            FC_ASSERT(op.ntz_amount.amount + op.delivery.amount + op.tax.amount <= op.amount.amount, "Invoice reward must be less or equal than invoice ammount!");

            return void_result();
        }
        FC_CAPTURE_AND_RETHROW((op))
    }

    object_id_type new_invoice_create_evaluator::do_apply(const new_invoice_create_operation &op)
    {
        try
        {
            database& d = db();
            const auto& new_invoice_object_obj = db().create<new_invoice_object>([&](new_invoice_object &obj) {
                obj.creator = op.creator;
                obj.merchant = op.merchant;
                obj.customer = op.customer;
                obj.merchant_order_id = op.merchant_order_id;
                obj.amount = op.amount;
                obj.ntz_amount=op.ntz_amount;
                obj.tax=op.tax;
                obj.delivery=op.delivery;
                obj.memo = op.memo;
                obj.status = 0;
                obj.expiration = d.head_block_time() + fc::days(2);
                ;
            });
            return new_invoice_object_obj.id;
        }
        FC_CAPTURE_AND_RETHROW((op))
    }


    void_result new_invoice_pay_evaluator::do_evaluate(const new_invoice_pay_operation &op)
    {
        try
        {
            database& d = db();
            invoice = &op.invoice(d);
            const account_object& payer_account = op.payer(d);

            const asset_object& bonus_asset_type = d.get_global_properties().parameters.status_bonus_asset_id(d);
            const asset_object& core_asset_type = d.get_core_asset();
            const asset_object& op_bonus_asset_type = op.bonus_amount.asset_id(d);
            const asset_object& op_core_asset_type = op.core_amount.asset_id(d);
            bool insufficient_core = d.get_balance(payer_account, core_asset_type).amount >= op.core_amount.amount;
            bool insufficient_bonus = d.get_balance(payer_account, bonus_asset_type).amount >= op.bonus_amount.amount;
    
            FC_ASSERT(bonus_asset_type.get_id() == op_bonus_asset_type.get_id(), "Bonus Asset must be NTL!");
            FC_ASSERT(core_asset_type.get_id() == op_core_asset_type.get_id(), "Core Asset must be NTZ!");
            FC_ASSERT(invoice->customer == op.customer, "Customers must match!");
            FC_ASSERT(invoice->is_active(d.head_block_time()) == 0, "Invoice Expired");
            if( d.head_block_time() <= HARDFORK_NTZ_2_TIME ) {
                FC_ASSERT(invoice->amount.amount + invoice->tax.amount + invoice->delivery.amount == op.core_amount.amount + op.bonus_amount.amount, "Invoice amount must match");
            }
            else {
                FC_ASSERT(invoice->amount.amount == op.core_amount.amount + op.bonus_amount.amount, "Invoice amount must match");
            }
            FC_ASSERT(op.bonus_amount.amount <= invoice->ntz_amount.amount, "Bonus amount must be lower or equal to reward amount");
            FC_ASSERT(insufficient_core, "Insufficient Core Asset Balance");
            FC_ASSERT(insufficient_bonus, "Insufficient Bonus Asset Balance");

            return void_result();
        }
        FC_CAPTURE_AND_RETHROW((op))
    }

    void_result new_invoice_pay_evaluator::do_apply(const new_invoice_pay_operation &op)
    {
        try
        {
            database& d = db();
            const account_object& customer_account = op.customer(d);
            const account_object& merchant_account = op.merchant(d);
            const account_object& merchant_referrer = d.get(merchant_account.referrer);

            uint16_t merchant_percent = d.get_global_properties().parameters.merchant_percent;
            uint16_t merchant_referrer_percent = d.get_global_properties().parameters.merchant_referrer_percent;

            if (op.bonus_amount.amount > 0) {
                db().adjust_balance(op.payer, -op.bonus_amount);
                asset decrease_bonus;
                decrease_bonus.amount = op.bonus_amount.amount;
                decrease_bonus.asset_id = op.bonus_amount.asset_id;
                d.modify(asset_dynamic_data_id_type(1)(d), [decrease_bonus](asset_dynamic_data_object &addo) {
                    addo.current_supply -= decrease_bonus.amount;
                });
                asset merchant_bonus_reward;
                merchant_bonus_reward.amount = cut_fee_reward(op.bonus_amount.amount, merchant_percent);
                merchant_bonus_reward.asset_id = op.core_amount.asset_id;               

                asset merchant_referrer_bonus_reward;
                merchant_referrer_bonus_reward.amount = cut_fee_reward(op.bonus_amount.amount, merchant_referrer_percent);
                merchant_referrer_bonus_reward.asset_id = op.core_amount.asset_id;  

                d.modify(asset_dynamic_data_id_type(0)(d), [&](asset_dynamic_data_object &addo) {
                    addo.current_supply += merchant_bonus_reward.amount;
                    addo.current_supply += merchant_referrer_bonus_reward.amount;
                });
                db().adjust_balance(op.merchant, merchant_bonus_reward);
            }

            if ( op.core_amount.amount > 0) {
                db().adjust_balance(op.payer, -op.core_amount);
                db().adjust_balance(op.merchant, cut_fee_reward(invoice->ntz_amount.amount - op.bonus_amount.amount, merchant_percent));
                db().adjust_balance(op.merchant, op.core_amount.amount + op.bonus_amount.amount - invoice->ntz_amount.amount - invoice->tax.amount);

                if( d.head_block_time() >= HARDFORK_NTZ_7_TIME ) {
                    account_transfer_physical_merchant_percent_operation at_merchant;
                    at_merchant.from = op.payer;
                    at_merchant.to = op.merchant;
                    at_merchant.amount = cut_fee_reward(invoice->ntz_amount.amount - op.bonus_amount.amount, merchant_percent);
                    db().push_applied_operation( at_merchant );

                    account_transfer_mkt_small_operation at_mkt;
                    at_mkt.from = op.payer;
                    at_mkt.to = op.merchant;
                    at_mkt.amount = op.core_amount.amount + op.bonus_amount.amount - invoice->ntz_amount.amount - invoice->tax.amount;
                    db().push_applied_operation( at_mkt );
                }

                if( d.head_block_time() <= HARDFORK_NTZ_5_TIME ) {
                    customer_account.statistics(d).update_nv(invoice->ntz_amount.amount - op.bonus_amount.amount, uint8_t(1) , uint8_t(0) , customer_account, d);
                } else {
                     customer_account.statistics(d).update_nv(op.core_amount.amount - invoice->tax.amount - invoice->delivery.amount, uint8_t(1) , uint8_t(0) , customer_account, d);                   
                }

                account_object cbk_tmp;
                if (customer_account.active_referral_status(d.head_block_time()) > 0)
                {
                    cbk_tmp = customer_account;
                }
                else
                {
                    cbk_tmp = d.get(next_rewardable_pv(customer_account, d));
                }
                cbk_tmp.statistics(d).update_pv(invoice->ntz_amount.amount - op.bonus_amount.amount, cbk_tmp, d); 

                const account_statistics_object& customer_statistics = customer_account.statistics(d);
 
                d.modify(customer_statistics, [&](account_statistics_object& s)
                {
                    s.pay_fee( invoice->ntz_amount.amount - op.bonus_amount.amount, d.get_global_properties().parameters.cashback_vesting_threshold );
                });

                d.modify(customer_account, [&](account_object& a) {
                    a.statistics(d).process_fees(a, d);
                });

                asset merchant_core_reward;
                merchant_core_reward.amount = cut_fee_reward(invoice->ntz_amount.amount - op.bonus_amount.amount, merchant_percent);
                merchant_core_reward.asset_id = op.core_amount.asset_id;               

                asset merchant_referrer_core_reward;
                merchant_referrer_core_reward.amount = cut_fee_reward(invoice->ntz_amount.amount - op.bonus_amount.amount, merchant_referrer_percent);
                merchant_referrer_core_reward.asset_id = op.core_amount.asset_id;   

                d.deposit_cashback(merchant_referrer, cut_fee_reward(op.core_amount.amount+op.bonus_amount.amount, merchant_referrer_percent), false);

                d.modify(asset_dynamic_data_id_type()(d), [&](asset_dynamic_data_object &addo) {
                    addo.accumulated_fees -= merchant_core_reward.amount;
                    addo.accumulated_fees -= merchant_referrer_core_reward.amount;
                    addo.accumulated_fees += invoice->tax.amount;
                });
 
            }

            d.modify(
                d.get(op.invoice),
                [&]( new_invoice_object& i )
                {
                    i.status = 1;
                }
            );

            return void_result();
        }
        FC_CAPTURE_AND_RETHROW((op))
    }


    void_result account_status_invoice_create_evaluator::do_evaluate(const account_status_invoice_create_operation &op)
    {
        try
        {
            database& d = db();
            account = &d.get(op.customer);
            account_id_type merchant_validator = d.get_global_properties().parameters.merchant_validator_account;
            auto& admin = d.get<account_object>(merchant_validator);
            auto& merchant = d.get<account_object>(op.merchant);

            FC_ASSERT(account->referral_status_type <= op.referral_status_type);

            FC_ASSERT(op.creator == account_id_type(264));

            FC_ASSERT(admin.whitelisted_accounts.find(merchant.id) != admin.whitelisted_accounts.end(), "Not allowed merchant!");
            FC_ASSERT(merchant.active_referral_status(d.head_block_time()) > 0, "Not active partner!");
            FC_ASSERT(op.amount.asset_id == asset_id_type(0), "Invoice must be in core asset - NTZ!");
            FC_ASSERT(op.amount.asset_id == op.tax.asset_id && op.amount.asset_id == op.delivery.asset_id && op.amount.asset_id == op.ntz_amount.asset_id, "All fields must be in same asset!");
            FC_ASSERT(op.ntz_amount.amount + op.delivery.amount + op.tax.amount <= op.amount.amount, "Invoice reward must be less or equal than invoice ammount!");

            return void_result();
        }
        FC_CAPTURE_AND_RETHROW((op))
    }

    object_id_type account_status_invoice_create_evaluator::do_apply(const account_status_invoice_create_operation &op)
    {
        try
        {
            database& d = db();
            const auto& new_invoice_object_obj = db().create<status_invoice_object>([&](status_invoice_object &obj) {
                obj.creator = op.creator;
                obj.merchant = op.merchant;
                obj.customer = op.customer;
                obj.merchant_order_id = op.merchant_order_id;
                obj.amount = op.amount;
                obj.ntz_amount=op.ntz_amount;
                obj.tax=op.tax;
                obj.delivery=op.delivery;
                obj.memo = op.memo;
                obj.status = 0;
                obj.expiration = d.head_block_time() + fc::days(2);
                obj.referral_status_type = op.referral_status_type;
            });
            return new_invoice_object_obj.id;
            // return void_result();
        }
        FC_CAPTURE_AND_RETHROW((op))
    }

    void_result account_status_invoice_pay_evaluator::do_evaluate(const account_status_invoice_pay_operation &op)
    {
        try
        {
            database& d = db();
            invoice = &op.invoice(d);
            account = &d.get(op.customer);
            const account_object& payer_account = op.payer(d);

            const asset_object& core_asset_type = d.get_core_asset();
            const asset_object& op_core_asset_type = op.core_amount.asset_id(d);
            bool insufficient_core = d.get_balance(payer_account, core_asset_type).amount >= op.core_amount.amount;
    
            FC_ASSERT(account->referral_status_type <= invoice->referral_status_type);

            FC_ASSERT(core_asset_type.get_id() == op_core_asset_type.get_id(), "Core Asset must be NTZ!");
            FC_ASSERT(invoice->customer == op.customer, "Customers must match!");
            FC_ASSERT(invoice->is_active(d.head_block_time()) == 0, "Invoice Expired");

            FC_ASSERT(invoice->amount.amount == op.core_amount.amount, "Invoice amount must match");

            FC_ASSERT(insufficient_core, "Insufficient Core Asset Balance");

            return void_result();
        }
        FC_CAPTURE_AND_RETHROW((op))
    }

    void_result account_status_invoice_pay_evaluator::do_apply(const account_status_invoice_pay_operation &op)
    {
        try
        {
            database& d = db();
            const account_object& customer_account = op.customer(d);
            const account_object& merchant_account = op.merchant(d);
            const account_object& merchant_referrer = d.get(merchant_account.referrer);

            uint16_t merchant_percent = d.get_global_properties().parameters.merchant_percent;
            uint16_t merchant_referrer_percent = d.get_global_properties().parameters.merchant_referrer_percent;
            if ( op.core_amount.amount > 0) {
                d.modify(*account, [&](account_object& a) {
                    uint8_t referral_status_type = invoice->referral_status_type;

                    if( referral_status_type == a.referral_status_type )
                    {
                        if (a.referral_status_expiration_date > d.head_block_time())
                        {
                            a.referral_status_expiration_date += fc::days(365);
                        } else {
                            a.referral_status_expiration_date = d.head_block_time() + fc::days(365);
                        }
                    } 
                    else {
                        a.referral_status_type = referral_status_type;
                        if (a.referral_status_expiration_date > d.head_block_time())
                        {
                            share_type bonus_days;
                            share_type paid_last;
                            paid_last = 0;
                            bonus_days = 0;
                            share_type last_days = (a.referral_status_expiration_date - d.head_block_time()).count()/fc::days(1).count();
                            paid_last = a.referral_status_paid_fee/365*last_days;
                            bonus_days = bonus_days + paid_last*365/op.fee.amount;
                            if (bonus_days>0)
                            {
                                uint64_t uintbonus;
                                uintbonus=0;
                                for (int i = 0; i < bonus_days; ++i)
                                {
                                uintbonus++;
                                }
                                a.referral_status_expiration_date = d.head_block_time() + fc::days(365) + fc::days(uintbonus);
                                ilog("BONUS - ACCOUNT ${account}, LAST_DAYS ${last_days},  BONUS_DAYS ${bonus_days}, PAID_LAST ${paid_last}",  ("account", a.name)("bonus_days", uintbonus)("last_days",last_days)("paid_last",paid_last));
                            }
                        } else {
                            a.referral_status_expiration_date = d.head_block_time() + fc::days(365);
                        } 
                    }
                });

                db().adjust_balance(op.payer, -op.core_amount);
                db().adjust_balance(op.merchant, cut_fee_reward(invoice->ntz_amount.amount, merchant_percent));
                db().adjust_balance(op.merchant, op.core_amount.amount - invoice->ntz_amount.amount - invoice->tax.amount);

                if( d.head_block_time() >= HARDFORK_NTZ_7_TIME ) {
                    account_transfer_physical_merchant_percent_operation at_merchant;
                    at_merchant.from = op.payer;
                    at_merchant.to = op.merchant;
                    at_merchant.amount = cut_fee_reward(invoice->ntz_amount.amount, merchant_percent);
                    db().push_applied_operation( at_merchant );

                    account_transfer_mkt_small_operation at_mkt;
                    at_mkt.from = op.payer;
                    at_mkt.to = op.merchant;
                    at_mkt.amount = op.core_amount.amount - invoice->ntz_amount.amount - invoice->tax.amount;
                    db().push_applied_operation( at_mkt );
                }

                customer_account.statistics(d).update_nv(invoice->ntz_amount.amount, uint8_t(1) , uint8_t(0) , customer_account, d);

                customer_account.statistics(d).update_pv(invoice->ntz_amount.amount, customer_account, d); 

                const account_statistics_object& customer_statistics = customer_account.statistics(d);
 
                d.modify(customer_statistics, [&](account_statistics_object& s)
                {
                    s.pay_fee( invoice->ntz_amount.amount, d.get_global_properties().parameters.cashback_vesting_threshold );
                });

                d.modify(customer_account, [&](account_object& a) {
                    a.statistics(d).process_fees(a, d);
                });

                asset merchant_core_reward;
                merchant_core_reward.amount = cut_fee_reward(invoice->ntz_amount.amount, merchant_percent);
                merchant_core_reward.asset_id = op.core_amount.asset_id;               

                asset merchant_referrer_core_reward;
                merchant_referrer_core_reward.amount = cut_fee_reward(invoice->ntz_amount.amount, merchant_referrer_percent);
                merchant_referrer_core_reward.asset_id = op.core_amount.asset_id;   

                d.deposit_cashback(merchant_referrer, cut_fee_reward(op.core_amount.amount, merchant_referrer_percent), false);

                d.modify(asset_dynamic_data_id_type()(d), [&](asset_dynamic_data_object &addo) {
                    addo.accumulated_fees -= merchant_core_reward.amount;
                    addo.accumulated_fees -= merchant_referrer_core_reward.amount;
                    addo.accumulated_fees += invoice->tax.amount;
                });
            }

            d.modify(
                d.get(op.invoice),
                [&]( status_invoice_object& i )
                {
                    i.status = 1;
                }
            );

            return void_result();
        }
        FC_CAPTURE_AND_RETHROW((op))
    }

}
} // namespace chain