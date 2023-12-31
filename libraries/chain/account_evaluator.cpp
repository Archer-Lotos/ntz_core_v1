/*
 * Copyright (c) 2015 Cryptonomex, Inc., and contributors.
 *
 * The MIT License
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 */

#include <graphene/chain/account_evaluator.hpp>
#include <graphene/chain/buyback.hpp>
#include <graphene/chain/buyback_object.hpp>
#include <graphene/chain/database.hpp>
#include <graphene/chain/committee_member_object.hpp>
#include <graphene/chain/exceptions.hpp>
#include <graphene/chain/hardfork.hpp>
#include <graphene/chain/internal_exceptions.hpp>
#include <graphene/chain/special_authority.hpp>
#include <graphene/chain/special_authority_object.hpp>
#include <graphene/chain/witness_object.hpp>
#include <graphene/chain/worker_object.hpp>

#include <algorithm>

namespace graphene { namespace chain {

void verify_authority_accounts( const database& db, const authority& a )
{
   const auto& chain_params = db.get_global_properties().parameters;
   GRAPHENE_ASSERT(
      a.num_auths() <= chain_params.maximum_authority_membership,
      internal_verify_auth_max_auth_exceeded,
      "Maximum authority membership exceeded" );
   for( const auto& acnt : a.account_auths )
   {
      GRAPHENE_ASSERT( db.find_object( acnt.first ) != nullptr,
         internal_verify_auth_account_not_found,
         "Account ${a} specified in authority does not exist",
         ("a", acnt.first) );
   }
}

void verify_account_votes( const database& db, const account_options& options )
{
   // ensure account's votes satisfy requirements
   // NB only the part of vote checking that requires chain state is here,
   // the rest occurs in account_options::validate()

   const auto& gpo = db.get_global_properties();
   const auto& chain_params = gpo.parameters;

   FC_ASSERT( options.num_witness <= chain_params.maximum_witness_count,
              "Voted for more witnesses than currently allowed (${c})", ("c", chain_params.maximum_witness_count) );
   FC_ASSERT( options.num_committee <= chain_params.maximum_committee_count,
              "Voted for more committee members than currently allowed (${c})", ("c", chain_params.maximum_committee_count) );

   FC_ASSERT( db.find_object(options.voting_account), "Invalid proxy account specified." );

   uint32_t max_vote_id = gpo.next_available_vote_id;
   bool has_worker_votes = false;
   for( auto id : options.votes )
   {
      FC_ASSERT( id < max_vote_id, "Can not vote for ${id} which does not exist.", ("id",id) );
      has_worker_votes |= (id.type() == vote_id_type::worker);
   }

   if( has_worker_votes && (db.head_block_time() >= HARDFORK_607_TIME) )
   {
      const auto& against_worker_idx = db.get_index_type<worker_index>().indices().get<by_vote_against>();
      for( auto id : options.votes )
      {
         if( id.type() == vote_id_type::worker )
         {
            FC_ASSERT( against_worker_idx.find( id ) == against_worker_idx.end(),
                       "Can no longer vote against a worker." );
         }
      }
   }
   if ( db.head_block_time() >= HARDFORK_CORE_143_TIME ) {
      const auto& approve_worker_idx = db.get_index_type<worker_index>().indices().get<by_vote_for>();
      const auto& committee_idx = db.get_index_type<committee_member_index>().indices().get<by_vote_id>();
      const auto& witness_idx = db.get_index_type<witness_index>().indices().get<by_vote_id>();
      for ( auto id : options.votes ) {
         switch ( id.type() ) {
            case vote_id_type::committee:
               FC_ASSERT( committee_idx.find(id) != committee_idx.end(),
                          "Can not vote for ${id} which does not exist.", ("id",id) );
               break;
            case vote_id_type::witness:
               FC_ASSERT( witness_idx.find(id) != witness_idx.end(),
                          "Can not vote for ${id} which does not exist.", ("id",id) );
               break;
            case vote_id_type::worker:
               FC_ASSERT( approve_worker_idx.find( id ) != approve_worker_idx.end(),
                          "Can not vote for ${id} which does not exist.", ("id",id) );
               break;
            default:
               FC_THROW( "Invalid Vote Type: ${id}", ("id", id) );
               break;
         }
      }
   }
}

void_result account_create_evaluator::do_evaluate( const account_create_operation& op )
{ try {
   database& d = db();
   const auto& params = d.get_global_properties().parameters;

   FC_ASSERT( fee_paying_account->is_lifetime_member(), "Only Lifetime members may register an account." );
   if (op.referrer(d).get_id() > params.root_account && params.alllow_non_partner_register == false)
      FC_ASSERT( op.referrer(d).active_referral_status(d.head_block_time()),"Referrer account must be a Partner with active status.");
   try
   {
      verify_authority_accounts( d, op.owner );
      verify_authority_accounts( d, op.active );
   }
   GRAPHENE_RECODE_EXC( internal_verify_auth_max_auth_exceeded, account_create_max_auth_exceeded )
   GRAPHENE_RECODE_EXC( internal_verify_auth_account_not_found, account_create_auth_account_not_found )

   if( op.extensions.value.owner_special_authority.valid() )
      evaluate_special_authority( d, *op.extensions.value.owner_special_authority );
   if( op.extensions.value.active_special_authority.valid() )
      evaluate_special_authority( d, *op.extensions.value.active_special_authority );
   if( op.extensions.value.buyback_options.valid() )
      evaluate_buyback_account_options( d, *op.extensions.value.buyback_options );
   verify_account_votes( d, op.options );

   auto& acnt_indx = d.get_index_type<account_index>();
   if( op.name.size() )
   {
      auto current_account_itr = acnt_indx.indices().get<by_name>().find( op.name );
      FC_ASSERT( current_account_itr == acnt_indx.indices().get<by_name>().end(),
                 "Account '${a}' already exists.", ("a",op.name) );
   }

   return void_result();
} FC_CAPTURE_AND_RETHROW( (op) ) }

object_id_type account_create_evaluator::do_apply( const account_create_operation& o )
{ try {

   database& d = db();
   uint16_t referrer_percent = o.referrer_percent;
   bool has_small_percent = (
         (db().head_block_time() <= HARDFORK_453_TIME)
      && (o.referrer != o.registrar  )
      && (o.referrer_percent != 0    )
      && (o.referrer_percent <= 0x100)
      );

   if( has_small_percent )
   {
      if( referrer_percent >= 100 )
      {
         wlog( "between 100% and 0x100%:  ${o}", ("o", o) );
      }
      referrer_percent = referrer_percent*100;
      if( referrer_percent > GRAPHENE_100_PERCENT )
         referrer_percent = GRAPHENE_100_PERCENT;
   }

   const auto& global_properties = d.get_global_properties();

   const auto& new_acnt_object = d.create<account_object>( [&o,&d,&global_properties,referrer_percent]( account_object& obj )
   {
         obj.registrar = o.registrar;
         obj.referrer = o.referrer;
         obj.lifetime_referrer = o.referrer(d).lifetime_referrer;

         const auto& params = global_properties.parameters;
         obj.network_fee_percentage = params.network_percent_of_fee;
         obj.lifetime_referrer_fee_percentage = params.lifetime_referrer_percent_of_fee;
         obj.referrer_rewards_percentage = referrer_percent;

         obj.name             = o.name;
         obj.owner            = o.owner;
         obj.active           = o.active;
         obj.options          = o.options;
         obj.statistics = d.create<account_statistics_object>([&obj](account_statistics_object& s){
                             s.owner = obj.id;
                             s.name = obj.name;
                             s.is_voting = obj.options.is_voting();
                          }).id;
         // Network model parameters
         obj.status_denominator = params.status_denominator_00;
         obj.referral_levels = params.status_levels_00;
         // --
         if( o.extensions.value.owner_special_authority.valid() )
            obj.owner_special_authority = *(o.extensions.value.owner_special_authority);
         if( o.extensions.value.active_special_authority.valid() )
            obj.active_special_authority = *(o.extensions.value.active_special_authority);
         if( o.extensions.value.buyback_options.valid() )
         {
            obj.allowed_assets = o.extensions.value.buyback_options->markets;
            obj.allowed_assets->emplace( o.extensions.value.buyback_options->asset_to_buy );
         }
   });

   /*
   if( has_small_percent )
   {
      wlog( "Account affected by #453 registered in block ${n}:  ${na} reg=${reg} ref=${ref}:${refp} ltr=${ltr}:${ltrp}",
         ("n", db().head_block_num()) ("na", new_acnt_object.id)
         ("reg", o.registrar) ("ref", o.referrer) ("ltr", new_acnt_object.lifetime_referrer)
         ("refp", new_acnt_object.referrer_rewards_percentage) ("ltrp", new_acnt_object.lifetime_referrer_fee_percentage) );
      wlog( "Affected account object is ${o}", ("o", new_acnt_object) );
   }
   */

   const auto& dynamic_properties = d.get_dynamic_global_properties();
   d.modify(dynamic_properties, [](dynamic_global_property_object& p) {
      ++p.accounts_registered_this_interval;
   });

   if( dynamic_properties.accounts_registered_this_interval % global_properties.parameters.accounts_per_fee_scale == 0
         && global_properties.parameters.account_fee_scale_bitshifts != 0 )
   {
      d.modify(global_properties, [](global_property_object& p) {
         p.parameters.current_fees->get<account_create_operation>().basic_fee <<= p.parameters.account_fee_scale_bitshifts;
      });
   }

   if(    o.extensions.value.owner_special_authority.valid()
       || o.extensions.value.active_special_authority.valid() )
   {
      db().create< special_authority_object >( [&]( special_authority_object& sa )
      {
         sa.account = new_acnt_object.id;
      } );
   }

   if( o.extensions.value.buyback_options.valid() )
   {
      asset_id_type asset_to_buy = o.extensions.value.buyback_options->asset_to_buy;

      d.create< buyback_object >( [&]( buyback_object& bo )
      {
         bo.asset_to_buy = asset_to_buy;
      } );

      d.modify( asset_to_buy(d), [&]( asset_object& a )
      {
         a.buyback_account = new_acnt_object.id;
      } );
   }

   return new_acnt_object.id;
} FC_CAPTURE_AND_RETHROW((o)) }


void_result account_update_evaluator::do_evaluate( const account_update_operation& o )
{ try {
   database& d = db();
   if( d.head_block_time() < HARDFORK_516_TIME )
   {
      FC_ASSERT( !o.extensions.value.owner_special_authority.valid() );
      FC_ASSERT( !o.extensions.value.active_special_authority.valid() );
   }
   if( d.head_block_time() < HARDFORK_599_TIME )
   {
      FC_ASSERT( !o.extensions.value.null_ext.valid() );
      FC_ASSERT( !o.extensions.value.owner_special_authority.valid() );
      FC_ASSERT( !o.extensions.value.active_special_authority.valid() );
   }

   try
   {
      if( o.owner )  verify_authority_accounts( d, *o.owner );
      if( o.active ) verify_authority_accounts( d, *o.active );
   }
   GRAPHENE_RECODE_EXC( internal_verify_auth_max_auth_exceeded, account_update_max_auth_exceeded )
   GRAPHENE_RECODE_EXC( internal_verify_auth_account_not_found, account_update_auth_account_not_found )

   if( o.extensions.value.owner_special_authority.valid() )
      evaluate_special_authority( d, *o.extensions.value.owner_special_authority );
   if( o.extensions.value.active_special_authority.valid() )
      evaluate_special_authority( d, *o.extensions.value.active_special_authority );

   acnt = &o.account(d);

   if( o.new_options.valid() )
      verify_account_votes( d, *o.new_options );

   return void_result();
} FC_CAPTURE_AND_RETHROW( (o) ) }

void_result account_update_evaluator::do_apply( const account_update_operation& o )
{ try {
   database& d = db();

   bool sa_before = acnt->has_special_authority();

   // update account statistics
   if( o.new_options.valid() )
   {
      d.modify( acnt->statistics( d ), [&]( account_statistics_object& aso )
      {
         if(o.new_options->is_voting() != acnt->options.is_voting())
            aso.is_voting = !aso.is_voting;

         if((o.new_options->votes != acnt->options.votes ||
               o.new_options->voting_account != acnt->options.voting_account))
            aso.last_vote_time = d.head_block_time();
      } );
   }

   // update account object
   d.modify( *acnt, [&o](account_object& a){
      if( o.owner )
      {
         a.owner = *o.owner;
         a.top_n_control_flags = 0;
      }
      if( o.active )
      {
         a.active = *o.active;
         a.top_n_control_flags = 0;
      }
      if( o.new_options ) a.options = *o.new_options;
      if( o.extensions.value.owner_special_authority.valid() )
      {
         a.owner_special_authority = *(o.extensions.value.owner_special_authority);
         a.top_n_control_flags = 0;
      }
      if( o.extensions.value.active_special_authority.valid() )
      {
         a.active_special_authority = *(o.extensions.value.active_special_authority);
         a.top_n_control_flags = 0;
      }
   });

   bool sa_after = acnt->has_special_authority();

   if( sa_before && (!sa_after) )
   {
      const auto& sa_idx = d.get_index_type< special_authority_index >().indices().get<by_account>();
      auto sa_it = sa_idx.find( o.account );
      assert( sa_it != sa_idx.end() );
      d.remove( *sa_it );
   }
   else if( (!sa_before) && sa_after )
   {
      d.create< special_authority_object >( [&]( special_authority_object& sa )
      {
         sa.account = o.account;
      } );
   }

   return void_result();
} FC_CAPTURE_AND_RETHROW( (o) ) }

void_result account_whitelist_evaluator::do_evaluate(const account_whitelist_operation& o)
{ try {
   database& d = db();

   listed_account = &o.account_to_list(d);
   if( !d.get_global_properties().parameters.allow_non_member_whitelists )
      FC_ASSERT( o.authorizing_account(d).is_lifetime_member(), "The authorizing account must be a lifetime member." );

   return void_result();
} FC_CAPTURE_AND_RETHROW( (o) ) }

void_result account_whitelist_evaluator::do_apply(const account_whitelist_operation& o)
{ try {
   database& d = db();

   d.modify(*listed_account, [&o](account_object& a) {
      if( o.new_listing & o.white_listed )
         a.whitelisting_accounts.insert(o.authorizing_account);
      else
         a.whitelisting_accounts.erase(o.authorizing_account);

      if( o.new_listing & o.black_listed )
         a.blacklisting_accounts.insert(o.authorizing_account);
      else
         a.blacklisting_accounts.erase(o.authorizing_account);
   });

   /** for tracking purposes only, this state is not needed to evaluate */
   d.modify( o.authorizing_account(d), [&]( account_object& a ) {
     if( o.new_listing & o.white_listed )
        a.whitelisted_accounts.insert( o.account_to_list );
     else
        a.whitelisted_accounts.erase( o.account_to_list );

     if( o.new_listing & o.black_listed )
        a.blacklisted_accounts.insert( o.account_to_list );
     else
        a.blacklisted_accounts.erase( o.account_to_list );
   });

   return void_result();
} FC_CAPTURE_AND_RETHROW( (o) ) }

void_result account_upgrade_evaluator::do_evaluate(const account_upgrade_evaluator::operation_type& o)
{ try {
   database& d = db();

   account = &d.get(o.account_to_upgrade);
   FC_ASSERT(!account->is_lifetime_member());

   return {};
//} FC_CAPTURE_AND_RETHROW( (o) ) }
} FC_RETHROW_EXCEPTIONS( error, "Unable to upgrade account '${a}'", ("a",o.account_to_upgrade(db()).name) ) }

void_result account_upgrade_evaluator::do_apply(const account_upgrade_evaluator::operation_type& o)
{ try {
   database& d = db();

   d.modify(*account, [&](account_object& a) {
      if( o.upgrade_to_lifetime_member )
      {
         // Upgrade to lifetime member. I don't care what the account was before.
         a.statistics(d).process_fees(a, d);
         a.membership_expiration_date = time_point_sec::maximum();
         a.lifetime_referrer_fee_percentage = GRAPHENE_100_PERCENT - a.network_fee_percentage;
      } else if( a.is_annual_member(d.head_block_time()) ) {
         // Renew an annual subscription that's still in effect.
         FC_ASSERT( d.head_block_time() <= HARDFORK_613_TIME );
         FC_ASSERT(a.membership_expiration_date - d.head_block_time() < fc::days(3650),
                   "May not extend annual membership more than a decade into the future.");
         a.membership_expiration_date += fc::days(365);
      } else {
         // Upgrade from basic account.
         FC_ASSERT( d.head_block_time() <= HARDFORK_613_TIME );
         a.statistics(d).process_fees(a, d);
         assert(a.is_basic_account(d.head_block_time()));
         a.referrer = a.get_id();
         a.membership_expiration_date = d.head_block_time() + fc::days(365);
      }
   });

   return {};
} FC_RETHROW_EXCEPTIONS( error, "Unable to upgrade account '${a}'", ("a",o.account_to_upgrade(db()).name) ) }

void_result account_status_upgrade_evaluator::do_evaluate(const account_status_upgrade_evaluator::operation_type& o)
{ try {
   database& d = db();

   account = &d.get(o.account_to_upgrade);
   FC_ASSERT(account->referral_status_type <= o.referral_status_type);
   if( d.head_block_time() > HARDFORK_NTZ_1_TIME ) {
      const account_object& ref_01 = d.get(account->referrer);
      fee_paying_account_statistics = &ref_01.statistics(d);
      // elog( "Called account_status_upgrade_evaluator fee_reciever with ref ${ref}", ("ref",ref_01.name));
   }
   return {};
} FC_RETHROW_EXCEPTIONS( error, "Unable to downgrade account status '${a}'", ("a",o.account_to_upgrade(db()).name) ) }


void_result account_status_upgrade_evaluator::do_apply(const account_status_upgrade_evaluator::operation_type& o)
{ try {
   database& d = db();
   const account_object& ref_01 = d.get(account->referrer);
   const share_type fee_value = o.fee.amount; 
   // elog( "Called account_status_upgrade for account =${acc}= and status ${stat}, ref_01 ${ref}!", ("acc",account->name)("stat",o.referral_status_type)("ref",ref_01.name));
   ref_01.statistics(d).update_pv(fee_value, ref_01, d);
   ref_01.statistics(d).update_nv(fee_value, uint8_t(1) , uint8_t(0) , ref_01, d);

   d.modify(ref_01, [&](account_object& a) {
      a.statistics(d).process_fees(a, d);
   });

   d.modify(*account, [&](account_object& a) {
      a.statistics(d).process_fees(a, d);

      share_type last_days = (a.referral_status_expiration_date - d.head_block_time()).count()/fc::days(1).count();

      if( o.referral_status_type == a.referral_status_type && a.referral_status_expiration_date > d.head_block_time())
      {
         a.referral_status_expiration_date += fc::days(365);
         elog( "Called next_rewardable PROLONGATION with account ${acc}", ("acc",a.name));

      } 
      else {
         share_type bonus_days;
         share_type paid_last;
         paid_last = 0;
         bonus_days = 0;
         if (a.referral_status_expiration_date > d.head_block_time()) {
            paid_last = a.referral_status_paid_fee/365*last_days;
            bonus_days = bonus_days + paid_last*365/fee_value;
         }
         a.referral_status_type = o.referral_status_type;
         a.referral_status_expiration_date = d.head_block_time() + fc::days(365);

         if (bonus_days>0)
         {
            uint64_t uintbonus;
            uintbonus=0;
            for (int i = 0; i < bonus_days; ++i)
            {
               uintbonus++;
            }
            a.referral_status_expiration_date = a.referral_status_expiration_date + fc::days(uintbonus);
         //  ilog("BONUS - ACCOUNT ${account}, LAST_DAYS ${last_days},  BONUS_DAYS ${bonus_days}, PAID_LAST ${paid_last}",  ("account", a.name)("bonus_days", uintbonus)("last_days",last_days)("paid_last",paid_last));

         }
      }
      a.referral_status_paid_fee = fee_value;
      const auto& chain_params = d.get_global_properties().parameters;

      if (o.referral_status_type == 1) {
         a.referral_levels = chain_params.status_levels_01;
         a.status_denominator = chain_params.status_denominator_01;
      }
      if (o.referral_status_type == 2) {
         a.referral_levels = chain_params.status_levels_02;
         a.status_denominator = chain_params.status_denominator_02;
      }
      if (o.referral_status_type == 3) {
         a.referral_levels = chain_params.status_levels_03;
         a.status_denominator = chain_params.status_denominator_03;
      }
      if( d.head_block_time() <= HARDFORK_NTZ_4_TIME ) {
         if (chain_params.status_bonus) {
            asset bonus;
            bonus.asset_id = chain_params.status_bonus_asset_id;

            if (o.referral_status_type == 1) {
               bonus.amount = chain_params.status_bonus_reward_01;
            }
            if (o.referral_status_type == 2) {
               bonus.amount = chain_params.status_bonus_reward_02;
            }
            if (o.referral_status_type == 3) {
               bonus.amount = chain_params.status_bonus_reward_03;
            }

            db().adjust_balance( o.account_to_upgrade, bonus );
            d.modify(asset_dynamic_data_id_type(1)(d), [bonus](asset_dynamic_data_object &addo) {
               addo.current_supply += bonus.amount;
            });
         }
      }
      if( d.head_block_time() > HARDFORK_NTZ_1_TIME ) {
         const account_object& user_account = o.account_to_upgrade(d);
         const share_type start_pv = (GRAPHENE_BLOCKCHAIN_PRECISION * int64_t(1));
         user_account.statistics(d).update_pv(start_pv, user_account, d);
      }
   });
   return {};
} FC_RETHROW_EXCEPTIONS( error, "Unable to upgrade account status '${a}'", ("a",o.account_to_upgrade(db()).name) ) }

void_result account_status_give_evaluator::do_evaluate(const account_status_give_evaluator::operation_type& o)
{ try {
   database& d = db();

   account = &d.get(o.account_to_upgrade);
   FC_ASSERT(account->referral_status_type <= o.referral_status_type);
   if( d.head_block_time() > HARDFORK_NTZ_1_TIME ) {
      const account_object& ref_01 = d.get(account->referrer);
      fee_paying_account_statistics = &ref_01.statistics(d);
   }
   return {};
} FC_RETHROW_EXCEPTIONS( error, "Unable to downgrade account status '${a}'", ("a",o.account_to_upgrade(db()).name) ) }


void_result account_status_give_evaluator::do_apply(const account_status_give_evaluator::operation_type& o)
{ try {
   database& d = db();
   const account_object& ref_01 = d.get(account->referrer);
   const share_type fee_value = o.fee.amount; 
   ref_01.statistics(d).update_pv(fee_value, ref_01, d);
   ref_01.statistics(d).update_nv(fee_value, uint8_t(1) , uint8_t(0) , ref_01, d);

   d.modify(ref_01, [&](account_object& a) {
      a.statistics(d).process_fees(a, d);
   });

   d.modify(*account, [&](account_object& a) {
      a.statistics(d).process_fees(a, d);
      share_type last_days = (a.referral_status_expiration_date - d.head_block_time()).count()/fc::days(1).count();

      if( o.referral_status_type == a.referral_status_type && a.referral_status_expiration_date > d.head_block_time())
      {
         a.referral_status_expiration_date += fc::days(365);
         a.referral_status_paid_fee = fee_value;
      } 
      else {
         share_type bonus_days;
         share_type paid_last;
         paid_last = 0;
         bonus_days = 0;
         if (a.referral_status_expiration_date > d.head_block_time()) {
             paid_last = a.referral_status_paid_fee/365*last_days;
            bonus_days = bonus_days + paid_last*365/fee_value;
         }
         a.referral_status_type = o.referral_status_type;
         a.referral_status_expiration_date = d.head_block_time() + fc::days(365);

         if (bonus_days>0)
         {
            uint64_t uintbonus;
            uintbonus=0;
            for (int i = 0; i < bonus_days; ++i)
            {
               uintbonus++;
            }
            a.referral_status_expiration_date = a.referral_status_expiration_date + fc::days(uintbonus);
          ilog("BONUS - ACCOUNT ${account}, LAST_DAYS ${last_days},  BONUS_DAYS ${bonus_days}, PAID_LAST ${paid_last}",  ("account", a.name)("bonus_days", uintbonus)("last_days",last_days)("paid_last",paid_last));

         }

         a.referral_status_paid_fee = fee_value;
         const auto& chain_params = d.get_global_properties().parameters;

         if (o.referral_status_type == 1) {
            a.referral_levels = chain_params.status_levels_01;
            a.status_denominator = chain_params.status_denominator_01;
         }
         if (o.referral_status_type == 2) {
            a.referral_levels = chain_params.status_levels_02;
            a.status_denominator = chain_params.status_denominator_02;
         }
         if (o.referral_status_type == 3) {
            a.referral_levels = chain_params.status_levels_03;
            a.status_denominator = chain_params.status_denominator_03;
         }
         if (d.head_block_time() <= HARDFORK_NTZ_3_TIME) {
            if (chain_params.status_bonus) {
               asset bonus;
               bonus.asset_id = chain_params.status_bonus_asset_id;

               if (o.referral_status_type == 1) {
                  bonus.amount = chain_params.status_bonus_reward_01;
               }
               if (o.referral_status_type == 2) {
                  bonus.amount = chain_params.status_bonus_reward_02;
               }
               if (o.referral_status_type == 3) {
                  bonus.amount = chain_params.status_bonus_reward_03;
               }

               db().adjust_balance( o.account_to_upgrade, bonus );
               d.modify(asset_dynamic_data_id_type(1)(d), [bonus](asset_dynamic_data_object &addo) {
                  addo.current_supply += bonus.amount;
               });
            }
         }
      }
      if( d.head_block_time() > HARDFORK_NTZ_1_TIME ) {
         const account_object& user_account = o.account_to_upgrade(d);
         const share_type start_pv = (GRAPHENE_BLOCKCHAIN_PRECISION * int64_t(1));
         user_account.statistics(d).update_pv(start_pv, user_account, d);
      }
   });
   return {};
} FC_RETHROW_EXCEPTIONS( error, "Unable to upgrade account status '${a}'", ("a",o.account_to_upgrade(db()).name) ) }


void_result account_give_pa_evaluator::do_evaluate(const account_give_pa_evaluator::operation_type& o)
{ try {
   database& d = db();
   account = &d.get(o.account_to_upgrade);

   return {};
} FC_RETHROW_EXCEPTIONS( error, "Unable to downgrade account status '${a}'", ("a",o.account_to_upgrade(db()).name) ) }


void_result account_give_pa_evaluator::do_apply(const account_give_pa_evaluator::operation_type& o)
{ try {
   database& d = db();
   const account_object& user_account = o.account_to_upgrade(d);
   auto& params = db().get_global_properties().parameters;

   if (o.referral_status_type == 1) {
      user_account.statistics(d).update_pv(params.status_threshold_01+(GRAPHENE_BLOCKCHAIN_PRECISION * int64_t(20)), user_account, d);
   } else if (o.referral_status_type == 2) {
      user_account.statistics(d).update_pv(params.status_threshold_02+(GRAPHENE_BLOCKCHAIN_PRECISION * int64_t(14)), user_account, d);
   } else if (o.referral_status_type == 10) {
      if( d.head_block_time() >= HARDFORK_NTZ_7_TIME ) {
         user_account.statistics(d).update_pv(params.status_threshold_10+(GRAPHENE_BLOCKCHAIN_PRECISION * int64_t(14)), user_account, d);
      }
   }

   return {};
} FC_RETHROW_EXCEPTIONS( error, "Unable to upgrade account '${a}'", ("a",o.account_to_upgrade(db()).name) ) }


void_result account_status_give_light_evaluator::do_evaluate(const account_status_give_light_evaluator::operation_type& o)
{ try {
   FC_ASSERT(o.giver == account_id_type(28));

   database& d = db();
   account = &d.get(o.account_to_upgrade);
   FC_ASSERT(account->referral_status_type <= o.referral_status_type);
   return {};
} FC_RETHROW_EXCEPTIONS( error, "Unable to downgrade account status '${a}'", ("a",o.account_to_upgrade(db()).name) ) }


void_result account_status_give_light_evaluator::do_apply(const account_status_give_light_evaluator::operation_type& o)
{ try {
   database& d = db();
   const account_object& ref_01 = d.get(account->referrer);
   const share_type fee_value = o.ntz_amount.amount;
   const share_type fee_value_old = o.fee.amount;
   ref_01.statistics(d).update_pv(fee_value, ref_01, d);
   ref_01.statistics(d).update_nv(fee_value, uint8_t(1) , uint8_t(0) , ref_01, d);

   if( d.head_block_time() > HARDFORK_NTZ_6_TIME ) {
      const account_object& ref_01 = d.get(account->referrer);
      const account_statistics_object& customer_statistics = ref_01.statistics(d);
      d.modify(customer_statistics, [&](account_statistics_object& s)
      {
         s.pay_fee( fee_value, d.get_global_properties().parameters.cashback_vesting_threshold );
      });
   }

   d.modify(ref_01, [&](account_object& a) {
      a.statistics(d).process_fees(a, d);
   });

   d.modify(*account, [&](account_object& a) {
      a.statistics(d).process_fees(a, d);
      share_type last_days = (a.referral_status_expiration_date - d.head_block_time()).count()/fc::days(1).count();

      if( o.referral_status_type == a.referral_status_type && a.referral_status_expiration_date > d.head_block_time())
      {
         a.referral_status_expiration_date += fc::days(365);
         a.referral_status_paid_fee = fee_value;
      } 
      else {
         share_type bonus_days;
         share_type paid_last;
         paid_last = 0;
         bonus_days = 0;
         if (a.referral_status_expiration_date > d.head_block_time()) {
            paid_last = a.referral_status_paid_fee/365*last_days;
            bonus_days = bonus_days + paid_last*365/fee_value_old;
         }
         a.referral_status_type = o.referral_status_type;
         a.referral_status_expiration_date = d.head_block_time() + fc::days(365);

         if (bonus_days>0)
         {
            uint64_t uintbonus;
            uintbonus=0;
            for (int i = 0; i < bonus_days; ++i)
            {
               uintbonus++;
            }
            a.referral_status_expiration_date = a.referral_status_expiration_date + fc::days(uintbonus);
          ilog("BONUS - ACCOUNT ${account}, LAST_DAYS ${last_days},  BONUS_DAYS ${bonus_days}, PAID_LAST ${paid_last}",  ("account", a.name)("bonus_days", uintbonus)("last_days",last_days)("paid_last",paid_last));

         }

         a.referral_status_paid_fee = fee_value;
         const auto& chain_params = d.get_global_properties().parameters;

         if (o.referral_status_type == 1) {
            a.referral_levels = chain_params.status_levels_01;
            a.status_denominator = chain_params.status_denominator_01;
         }
         if (o.referral_status_type == 2) {
            a.referral_levels = chain_params.status_levels_02;
            a.status_denominator = chain_params.status_denominator_02;
         }
         if (o.referral_status_type == 3) {
            a.referral_levels = chain_params.status_levels_03;
            a.status_denominator = chain_params.status_denominator_03;
         }
      }

      const account_object& user_account = o.account_to_upgrade(d);
      const share_type start_pv = (GRAPHENE_BLOCKCHAIN_PRECISION * int64_t(1));
      user_account.statistics(d).update_pv(start_pv, user_account, d);

   });
   return {};
} FC_RETHROW_EXCEPTIONS( error, "Unable to upgrade account status '${a}'", ("a",o.account_to_upgrade(db()).name) ) }


} } // graphene::chain
