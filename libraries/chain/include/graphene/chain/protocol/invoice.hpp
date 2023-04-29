/*
 * Copyright (c) 2019 Netizens., and contributors.
 *
 * The MIT License
 */

#pragma once
#include <graphene/chain/protocol/base.hpp>
#include <graphene/chain/protocol/memo.hpp>


namespace graphene { namespace chain { 

   struct invoice_create_operation : public base_operation
   {
      struct fee_parameters_type { uint64_t fee = 10 * GRAPHENE_BLOCKCHAIN_PRECISION; };

      asset             fee;
      account_id_type   merchant;
      account_id_type   customer;
      asset             amount;
      string            merchant_order_id;
      memo_data         memo;

      account_id_type fee_payer()const { return merchant; }
      void            validate()const;
   };

   struct invoice_pay_operation : public base_operation
   {
      struct fee_parameters_type { share_type fee = 0; };

      asset             fee;
      invoice_id_type   invoice;
      account_id_type   customer;
      account_id_type   merchant;
      asset             core_amount;
      asset             bonus_amount;

      account_id_type fee_payer()const { return customer; }
      void            validate()const;
   };

   struct new_invoice_create_operation : public base_operation
   {
      struct fee_parameters_type { uint64_t fee = 10 * GRAPHENE_BLOCKCHAIN_PRECISION; };

        asset fee;
        account_id_type creator;
        account_id_type merchant;
        account_id_type customer;
        string merchant_order_id;
        asset amount;
        asset ntz_amount;
        asset tax;
        asset delivery;
        memo_data memo;

      account_id_type fee_payer()const { return creator; }
      void            validate()const;
   };

   struct new_invoice_pay_operation : public base_operation
   {
      struct fee_parameters_type { share_type fee = 0; };

      asset                   fee;
      new_invoice_id_type     invoice;
      account_id_type         customer;
      account_id_type         merchant;
      account_id_type         payer;
      asset                   core_amount;
      asset                   bonus_amount;

      account_id_type fee_payer()const { return payer; }
      void            validate()const;
   };

   struct account_status_invoice_create_operation : public base_operation
   {
      struct fee_parameters_type { uint64_t fee = 10 * GRAPHENE_BLOCKCHAIN_PRECISION; };

        asset fee;
        account_id_type creator;
        account_id_type merchant;
        account_id_type customer;
        string merchant_order_id;
        asset amount;
        asset ntz_amount;
        asset tax;
        asset delivery;
        memo_data memo;
        uint8_t           referral_status_type = 0;

      account_id_type fee_payer()const { return creator; }
      void            validate()const;
   };

   struct account_status_invoice_pay_operation : public base_operation
   {
      struct fee_parameters_type { share_type fee = 0; };

      asset                   fee;
      status_invoice_id_type  invoice;
      account_id_type         customer;
      account_id_type         merchant;
      account_id_type         payer;
      asset                   core_amount;

      account_id_type fee_payer()const { return payer; }
      void            validate()const;
   };

} } // graphene::chain
FC_REFLECT( graphene::chain::invoice_create_operation::fee_parameters_type, (fee) )
FC_REFLECT( graphene::chain::invoice_create_operation, (fee)(merchant)(customer)(amount)(merchant_order_id)(memo))

FC_REFLECT( graphene::chain::invoice_pay_operation::fee_parameters_type, (fee) )
FC_REFLECT( graphene::chain::invoice_pay_operation, (fee)(invoice)(customer)(merchant)(core_amount)(bonus_amount))

FC_REFLECT( graphene::chain::new_invoice_create_operation::fee_parameters_type, (fee) )
FC_REFLECT( graphene::chain::new_invoice_create_operation, (fee)(creator)(merchant)(customer)(merchant_order_id)(amount)(ntz_amount)(tax)(delivery)(memo))

FC_REFLECT( graphene::chain::new_invoice_pay_operation::fee_parameters_type, (fee) )
FC_REFLECT( graphene::chain::new_invoice_pay_operation, (fee)(invoice)(customer)(merchant)(payer)(core_amount)(bonus_amount))

FC_REFLECT( graphene::chain::account_status_invoice_create_operation::fee_parameters_type, (fee) )
FC_REFLECT( graphene::chain::account_status_invoice_create_operation, (fee)(creator)(merchant)(customer)(merchant_order_id)(amount)(ntz_amount)(tax)(delivery)(memo)(referral_status_type))

FC_REFLECT( graphene::chain::account_status_invoice_pay_operation::fee_parameters_type, (fee) )
FC_REFLECT( graphene::chain::account_status_invoice_pay_operation, (fee)(invoice)(customer)(merchant)(payer)(core_amount))