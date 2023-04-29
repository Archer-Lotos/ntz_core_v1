/*
 * Copyright (c) 2019 Netizens., and contributors.
 *
 * The MIT License
 */

#pragma once
#include <graphene/chain/protocol/asset.hpp>
#include <graphene/chain/protocol/types.hpp>
#include <graphene/chain/protocol/operations.hpp>

#include <graphene/db/object.hpp>
#include <graphene/db/generic_index.hpp>
#include <boost/multi_index/composite_key.hpp>

namespace graphene { namespace chain {
   using namespace graphene::db;

   class invoice_object : public abstract_object<invoice_object>
   {
      public:
        static const uint8_t space_id = protocol_ids;
        static const uint8_t type_id = invoice_object_type;

        account_id_type merchant;
        account_id_type customer;
        string merchant_order_id;
        asset amount;
        memo_data memo;
        uint8_t status = 0; //0 - new invoice, 1 - invoice payed, 2 - invoice expired.
        time_point_sec expiration;

        uint8_t is_active(time_point_sec now) const
        {
            if (now <= expiration && status == 0)
            {
                return status;
            }
            else
                {
                    // status = 2;
                    return 2;
                }
        }
   };

    /* Сортировка и поиск нам нужна по следующим полям и их сочетаниям
    * Поиск по ID
    * Поиск по мерчанту и статусу
    * Поиск по клиенту и статусу
    */

    struct by_id;
    struct by_expiration;
    struct by_customer_status;
    struct by_merchant_status;
    struct by_merchant_order_id;
       
    using invoice_multi_index_type = multi_index_container<
      invoice_object,
      indexed_by<
         ordered_unique< tag<by_id>,
            member<object, object_id_type, &object::id>
         >,
         ordered_unique< tag<by_expiration>,
            composite_key< invoice_object,
               member< invoice_object, time_point_sec, &invoice_object::expiration>,
               member< object, object_id_type, &object::id>
            >
         >,
         ordered_non_unique< tag<by_customer_status>,
            composite_key<
               invoice_object,
               member<invoice_object, account_id_type, &invoice_object::customer>,
               member<invoice_object, uint8_t, &invoice_object::status>,
               member< object, object_id_type, &object::id>
            >
         >,
         ordered_non_unique< tag<by_merchant_status>,
            composite_key<
               invoice_object,
               member<invoice_object, account_id_type, &invoice_object::merchant>,
               member<invoice_object, uint8_t, &invoice_object::status>,
               member< object, object_id_type, &object::id>
            >
         >,
         ordered_non_unique< tag<by_merchant_order_id>,
            composite_key<
               invoice_object,
               member<invoice_object, account_id_type, &invoice_object::merchant>,
               member<invoice_object, string, &invoice_object::merchant_order_id>,
               member< object, object_id_type, &object::id>
            >
         >
      >
   >;
   using invoice_index = generic_index<invoice_object, invoice_multi_index_type>;


   class new_invoice_object : public abstract_object<new_invoice_object>
   {
      public:
        static const uint8_t space_id = protocol_ids;
        static const uint8_t type_id = new_invoice_object_type;

        account_id_type creator;
        account_id_type merchant;
        account_id_type customer;
        string merchant_order_id;
        asset amount;
        asset ntz_amount;
        asset tax;
        asset delivery;
        memo_data memo;
        uint8_t status = 0; //0 - new invoice, 1 - invoice payed, 2 - invoice expired., 3 - delivered
        time_point_sec expiration;

        uint8_t is_active(time_point_sec now) const
        {
            if (now <= expiration && status == 0)
            {
                return status;
            }
            else
                {
                    // status = 2;
                    return 2;
                }
        }
   };

    struct by_id_n;
    struct by_expiration_n;
    struct by_customer_status_n;
    struct by_merchant_status_n;
    struct by_merchant_order_id_n;
    struct by_creator_status_n;

