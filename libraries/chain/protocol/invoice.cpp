/*
 * Copyright (c) 2019 Netizens., and contributors.
 *
 * The MIT License
 */

#include <graphene/chain/protocol/invoice.hpp>

namespace graphene { namespace chain {
    void invoice_create_operation::validate()const
    {
    FC_ASSERT( fee.amount >= 0 );
    FC_ASSERT( amount.amount > 0 );
    }

    void invoice_pay_operation::validate()const
    {
    FC_ASSERT( fee.amount >= 0 );
    FC_ASSERT( core_amount.amount >= 0 );
    FC_ASSERT( bonus_amount.amount >= 0 );
    FC_ASSERT( core_amount.amount > 0 || bonus_amount.amount > 0);
    }

    void new_invoice_create_operation::validate()const
    {
    FC_ASSERT( fee.amount >= 0 );
    FC_ASSERT( amount.amount > 0 );
    FC_ASSERT( tax.amount >= 0 );
    FC_ASSERT( delivery.amount >= 0 );
    FC_ASSERT( ntz_amount.amount >= 0 );
    }

    void new_invoice_pay_operation::validate()const
    {
    FC_ASSERT( fee.amount >= 0 );
    FC_ASSERT( core_amount.amount >= 0 );
    FC_ASSERT( bonus_amount.amount >= 0 );
    FC_ASSERT( core_amount.amount > 0 || bonus_amount.amount > 0);
    }

} } // graphene::chain
