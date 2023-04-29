/*
 * Copyright (c) 2019 Netizens., and contributors.
 *
 * The MIT License
 */

#pragma once
#include <graphene/chain/evaluator.hpp>
#include <graphene/chain/invoice_object.hpp>
#include <graphene/chain/account_object.hpp>

namespace graphene { namespace chain {

   class invoice_create_evaluator : public evaluator<invoice_create_evaluator>
   {
      public:
         typedef invoice_create_operation operation_type;

         void_result do_evaluate( const invoice_create_operation& o );
         object_id_type do_apply( const invoice_create_operation& o );
   };

   class invoice_pay_evaluator : public evaluator<invoice_pay_evaluator>
   {
      public:
         typedef invoice_pay_operation operation_type;

         void_result do_evaluate( const invoice_pay_operation& o );
         void_result do_apply( const invoice_pay_operation& o );
        const invoice_object* invoice;
   };

   class new_invoice_create_evaluator : public evaluator<new_invoice_create_evaluator>
   {
      public:
         typedef new_invoice_create_operation operation_type;

         void_result do_evaluate( const new_invoice_create_operation& o );
         object_id_type do_apply( const new_invoice_create_operation& o );
   };

   class new_invoice_pay_evaluator : public evaluator<new_invoice_pay_evaluator>
   {
      public:
         typedef new_invoice_pay_operation operation_type;

         void_result do_evaluate( const new_invoice_pay_operation& o );
         void_result do_apply( const new_invoice_pay_operation& o );
        const new_invoice_object* invoice;
   };

   class account_status_invoice_create_evaluator : public evaluator<account_status_invoice_create_evaluator>
   {
   public:
      typedef account_status_invoice_create_operation operation_type;

      void_result do_evaluate(const operation_type& o);
      object_id_type do_apply(const operation_type& o);

      const account_object* account;
   };

   class account_status_invoice_pay_evaluator : public evaluator<account_status_invoice_pay_evaluator>
   {
   public:
      typedef account_status_invoice_pay_operation operation_type;

      void_result do_evaluate(const operation_type& o);
      void_result do_apply(const operation_type& o);

      const account_object* account;
      const status_invoice_object* invoice;
   };

} } // graphene::chain