    using new_invoice_multi_index_type = multi_index_container<
      new_invoice_object,
      indexed_by<
         ordered_unique< tag<by_id_n>,
            member<object, object_id_type, &object::id>
         >,
         ordered_unique< tag<by_expiration_n>,
            composite_key< new_invoice_object,
               member< new_invoice_object, time_point_sec, &new_invoice_object::expiration>,
               member< object, object_id_type, &object::id>
            >
         >,
         ordered_non_unique< tag<by_customer_status_n>,
            composite_key<
               new_invoice_object,
               member<new_invoice_object, account_id_type, &new_invoice_object::customer>,
               member<new_invoice_object, uint8_t, &new_invoice_object::status>,
               member< object, object_id_type, &object::id>
            >
         >,
         ordered_non_unique< tag<by_merchant_status_n>,
            composite_key<
               new_invoice_object,
               member<new_invoice_object, account_id_type, &new_invoice_object::merchant>,
               member<new_invoice_object, uint8_t, &new_invoice_object::status>,
               member< object, object_id_type, &object::id>
            >
         >,
         ordered_non_unique< tag<by_merchant_order_id_n>,
            composite_key<
               new_invoice_object,
               member<new_invoice_object, account_id_type, &new_invoice_object::merchant>,
               member<new_invoice_object, string, &new_invoice_object::merchant_order_id>,
               member< object, object_id_type, &object::id>
            >
         >,
         ordered_non_unique< tag<by_creator_status_n>,
            composite_key<
               new_invoice_object,
               member<new_invoice_object, account_id_type, &new_invoice_object::creator>,
               member<new_invoice_object, uint8_t, &new_invoice_object::status>,
               member< object, object_id_type, &object::id>
            >
         >
      >
   >;
   using new_invoice_index = generic_index<new_invoice_object, new_invoice_multi_index_type>;


   class status_invoice_object : public abstract_object<status_invoice_object>
   {
      public:
        static const uint8_t space_id = protocol_ids;
        static const uint8_t type_id = status_invoice_object_type;

        account_id_type creator;
        account_id_type merchant;
        account_id_type customer;
        string merchant_order_id;
        asset amount;
        asset ntz_amount;
        asset tax;
        asset delivery;
        memo_data memo;
        uint8_t status = 0; //0 - new invoice, 1 - invoice payed, 2 - invoice expired., 3 - delivered
        time_point_sec expiration;
        uint8_t           referral_status_type = 0;

        uint8_t is_active(time_point_sec now) const
        {
            if (now <= expiration && status == 0)
            {
                return status;
            }
            else
                {
                    // status = 2;
                    return 2;
                }
        }
   };

    struct by_id_n_s;
    struct by_expiration_n_s;
    struct by_customer_status_n_s;
    struct by_merchant_status_n_s;
    struct by_merchant_order_id_n_s;
    struct by_creator_status_n_s;

    using status_invoice_multi_index_type = multi_index_container<
      status_invoice_object,
      indexed_by<
         ordered_unique< tag<by_id_n_s>,
            member<object, object_id_type, &object::id>
         >,
         ordered_unique< tag<by_expiration_n_s>,
            composite_key< status_invoice_object,
               member< status_invoice_object, time_point_sec, &status_invoice_object::expiration>,
               member< object, object_id_type, &object::id>
            >
         >,
         ordered_non_unique< tag<by_customer_status_n_s>,
            composite_key<
               status_invoice_object,
               member<status_invoice_object, account_id_type, &status_invoice_object::customer>,
               member<status_invoice_object, uint8_t, &status_invoice_object::status>,
               member< object, object_id_type, &object::id>
            >
         >,
         ordered_non_unique< tag<by_merchant_status_n_s>,
            composite_key<
               status_invoice_object,
               member<status_invoice_object, account_id_type, &status_invoice_object::merchant>,
               member<status_invoice_object, uint8_t, &status_invoice_object::status>,
               member< object, object_id_type, &object::id>
            >
         >,
         ordered_non_unique< tag<by_merchant_order_id_n_s>,
            composite_key<
               status_invoice_object,
               member<status_invoice_object, account_id_type, &status_invoice_object::merchant>,
               member<status_invoice_object, string, &status_invoice_object::merchant_order_id>,
               member< object, object_id_type, &object::id>
            >
         >,
         ordered_non_unique< tag<by_creator_status_n_s>,
            composite_key<
               status_invoice_object,
               member<status_invoice_object, account_id_type, &status_invoice_object::creator>,
               member<status_invoice_object, uint8_t, &status_invoice_object::status>,
               member< object, object_id_type, &object::id>
            >
         >
      >
   >;
   using status_invoice_index = generic_index<status_invoice_object, status_invoice_multi_index_type>;

} } // graphene::chain

FC_REFLECT_DERIVED( graphene::chain::invoice_object, (graphene::db::object),
   (merchant)
   (customer)
   (merchant_order_id)
   (amount)
   (memo)
   (status)
   (expiration)
)
FC_REFLECT_DERIVED( graphene::chain::new_invoice_object, (graphene::db::object),
   (creator)
   (merchant)
   (customer)
   (merchant_order_id)
   (amount)
   (ntz_amount)
   (tax)
   (delivery)
   (memo)
   (status)
   (expiration)
)
FC_REFLECT_DERIVED( graphene::chain::status_invoice_object, (graphene::db::object),
   (creator)
   (merchant)
   (customer)
   (merchant_order_id)
   (amount)
   (ntz_amount)
   (tax)
   (delivery)
   (memo)
   (status)
   (expiration)
   (referral_status_type)
)