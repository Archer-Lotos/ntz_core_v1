$doxydocs=
{
  classes => [
    {
      name => 'graphene::wallet::account_history_operation_detail',
      includes => {
        local => 'no',
        name => 'wallet.hpp'
      },
      all_members => [
        {
          name => 'details',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::account_history_operation_detail'
        },
        {
          name => 'result_count',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::account_history_operation_detail'
        },
        {
          name => 'total_count',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::account_history_operation_detail'
        }
      ],
      public_members => {
        members => [
          {
            kind => 'variable',
            name => 'total_count',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'uint32_t',
            initializer => '= 0'
          },
          {
            kind => 'variable',
            name => 'result_count',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'uint32_t',
            initializer => '= 0'
          },
          {
            kind => 'variable',
            name => 'details',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'vector< operation_detail_ex >'
          }
        ]
      },
      brief => {},
      detailed => {}
    },
    {
      name => 'graphene::wallet::approval_delta',
      includes => {
        local => 'no',
        name => 'wallet.hpp'
      },
      all_members => [
        {
          name => 'active_approvals_to_add',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::approval_delta'
        },
        {
          name => 'active_approvals_to_remove',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::approval_delta'
        },
        {
          name => 'key_approvals_to_add',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::approval_delta'
        },
        {
          name => 'key_approvals_to_remove',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::approval_delta'
        },
        {
          name => 'owner_approvals_to_add',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::approval_delta'
        },
        {
          name => 'owner_approvals_to_remove',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::approval_delta'
        }
      ],
      public_members => {
        members => [
          {
            kind => 'variable',
            name => 'active_approvals_to_add',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'vector< string >'
          },
          {
            kind => 'variable',
            name => 'active_approvals_to_remove',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'vector< string >'
          },
          {
            kind => 'variable',
            name => 'owner_approvals_to_add',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'vector< string >'
          },
          {
            kind => 'variable',
            name => 'owner_approvals_to_remove',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'vector< string >'
          },
          {
            kind => 'variable',
            name => 'key_approvals_to_add',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'vector< string >'
          },
          {
            kind => 'variable',
            name => 'key_approvals_to_remove',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'vector< string >'
          }
        ]
      },
      brief => {},
      detailed => {}
    },
    {
      name => 'graphene::wallet::blind_balance',
      includes => {
        local => 'no',
        name => 'wallet.hpp'
      },
      all_members => [
        {
          name => 'amount',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::blind_balance'
        },
        {
          name => 'blinding_factor',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::blind_balance'
        },
        {
          name => 'commitment',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::blind_balance'
        },
        {
          name => 'from',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::blind_balance'
        },
        {
          name => 'one_time_key',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::blind_balance'
        },
        {
          name => 'to',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::blind_balance'
        },
        {
          name => 'used',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::blind_balance'
        }
      ],
      public_members => {
        members => [
          {
            kind => 'variable',
            name => 'amount',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'asset'
          },
          {
            kind => 'variable',
            name => 'from',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'the account this balance came from '
                }
              ]
            },
            detailed => {},
            type => 'public_key_type'
          },
          {
            kind => 'variable',
            name => 'to',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'the account this balance is logically associated with '
                }
              ]
            },
            detailed => {},
            type => 'public_key_type'
          },
          {
            kind => 'variable',
            name => 'one_time_key',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'text',
                  content => 'used to derive the authority key and blinding factor '
                }
              ]
            },
            detailed => {},
            type => 'public_key_type'
          },
          {
            kind => 'variable',
            name => 'blinding_factor',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'fc::sha256'
          },
          {
            kind => 'variable',
            name => 'commitment',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'fc::ecc::commitment_type'
          },
          {
            kind => 'variable',
            name => 'used',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'bool',
            initializer => '= false'
          }
        ]
      },
      brief => {},
      detailed => {}
    },
    {
      name => 'graphene::wallet::blind_confirmation',
      inner => [
        {
          name => 'graphene::wallet::blind_confirmation::output'
        }
      ],
      includes => {
        local => 'no',
        name => 'wallet.hpp'
      },
      all_members => [
        {
          name => 'outputs',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::blind_confirmation'
        },
        {
          name => 'trx',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::blind_confirmation'
        }
      ],
      public_members => {
        members => [
          {
            kind => 'variable',
            name => 'trx',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'signed_transaction'
          },
          {
            kind => 'variable',
            name => 'outputs',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'vector< output >'
          }
        ]
      },
      brief => {},
      detailed => {
        doc => [
          {
            type => 'parbreak'
          },
          {
            type => 'text',
            content => 'Contains the confirmation receipt the sender must give the receiver and the meta data about the receipt that helps the sender identify which receipt is for the receiver and which is for the change address. '
          }
        ]
      }
    },
    {
      name => 'graphene::wallet::blind_receipt',
      includes => {
        local => 'no',
        name => 'wallet.hpp'
      },
      all_members => [
        {
          name => 'amount',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::blind_receipt'
        },
        {
          name => 'commitment',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::blind_receipt'
        },
        {
          name => 'conf',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::blind_receipt'
        },
        {
          name => 'control_authority',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::blind_receipt'
        },
        {
          name => 'data',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::blind_receipt'
        },
        {
          name => 'date',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::blind_receipt'
        },
        {
          name => 'from_date',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::blind_receipt'
        },
        {
          name => 'from_key',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::blind_receipt'
        },
        {
          name => 'from_label',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::blind_receipt'
        },
        {
          name => 'memo',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::blind_receipt'
        },
        {
          name => 'to_asset_used',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::blind_receipt'
        },
        {
          name => 'to_date',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::blind_receipt'
        },
        {
          name => 'to_key',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::blind_receipt'
        },
        {
          name => 'to_label',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::blind_receipt'
        },
        {
          name => 'used',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::blind_receipt'
        }
      ],
      public_methods => {
        members => [
          {
            kind => 'function',
            name => 'from_date',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'std::pair< public_key_type, fc::time_point >',
            const => 'yes',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'to_date',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'std::pair< public_key_type, fc::time_point >',
            const => 'yes',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'to_asset_used',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'std::tuple< public_key_type, asset_id_type, bool >',
            const => 'yes',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'commitment',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'const commitment_type &',
            const => 'yes',
            volatile => 'no',
            parameters => [
            ]
          }
        ]
      },
      public_members => {
        members => [
          {
            kind => 'variable',
            name => 'date',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'fc::time_point'
          },
          {
            kind => 'variable',
            name => 'from_key',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'public_key_type'
          },
          {
            kind => 'variable',
            name => 'from_label',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'string'
          },
          {
            kind => 'variable',
            name => 'to_key',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'public_key_type'
          },
          {
            kind => 'variable',
            name => 'to_label',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'string'
          },
          {
            kind => 'variable',
            name => 'amount',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'asset'
          },
          {
            kind => 'variable',
            name => 'memo',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'string'
          },
          {
            kind => 'variable',
            name => 'control_authority',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'authority'
          },
          {
            kind => 'variable',
            name => 'data',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'stealth_confirmation::memo_data'
          },
          {
            kind => 'variable',
            name => 'used',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'bool',
            initializer => '= false'
          },
          {
            kind => 'variable',
            name => 'conf',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'stealth_confirmation'
          }
        ]
      },
      brief => {},
      detailed => {}
    },
    {
      name => 'graphene::wallet::brain_key_info',
      includes => {
        local => 'no',
        name => 'wallet.hpp'
      },
      all_members => [
        {
          name => 'brain_priv_key',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::brain_key_info'
        },
        {
          name => 'pub_key',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::brain_key_info'
        },
        {
          name => 'wif_priv_key',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::brain_key_info'
        }
      ],
      public_members => {
        members => [
          {
            kind => 'variable',
            name => 'brain_priv_key',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'string'
          },
          {
            kind => 'variable',
            name => 'wif_priv_key',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'string'
          },
          {
            kind => 'variable',
            name => 'pub_key',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'public_key_type'
          }
        ]
      },
      brief => {},
      detailed => {}
    },
    {
      name => 'graphene::wallet::exported_account_keys',
      includes => {
        local => 'no',
        name => 'wallet.hpp'
      },
      all_members => [
        {
          name => 'account_name',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::exported_account_keys'
        },
        {
          name => 'encrypted_private_keys',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::exported_account_keys'
        },
        {
          name => 'public_keys',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::exported_account_keys'
        }
      ],
      public_members => {
        members => [
          {
            kind => 'variable',
            name => 'account_name',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'string'
          },
          {
            kind => 'variable',
            name => 'encrypted_private_keys',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'vector< vector< char > >'
          },
          {
            kind => 'variable',
            name => 'public_keys',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'vector< public_key_type >'
          }
        ]
      },
      brief => {},
      detailed => {}
    },
    {
      name => 'graphene::wallet::exported_keys',
      includes => {
        local => 'no',
        name => 'wallet.hpp'
      },
      all_members => [
        {
          name => 'account_keys',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::exported_keys'
        },
        {
          name => 'password_checksum',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::exported_keys'
        }
      ],
      public_members => {
        members => [
          {
            kind => 'variable',
            name => 'password_checksum',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'fc::sha512'
          },
          {
            kind => 'variable',
            name => 'account_keys',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'vector< exported_account_keys >'
          }
        ]
      },
      brief => {},
      detailed => {}
    },
    {
      name => 'graphene::wallet::key_label',
      includes => {
        local => 'no',
        name => 'wallet.hpp'
      },
      all_members => [
        {
          name => 'key',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::key_label'
        },
        {
          name => 'label',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::key_label'
        }
      ],
      public_members => {
        members => [
          {
            kind => 'variable',
            name => 'label',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'string'
          },
          {
            kind => 'variable',
            name => 'key',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'public_key_type'
          }
        ]
      },
      brief => {},
      detailed => {}
    },
    {
      name => 'graphene::wallet::operation_detail',
      includes => {
        local => 'no',
        name => 'wallet.hpp'
      },
      all_members => [
        {
          name => 'description',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::operation_detail'
        },
        {
          name => 'memo',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::operation_detail'
        },
        {
          name => 'op',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::operation_detail'
        }
      ],
      public_members => {
        members => [
          {
            kind => 'variable',
            name => 'memo',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'string'
          },
          {
            kind => 'variable',
            name => 'description',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'string'
          },
          {
            kind => 'variable',
            name => 'op',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'operation_history_object'
          }
        ]
      },
      brief => {},
      detailed => {}
    },
    {
      name => 'graphene::wallet::operation_detail_ex',
      includes => {
        local => 'no',
        name => 'wallet.hpp'
      },
      all_members => [
        {
          name => 'description',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::operation_detail_ex'
        },
        {
          name => 'memo',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::operation_detail_ex'
        },
        {
          name => 'op',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::operation_detail_ex'
        },
        {
          name => 'transaction_id',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::operation_detail_ex'
        }
      ],
      public_members => {
        members => [
          {
            kind => 'variable',
            name => 'memo',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'string'
          },
          {
            kind => 'variable',
            name => 'description',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'string'
          },
          {
            kind => 'variable',
            name => 'op',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'operation_history_object'
          },
          {
            kind => 'variable',
            name => 'transaction_id',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'transaction_id_type'
          }
        ]
      },
      brief => {},
      detailed => {}
    },
    {
      name => 'graphene::wallet::blind_confirmation::output',
      includes => {
        local => 'no',
        name => 'wallet.hpp'
      },
      all_members => [
        {
          name => 'auth',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::blind_confirmation::output'
        },
        {
          name => 'confirmation',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::blind_confirmation::output'
        },
        {
          name => 'confirmation_receipt',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::blind_confirmation::output'
        },
        {
          name => 'decrypted_memo',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::blind_confirmation::output'
        },
        {
          name => 'label',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::blind_confirmation::output'
        },
        {
          name => 'pub_key',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::blind_confirmation::output'
        }
      ],
      public_members => {
        members => [
          {
            kind => 'variable',
            name => 'label',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'string'
          },
          {
            kind => 'variable',
            name => 'pub_key',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'public_key_type'
          },
          {
            kind => 'variable',
            name => 'decrypted_memo',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'stealth_confirmation::memo_data'
          },
          {
            kind => 'variable',
            name => 'confirmation',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'stealth_confirmation'
          },
          {
            kind => 'variable',
            name => 'auth',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'authority'
          },
          {
            kind => 'variable',
            name => 'confirmation_receipt',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'string'
          }
        ]
      },
      brief => {},
      detailed => {}
    },
    {
      name => 'graphene::wallet::plain_keys',
      includes => {
        local => 'no',
        name => 'wallet.hpp'
      },
      all_members => [
        {
          name => 'checksum',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::plain_keys'
        },
        {
          name => 'keys',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::plain_keys'
        }
      ],
      public_members => {
        members => [
          {
            kind => 'variable',
            name => 'keys',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'map< public_key_type, string >'
          },
          {
            kind => 'variable',
            name => 'checksum',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'fc::sha512'
          }
        ]
      },
      brief => {},
      detailed => {}
    },
    {
      name => 'signed_block',
      derived => [
        {
          name => 'graphene::wallet::signed_block_with_info',
          virtualness => 'non_virtual',
          protection => 'public'
        }
      ],
      all_members => [
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'graphene::wallet::signed_block_with_info',
      base => [
        {
          name => 'signed_block',
          virtualness => 'non_virtual',
          protection => 'public'
        }
      ],
      includes => {
        local => 'no',
        name => 'wallet.hpp'
      },
      all_members => [
        {
          name => 'block_id',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::signed_block_with_info'
        },
        {
          name => 'signed_block_with_info',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::signed_block_with_info'
        },
        {
          name => 'signed_block_with_info',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::signed_block_with_info'
        },
        {
          name => 'signing_key',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::signed_block_with_info'
        },
        {
          name => 'transaction_ids',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::signed_block_with_info'
        }
      ],
      public_methods => {
        members => [
          {
            kind => 'function',
            name => 'signed_block_with_info',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'block',
                type => 'const signed_block &'
              }
            ]
          },
          {
            kind => 'function',
            name => 'signed_block_with_info',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'block',
                type => 'const signed_block_with_info &'
              }
            ]
          }
        ]
      },
      public_members => {
        members => [
          {
            kind => 'variable',
            name => 'block_id',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'block_id_type'
          },
          {
            kind => 'variable',
            name => 'signing_key',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'public_key_type'
          },
          {
            kind => 'variable',
            name => 'transaction_ids',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'vector< transaction_id_type >'
          }
        ]
      },
      brief => {},
      detailed => {}
    },
    {
      name => 'graphene::wallet::utility',
      includes => {
        local => 'no',
        name => 'wallet.hpp'
      },
      all_members => [
        {
          name => 'derive_owner_keys_from_brain_key',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::utility'
        },
        {
          name => 'suggest_brain_key',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::utility'
        }
      ],
      public_static_methods => {
        members => [
          {
            kind => 'function',
            name => 'derive_owner_keys_from_brain_key',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'yes',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Derive any number of '
                },
                {
                  type => 'style',
                  style => 'italic',
                  enable => 'yes'
                },
                {
                  type => 'text',
                  content => 'possible'
                },
                {
                  type => 'style',
                  style => 'italic',
                  enable => 'no'
                },
                {
                  type => 'text',
                  content => ' owner keys from a given brain key.'
                },
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'NOTE: These keys may or may not match with the owner keys of any account. This function is merely intended to assist with account or key recovery.'
                },
                {
                  type => 'parbreak'
                },
                {
                  see => [
                    {
                      type => 'url',
                      link => 'classgraphene_1_1wallet_1_1utility_1ae0268ab71dc4209ff6ef09099450d41a',
                      content => 'suggest_brain_key()'
                    }
                  ]
                },
                params => [
                  {
                    parameters => [
                      {
                        name => 'brain_key'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'Brain key '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'number_of_desired_keys'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'Number of desired keys '
                      }
                    ]
                  }
                ],
                {
                  return => [
                    {
                      type => 'text',
                      content => 'A list of keys that are deterministically derived from the brainkey '
                    }
                  ]
                }
              ]
            },
            type => 'static vector< brain_key_info >',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'brain_key',
                type => 'string'
              },
              {
                declaration_name => 'number_of_desired_keys',
                type => 'int',
                default_value => '1'
              }
            ]
          },
          {
            kind => 'function',
            name => 'suggest_brain_key',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'yes',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Suggests a safe brain key to use for creating your account. '
                },
                {
                  type => 'style',
                  style => 'code',
                  enable => 'yes'
                },
                {
                  type => 'text',
                  content => 'create_account_with_brain_key()'
                },
                {
                  type => 'style',
                  style => 'code',
                  enable => 'no'
                },
                {
                  type => 'text',
                  content => ' requires you to specify a \'brain key\', a long passphrase that provides enough entropy to generate cyrptographic keys. This function will suggest a suitably random string that should be easy to write down (and, with effort, memorize). '
                },
                {
                  return => [
                    {
                      type => 'text',
                      content => 'a suggested brain_key '
                    }
                  ]
                }
              ]
            },
            type => 'static brain_key_info',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          }
        ]
      },
      brief => {},
      detailed => {}
    },
    {
      name => 'vesting_balance_object',
      derived => [
        {
          name => 'graphene::wallet::vesting_balance_object_with_info',
          virtualness => 'non_virtual',
          protection => 'public'
        }
      ],
      all_members => [
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'graphene::wallet::vesting_balance_object_with_info',
      base => [
        {
          name => 'vesting_balance_object',
          virtualness => 'non_virtual',
          protection => 'public'
        }
      ],
      includes => {
        local => 'no',
        name => 'wallet.hpp'
      },
      all_members => [
        {
          name => 'allowed_withdraw',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::vesting_balance_object_with_info'
        },
        {
          name => 'allowed_withdraw_time',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::vesting_balance_object_with_info'
        },
        {
          name => 'vesting_balance_object_with_info',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::vesting_balance_object_with_info'
        },
        {
          name => 'vesting_balance_object_with_info',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::vesting_balance_object_with_info'
        }
      ],
      public_methods => {
        members => [
          {
            kind => 'function',
            name => 'vesting_balance_object_with_info',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'vbo',
                type => 'const vesting_balance_object &'
              },
              {
                declaration_name => 'now',
                type => 'fc::time_point_sec'
              }
            ]
          },
          {
            kind => 'function',
            name => 'vesting_balance_object_with_info',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'vbo',
                type => 'const vesting_balance_object_with_info &'
              }
            ]
          }
        ]
      },
      public_members => {
        members => [
          {
            kind => 'variable',
            name => 'allowed_withdraw',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'text',
                  content => 'How much is allowed to be withdrawn. '
                }
              ]
            },
            type => 'asset'
          },
          {
            kind => 'variable',
            name => 'allowed_withdraw_time',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'The time at which allowed_withdrawal was calculated. '
                }
              ]
            },
            type => 'fc::time_point_sec'
          }
        ]
      },
      brief => {},
      detailed => {}
    },
    {
      name => 'graphene::wallet::wallet_api',
      includes => {
        local => 'no',
        name => 'wallet.hpp'
      },
      all_members => [
        {
          name => 'about',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::wallet_api'
        },
        {
          name => 'add_operation_to_builder_transaction',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::wallet_api'
        },
        {
          name => 'approve_proposal',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::wallet_api'
        },
        {
          name => 'begin_builder_transaction',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::wallet_api'
        },
        {
          name => 'bid_collateral',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::wallet_api'
        },
        {
          name => 'blind_history',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::wallet_api'
        },
        {
          name => 'blind_transfer',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::wallet_api'
        },
        {
          name => 'blind_transfer_help',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::wallet_api'
        },
        {
          name => 'borrow_asset',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::wallet_api'
        },
        {
          name => 'borrow_asset_ext',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::wallet_api'
        },
        {
          name => 'broadcast_transaction',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::wallet_api'
        },
        {
          name => 'cancel_order',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::wallet_api'
        },
        {
          name => 'claim_asset_fee_pool',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::wallet_api'
        },
        {
          name => 'copy_wallet_file',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::wallet_api'
        },
        {
          name => 'create_account_with_brain_key',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::wallet_api'
        },
        {
          name => 'create_asset',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::wallet_api'
        },
        {
          name => 'create_blind_account',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::wallet_api'
        },
        {
          name => 'create_committee_member',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::wallet_api'
        },
        {
          name => 'create_witness',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::wallet_api'
        },
        {
          name => 'create_worker',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::wallet_api'
        },
        {
          name => 'dbg_generate_blocks',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::wallet_api'
        },
        {
          name => 'dbg_make_mia',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::wallet_api'
        },
        {
          name => 'dbg_make_uia',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::wallet_api'
        },
        {
          name => 'dbg_push_blocks',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::wallet_api'
        },
        {
          name => 'dbg_stream_json_objects',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::wallet_api'
        },
        {
          name => 'dbg_update_object',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::wallet_api'
        },
        {
          name => 'derive_owner_keys_from_brain_key',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::wallet_api'
        },
        {
          name => 'derive_private_key',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::wallet_api'
        },
        {
          name => 'dump_private_keys',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::wallet_api'
        },
        {
          name => 'encrypt_keys',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::wallet_api'
        },
        {
          name => 'flood_network',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::wallet_api'
        },
        {
          name => 'fund_asset_fee_pool',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::wallet_api'
        },
        {
          name => 'get_account',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::wallet_api'
        },
        {
          name => 'get_account_count',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::wallet_api'
        },
        {
          name => 'get_account_history',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::wallet_api'
        },
        {
          name => 'get_account_history_by_operations',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::wallet_api'
        },
        {
          name => 'get_account_id',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::wallet_api'
        },
        {
          name => 'get_account_limit_orders',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::wallet_api'
        },
        {
          name => 'get_asset',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::wallet_api'
        },
        {
          name => 'get_asset_count',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::wallet_api'
        },
        {
          name => 'get_asset_id',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::wallet_api'
        },
        {
          name => 'get_bitasset_data',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::wallet_api'
        },
        {
          name => 'get_blind_accounts',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::wallet_api'
        },
        {
          name => 'get_blind_balances',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::wallet_api'
        },
        {
          name => 'get_block',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::wallet_api'
        },
        {
          name => 'get_call_orders',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::wallet_api'
        },
        {
          name => 'get_collateral_bids',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::wallet_api'
        },
        {
          name => 'get_committee_member',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::wallet_api'
        },
        {
          name => 'get_dynamic_global_properties',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::wallet_api'
        },
        {
          name => 'get_full_account',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::wallet_api'
        },
        {
          name => 'get_global_properties',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::wallet_api'
        },
        {
          name => 'get_key_label',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::wallet_api'
        },
        {
          name => 'get_limit_orders',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::wallet_api'
        },
        {
          name => 'get_market_history',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::wallet_api'
        },
        {
          name => 'get_my_blind_accounts',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::wallet_api'
        },
        {
          name => 'get_object',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::wallet_api'
        },
        {
          name => 'get_order_book',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::wallet_api'
        },
        {
          name => 'get_private_key',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::wallet_api'
        },
        {
          name => 'get_prototype_operation',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::wallet_api'
        },
        {
          name => 'get_public_key',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::wallet_api'
        },
        {
          name => 'get_relative_account_history',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::wallet_api'
        },
        {
          name => 'get_result_formatters',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::wallet_api'
        },
        {
          name => 'get_settle_orders',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::wallet_api'
        },
        {
          name => 'get_transaction_id',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::wallet_api'
        },
        {
          name => 'get_vesting_balances',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::wallet_api'
        },
        {
          name => 'get_wallet_filename',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::wallet_api'
        },
        {
          name => 'get_witness',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::wallet_api'
        },
        {
          name => 'gethelp',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::wallet_api'
        },
        {
          name => 'global_settle_asset',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::wallet_api'
        },
        {
          name => 'help',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::wallet_api'
        },
        {
          name => 'import_account_keys',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::wallet_api'
        },
        {
          name => 'import_accounts',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::wallet_api'
        },
        {
          name => 'import_balance',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::wallet_api'
        },
        {
          name => 'import_key',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::wallet_api'
        },
        {
          name => 'info',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::wallet_api'
        },
        {
          name => 'is_locked',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::wallet_api'
        },
        {
          name => 'is_new',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::wallet_api'
        },
        {
          name => 'is_public_key_registered',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::wallet_api'
        },
        {
          name => 'issue_asset',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::wallet_api'
        },
        {
          name => 'list_account_balances',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::wallet_api'
        },
        {
          name => 'list_accounts',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::wallet_api'
        },
        {
          name => 'list_assets',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::wallet_api'
        },
        {
          name => 'list_committee_members',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::wallet_api'
        },
        {
          name => 'list_my_accounts',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::wallet_api'
        },
        {
          name => 'list_witnesses',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::wallet_api'
        },
        {
          name => 'load_wallet_file',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::wallet_api'
        },
        {
          name => 'lock',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::wallet_api'
        },
        {
          name => 'lock_changed',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::wallet_api'
        },
        {
          name => 'my',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::wallet_api'
        },
        {
          name => 'network_add_nodes',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::wallet_api'
        },
        {
          name => 'network_get_connected_peers',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::wallet_api'
        },
        {
          name => 'normalize_brain_key',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::wallet_api'
        },
        {
          name => 'preview_builder_transaction',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::wallet_api'
        },
        {
          name => 'propose_builder_transaction',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::wallet_api'
        },
        {
          name => 'propose_builder_transaction2',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::wallet_api'
        },
        {
          name => 'propose_fee_change',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::wallet_api'
        },
        {
          name => 'propose_parameter_change',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::wallet_api'
        },
        {
          name => 'publish_asset_feed',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::wallet_api'
        },
        {
          name => 'quit',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::wallet_api'
        },
        {
          name => 'read_memo',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::wallet_api'
        },
        {
          name => 'receive_blind_transfer',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::wallet_api'
        },
        {
          name => 'register_account',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::wallet_api'
        },
        {
          name => 'remove_builder_transaction',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::wallet_api'
        },
        {
          name => 'replace_operation_in_builder_transaction',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::wallet_api'
        },
        {
          name => 'reserve_asset',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::wallet_api'
        },
        {
          name => 'save_wallet_file',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::wallet_api'
        },
        {
          name => 'sell_asset',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::wallet_api'
        },
        {
          name => 'serialize_transaction',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::wallet_api'
        },
        {
          name => 'set_desired_witness_and_committee_member_count',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::wallet_api'
        },
        {
          name => 'set_fees_on_builder_transaction',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::wallet_api'
        },
        {
          name => 'set_key_label',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::wallet_api'
        },
        {
          name => 'set_password',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::wallet_api'
        },
        {
          name => 'set_voting_proxy',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::wallet_api'
        },
        {
          name => 'set_wallet_filename',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::wallet_api'
        },
        {
          name => 'settle_asset',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::wallet_api'
        },
        {
          name => 'sign_builder_transaction',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::wallet_api'
        },
        {
          name => 'sign_memo',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::wallet_api'
        },
        {
          name => 'sign_transaction',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::wallet_api'
        },
        {
          name => 'suggest_brain_key',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::wallet_api'
        },
        {
          name => 'transfer',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::wallet_api'
        },
        {
          name => 'transfer2',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::wallet_api'
        },
        {
          name => 'transfer_from_blind',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::wallet_api'
        },
        {
          name => 'transfer_to_blind',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::wallet_api'
        },
        {
          name => 'unlock',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::wallet_api'
        },
        {
          name => 'update_asset',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::wallet_api'
        },
        {
          name => 'update_asset_feed_producers',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::wallet_api'
        },
        {
          name => 'update_asset_issuer',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::wallet_api'
        },
        {
          name => 'update_bitasset',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::wallet_api'
        },
        {
          name => 'update_witness',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::wallet_api'
        },
        {
          name => 'update_worker_votes',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::wallet_api'
        },
        {
          name => 'upgrade_account',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::wallet_api'
        },
        {
          name => 'vote_for_committee_member',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::wallet_api'
        },
        {
          name => 'vote_for_witness',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::wallet_api'
        },
        {
          name => 'wallet_api',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::wallet_api'
        },
        {
          name => 'whitelist_account',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::wallet_api'
        },
        {
          name => 'withdraw_vesting',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::wallet_api'
        },
        {
          name => '~wallet_api',
          virtualness => 'virtual',
          protection => 'public',
          scope => 'graphene::wallet::wallet_api'
        }
      ],
      user_defined => {
        members => [
          {
            kind => 'function',
            name => 'set_key_label',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'These methods are used for stealth transfers This method can be used to set the label for a public key'
                },
                {
                  type => 'parbreak'
                },
                {
                  note => [
                    {
                      type => 'text',
                      content => 'No two keys can have the same label.'
                    }
                  ]
                },
                {
                  return => [
                    {
                      type => 'text',
                      content => 'true if the label was set, otherwise false '
                    }
                  ]
                }
              ]
            },
            type => 'bool',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                type => 'public_key_type'
              },
              {
                declaration_name => 'label',
                type => 'string'
              }
            ]
          },
          {
            kind => 'function',
            name => 'get_key_label',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'string',
            const => 'yes',
            volatile => 'no',
            parameters => [
              {
                type => 'public_key_type'
              }
            ]
          },
          {
            kind => 'function',
            name => 'create_blind_account',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Generates a new blind account for the given brain key and assigns it the given label. '
                }
              ]
            },
            type => 'public_key_type',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'label',
                type => 'string'
              },
              {
                declaration_name => 'brain_key',
                type => 'string'
              }
            ]
          },
          {
            kind => 'function',
            name => 'get_blind_balances',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  return => [
                    {
                      type => 'text',
                      content => 'the total balance of all blinded commitments that can be claimed by the given account key or label '
                    }
                  ]
                }
              ]
            },
            type => 'vector< asset >',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'key_or_label',
                type => 'string'
              }
            ]
          },
          {
            kind => 'function',
            name => 'get_blind_accounts',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  return => [
                    {
                      type => 'text',
                      content => 'all blind accounts '
                    }
                  ]
                }
              ]
            },
            type => 'map< string, public_key_type >',
            const => 'yes',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'get_my_blind_accounts',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  return => [
                    {
                      type => 'text',
                      content => 'all blind accounts for which this wallet has the private key '
                    }
                  ]
                }
              ]
            },
            type => 'map< string, public_key_type >',
            const => 'yes',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'get_public_key',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  return => [
                    {
                      type => 'text',
                      content => 'the public key associated with the given label '
                    }
                  ]
                }
              ]
            },
            type => 'public_key_type',
            const => 'yes',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'label',
                type => 'string'
              }
            ]
          }
        ]
      },
      public_methods => {
        members => [
          {
            kind => 'function',
            name => 'wallet_api',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'initial_data',
                type => 'const wallet_data &'
              },
              {
                declaration_name => 'rapi',
                type => 'fc::api< login_api >'
              }
            ]
          },
          {
            kind => 'function',
            name => '~wallet_api',
            virtualness => 'virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'virtual',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'copy_wallet_file',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'bool',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'destination_filename',
                type => 'string'
              }
            ]
          },
          {
            kind => 'function',
            name => 'derive_private_key',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'fc::ecc::private_key',
            const => 'yes',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'prefix_string',
                type => 'const std::string &'
              },
              {
                declaration_name => 'sequence_number',
                type => 'int'
              }
            ]
          },
          {
            kind => 'function',
            name => 'info',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'variant',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'about',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Returns info such as client version, git version of graphene/fc, version of boost, openssl. '
                },
                {
                  return => [
                    {
                      type => 'text',
                      content => 'compile time info and client and dependencies versions '
                    }
                  ]
                }
              ]
            },
            type => 'variant_object',
            const => 'yes',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'get_block',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'optional< signed_block_with_info >',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'num',
                type => 'uint32_t'
              }
            ]
          },
          {
            kind => 'function',
            name => 'get_account_count',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Returns the number of accounts registered on the blockchain '
                },
                {
                  return => [
                    {
                      type => 'text',
                      content => 'the number of registered accounts '
                    }
                  ]
                }
              ]
            },
            type => 'uint64_t',
            const => 'yes',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'list_my_accounts',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Lists all accounts controlled by this wallet. This returns a list of the full account objects for all accounts whose private keys we possess. '
                },
                {
                  return => [
                    {
                      type => 'text',
                      content => 'a list of account objects '
                    }
                  ]
                }
              ]
            },
            type => 'vector< account_object >',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'list_accounts',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Lists all accounts registered in the blockchain. This returns a list of all account names and their account ids, sorted by account name.'
                },
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Use the '
                },
                {
                  type => 'style',
                  style => 'code',
                  enable => 'yes'
                },
                {
                  type => 'text',
                  content => 'lowerbound'
                },
                {
                  type => 'style',
                  style => 'code',
                  enable => 'no'
                },
                {
                  type => 'text',
                  content => ' and limit parameters to page through the list. To retrieve all accounts, start by setting '
                },
                {
                  type => 'style',
                  style => 'code',
                  enable => 'yes'
                },
                {
                  type => 'text',
                  content => 'lowerbound'
                },
                {
                  type => 'style',
                  style => 'code',
                  enable => 'no'
                },
                {
                  type => 'text',
                  content => ' to the empty string '
                },
                {
                  type => 'style',
                  style => 'code',
                  enable => 'yes'
                },
                {
                  type => 'text',
                  content => '""'
                },
                {
                  type => 'style',
                  style => 'code',
                  enable => 'no'
                },
                {
                  type => 'text',
                  content => ', and then each iteration, pass the last account name returned as the '
                },
                {
                  type => 'style',
                  style => 'code',
                  enable => 'yes'
                },
                {
                  type => 'text',
                  content => 'lowerbound'
                },
                {
                  type => 'style',
                  style => 'code',
                  enable => 'no'
                },
                {
                  type => 'text',
                  content => ' for the next '
                },
                {
                  type => 'style',
                  style => 'code',
                  enable => 'yes'
                },
                {
                  type => 'url',
                  link => 'classgraphene_1_1wallet_1_1wallet__api_1a9f84ebd58c08bfb442f5bd665c1dc048',
                  content => 'list_accounts()'
                },
                {
                  type => 'style',
                  style => 'code',
                  enable => 'no'
                },
                {
                  type => 'text',
                  content => ' call.'
                },
                {
                  type => 'parbreak'
                },
                params => [
                  {
                    parameters => [
                      {
                        name => 'lowerbound'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'the name of the first account to return. If the named account does not exist, the list will start at the account that comes after '
                      },
                      {
                        type => 'style',
                        style => 'code',
                        enable => 'yes'
                      },
                      {
                        type => 'text',
                        content => 'lowerbound'
                      },
                      {
                        type => 'style',
                        style => 'code',
                        enable => 'no'
                      },
                      {
                        type => 'text',
                        content => ' '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'limit'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'the maximum number of accounts to return (max: 1000) '
                      }
                    ]
                  }
                ],
                {
                  return => [
                    {
                      type => 'text',
                      content => 'a list of accounts mapping account names to account ids '
                    }
                  ]
                }
              ]
            },
            type => 'map< string, account_id_type >',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'lowerbound',
                type => 'const string &'
              },
              {
                declaration_name => 'limit',
                type => 'uint32_t'
              }
            ]
          },
          {
            kind => 'function',
            name => 'list_account_balances',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'List the balances of an account. Each account can have multiple balances, one for each type of asset owned by that account. The returned list will only contain assets for which the account has a nonzero balance '
                },
                params => [
                  {
                    parameters => [
                      {
                        name => 'id'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'the name or id of the account whose balances you want '
                      }
                    ]
                  }
                ],
                {
                  return => [
                    {
                      type => 'text',
                      content => 'a list of the given account\'s balances '
                    }
                  ]
                }
              ]
            },
            type => 'vector< asset >',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'id',
                type => 'const string &'
              }
            ]
          },
          {
            kind => 'function',
            name => 'list_assets',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Lists all assets registered on the blockchain.'
                },
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'To list all assets, pass the empty string '
                },
                {
                  type => 'style',
                  style => 'code',
                  enable => 'yes'
                },
                {
                  type => 'text',
                  content => '""'
                },
                {
                  type => 'style',
                  style => 'code',
                  enable => 'no'
                },
                {
                  type => 'text',
                  content => ' for the lowerbound to start at the beginning of the list, and iterate as necessary.'
                },
                {
                  type => 'parbreak'
                },
                params => [
                  {
                    parameters => [
                      {
                        name => 'lowerbound'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'the symbol of the first asset to include in the list. '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'limit'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'the maximum number of assets to return (max: 100) '
                      }
                    ]
                  }
                ],
                {
                  return => [
                    {
                      type => 'text',
                      content => 'the list of asset objects, ordered by symbol '
                    }
                  ]
                }
              ]
            },
            type => 'vector< asset_object >',
            const => 'yes',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'lowerbound',
                type => 'const string &'
              },
              {
                declaration_name => 'limit',
                type => 'uint32_t'
              }
            ]
          },
          {
            kind => 'function',
            name => 'get_asset_count',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Returns assets count registered on the blockchain.'
                },
                {
                  type => 'parbreak'
                },
                {
                  return => [
                    {
                      type => 'text',
                      content => 'assets count '
                    }
                  ]
                }
              ]
            },
            type => 'uint64_t',
            const => 'yes',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'get_account_history',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Returns the most recent operations on the named account.'
                },
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'This returns a list of operation history objects, which describe activity on the account.'
                },
                {
                  type => 'parbreak'
                },
                params => [
                  {
                    parameters => [
                      {
                        name => 'name'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'the name or id of the account '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'limit'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'the number of entries to return (starting from the most recent) '
                      }
                    ]
                  }
                ],
                {
                  return => [
                    {
                      type => 'text',
                      content => 'a list of '
                    },
                    {
                      type => 'style',
                      style => 'code',
                      enable => 'yes'
                    },
                    {
                      type => 'text',
                      content => 'operation_history_objects'
                    },
                    {
                      type => 'style',
                      style => 'code',
                      enable => 'no'
                    },
                    {
                      type => 'text',
                      content => ' '
                    }
                  ]
                }
              ]
            },
            type => 'vector< operation_detail >',
            const => 'yes',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'name',
                type => 'string'
              },
              {
                declaration_name => 'limit',
                type => 'int'
              }
            ]
          },
          {
            kind => 'function',
            name => 'get_relative_account_history',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Returns the relative operations on the named account from start number.'
                },
                {
                  type => 'parbreak'
                },
                params => [
                  {
                    parameters => [
                      {
                        name => 'name'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'the name or id of the account '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'stop'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'Sequence number of earliest operation. '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'limit'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'the number of entries to return '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'start'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'the sequence number where to start looping back throw the history '
                      }
                    ]
                  }
                ],
                {
                  return => [
                    {
                      type => 'text',
                      content => 'a list of '
                    },
                    {
                      type => 'style',
                      style => 'code',
                      enable => 'yes'
                    },
                    {
                      type => 'text',
                      content => 'operation_history_objects'
                    },
                    {
                      type => 'style',
                      style => 'code',
                      enable => 'no'
                    },
                    {
                      type => 'text',
                      content => ' '
                    }
                  ]
                }
              ]
            },
            type => 'vector< operation_detail >',
            const => 'yes',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'name',
                type => 'string'
              },
              {
                declaration_name => 'stop',
                type => 'uint32_t'
              },
              {
                declaration_name => 'limit',
                type => 'int'
              },
              {
                declaration_name => 'start',
                type => 'uint32_t'
              }
            ]
          },
          {
            kind => 'function',
            name => 'get_full_account',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Fetch all objects relevant to the specified account. '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                params => [
                  {
                    parameters => [
                      {
                        name => 'name_or_id'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'Must be the name or ID of an account to retrieve '
                      }
                    ]
                  }
                ],
                {
                  return => [
                    {
                      type => 'text',
                      content => 'All info about the specified account'
                    }
                  ]
                },
                {
                  type => 'text',
                  content => 'This function fetches all relevant objects for the given account. If the string of '
                },
                {
                  type => 'style',
                  style => 'code',
                  enable => 'yes'
                },
                {
                  type => 'text',
                  content => 'name_or_id'
                },
                {
                  type => 'style',
                  style => 'code',
                  enable => 'no'
                },
                {
                  type => 'text',
                  content => ' cannot be tied to an account, that input will be ignored. '
                }
              ]
            },
            type => 'full_account',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'name_or_id',
                type => 'const string &'
              }
            ]
          },
          {
            kind => 'function',
            name => 'get_market_history',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'vector< bucket_object >',
            const => 'yes',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'symbol',
                type => 'string'
              },
              {
                declaration_name => 'symbol2',
                type => 'string'
              },
              {
                declaration_name => 'bucket',
                type => 'uint32_t'
              },
              {
                declaration_name => 'start',
                type => 'fc::time_point_sec'
              },
              {
                declaration_name => 'end',
                type => 'fc::time_point_sec'
              }
            ]
          },
          {
            kind => 'function',
            name => 'get_account_limit_orders',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Fetch all orders relevant to the specified account sorted descendingly by price. '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                params => [
                  {
                    parameters => [
                      {
                        name => 'name_or_id'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'The name or ID of an account to retrieve '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'base'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'Base asset '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'quote'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'Quote asset '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'limit'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'The limitation of items each query can fetch (max: 101) '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'ostart_id'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'Start order id, fetch orders which price are lower than or equal to this order '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'ostart_price'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'Fetch orders with price lower than or equal to this price'
                      }
                    ]
                  }
                ],
                {
                  return => [
                    {
                      type => 'text',
                      content => 'List of orders from '
                    },
                    {
                      type => 'style',
                      style => 'code',
                      enable => 'yes'
                    },
                    {
                      type => 'text',
                      content => 'name_or_id'
                    },
                    {
                      type => 'style',
                      style => 'code',
                      enable => 'no'
                    },
                    {
                      type => 'text',
                      content => ' to the corresponding account'
                    }
                  ]
                },
                {
                  note => [
                    {
                      type => 'list',
                      style => 'ordered',
                      content => [
                        [
                          {
                            type => 'text',
                            content => 'if '
                          },
                          {
                            type => 'style',
                            style => 'code',
                            enable => 'yes'
                          },
                          {
                            type => 'text',
                            content => 'name_or_id'
                          },
                          {
                            type => 'style',
                            style => 'code',
                            enable => 'no'
                          },
                          {
                            type => 'text',
                            content => ' cannot be tied to an account, empty result will be returned'
                          }
                        ],
                        [
                          {
                            type => 'style',
                            style => 'code',
                            enable => 'yes'
                          },
                          {
                            type => 'text',
                            content => 'ostart_id'
                          },
                          {
                            type => 'style',
                            style => 'code',
                            enable => 'no'
                          },
                          {
                            type => 'text',
                            content => ' and '
                          },
                          {
                            type => 'style',
                            style => 'code',
                            enable => 'yes'
                          },
                          {
                            type => 'text',
                            content => 'ostart_price'
                          },
                          {
                            type => 'style',
                            style => 'code',
                            enable => 'no'
                          },
                          {
                            type => 'text',
                            content => ' can be '
                          },
                          {
                            type => 'style',
                            style => 'code',
                            enable => 'yes'
                          },
                          {
                            type => 'text',
                            content => 'null'
                          },
                          {
                            type => 'style',
                            style => 'code',
                            enable => 'no'
                          },
                          {
                            type => 'text',
                            content => ', if so the api will return the "first page" of orders; if '
                          },
                          {
                            type => 'style',
                            style => 'code',
                            enable => 'yes'
                          },
                          {
                            type => 'text',
                            content => 'ostart_id'
                          },
                          {
                            type => 'style',
                            style => 'code',
                            enable => 'no'
                          },
                          {
                            type => 'text',
                            content => ' is specified and valid, its price will be used to do page query preferentially, otherwise the '
                          },
                          {
                            type => 'style',
                            style => 'code',
                            enable => 'yes'
                          },
                          {
                            type => 'text',
                            content => 'ostart_price'
                          },
                          {
                            type => 'style',
                            style => 'code',
                            enable => 'no'
                          },
                          {
                            type => 'text',
                            content => ' will be used '
                          }
                        ]
                      ]
                    }
                  ]
                }
              ]
            },
            type => 'vector< limit_order_object >',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'name_or_id',
                type => 'const string &'
              },
              {
                declaration_name => 'base',
                type => 'const string &'
              },
              {
                declaration_name => 'quote',
                type => 'const string &'
              },
              {
                declaration_name => 'limit',
                type => 'uint32_t',
                default_value => '101'
              },
              {
                declaration_name => 'ostart_id',
                type => 'optional< limit_order_id_type >',
                default_value => 'optional< limit_order_id_type >()'
              },
              {
                declaration_name => 'ostart_price',
                type => 'optional< price >',
                default_value => 'optional< price >()'
              }
            ]
          },
          {
            kind => 'function',
            name => 'get_limit_orders',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'vector< limit_order_object >',
            const => 'yes',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'a',
                type => 'string'
              },
              {
                declaration_name => 'b',
                type => 'string'
              },
              {
                declaration_name => 'limit',
                type => 'uint32_t'
              }
            ]
          },
          {
            kind => 'function',
            name => 'get_call_orders',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'vector< call_order_object >',
            const => 'yes',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'a',
                type => 'string'
              },
              {
                declaration_name => 'limit',
                type => 'uint32_t'
              }
            ]
          },
          {
            kind => 'function',
            name => 'get_settle_orders',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'vector< force_settlement_object >',
            const => 'yes',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'a',
                type => 'string'
              },
              {
                declaration_name => 'limit',
                type => 'uint32_t'
              }
            ]
          },
          {
            kind => 'function',
            name => 'get_collateral_bids',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Returns the collateral_bid object for the given MPA'
                },
                {
                  type => 'parbreak'
                },
                params => [
                  {
                    parameters => [
                      {
                        name => 'asset'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'the name or id of the asset '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'limit'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'the number of entries to return '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'start'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'the sequence number where to start looping back throw the history '
                      }
                    ]
                  }
                ],
                {
                  return => [
                    {
                      type => 'text',
                      content => 'a list of '
                    },
                    {
                      type => 'style',
                      style => 'code',
                      enable => 'yes'
                    },
                    {
                      type => 'text',
                      content => 'collateral_bid_objects'
                    },
                    {
                      type => 'style',
                      style => 'code',
                      enable => 'no'
                    },
                    {
                      type => 'text',
                      content => ' '
                    }
                  ]
                }
              ]
            },
            type => 'vector< collateral_bid_object >',
            const => 'yes',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'asset',
                type => 'string'
              },
              {
                declaration_name => 'limit',
                type => 'uint32_t',
                default_value => '100'
              },
              {
                declaration_name => 'start',
                type => 'uint32_t',
                default_value => '0'
              }
            ]
          },
          {
            kind => 'function',
            name => 'get_global_properties',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Returns the block chain\'s slowly-changing settings. This object contains all of the properties of the blockchain that are fixed or that change only once per maintenance interval (daily) such as the current list of witnesses, committee_members, block interval, etc. '
                },
                {
                  see => [
                    {
                      type => 'style',
                      style => 'code',
                      enable => 'yes'
                    },
                    {
                      type => 'url',
                      link => 'classgraphene_1_1wallet_1_1wallet__api_1ab050f5ee3b059a96f9a13878b671b2bf',
                      content => 'get_dynamic_global_properties()'
                    },
                    {
                      type => 'style',
                      style => 'code',
                      enable => 'no'
                    },
                    {
                      type => 'text',
                      content => ' for frequently changing properties '
                    }
                  ]
                },
                {
                  return => [
                    {
                      type => 'text',
                      content => 'the global properties '
                    }
                  ]
                }
              ]
            },
            type => 'global_property_object',
            const => 'yes',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'get_account_history_by_operations',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Get operations relevant to the specified account filtering by operation type, with transaction id'
                },
                {
                  type => 'parbreak'
                },
                params => [
                  {
                    parameters => [
                      {
                        name => 'name'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'the name or id of the account, whose history shoulde be queried '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'operation_types'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'The IDs of the operation we want to get operations in the account( 0 = transfer , 1 = limit order create, ...) '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'start'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'the sequence number where to start looping back throw the history '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'limit'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'the max number of entries to return (from start number) '
                      }
                    ]
                  }
                ],
                {
                  return => [
                    {
                      type => 'url',
                      link => 'structgraphene_1_1wallet_1_1account__history__operation__detail',
                      content => 'account_history_operation_detail'
                    },
                    {
                      type => 'text',
                      content => ' '
                    }
                  ]
                }
              ]
            },
            type => 'account_history_operation_detail',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'name',
                type => 'string'
              },
              {
                declaration_name => 'operation_types',
                type => 'vector< uint16_t >'
              },
              {
                declaration_name => 'start',
                type => 'uint32_t'
              },
              {
                declaration_name => 'limit',
                type => 'int'
              }
            ]
          },
          {
            kind => 'function',
            name => 'get_dynamic_global_properties',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Returns the block chain\'s rapidly-changing properties. The returned object contains information that changes every block interval such as the head block number, the next witness, etc. '
                },
                {
                  see => [
                    {
                      type => 'style',
                      style => 'code',
                      enable => 'yes'
                    },
                    {
                      type => 'url',
                      link => 'classgraphene_1_1wallet_1_1wallet__api_1a85481b478b00eec558b21e43b917738f',
                      content => 'get_global_properties()'
                    },
                    {
                      type => 'style',
                      style => 'code',
                      enable => 'no'
                    },
                    {
                      type => 'text',
                      content => ' for less-frequently changing properties '
                    }
                  ]
                },
                {
                  return => [
                    {
                      type => 'text',
                      content => 'the dynamic global properties '
                    }
                  ]
                }
              ]
            },
            type => 'dynamic_global_property_object',
            const => 'yes',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'get_account',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Returns information about the given account.'
                },
                {
                  type => 'parbreak'
                },
                params => [
                  {
                    parameters => [
                      {
                        name => 'account_name_or_id'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'the name or id of the account to provide information about '
                      }
                    ]
                  }
                ],
                {
                  return => [
                    {
                      type => 'text',
                      content => 'the public account data stored in the blockchain '
                    }
                  ]
                }
              ]
            },
            type => 'account_object',
            const => 'yes',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'account_name_or_id',
                type => 'string'
              }
            ]
          },
          {
            kind => 'function',
            name => 'get_asset',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Returns information about the given asset. '
                },
                params => [
                  {
                    parameters => [
                      {
                        name => 'asset_name_or_id'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'the symbol or id of the asset in question '
                      }
                    ]
                  }
                ],
                {
                  return => [
                    {
                      type => 'text',
                      content => 'the information about the asset stored in the block chain '
                    }
                  ]
                }
              ]
            },
            type => 'asset_object',
            const => 'yes',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'asset_name_or_id',
                type => 'string'
              }
            ]
          },
          {
            kind => 'function',
            name => 'get_bitasset_data',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Returns the BitAsset-specific data for a given asset. Market-issued assets\'s behavior are determined both by their "BitAsset Data" and their basic asset data, as returned by '
                },
                {
                  type => 'style',
                  style => 'code',
                  enable => 'yes'
                },
                {
                  type => 'url',
                  link => 'classgraphene_1_1wallet_1_1wallet__api_1adeba50e052ff409fe1d19cc9e50e9a8f',
                  content => 'get_asset()'
                },
                {
                  type => 'style',
                  style => 'code',
                  enable => 'no'
                },
                {
                  type => 'text',
                  content => '. '
                },
                params => [
                  {
                    parameters => [
                      {
                        name => 'asset_name_or_id'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'the symbol or id of the BitAsset in question '
                      }
                    ]
                  }
                ],
                {
                  return => [
                    {
                      type => 'text',
                      content => 'the BitAsset-specific data for this asset '
                    }
                  ]
                }
              ]
            },
            type => 'asset_bitasset_data_object',
            const => 'yes',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'asset_name_or_id',
                type => 'string'
              }
            ]
          },
          {
            kind => 'function',
            name => 'get_account_id',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Lookup the id of a named account. '
                },
                params => [
                  {
                    parameters => [
                      {
                        name => 'account_name_or_id'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'the name of the account to look up '
                      }
                    ]
                  }
                ],
                {
                  return => [
                    {
                      type => 'text',
                      content => 'the id of the named account '
                    }
                  ]
                }
              ]
            },
            type => 'account_id_type',
            const => 'yes',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'account_name_or_id',
                type => 'string'
              }
            ]
          },
          {
            kind => 'function',
            name => 'get_asset_id',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Lookup the id of a named asset. '
                },
                params => [
                  {
                    parameters => [
                      {
                        name => 'asset_name_or_id'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'the symbol of an asset to look up '
                      }
                    ]
                  }
                ],
                {
                  return => [
                    {
                      type => 'text',
                      content => 'the id of the given asset '
                    }
                  ]
                }
              ]
            },
            type => 'asset_id_type',
            const => 'yes',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'asset_name_or_id',
                type => 'string'
              }
            ]
          },
          {
            kind => 'function',
            name => 'get_object',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Returns the blockchain object corresponding to the given id.'
                },
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'This generic function can be used to retrieve any object from the blockchain that is assigned an ID. Certain types of objects have specialized convenience functions to return their objects - e.g., assets have '
                },
                {
                  type => 'style',
                  style => 'code',
                  enable => 'yes'
                },
                {
                  type => 'url',
                  link => 'classgraphene_1_1wallet_1_1wallet__api_1adeba50e052ff409fe1d19cc9e50e9a8f',
                  content => 'get_asset()'
                },
                {
                  type => 'style',
                  style => 'code',
                  enable => 'no'
                },
                {
                  type => 'text',
                  content => ', accounts have '
                },
                {
                  type => 'style',
                  style => 'code',
                  enable => 'yes'
                },
                {
                  type => 'url',
                  link => 'classgraphene_1_1wallet_1_1wallet__api_1a479f699f7b704636e80a44bf8397d341',
                  content => 'get_account()'
                },
                {
                  type => 'style',
                  style => 'code',
                  enable => 'no'
                },
                {
                  type => 'text',
                  content => ', but this function will work for any object.'
                },
                {
                  type => 'parbreak'
                },
                params => [
                  {
                    parameters => [
                      {
                        name => 'id'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'the id of the object to return '
                      }
                    ]
                  }
                ],
                {
                  return => [
                    {
                      type => 'text',
                      content => 'the requested object '
                    }
                  ]
                }
              ]
            },
            type => 'variant',
            const => 'yes',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'id',
                type => 'object_id_type'
              }
            ]
          },
          {
            kind => 'function',
            name => 'get_wallet_filename',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Returns the current wallet filename.'
                },
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'This is the filename that will be used when automatically saving the wallet.'
                },
                {
                  type => 'parbreak'
                },
                {
                  see => [
                    {
                      type => 'url',
                      link => 'classgraphene_1_1wallet_1_1wallet__api_1aa5804e1ee29ff8f2c3bcc668ad2bfbcd',
                      content => 'set_wallet_filename()'
                    },
                    {
                      type => 'text',
                      content => ' '
                    }
                  ]
                },
                {
                  return => [
                    {
                      type => 'text',
                      content => 'the wallet filename '
                    }
                  ]
                }
              ]
            },
            type => 'string',
            const => 'yes',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'get_private_key',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Get the WIF private key corresponding to a public key. The private key must already be in the wallet. '
                }
              ]
            },
            type => 'string',
            const => 'yes',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'pubkey',
                type => 'public_key_type'
              }
            ]
          },
          {
            kind => 'function',
            name => 'begin_builder_transaction',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'transaction_handle_type',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'add_operation_to_builder_transaction',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'transaction_handle',
                type => 'transaction_handle_type'
              },
              {
                declaration_name => 'op',
                type => 'const operation &'
              }
            ]
          },
          {
            kind => 'function',
            name => 'replace_operation_in_builder_transaction',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'handle',
                type => 'transaction_handle_type'
              },
              {
                declaration_name => 'operation_index',
                type => 'unsigned'
              },
              {
                declaration_name => 'new_op',
                type => 'const operation &'
              }
            ]
          },
          {
            kind => 'function',
            name => 'set_fees_on_builder_transaction',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'asset',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'handle',
                type => 'transaction_handle_type'
              },
              {
                declaration_name => 'fee_asset',
                type => 'string',
                default_value => 'GRAPHENE_SYMBOL'
              }
            ]
          },
          {
            kind => 'function',
            name => 'preview_builder_transaction',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'transaction',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'handle',
                type => 'transaction_handle_type'
              }
            ]
          },
          {
            kind => 'function',
            name => 'sign_builder_transaction',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'signed_transaction',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'transaction_handle',
                type => 'transaction_handle_type'
              },
              {
                declaration_name => 'broadcast',
                type => 'bool',
                default_value => 'true'
              }
            ]
          },
          {
            kind => 'function',
            name => 'broadcast_transaction',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Broadcast signed transaction '
                },
                params => [
                  {
                    parameters => [
                      {
                        name => 'tx'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'signed transaction '
                      }
                    ]
                  }
                ],
                {
                  return => [
                    {
                      type => 'text',
                      content => 'the transaction ID along with the signed transaction. '
                    }
                  ]
                }
              ]
            },
            type => 'pair< transaction_id_type, signed_transaction >',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'tx',
                type => 'signed_transaction'
              }
            ]
          },
          {
            kind => 'function',
            name => 'propose_builder_transaction',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'signed_transaction',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'handle',
                type => 'transaction_handle_type'
              },
              {
                declaration_name => 'expiration',
                type => 'time_point_sec',
                default_value => 'time_point::now()+fc::minutes(1)'
              },
              {
                declaration_name => 'review_period_seconds',
                type => 'uint32_t',
                default_value => '0'
              },
              {
                declaration_name => 'broadcast',
                type => 'bool',
                default_value => 'true'
              }
            ]
          },
          {
            kind => 'function',
            name => 'propose_builder_transaction2',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'signed_transaction',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'handle',
                type => 'transaction_handle_type'
              },
              {
                declaration_name => 'account_name_or_id',
                type => 'string'
              },
              {
                declaration_name => 'expiration',
                type => 'time_point_sec',
                default_value => 'time_point::now()+fc::minutes(1)'
              },
              {
                declaration_name => 'review_period_seconds',
                type => 'uint32_t',
                default_value => '0'
              },
              {
                declaration_name => 'broadcast',
                type => 'bool',
                default_value => 'true'
              }
            ]
          },
          {
            kind => 'function',
            name => 'remove_builder_transaction',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'handle',
                type => 'transaction_handle_type'
              }
            ]
          },
          {
            kind => 'function',
            name => 'is_new',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Checks whether the wallet has just been created and has not yet had a password set.'
                },
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Calling '
                },
                {
                  type => 'style',
                  style => 'code',
                  enable => 'yes'
                },
                {
                  type => 'text',
                  content => 'set_password'
                },
                {
                  type => 'style',
                  style => 'code',
                  enable => 'no'
                },
                {
                  type => 'text',
                  content => ' will transition the wallet to the locked state. '
                },
                {
                  return => [
                    {
                      type => 'text',
                      content => 'true if the wallet is new '
                    }
                  ]
                }
              ]
            },
            type => 'bool',
            const => 'yes',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'is_locked',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Checks whether the wallet is locked (is unable to use its private keys).'
                },
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'This state can be changed by calling '
                },
                {
                  type => 'style',
                  style => 'code',
                  enable => 'yes'
                },
                {
                  type => 'url',
                  link => 'classgraphene_1_1wallet_1_1wallet__api_1a5e7950c9039f0c59e1266d6732d94e09',
                  content => 'lock()'
                },
                {
                  type => 'style',
                  style => 'code',
                  enable => 'no'
                },
                {
                  type => 'text',
                  content => ' or '
                },
                {
                  type => 'style',
                  style => 'code',
                  enable => 'yes'
                },
                {
                  type => 'url',
                  link => 'classgraphene_1_1wallet_1_1wallet__api_1ae16994a63cfdef1616b6b968117fd29d',
                  content => 'unlock()'
                },
                {
                  type => 'style',
                  style => 'code',
                  enable => 'no'
                },
                {
                  type => 'text',
                  content => '. '
                },
                {
                  return => [
                    {
                      type => 'text',
                      content => 'true if the wallet is locked '
                    }
                  ]
                }
              ]
            },
            type => 'bool',
            const => 'yes',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'lock',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Locks the wallet immediately. '
                }
              ]
            },
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'unlock',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Unlocks the wallet.'
                },
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'The wallet remain unlocked until the '
                },
                {
                  type => 'style',
                  style => 'code',
                  enable => 'yes'
                },
                {
                  type => 'text',
                  content => 'lock'
                },
                {
                  type => 'style',
                  style => 'code',
                  enable => 'no'
                },
                {
                  type => 'text',
                  content => ' is called or the program exits. '
                },
                params => [
                  {
                    parameters => [
                      {
                        name => 'password'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'the password previously set with '
                      },
                      {
                        type => 'style',
                        style => 'code',
                        enable => 'yes'
                      },
                      {
                        type => 'url',
                        link => 'classgraphene_1_1wallet_1_1wallet__api_1a2a5d174ec4fde8633b8e962fabc00804',
                        content => 'set_password()'
                      },
                      {
                        type => 'style',
                        style => 'code',
                        enable => 'no'
                      },
                      {
                        type => 'text',
                        content => ' '
                      }
                    ]
                  }
                ]
              ]
            },
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'password',
                type => 'string'
              }
            ]
          },
          {
            kind => 'function',
            name => 'set_password',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Sets a new password on the wallet.'
                },
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'The wallet must be either \'new\' or \'unlocked\' to execute this command. '
                }
              ]
            },
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'password',
                type => 'string'
              }
            ]
          },
          {
            kind => 'function',
            name => 'dump_private_keys',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Dumps all private keys owned by the wallet.'
                },
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'The keys are printed in WIF format. You can import these keys into another wallet using '
                },
                {
                  type => 'style',
                  style => 'code',
                  enable => 'yes'
                },
                {
                  type => 'url',
                  link => 'classgraphene_1_1wallet_1_1wallet__api_1a45e93f4a83143cb8ec6a09b67f91f4bb',
                  content => 'import_key()'
                },
                {
                  type => 'style',
                  style => 'code',
                  enable => 'no'
                },
                {
                  type => 'text',
                  content => ' '
                },
                {
                  return => [
                    {
                      type => 'text',
                      content => 'a map containing the private keys, indexed by their public key '
                    }
                  ]
                }
              ]
            },
            type => 'map< public_key_type, string >',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'help',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Returns a list of all commands supported by the wallet API.'
                },
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'This lists each command, along with its arguments and return types. For more detailed help on a single command, use '
                },
                {
                  type => 'style',
                  style => 'code',
                  enable => 'yes'
                },
                {
                  type => 'text',
                  content => 'get_help()'
                },
                {
                  type => 'style',
                  style => 'code',
                  enable => 'no'
                },
                {
                  type => 'text',
                  content => ' '
                },
                {
                  type => 'parbreak'
                },
                {
                  return => [
                    {
                      type => 'text',
                      content => 'a multi-line string suitable for displaying on a terminal '
                    }
                  ]
                }
              ]
            },
            type => 'string',
            const => 'yes',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'gethelp',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Returns detailed help on a single API command. '
                },
                params => [
                  {
                    parameters => [
                      {
                        name => 'method'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'the name of the API command you want help with '
                      }
                    ]
                  }
                ],
                {
                  return => [
                    {
                      type => 'text',
                      content => 'a multi-line string suitable for displaying on a terminal '
                    }
                  ]
                }
              ]
            },
            type => 'string',
            const => 'yes',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'method',
                type => 'const string &'
              }
            ]
          },
          {
            kind => 'function',
            name => 'load_wallet_file',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Loads a specified Graphene wallet.'
                },
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'The current wallet is closed before the new wallet is loaded.'
                },
                {
                  type => 'parbreak'
                },
                {
                  warning => [
                    {
                      type => 'text',
                      content => 'This does not change the filename that will be used for future wallet writes, so this may cause you to overwrite your original wallet unless you also call '
                    },
                    {
                      type => 'style',
                      style => 'code',
                      enable => 'yes'
                    },
                    {
                      type => 'url',
                      link => 'classgraphene_1_1wallet_1_1wallet__api_1aa5804e1ee29ff8f2c3bcc668ad2bfbcd',
                      content => 'set_wallet_filename()'
                    },
                    {
                      type => 'style',
                      style => 'code',
                      enable => 'no'
                    },
                    {
                      type => 'text',
                      content => ' '
                    }
                  ]
                },
                params => [
                  {
                    parameters => [
                      {
                        name => 'wallet_filename'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'the filename of the wallet JSON file to load. If '
                      },
                      {
                        type => 'style',
                        style => 'code',
                        enable => 'yes'
                      },
                      {
                        type => 'text',
                        content => 'wallet_filename'
                      },
                      {
                        type => 'style',
                        style => 'code',
                        enable => 'no'
                      },
                      {
                        type => 'text',
                        content => ' is empty, it reloads the existing wallet file '
                      }
                    ]
                  }
                ],
                {
                  return => [
                    {
                      type => 'text',
                      content => 'true if the specified wallet is loaded '
                    }
                  ]
                }
              ]
            },
            type => 'bool',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'wallet_filename',
                type => 'string',
                default_value => '""'
              }
            ]
          },
          {
            kind => 'function',
            name => 'quit',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Quitting from Netizens wallet.'
                },
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'The current wallet will be closed. '
                }
              ]
            },
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'save_wallet_file',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Saves the current wallet to the given filename.'
                },
                {
                  type => 'parbreak'
                },
                {
                  warning => [
                    {
                      type => 'text',
                      content => 'This does not change the wallet filename that will be used for future writes, so think of this function as \'Save a Copy As...\' instead of \'Save As...\'. Use '
                    },
                    {
                      type => 'style',
                      style => 'code',
                      enable => 'yes'
                    },
                    {
                      type => 'url',
                      link => 'classgraphene_1_1wallet_1_1wallet__api_1aa5804e1ee29ff8f2c3bcc668ad2bfbcd',
                      content => 'set_wallet_filename()'
                    },
                    {
                      type => 'style',
                      style => 'code',
                      enable => 'no'
                    },
                    {
                      type => 'text',
                      content => ' to make the filename persist. '
                    }
                  ]
                },
                params => [
                  {
                    parameters => [
                      {
                        name => 'wallet_filename'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'the filename of the new wallet JSON file to create or overwrite. If '
                      },
                      {
                        type => 'style',
                        style => 'code',
                        enable => 'yes'
                      },
                      {
                        type => 'text',
                        content => 'wallet_filename'
                      },
                      {
                        type => 'style',
                        style => 'code',
                        enable => 'no'
                      },
                      {
                        type => 'text',
                        content => ' is empty, save to the current filename. '
                      }
                    ]
                  }
                ]
              ]
            },
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'wallet_filename',
                type => 'string',
                default_value => '""'
              }
            ]
          },
          {
            kind => 'function',
            name => 'set_wallet_filename',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Sets the wallet filename used for future writes.'
                },
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'This does not trigger a save, it only changes the default filename that will be used the next time a save is triggered.'
                },
                {
                  type => 'parbreak'
                },
                params => [
                  {
                    parameters => [
                      {
                        name => 'wallet_filename'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'the new filename to use for future saves '
                      }
                    ]
                  }
                ]
              ]
            },
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'wallet_filename',
                type => 'string'
              }
            ]
          },
          {
            kind => 'function',
            name => 'suggest_brain_key',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Suggests a safe brain key to use for creating your account. '
                },
                {
                  type => 'style',
                  style => 'code',
                  enable => 'yes'
                },
                {
                  type => 'url',
                  link => 'classgraphene_1_1wallet_1_1wallet__api_1ac27928f7ca6db74e0ec4aee3ff0c545e',
                  content => 'create_account_with_brain_key()'
                },
                {
                  type => 'style',
                  style => 'code',
                  enable => 'no'
                },
                {
                  type => 'text',
                  content => ' requires you to specify a \'brain key\', a long passphrase that provides enough entropy to generate cyrptographic keys. This function will suggest a suitably random string that should be easy to write down (and, with effort, memorize). '
                },
                {
                  return => [
                    {
                      type => 'text',
                      content => 'a suggested brain_key '
                    }
                  ]
                }
              ]
            },
            type => 'brain_key_info',
            const => 'yes',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'derive_owner_keys_from_brain_key',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Derive any number of '
                },
                {
                  type => 'style',
                  style => 'italic',
                  enable => 'yes'
                },
                {
                  type => 'text',
                  content => 'possible'
                },
                {
                  type => 'style',
                  style => 'italic',
                  enable => 'no'
                },
                {
                  type => 'text',
                  content => ' owner keys from a given brain key.'
                },
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'NOTE: These keys may or may not match with the owner keys of any account. This function is merely intended to assist with account or key recovery.'
                },
                {
                  type => 'parbreak'
                },
                {
                  see => [
                    {
                      type => 'url',
                      link => 'classgraphene_1_1wallet_1_1wallet__api_1a3062c701e73acd60c6ffa74ea47c5cc1',
                      content => 'suggest_brain_key()'
                    }
                  ]
                },
                params => [
                  {
                    parameters => [
                      {
                        name => 'brain_key'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'Brain key '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'number_of_desired_keys'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'Number of desired keys '
                      }
                    ]
                  }
                ],
                {
                  return => [
                    {
                      type => 'text',
                      content => 'A list of keys that are deterministically derived from the brainkey '
                    }
                  ]
                }
              ]
            },
            type => 'vector< brain_key_info >',
            const => 'yes',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'brain_key',
                type => 'string'
              },
              {
                declaration_name => 'number_of_desired_keys',
                type => 'int',
                default_value => '1'
              }
            ]
          },
          {
            kind => 'function',
            name => 'is_public_key_registered',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Determine whether a textual representation of a public key (in Base-58 format) is '
                },
                {
                  type => 'style',
                  style => 'italic',
                  enable => 'yes'
                },
                {
                  type => 'text',
                  content => 'currently'
                },
                {
                  type => 'style',
                  style => 'italic',
                  enable => 'no'
                },
                {
                  type => 'text',
                  content => ' linked to any '
                },
                {
                  type => 'style',
                  style => 'italic',
                  enable => 'yes'
                },
                {
                  type => 'text',
                  content => 'registered'
                },
                {
                  type => 'style',
                  style => 'italic',
                  enable => 'no'
                },
                {
                  type => 'text',
                  content => ' (i.e. non-stealth) account on the blockchain '
                },
                params => [
                  {
                    parameters => [
                      {
                        name => 'public_key'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'Public key '
                      }
                    ]
                  }
                ],
                {
                  return => [
                    {
                      type => 'text',
                      content => 'Whether a public key is known '
                    }
                  ]
                }
              ]
            },
            type => 'bool',
            const => 'yes',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'public_key',
                type => 'string'
              }
            ]
          },
          {
            kind => 'function',
            name => 'serialize_transaction',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'text',
                  content => 'Converts a signed_transaction in JSON form to its binary representation.'
                },
                {
                  type => 'parbreak'
                },
                params => [
                  {
                    parameters => [
                      {
                        name => 'tx'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'the transaction to serialize '
                      }
                    ]
                  }
                ],
                {
                  return => [
                    {
                      type => 'text',
                      content => 'the binary form of the transaction. It will not be hex encoded, this returns a raw string that may have null characters embedded in it '
                    }
                  ]
                }
              ]
            },
            type => 'string',
            const => 'yes',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'tx',
                type => 'signed_transaction'
              }
            ]
          },
          {
            kind => 'function',
            name => 'import_key',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Imports the private key for an existing account.'
                },
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'The private key must match either an owner key or an active key for the named account.'
                },
                {
                  type => 'parbreak'
                },
                {
                  see => [
                    {
                      type => 'url',
                      link => 'classgraphene_1_1wallet_1_1wallet__api_1aeffade111b4c8ba9b8b9e962d89ae138',
                      content => 'dump_private_keys()'
                    }
                  ]
                },
                params => [
                  {
                    parameters => [
                      {
                        name => 'account_name_or_id'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'the account owning the key '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'wif_key'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'the private key in WIF format '
                      }
                    ]
                  }
                ],
                {
                  return => [
                    {
                      type => 'text',
                      content => 'true if the key was imported '
                    }
                  ]
                }
              ]
            },
            type => 'bool',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'account_name_or_id',
                type => 'string'
              },
              {
                declaration_name => 'wif_key',
                type => 'string'
              }
            ]
          },
          {
            kind => 'function',
            name => 'import_accounts',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'map< string, bool >',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'filename',
                type => 'string'
              },
              {
                declaration_name => 'password',
                type => 'string'
              }
            ]
          },
          {
            kind => 'function',
            name => 'import_account_keys',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'bool',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'filename',
                type => 'string'
              },
              {
                declaration_name => 'password',
                type => 'string'
              },
              {
                declaration_name => 'src_account_name',
                type => 'string'
              },
              {
                declaration_name => 'dest_account_name',
                type => 'string'
              }
            ]
          },
          {
            kind => 'function',
            name => 'import_balance',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'This call will construct transaction(s) that will claim all balances controled by wif_keys and deposit them into the given account. '
                }
              ]
            },
            type => 'vector< signed_transaction >',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'account_name_or_id',
                type => 'string'
              },
              {
                declaration_name => 'wif_keys',
                type => 'const vector< string > &'
              },
              {
                declaration_name => 'broadcast',
                type => 'bool'
              }
            ]
          },
          {
            kind => 'function',
            name => 'normalize_brain_key',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Transforms a brain key to reduce the chance of errors when re-entering the key from memory.'
                },
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'This takes a user-supplied brain key and normalizes it into the form used for generating private keys. In particular, this upper-cases all ASCII characters and collapses multiple spaces into one. '
                },
                params => [
                  {
                    parameters => [
                      {
                        name => 's'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'the brain key as supplied by the user '
                      }
                    ]
                  }
                ],
                {
                  return => [
                    {
                      type => 'text',
                      content => 'the brain key in its normalized form '
                    }
                  ]
                }
              ]
            },
            type => 'string',
            const => 'yes',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 's',
                type => 'string'
              }
            ]
          },
          {
            kind => 'function',
            name => 'register_account',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Registers a third party\'s account on the blockckain.'
                },
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'This function is used to register an account for which you do not own the private keys. When acting as a registrar, an end user will generate their own private keys and send you the public keys. The registrar will use this function to register the account on behalf of the end user.'
                },
                {
                  type => 'parbreak'
                },
                {
                  see => [
                    {
                      type => 'url',
                      link => 'classgraphene_1_1wallet_1_1wallet__api_1ac27928f7ca6db74e0ec4aee3ff0c545e',
                      content => 'create_account_with_brain_key()'
                    }
                  ]
                },
                params => [
                  {
                    parameters => [
                      {
                        name => 'name'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'the name of the account, must be unique on the blockchain. Shorter names are more expensive to register; the rules are still in flux, but in general names of more than 8 characters with at least one digit will be cheap. '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'owner'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'the owner key for the new account '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'active'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'the active key for the new account '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'registrar_account'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'the account which will pay the fee to register the user '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'referrer_account'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'the account who is acting as a referrer, and may receive a portion of the user\'s transaction fees. This can be the same as the registrar_account if there is no referrer. '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'referrer_percent'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'the percentage (0 - 100) of the new user\'s transaction fees not claimed by the blockchain that will be distributed to the referrer; the rest will be sent to the registrar. Will be multiplied by GRAPHENE_1_PERCENT when constructing the transaction. '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'broadcast'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'true to broadcast the transaction on the network '
                      }
                    ]
                  }
                ],
                {
                  return => [
                    {
                      type => 'text',
                      content => 'the signed transaction registering the account '
                    }
                  ]
                }
              ]
            },
            type => 'signed_transaction',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'name',
                type => 'string'
              },
              {
                declaration_name => 'owner',
                type => 'public_key_type'
              },
              {
                declaration_name => 'active',
                type => 'public_key_type'
              },
              {
                declaration_name => 'registrar_account',
                type => 'string'
              },
              {
                declaration_name => 'referrer_account',
                type => 'string'
              },
              {
                declaration_name => 'referrer_percent',
                type => 'uint32_t'
              },
              {
                declaration_name => 'broadcast',
                type => 'bool',
                default_value => 'false'
              }
            ]
          },
          {
            kind => 'function',
            name => 'upgrade_account',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Upgrades an account to prime status. This makes the account holder a \'lifetime member\'.'
                },
                {
                  type => 'parbreak'
                },
                {
                  type => 'xrefitem',
                  content => [
                    {
                      type => 'text',
                      content => 'there is no option for annual membership '
                    }
                  ]
                },
                params => [
                  {
                    parameters => [
                      {
                        name => 'name'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'the name or id of the account to upgrade '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'broadcast'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'true to broadcast the transaction on the network '
                      }
                    ]
                  }
                ],
                {
                  return => [
                    {
                      type => 'text',
                      content => 'the signed transaction upgrading the account '
                    }
                  ]
                }
              ]
            },
            type => 'signed_transaction',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'name',
                type => 'string'
              },
              {
                declaration_name => 'broadcast',
                type => 'bool'
              }
            ]
          },
          {
            kind => 'function',
            name => 'create_account_with_brain_key',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Creates a new account and registers it on the blockchain.'
                },
                {
                  type => 'parbreak'
                },
                {
                  type => 'xrefitem',
                  content => [
                    {
                      type => 'text',
                      content => 'why no referrer_percent here?'
                    }
                  ]
                },
                {
                  type => 'parbreak'
                },
                {
                  see => [
                    {
                      type => 'url',
                      link => 'classgraphene_1_1wallet_1_1wallet__api_1a3062c701e73acd60c6ffa74ea47c5cc1',
                      content => 'suggest_brain_key()'
                    },
                    {
                      type => 'text',
                      content => ' '
                    },
                    {
                      type => 'parbreak'
                    },
                    {
                      type => 'url',
                      link => 'classgraphene_1_1wallet_1_1wallet__api_1aba1c5e3025f44273fb19e264c2b3ec2f',
                      content => 'register_account()'
                    }
                  ]
                },
                params => [
                  {
                    parameters => [
                      {
                        name => 'brain_key'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'the brain key used for generating the account\'s private keys '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'account_name'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'the name of the account, must be unique on the blockchain. Shorter names are more expensive to register; the rules are still in flux, but in general names of more than 8 characters with at least one digit will be cheap. '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'registrar_account'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'the account which will pay the fee to register the user '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'referrer_account'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'the account who is acting as a referrer, and may receive a portion of the user\'s transaction fees. This can be the same as the registrar_account if there is no referrer. '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'broadcast'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'true to broadcast the transaction on the network '
                      }
                    ]
                  }
                ],
                {
                  return => [
                    {
                      type => 'text',
                      content => 'the signed transaction registering the account '
                    }
                  ]
                }
              ]
            },
            type => 'signed_transaction',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'brain_key',
                type => 'string'
              },
              {
                declaration_name => 'account_name',
                type => 'string'
              },
              {
                declaration_name => 'registrar_account',
                type => 'string'
              },
              {
                declaration_name => 'referrer_account',
                type => 'string'
              },
              {
                declaration_name => 'broadcast',
                type => 'bool',
                default_value => 'false'
              }
            ]
          },
          {
            kind => 'function',
            name => 'transfer',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Transfer an amount from one account to another. '
                },
                params => [
                  {
                    parameters => [
                      {
                        name => 'from'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'the name or id of the account sending the funds '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'to'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'the name or id of the account receiving the funds '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'amount'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'the amount to send (in nominal units - to send half of a NTZ, specify 0.5) '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'asset_symbol'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'the symbol or id of the asset to send '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'memo'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'a memo to attach to the transaction. The memo will be encrypted in the transaction and readable for the receiver. There is no length limit other than the limit imposed by maximum transaction size, but transaction increase with transaction size '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'broadcast'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'true to broadcast the transaction on the network '
                      }
                    ]
                  }
                ],
                {
                  return => [
                    {
                      type => 'text',
                      content => 'the signed transaction transferring funds '
                    }
                  ]
                }
              ]
            },
            type => 'signed_transaction',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'from',
                type => 'string'
              },
              {
                declaration_name => 'to',
                type => 'string'
              },
              {
                declaration_name => 'amount',
                type => 'string'
              },
              {
                declaration_name => 'asset_symbol',
                type => 'string'
              },
              {
                declaration_name => 'memo',
                type => 'string'
              },
              {
                declaration_name => 'broadcast',
                type => 'bool',
                default_value => 'false'
              }
            ]
          },
          {
            kind => 'function',
            name => 'transfer2',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'This method works just like transfer, except it always broadcasts and returns the transaction ID along with the signed transaction. '
                }
              ]
            },
            type => 'pair< transaction_id_type, signed_transaction >',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'from',
                type => 'string'
              },
              {
                declaration_name => 'to',
                type => 'string'
              },
              {
                declaration_name => 'amount',
                type => 'string'
              },
              {
                declaration_name => 'asset_symbol',
                type => 'string'
              },
              {
                declaration_name => 'memo',
                type => 'string'
              }
            ]
          },
          {
            kind => 'function',
            name => 'get_transaction_id',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'This method is used to convert a JSON transaction to its transactin ID. '
                }
              ]
            },
            type => 'transaction_id_type',
            const => 'yes',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'trx',
                type => 'const signed_transaction &'
              }
            ]
          },
          {
            kind => 'function',
            name => 'sign_memo',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Sign a memo message.'
                },
                {
                  type => 'parbreak'
                },
                params => [
                  {
                    parameters => [
                      {
                        name => 'from'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'the name or id of signing account; or a public key. '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'to'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'the name or id of receiving account; or a public key. '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'memo'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'text to sign. '
                      }
                    ]
                  }
                ]
              ]
            },
            type => 'memo_data',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'from',
                type => 'string'
              },
              {
                declaration_name => 'to',
                type => 'string'
              },
              {
                declaration_name => 'memo',
                type => 'string'
              }
            ]
          },
          {
            kind => 'function',
            name => 'read_memo',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Read a memo.'
                },
                {
                  type => 'parbreak'
                },
                params => [
                  {
                    parameters => [
                      {
                        name => 'memo'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'JSON-enconded memo. '
                      }
                    ]
                  }
                ],
                {
                  return => [
                    {
                      type => 'text',
                      content => 'string with decrypted message.. '
                    }
                  ]
                }
              ]
            },
            type => 'string',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'memo',
                type => 'const memo_data &'
              }
            ]
          },
          {
            kind => 'function',
            name => 'blind_history',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  return => [
                    {
                      type => 'text',
                      content => 'all blind receipts to/form a particular account '
                    }
                  ]
                }
              ]
            },
            type => 'vector< blind_receipt >',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'key_or_account',
                type => 'string'
              }
            ]
          },
          {
            kind => 'function',
            name => 'receive_blind_transfer',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Given a confirmation receipt, this method will parse it for a blinded balance and confirm that it exists in the blockchain. If it exists then it will report the amount received and who sent it.'
                },
                {
                  type => 'parbreak'
                },
                params => [
                  {
                    parameters => [
                      {
                        name => 'opt_from'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'if not empty and the sender is a unknown public key, then the unknown public key will be given the label '
                      },
                      {
                        type => 'style',
                        style => 'code',
                        enable => 'yes'
                      },
                      {
                        type => 'text',
                        content => 'opt_from'
                      },
                      {
                        type => 'style',
                        style => 'code',
                        enable => 'no'
                      },
                      {
                        type => 'text',
                        content => ' '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'confirmation_receipt'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'a base58 encoded stealth confirmation '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'opt_memo'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'a self-defined label for this transfer to be saved in local wallet file '
                      }
                    ]
                  }
                ]
              ]
            },
            type => 'blind_receipt',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'confirmation_receipt',
                type => 'string'
              },
              {
                declaration_name => 'opt_from',
                type => 'string'
              },
              {
                declaration_name => 'opt_memo',
                type => 'string'
              }
            ]
          },
          {
            kind => 'function',
            name => 'transfer_to_blind',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Transfers a public balance from '
                },
                {
                  type => 'style',
                  style => 'code',
                  enable => 'yes'
                },
                {
                  type => 'text',
                  content => 'from_account_id_or_name'
                },
                {
                  type => 'style',
                  style => 'code',
                  enable => 'no'
                },
                {
                  type => 'text',
                  content => ' to one or more blinded balances using a stealth transfer. '
                }
              ]
            },
            type => 'blind_confirmation',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'from_account_id_or_name',
                type => 'string'
              },
              {
                declaration_name => 'asset_symbol',
                type => 'string'
              },
              {
                declaration_name => 'to_amounts',
                type => 'vector< pair< string, string >>'
              },
              {
                declaration_name => 'broadcast',
                type => 'bool',
                default_value => 'false'
              }
            ]
          },
          {
            kind => 'function',
            name => 'transfer_from_blind',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Transfers funds from a set of blinded balances to a public account balance. '
                }
              ]
            },
            type => 'blind_confirmation',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'from_blind_account_key_or_label',
                type => 'string'
              },
              {
                declaration_name => 'to_account_id_or_name',
                type => 'string'
              },
              {
                declaration_name => 'amount',
                type => 'string'
              },
              {
                declaration_name => 'asset_symbol',
                type => 'string'
              },
              {
                declaration_name => 'broadcast',
                type => 'bool',
                default_value => 'false'
              }
            ]
          },
          {
            kind => 'function',
            name => 'blind_transfer',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Used to transfer from one set of blinded balances to another '
                }
              ]
            },
            type => 'blind_confirmation',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'from_key_or_label',
                type => 'string'
              },
              {
                declaration_name => 'to_key_or_label',
                type => 'string'
              },
              {
                declaration_name => 'amount',
                type => 'string'
              },
              {
                declaration_name => 'symbol',
                type => 'string'
              },
              {
                declaration_name => 'broadcast',
                type => 'bool',
                default_value => 'false'
              }
            ]
          },
          {
            kind => 'function',
            name => 'sell_asset',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Place a limit order attempting to sell one asset for another.'
                },
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Buying and selling are the same operation on Graphene; if you want to buy NTZ with USD, you should sell USD for NTZ.'
                },
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'The blockchain will attempt to sell the '
                },
                {
                  type => 'style',
                  style => 'code',
                  enable => 'yes'
                },
                {
                  type => 'text',
                  content => 'symbol_to_sell'
                },
                {
                  type => 'style',
                  style => 'code',
                  enable => 'no'
                },
                {
                  type => 'text',
                  content => ' for as much '
                },
                {
                  type => 'style',
                  style => 'code',
                  enable => 'yes'
                },
                {
                  type => 'text',
                  content => 'symbol_to_receive'
                },
                {
                  type => 'style',
                  style => 'code',
                  enable => 'no'
                },
                {
                  type => 'text',
                  content => ' as possible, as long as the price is at least '
                },
                {
                  type => 'style',
                  style => 'code',
                  enable => 'yes'
                },
                {
                  type => 'text',
                  content => 'min_to_receive'
                },
                {
                  type => 'style',
                  style => 'code',
                  enable => 'no'
                },
                {
                  type => 'text',
                  content => ' / '
                },
                {
                  type => 'style',
                  style => 'code',
                  enable => 'yes'
                },
                {
                  type => 'text',
                  content => 'amount_to_sell'
                },
                {
                  type => 'style',
                  style => 'code',
                  enable => 'no'
                },
                {
                  type => 'text',
                  content => '.'
                },
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'In addition to the transaction fees, market fees will apply as specified by the issuer of both the selling asset and the receiving asset as a percentage of the amount exchanged.'
                },
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'If either the selling asset or the receiving asset is whitelist restricted, the order will only be created if the seller is on the whitelist of the restricted asset type.'
                },
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Market orders are matched in the order they are included in the block chain.'
                },
                {
                  type => 'parbreak'
                },
                {
                  type => 'xrefitem',
                  content => [
                    {
                      type => 'text',
                      content => 'Allow order expiration to be set here. Document default/max expiration time'
                    }
                  ]
                },
                {
                  type => 'parbreak'
                },
                params => [
                  {
                    parameters => [
                      {
                        name => 'seller_account'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'the account providing the asset being sold, and which will receive the proceeds of the sale. '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'amount_to_sell'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'the amount of the asset being sold to sell (in nominal units) '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'symbol_to_sell'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'the name or id of the asset to sell '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'min_to_receive'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'the minimum amount you are willing to receive in return for selling the entire amount_to_sell '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'symbol_to_receive'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'the name or id of the asset you wish to receive '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'timeout_sec'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'if the order does not fill immediately, this is the length of time the order will remain on the order books before it is cancelled and the un-spent funds are returned to the seller\'s account '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'fill_or_kill'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'if true, the order will only be included in the blockchain if it is filled immediately; if false, an open order will be left on the books to fill any amount that cannot be filled immediately. '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'broadcast'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'true to broadcast the transaction on the network '
                      }
                    ]
                  }
                ],
                {
                  return => [
                    {
                      type => 'text',
                      content => 'the signed transaction selling the funds '
                    }
                  ]
                }
              ]
            },
            type => 'signed_transaction',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'seller_account',
                type => 'string'
              },
              {
                declaration_name => 'amount_to_sell',
                type => 'string'
              },
              {
                declaration_name => 'symbol_to_sell',
                type => 'string'
              },
              {
                declaration_name => 'min_to_receive',
                type => 'string'
              },
              {
                declaration_name => 'symbol_to_receive',
                type => 'string'
              },
              {
                declaration_name => 'timeout_sec',
                type => 'uint32_t',
                default_value => '0'
              },
              {
                declaration_name => 'fill_or_kill',
                type => 'bool',
                default_value => 'false'
              },
              {
                declaration_name => 'broadcast',
                type => 'bool',
                default_value => 'false'
              }
            ]
          },
          {
            kind => 'function',
            name => 'borrow_asset',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Borrow an asset or update the debt/collateral ratio for the loan.'
                },
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'This is the first step in shorting an asset. Call '
                },
                {
                  type => 'style',
                  style => 'code',
                  enable => 'yes'
                },
                {
                  type => 'url',
                  link => 'classgraphene_1_1wallet_1_1wallet__api_1aeb0d71a0ed4c6d05a003e48c3a0cb6d3',
                  content => 'sell_asset()'
                },
                {
                  type => 'style',
                  style => 'code',
                  enable => 'no'
                },
                {
                  type => 'text',
                  content => ' to complete the short.'
                },
                {
                  type => 'parbreak'
                },
                params => [
                  {
                    parameters => [
                      {
                        name => 'borrower_name'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'the name or id of the account associated with the transaction. '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'amount_to_borrow'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'the amount of the asset being borrowed. Make this value negative to pay back debt. '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'asset_symbol'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'the symbol or id of the asset being borrowed. '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'amount_of_collateral'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'the amount of the backing asset to add to your collateral position. Make this negative to claim back some of your collateral. The backing asset is defined in the '
                      },
                      {
                        type => 'style',
                        style => 'code',
                        enable => 'yes'
                      },
                      {
                        type => 'text',
                        content => 'bitasset_options'
                      },
                      {
                        type => 'style',
                        style => 'code',
                        enable => 'no'
                      },
                      {
                        type => 'text',
                        content => ' for the asset being borrowed. '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'broadcast'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'true to broadcast the transaction on the network '
                      }
                    ]
                  }
                ],
                {
                  return => [
                    {
                      type => 'text',
                      content => 'the signed transaction borrowing the asset '
                    }
                  ]
                }
              ]
            },
            type => 'signed_transaction',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'borrower_name',
                type => 'string'
              },
              {
                declaration_name => 'amount_to_borrow',
                type => 'string'
              },
              {
                declaration_name => 'asset_symbol',
                type => 'string'
              },
              {
                declaration_name => 'amount_of_collateral',
                type => 'string'
              },
              {
                declaration_name => 'broadcast',
                type => 'bool',
                default_value => 'false'
              }
            ]
          },
          {
            kind => 'function',
            name => 'borrow_asset_ext',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Borrow an asset or update the debt/collateral ratio for the loan, with additional options.'
                },
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'This is the first step in shorting an asset. Call '
                },
                {
                  type => 'style',
                  style => 'code',
                  enable => 'yes'
                },
                {
                  type => 'url',
                  link => 'classgraphene_1_1wallet_1_1wallet__api_1aeb0d71a0ed4c6d05a003e48c3a0cb6d3',
                  content => 'sell_asset()'
                },
                {
                  type => 'style',
                  style => 'code',
                  enable => 'no'
                },
                {
                  type => 'text',
                  content => ' to complete the short.'
                },
                {
                  type => 'parbreak'
                },
                params => [
                  {
                    parameters => [
                      {
                        name => 'borrower_name'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'the name or id of the account associated with the transaction. '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'amount_to_borrow'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'the amount of the asset being borrowed. Make this value negative to pay back debt. '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'asset_symbol'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'the symbol or id of the asset being borrowed. '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'amount_of_collateral'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'the amount of the backing asset to add to your collateral position. Make this negative to claim back some of your collateral. The backing asset is defined in the '
                      },
                      {
                        type => 'style',
                        style => 'code',
                        enable => 'yes'
                      },
                      {
                        type => 'text',
                        content => 'bitasset_options'
                      },
                      {
                        type => 'style',
                        style => 'code',
                        enable => 'no'
                      },
                      {
                        type => 'text',
                        content => ' for the asset being borrowed. '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'extensions'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'additional options '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'broadcast'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'true to broadcast the transaction on the network '
                      }
                    ]
                  }
                ],
                {
                  return => [
                    {
                      type => 'text',
                      content => 'the signed transaction borrowing the asset '
                    }
                  ]
                }
              ]
            },
            type => 'signed_transaction',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'borrower_name',
                type => 'string'
              },
              {
                declaration_name => 'amount_to_borrow',
                type => 'string'
              },
              {
                declaration_name => 'asset_symbol',
                type => 'string'
              },
              {
                declaration_name => 'amount_of_collateral',
                type => 'string'
              },
              {
                declaration_name => 'extensions',
                type => 'call_order_update_operation::extensions_type'
              },
              {
                declaration_name => 'broadcast',
                type => 'bool',
                default_value => 'false'
              }
            ]
          },
          {
            kind => 'function',
            name => 'cancel_order',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Cancel an existing order'
                },
                {
                  type => 'parbreak'
                },
                params => [
                  {
                    parameters => [
                      {
                        name => 'order_id'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'the id of order to be cancelled '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'broadcast'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'true to broadcast the transaction on the network '
                      }
                    ]
                  }
                ],
                {
                  return => [
                    {
                      type => 'text',
                      content => 'the signed transaction canceling the order '
                    }
                  ]
                }
              ]
            },
            type => 'signed_transaction',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'order_id',
                type => 'object_id_type'
              },
              {
                declaration_name => 'broadcast',
                type => 'bool',
                default_value => 'false'
              }
            ]
          },
          {
            kind => 'function',
            name => 'create_asset',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Creates a new user-issued or market-issued asset.'
                },
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Many options can be changed later using '
                },
                {
                  type => 'style',
                  style => 'code',
                  enable => 'yes'
                },
                {
                  type => 'url',
                  link => 'classgraphene_1_1wallet_1_1wallet__api_1a6c2a57593b39390b286efeecca2702d6',
                  content => 'update_asset()'
                },
                {
                  type => 'style',
                  style => 'code',
                  enable => 'no'
                },
                {
                  type => 'text',
                  content => ' '
                },
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Right now this function is difficult to use because you must provide raw JSON data structures for the options objects, and those include prices and asset ids.'
                },
                {
                  type => 'parbreak'
                },
                params => [
                  {
                    parameters => [
                      {
                        name => 'issuer'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'the name or id of the account who will pay the fee and become the issuer of the new asset. This can be updated later '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'symbol'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'the ticker symbol of the new asset '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'precision'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'the number of digits of precision to the right of the decimal point, must be less than or equal to 12 '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'common'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'asset options required for all new assets. Note that core_exchange_rate technically needs to store the asset ID of this new asset. Since this ID is not known at the time this operation is created, create this price as though the new asset has instance ID 1, and the chain will overwrite it with the new asset\'s ID. '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'bitasset_opts'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'options specific to BitAssets. This may be null unless the '
                      },
                      {
                        type => 'style',
                        style => 'code',
                        enable => 'yes'
                      },
                      {
                        type => 'text',
                        content => 'market_issued'
                      },
                      {
                        type => 'style',
                        style => 'code',
                        enable => 'no'
                      },
                      {
                        type => 'text',
                        content => ' flag is set in common.flags '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'broadcast'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'true to broadcast the transaction on the network '
                      }
                    ]
                  }
                ],
                {
                  return => [
                    {
                      type => 'text',
                      content => 'the signed transaction creating a new asset '
                    }
                  ]
                }
              ]
            },
            type => 'signed_transaction',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'issuer',
                type => 'string'
              },
              {
                declaration_name => 'symbol',
                type => 'string'
              },
              {
                declaration_name => 'precision',
                type => 'uint8_t'
              },
              {
                declaration_name => 'common',
                type => 'asset_options'
              },
              {
                declaration_name => 'bitasset_opts',
                type => 'fc::optional< bitasset_options >'
              },
              {
                declaration_name => 'broadcast',
                type => 'bool',
                default_value => 'false'
              }
            ]
          },
          {
            kind => 'function',
            name => 'issue_asset',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Issue new shares of an asset.'
                },
                {
                  type => 'parbreak'
                },
                params => [
                  {
                    parameters => [
                      {
                        name => 'to_account'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'the name or id of the account to receive the new shares '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'amount'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'the amount to issue, in nominal units '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'symbol'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'the ticker symbol of the asset to issue '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'memo'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'a memo to include in the transaction, readable by the recipient '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'broadcast'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'true to broadcast the transaction on the network '
                      }
                    ]
                  }
                ],
                {
                  return => [
                    {
                      type => 'text',
                      content => 'the signed transaction issuing the new shares '
                    }
                  ]
                }
              ]
            },
            type => 'signed_transaction',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'to_account',
                type => 'string'
              },
              {
                declaration_name => 'amount',
                type => 'string'
              },
              {
                declaration_name => 'symbol',
                type => 'string'
              },
              {
                declaration_name => 'memo',
                type => 'string'
              },
              {
                declaration_name => 'broadcast',
                type => 'bool',
                default_value => 'false'
              }
            ]
          },
          {
            kind => 'function',
            name => 'update_asset',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Update the core options on an asset. There are a number of options which all assets in the network use. These options are enumerated in the asset_object::asset_options struct. This command is used to update these options for an existing asset.'
                },
                {
                  type => 'parbreak'
                },
                {
                  note => [
                    {
                      type => 'text',
                      content => 'This operation cannot be used to update BitAsset-specific options. For these options, '
                    },
                    {
                      type => 'style',
                      style => 'code',
                      enable => 'yes'
                    },
                    {
                      type => 'url',
                      link => 'classgraphene_1_1wallet_1_1wallet__api_1aebe4459f45a748739595939d60b95b6b',
                      content => 'update_bitasset()'
                    },
                    {
                      type => 'style',
                      style => 'code',
                      enable => 'no'
                    },
                    {
                      type => 'text',
                      content => ' instead.'
                    }
                  ]
                },
                params => [
                  {
                    parameters => [
                      {
                        name => 'symbol'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'the name or id of the asset to update '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'new_issuer'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'if changing the asset\'s issuer, the name or id of the new issuer. null if you wish to remain the issuer of the asset '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'new_options'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'the new asset_options object, which will entirely replace the existing options. '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'broadcast'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'true to broadcast the transaction on the network '
                      }
                    ]
                  }
                ],
                {
                  return => [
                    {
                      type => 'text',
                      content => 'the signed transaction updating the asset '
                    }
                  ]
                }
              ]
            },
            type => 'signed_transaction',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'symbol',
                type => 'string'
              },
              {
                declaration_name => 'new_issuer',
                type => 'optional< string >'
              },
              {
                declaration_name => 'new_options',
                type => 'asset_options'
              },
              {
                declaration_name => 'broadcast',
                type => 'bool',
                default_value => 'false'
              }
            ]
          },
          {
            kind => 'function',
            name => 'update_asset_issuer',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Update the issuer of an asset Since this call requires the owner authority of the current issuer to sign the transaction, a separated operation is used to change the issuer. This call simplifies the use of this action.'
                },
                {
                  type => 'parbreak'
                },
                {
                  note => [
                    {
                      type => 'text',
                      content => 'This operation requires the owner key to be available in the wallet.'
                    }
                  ]
                },
                params => [
                  {
                    parameters => [
                      {
                        name => 'symbol'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'the name or id of the asset to update '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'new_issuer'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'if changing the asset\'s issuer, the name or id of the new issuer. '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'broadcast'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'true to broadcast the transaction on the network '
                      }
                    ]
                  }
                ],
                {
                  return => [
                    {
                      type => 'text',
                      content => 'the signed transaction updating the asset '
                    }
                  ]
                }
              ]
            },
            type => 'signed_transaction',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'symbol',
                type => 'string'
              },
              {
                declaration_name => 'new_issuer',
                type => 'string'
              },
              {
                declaration_name => 'broadcast',
                type => 'bool',
                default_value => 'false'
              }
            ]
          },
          {
            kind => 'function',
            name => 'update_bitasset',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Update the options specific to a BitAsset.'
                },
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'BitAssets have some options which are not relevant to other asset types. This operation is used to update those options an an existing BitAsset.'
                },
                {
                  type => 'parbreak'
                },
                {
                  see => [
                    {
                      type => 'url',
                      link => 'classgraphene_1_1wallet_1_1wallet__api_1a6c2a57593b39390b286efeecca2702d6',
                      content => 'update_asset()'
                    }
                  ]
                },
                params => [
                  {
                    parameters => [
                      {
                        name => 'symbol'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'the name or id of the asset to update, which must be a market-issued asset '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'new_options'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'the new bitasset_options object, which will entirely replace the existing options. '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'broadcast'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'true to broadcast the transaction on the network '
                      }
                    ]
                  }
                ],
                {
                  return => [
                    {
                      type => 'text',
                      content => 'the signed transaction updating the bitasset '
                    }
                  ]
                }
              ]
            },
            type => 'signed_transaction',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'symbol',
                type => 'string'
              },
              {
                declaration_name => 'new_options',
                type => 'bitasset_options'
              },
              {
                declaration_name => 'broadcast',
                type => 'bool',
                default_value => 'false'
              }
            ]
          },
          {
            kind => 'function',
            name => 'update_asset_feed_producers',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Update the set of feed-producing accounts for a BitAsset.'
                },
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'BitAssets have price feeds selected by taking the median values of recommendations from a set of feed producers. This command is used to specify which accounts may produce feeds for a given BitAsset. '
                },
                params => [
                  {
                    parameters => [
                      {
                        name => 'symbol'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'the name or id of the asset to update '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'new_feed_producers'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'a list of account names or ids which are authorized to produce feeds for the asset. this list will completely replace the existing list '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'broadcast'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'true to broadcast the transaction on the network '
                      }
                    ]
                  }
                ],
                {
                  return => [
                    {
                      type => 'text',
                      content => 'the signed transaction updating the bitasset\'s feed producers '
                    }
                  ]
                }
              ]
            },
            type => 'signed_transaction',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'symbol',
                type => 'string'
              },
              {
                declaration_name => 'new_feed_producers',
                type => 'flat_set< string >'
              },
              {
                declaration_name => 'broadcast',
                type => 'bool',
                default_value => 'false'
              }
            ]
          },
          {
            kind => 'function',
            name => 'publish_asset_feed',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Publishes a price feed for the named asset.'
                },
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Price feed providers use this command to publish their price feeds for market-issued assets. A price feed is used to tune the market for a particular market-issued asset. For each value in the feed, the median across all committee_member feeds for that asset is calculated and the market for the asset is configured with the median of that value.'
                },
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'The feed object in this command contains three prices: a call price limit, a short price limit, and a settlement price. The call limit price is structured as (collateral asset) / (debt asset) and the short limit price is structured as (asset for sale) / (collateral asset). Note that the asset IDs are opposite to eachother, so if we\'re publishing a feed for USD, the call limit price will be CORE/USD and the short limit price will be USD/CORE. The settlement price may be flipped either direction, as long as it is a ratio between the market-issued asset and its collateral.'
                },
                {
                  type => 'parbreak'
                },
                params => [
                  {
                    parameters => [
                      {
                        name => 'publishing_account'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'the account publishing the price feed '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'symbol'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'the name or id of the asset whose feed we\'re publishing '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'feed'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'the price_feed object containing the three prices making up the feed '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'broadcast'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'true to broadcast the transaction on the network '
                      }
                    ]
                  }
                ],
                {
                  return => [
                    {
                      type => 'text',
                      content => 'the signed transaction updating the price feed for the given asset '
                    }
                  ]
                }
              ]
            },
            type => 'signed_transaction',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'publishing_account',
                type => 'string'
              },
              {
                declaration_name => 'symbol',
                type => 'string'
              },
              {
                declaration_name => 'feed',
                type => 'price_feed'
              },
              {
                declaration_name => 'broadcast',
                type => 'bool',
                default_value => 'false'
              }
            ]
          },
          {
            kind => 'function',
            name => 'fund_asset_fee_pool',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Pay into the fee pool for the given asset.'
                },
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'User-issued assets can optionally have a pool of the core asset which is automatically used to pay transaction fees for any transaction using that asset (using the asset\'s core exchange rate).'
                },
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'This command allows anyone to deposit the core asset into this fee pool.'
                },
                {
                  type => 'parbreak'
                },
                params => [
                  {
                    parameters => [
                      {
                        name => 'from'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'the name or id of the account sending the core asset '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'symbol'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'the name or id of the asset whose fee pool you wish to fund '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'amount'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'the amount of the core asset to deposit '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'broadcast'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'true to broadcast the transaction on the network '
                      }
                    ]
                  }
                ],
                {
                  return => [
                    {
                      type => 'text',
                      content => 'the signed transaction funding the fee pool '
                    }
                  ]
                }
              ]
            },
            type => 'signed_transaction',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'from',
                type => 'string'
              },
              {
                declaration_name => 'symbol',
                type => 'string'
              },
              {
                declaration_name => 'amount',
                type => 'string'
              },
              {
                declaration_name => 'broadcast',
                type => 'bool',
                default_value => 'false'
              }
            ]
          },
          {
            kind => 'function',
            name => 'claim_asset_fee_pool',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Claim funds from the fee pool for the given asset.'
                },
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'User-issued assets can optionally have a pool of the core asset which is automatically used to pay transaction fees for any transaction using that asset (using the asset\'s core exchange rate).'
                },
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'This command allows the issuer to withdraw those funds from the fee pool.'
                },
                {
                  type => 'parbreak'
                },
                params => [
                  {
                    parameters => [
                      {
                        name => 'symbol'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'the name or id of the asset whose fee pool you wish to claim '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'amount'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'the amount of the core asset to withdraw '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'broadcast'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'true to broadcast the transaction on the network '
                      }
                    ]
                  }
                ],
                {
                  return => [
                    {
                      type => 'text',
                      content => 'the signed transaction claiming from the fee pool '
                    }
                  ]
                }
              ]
            },
            type => 'signed_transaction',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'symbol',
                type => 'string'
              },
              {
                declaration_name => 'amount',
                type => 'string'
              },
              {
                declaration_name => 'broadcast',
                type => 'bool',
                default_value => 'false'
              }
            ]
          },
          {
            kind => 'function',
            name => 'reserve_asset',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Burns the given user-issued asset.'
                },
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'This command burns the user-issued asset to reduce the amount in circulation. '
                },
                {
                  note => [
                    {
                      type => 'text',
                      content => 'you cannot burn market-issued assets. '
                    }
                  ]
                },
                params => [
                  {
                    parameters => [
                      {
                        name => 'from'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'the account containing the asset you wish to burn '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'amount'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'the amount to burn, in nominal units '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'symbol'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'the name or id of the asset to burn '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'broadcast'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'true to broadcast the transaction on the network '
                      }
                    ]
                  }
                ],
                {
                  return => [
                    {
                      type => 'text',
                      content => 'the signed transaction burning the asset '
                    }
                  ]
                }
              ]
            },
            type => 'signed_transaction',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'from',
                type => 'string'
              },
              {
                declaration_name => 'amount',
                type => 'string'
              },
              {
                declaration_name => 'symbol',
                type => 'string'
              },
              {
                declaration_name => 'broadcast',
                type => 'bool',
                default_value => 'false'
              }
            ]
          },
          {
            kind => 'function',
            name => 'global_settle_asset',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Forces a global settling of the given asset (black swan or prediction markets).'
                },
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'In order to use this operation, asset_to_settle must have the global_settle flag set'
                },
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'When this operation is executed all balances are converted into the backing asset at the settle_price and all open margin positions are called at the settle price. If this asset is used as backing for other bitassets, those bitassets will be force settled at their current feed price.'
                },
                {
                  type => 'parbreak'
                },
                {
                  note => [
                    {
                      type => 'text',
                      content => 'this operation is used only by the asset issuer, '
                    },
                    {
                      type => 'style',
                      style => 'code',
                      enable => 'yes'
                    },
                    {
                      type => 'url',
                      link => 'classgraphene_1_1wallet_1_1wallet__api_1a95a3baa4b0c83c1fce14827acbbddd62',
                      content => 'settle_asset()'
                    },
                    {
                      type => 'style',
                      style => 'code',
                      enable => 'no'
                    },
                    {
                      type => 'text',
                      content => ' may be used by any user owning the asset'
                    }
                  ]
                },
                params => [
                  {
                    parameters => [
                      {
                        name => 'symbol'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'the name or id of the asset to force settlement on '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'settle_price'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'the price at which to settle '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'broadcast'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'true to broadcast the transaction on the network '
                      }
                    ]
                  }
                ],
                {
                  return => [
                    {
                      type => 'text',
                      content => 'the signed transaction settling the named asset '
                    }
                  ]
                }
              ]
            },
            type => 'signed_transaction',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'symbol',
                type => 'string'
              },
              {
                declaration_name => 'settle_price',
                type => 'price'
              },
              {
                declaration_name => 'broadcast',
                type => 'bool',
                default_value => 'false'
              }
            ]
          },
          {
            kind => 'function',
            name => 'settle_asset',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Schedules a market-issued asset for automatic settlement.'
                },
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Holders of market-issued assests may request a forced settlement for some amount of their asset. This means that the specified sum will be locked by the chain and held for the settlement period, after which time the chain will choose a margin posision holder and buy the settled asset using the margin\'s collateral. The price of this sale will be based on the feed price for the market-issued asset being settled. The exact settlement price will be the feed price at the time of settlement with an offset in favor of the margin position, where the offset is a blockchain parameter set in the global_property_object.'
                },
                {
                  type => 'parbreak'
                },
                params => [
                  {
                    parameters => [
                      {
                        name => 'account_to_settle'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'the name or id of the account owning the asset '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'amount_to_settle'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'the amount of the named asset to schedule for settlement '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'symbol'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'the name or id of the asset to settlement on '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'broadcast'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'true to broadcast the transaction on the network '
                      }
                    ]
                  }
                ],
                {
                  return => [
                    {
                      type => 'text',
                      content => 'the signed transaction settling the named asset '
                    }
                  ]
                }
              ]
            },
            type => 'signed_transaction',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'account_to_settle',
                type => 'string'
              },
              {
                declaration_name => 'amount_to_settle',
                type => 'string'
              },
              {
                declaration_name => 'symbol',
                type => 'string'
              },
              {
                declaration_name => 'broadcast',
                type => 'bool',
                default_value => 'false'
              }
            ]
          },
          {
            kind => 'function',
            name => 'bid_collateral',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Creates or updates a bid on an MPA after global settlement.'
                },
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'In order to revive a market-pegged asset after global settlement (aka black swan), investors can bid collateral in order to take over part of the debt and the settlement fund, see BSIP-0018. Updating an existing bid to cover 0 debt will delete the bid.'
                },
                {
                  type => 'parbreak'
                },
                params => [
                  {
                    parameters => [
                      {
                        name => 'bidder_name'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'the name or id of the account making the bid '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'debt_amount'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'the amount of debt of the named asset to bid for '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'debt_symbol'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'the name or id of the MPA to bid for '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'additional_collateral'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'the amount of additional collateral to bid for taking over debt_amount. The asset type of this amount is determined automatically from debt_symbol. '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'broadcast'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'true to broadcast the transaction on the network '
                      }
                    ]
                  }
                ],
                {
                  return => [
                    {
                      type => 'text',
                      content => 'the signed transaction creating/updating the bid '
                    }
                  ]
                }
              ]
            },
            type => 'signed_transaction',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'bidder_name',
                type => 'string'
              },
              {
                declaration_name => 'debt_amount',
                type => 'string'
              },
              {
                declaration_name => 'debt_symbol',
                type => 'string'
              },
              {
                declaration_name => 'additional_collateral',
                type => 'string'
              },
              {
                declaration_name => 'broadcast',
                type => 'bool',
                default_value => 'false'
              }
            ]
          },
          {
            kind => 'function',
            name => 'whitelist_account',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Whitelist and blacklist accounts, primarily for transacting in whitelisted assets.'
                },
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Accounts can freely specify opinions about other accounts, in the form of either whitelisting or blacklisting them. This information is used in chain validation only to determine whether an account is authorized to transact in an asset type which enforces a whitelist, but third parties can use this information for other uses as well, as long as it does not conflict with the use of whitelisted assets.'
                },
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'An asset which enforces a whitelist specifies a list of accounts to maintain its whitelist, and a list of accounts to maintain its blacklist. In order for a given account A to hold and transact in a whitelisted asset S, A must be whitelisted by at least one of S\'s whitelist_authorities and blacklisted by none of S\'s blacklist_authorities. If A receives a balance of S, and is later removed from the whitelist(s) which allowed it to hold S, or added to any blacklist S specifies as authoritative, A\'s balance of S will be frozen until A\'s authorization is reinstated.'
                },
                {
                  type => 'parbreak'
                },
                params => [
                  {
                    parameters => [
                      {
                        name => 'authorizing_account'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'the account who is doing the whitelisting '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'account_to_list'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'the account being whitelisted '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'new_listing_status'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'the new whitelisting status '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'broadcast'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'true to broadcast the transaction on the network '
                      }
                    ]
                  }
                ],
                {
                  return => [
                    {
                      type => 'text',
                      content => 'the signed transaction changing the whitelisting status '
                    }
                  ]
                }
              ]
            },
            type => 'signed_transaction',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'authorizing_account',
                type => 'string'
              },
              {
                declaration_name => 'account_to_list',
                type => 'string'
              },
              {
                declaration_name => 'new_listing_status',
                type => 'account_whitelist_operation::account_listing'
              },
              {
                declaration_name => 'broadcast',
                type => 'bool',
                default_value => 'false'
              }
            ]
          },
          {
            kind => 'function',
            name => 'create_committee_member',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Creates a committee_member object owned by the given account.'
                },
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'An account can have at most one committee_member object.'
                },
                {
                  type => 'parbreak'
                },
                params => [
                  {
                    parameters => [
                      {
                        name => 'owner_account'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'the name or id of the account which is creating the committee_member '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'url'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'a URL to include in the committee_member record in the blockchain. Clients may display this when showing a list of committee_members. May be blank. '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'broadcast'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'true to broadcast the transaction on the network '
                      }
                    ]
                  }
                ],
                {
                  return => [
                    {
                      type => 'text',
                      content => 'the signed transaction registering a committee_member '
                    }
                  ]
                }
              ]
            },
            type => 'signed_transaction',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'owner_account',
                type => 'string'
              },
              {
                declaration_name => 'url',
                type => 'string'
              },
              {
                declaration_name => 'broadcast',
                type => 'bool',
                default_value => 'false'
              }
            ]
          },
          {
            kind => 'function',
            name => 'list_witnesses',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Lists all witnesses registered in the blockchain. This returns a list of all account names that own witnesses, and the associated witness id, sorted by name. This lists witnesses whether they are currently voted in or not.'
                },
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Use the '
                },
                {
                  type => 'style',
                  style => 'code',
                  enable => 'yes'
                },
                {
                  type => 'text',
                  content => 'lowerbound'
                },
                {
                  type => 'style',
                  style => 'code',
                  enable => 'no'
                },
                {
                  type => 'text',
                  content => ' and limit parameters to page through the list. To retrieve all witnesss, start by setting '
                },
                {
                  type => 'style',
                  style => 'code',
                  enable => 'yes'
                },
                {
                  type => 'text',
                  content => 'lowerbound'
                },
                {
                  type => 'style',
                  style => 'code',
                  enable => 'no'
                },
                {
                  type => 'text',
                  content => ' to the empty string '
                },
                {
                  type => 'style',
                  style => 'code',
                  enable => 'yes'
                },
                {
                  type => 'text',
                  content => '""'
                },
                {
                  type => 'style',
                  style => 'code',
                  enable => 'no'
                },
                {
                  type => 'text',
                  content => ', and then each iteration, pass the last witness name returned as the '
                },
                {
                  type => 'style',
                  style => 'code',
                  enable => 'yes'
                },
                {
                  type => 'text',
                  content => 'lowerbound'
                },
                {
                  type => 'style',
                  style => 'code',
                  enable => 'no'
                },
                {
                  type => 'text',
                  content => ' for the next '
                },
                {
                  type => 'style',
                  style => 'code',
                  enable => 'yes'
                },
                {
                  type => 'text',
                  content => 'list_witnesss()'
                },
                {
                  type => 'style',
                  style => 'code',
                  enable => 'no'
                },
                {
                  type => 'text',
                  content => ' call.'
                },
                {
                  type => 'parbreak'
                },
                params => [
                  {
                    parameters => [
                      {
                        name => 'lowerbound'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'the name of the first witness to return. If the named witness does not exist, the list will start at the witness that comes after '
                      },
                      {
                        type => 'style',
                        style => 'code',
                        enable => 'yes'
                      },
                      {
                        type => 'text',
                        content => 'lowerbound'
                      },
                      {
                        type => 'style',
                        style => 'code',
                        enable => 'no'
                      },
                      {
                        type => 'text',
                        content => ' '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'limit'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'the maximum number of witnesss to return (max: 1000) '
                      }
                    ]
                  }
                ],
                {
                  return => [
                    {
                      type => 'text',
                      content => 'a list of witnesss mapping witness names to witness ids '
                    }
                  ]
                }
              ]
            },
            type => 'map< string, witness_id_type >',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'lowerbound',
                type => 'const string &'
              },
              {
                declaration_name => 'limit',
                type => 'uint32_t'
              }
            ]
          },
          {
            kind => 'function',
            name => 'list_committee_members',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Lists all committee_members registered in the blockchain. This returns a list of all account names that own committee_members, and the associated committee_member id, sorted by name. This lists committee_members whether they are currently voted in or not.'
                },
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Use the '
                },
                {
                  type => 'style',
                  style => 'code',
                  enable => 'yes'
                },
                {
                  type => 'text',
                  content => 'lowerbound'
                },
                {
                  type => 'style',
                  style => 'code',
                  enable => 'no'
                },
                {
                  type => 'text',
                  content => ' and limit parameters to page through the list. To retrieve all committee_members, start by setting '
                },
                {
                  type => 'style',
                  style => 'code',
                  enable => 'yes'
                },
                {
                  type => 'text',
                  content => 'lowerbound'
                },
                {
                  type => 'style',
                  style => 'code',
                  enable => 'no'
                },
                {
                  type => 'text',
                  content => ' to the empty string '
                },
                {
                  type => 'style',
                  style => 'code',
                  enable => 'yes'
                },
                {
                  type => 'text',
                  content => '""'
                },
                {
                  type => 'style',
                  style => 'code',
                  enable => 'no'
                },
                {
                  type => 'text',
                  content => ', and then each iteration, pass the last committee_member name returned as the '
                },
                {
                  type => 'style',
                  style => 'code',
                  enable => 'yes'
                },
                {
                  type => 'text',
                  content => 'lowerbound'
                },
                {
                  type => 'style',
                  style => 'code',
                  enable => 'no'
                },
                {
                  type => 'text',
                  content => ' for the next '
                },
                {
                  type => 'style',
                  style => 'code',
                  enable => 'yes'
                },
                {
                  type => 'url',
                  link => 'classgraphene_1_1wallet_1_1wallet__api_1aec9eca62eb2c6748d463604632ba6508',
                  content => 'list_committee_members()'
                },
                {
                  type => 'style',
                  style => 'code',
                  enable => 'no'
                },
                {
                  type => 'text',
                  content => ' call.'
                },
                {
                  type => 'parbreak'
                },
                params => [
                  {
                    parameters => [
                      {
                        name => 'lowerbound'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'the name of the first committee_member to return. If the named committee_member does not exist, the list will start at the committee_member that comes after '
                      },
                      {
                        type => 'style',
                        style => 'code',
                        enable => 'yes'
                      },
                      {
                        type => 'text',
                        content => 'lowerbound'
                      },
                      {
                        type => 'style',
                        style => 'code',
                        enable => 'no'
                      },
                      {
                        type => 'text',
                        content => ' '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'limit'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'the maximum number of committee_members to return (max: 1000) '
                      }
                    ]
                  }
                ],
                {
                  return => [
                    {
                      type => 'text',
                      content => 'a list of committee_members mapping committee_member names to committee_member ids '
                    }
                  ]
                }
              ]
            },
            type => 'map< string, committee_member_id_type >',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'lowerbound',
                type => 'const string &'
              },
              {
                declaration_name => 'limit',
                type => 'uint32_t'
              }
            ]
          },
          {
            kind => 'function',
            name => 'get_witness',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Returns information about the given witness. '
                },
                params => [
                  {
                    parameters => [
                      {
                        name => 'owner_account'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'the name or id of the witness account owner, or the id of the witness '
                      }
                    ]
                  }
                ],
                {
                  return => [
                    {
                      type => 'text',
                      content => 'the information about the witness stored in the block chain '
                    }
                  ]
                }
              ]
            },
            type => 'witness_object',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'owner_account',
                type => 'string'
              }
            ]
          },
          {
            kind => 'function',
            name => 'get_committee_member',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Returns information about the given committee_member. '
                },
                params => [
                  {
                    parameters => [
                      {
                        name => 'owner_account'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'the name or id of the committee_member account owner, or the id of the committee_member '
                      }
                    ]
                  }
                ],
                {
                  return => [
                    {
                      type => 'text',
                      content => 'the information about the committee_member stored in the block chain '
                    }
                  ]
                }
              ]
            },
            type => 'committee_member_object',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'owner_account',
                type => 'string'
              }
            ]
          },
          {
            kind => 'function',
            name => 'create_witness',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Creates a witness object owned by the given account.'
                },
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'An account can have at most one witness object.'
                },
                {
                  type => 'parbreak'
                },
                params => [
                  {
                    parameters => [
                      {
                        name => 'owner_account'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'the name or id of the account which is creating the witness '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'url'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'a URL to include in the witness record in the blockchain. Clients may display this when showing a list of witnesses. May be blank. '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'broadcast'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'true to broadcast the transaction on the network '
                      }
                    ]
                  }
                ],
                {
                  return => [
                    {
                      type => 'text',
                      content => 'the signed transaction registering a witness '
                    }
                  ]
                }
              ]
            },
            type => 'signed_transaction',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'owner_account',
                type => 'string'
              },
              {
                declaration_name => 'url',
                type => 'string'
              },
              {
                declaration_name => 'broadcast',
                type => 'bool',
                default_value => 'false'
              }
            ]
          },
          {
            kind => 'function',
            name => 'update_witness',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Update a witness object owned by the given account.'
                },
                {
                  type => 'parbreak'
                },
                params => [
                  {
                    parameters => [
                      {
                        name => 'witness_name'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'The name of the witness\'s owner account. Also accepts the ID of the owner account or the ID of the witness. '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'url'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'Same as for create_witness. The empty string makes it remain the same. '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'block_signing_key'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'The new block signing public key. The empty string makes it remain the same. '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'broadcast'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'true if you wish to broadcast the transaction. '
                      }
                    ]
                  }
                ]
              ]
            },
            type => 'signed_transaction',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'witness_name',
                type => 'string'
              },
              {
                declaration_name => 'url',
                type => 'string'
              },
              {
                declaration_name => 'block_signing_key',
                type => 'string'
              },
              {
                declaration_name => 'broadcast',
                type => 'bool',
                default_value => 'false'
              }
            ]
          },
          {
            kind => 'function',
            name => 'create_worker',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Create a worker object.'
                },
                {
                  type => 'parbreak'
                },
                params => [
                  {
                    parameters => [
                      {
                        name => 'owner_account'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'The account which owns the worker and will be paid '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'work_begin_date'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'When the work begins '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'work_end_date'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'When the work ends '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'daily_pay'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'Amount of pay per day (NOT per maint interval) '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'name'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'Any text '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'url'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'Any text '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'worker_settings'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => '{"type" : "burn"|"refund"|"vesting", "pay_vesting_period_days" : x} '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'broadcast'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'true if you wish to broadcast the transaction. '
                      }
                    ]
                  }
                ]
              ]
            },
            type => 'signed_transaction',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'owner_account',
                type => 'string'
              },
              {
                declaration_name => 'work_begin_date',
                type => 'time_point_sec'
              },
              {
                declaration_name => 'work_end_date',
                type => 'time_point_sec'
              },
              {
                declaration_name => 'daily_pay',
                type => 'share_type'
              },
              {
                declaration_name => 'name',
                type => 'string'
              },
              {
                declaration_name => 'url',
                type => 'string'
              },
              {
                declaration_name => 'worker_settings',
                type => 'variant'
              },
              {
                declaration_name => 'broadcast',
                type => 'bool',
                default_value => 'false'
              }
            ]
          },
          {
            kind => 'function',
            name => 'update_worker_votes',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Update your votes for a worker'
                },
                {
                  type => 'parbreak'
                },
                params => [
                  {
                    parameters => [
                      {
                        name => 'account'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'The account which will pay the fee and update votes. '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'delta'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => '{"vote_for" : [...], "vote_against" : [...], "vote_abstain" : [...]} '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'broadcast'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'true if you wish to broadcast the transaction. '
                      }
                    ]
                  }
                ]
              ]
            },
            type => 'signed_transaction',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'account',
                type => 'string'
              },
              {
                declaration_name => 'delta',
                type => 'worker_vote_delta'
              },
              {
                declaration_name => 'broadcast',
                type => 'bool',
                default_value => 'false'
              }
            ]
          },
          {
            kind => 'function',
            name => 'get_vesting_balances',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Get information about a vesting balance object.'
                },
                {
                  type => 'parbreak'
                },
                params => [
                  {
                    parameters => [
                      {
                        name => 'account_name'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'An account name, account ID, or vesting balance object ID. '
                      }
                    ]
                  }
                ]
              ]
            },
            type => 'vector< vesting_balance_object_with_info >',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'account_name',
                type => 'string'
              }
            ]
          },
          {
            kind => 'function',
            name => 'withdraw_vesting',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Withdraw a vesting balance.'
                },
                {
                  type => 'parbreak'
                },
                params => [
                  {
                    parameters => [
                      {
                        name => 'witness_name'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'The account name of the witness, also accepts account ID or vesting balance ID type. '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'amount'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'The amount to withdraw. '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'asset_symbol'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'The symbol of the asset to withdraw. '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'broadcast'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'true if you wish to broadcast the transaction '
                      }
                    ]
                  }
                ]
              ]
            },
            type => 'signed_transaction',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'witness_name',
                type => 'string'
              },
              {
                declaration_name => 'amount',
                type => 'string'
              },
              {
                declaration_name => 'asset_symbol',
                type => 'string'
              },
              {
                declaration_name => 'broadcast',
                type => 'bool',
                default_value => 'false'
              }
            ]
          },
          {
            kind => 'function',
            name => 'vote_for_committee_member',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Vote for a given committee_member.'
                },
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'An account can publish a list of all committee_memberes they approve of. This command allows you to add or remove committee_memberes from this list. Each account\'s vote is weighted according to the number of shares of the core asset owned by that account at the time the votes are tallied.'
                },
                {
                  type => 'parbreak'
                },
                {
                  note => [
                    {
                      type => 'text',
                      content => 'you cannot vote against a committee_member, you can only vote for the committee_member or not vote for the committee_member.'
                    }
                  ]
                },
                params => [
                  {
                    parameters => [
                      {
                        name => 'voting_account'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'the name or id of the account who is voting with their shares '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'committee_member'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'the name or id of the committee_member\' owner account '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'approve'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'true if you wish to vote in favor of that committee_member, false to remove your vote in favor of that committee_member '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'broadcast'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'true if you wish to broadcast the transaction '
                      }
                    ]
                  }
                ],
                {
                  return => [
                    {
                      type => 'text',
                      content => 'the signed transaction changing your vote for the given committee_member '
                    }
                  ]
                }
              ]
            },
            type => 'signed_transaction',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'voting_account',
                type => 'string'
              },
              {
                declaration_name => 'committee_member',
                type => 'string'
              },
              {
                declaration_name => 'approve',
                type => 'bool'
              },
              {
                declaration_name => 'broadcast',
                type => 'bool',
                default_value => 'false'
              }
            ]
          },
          {
            kind => 'function',
            name => 'vote_for_witness',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Vote for a given witness.'
                },
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'An account can publish a list of all witnesses they approve of. This command allows you to add or remove witnesses from this list. Each account\'s vote is weighted according to the number of shares of the core asset owned by that account at the time the votes are tallied.'
                },
                {
                  type => 'parbreak'
                },
                {
                  note => [
                    {
                      type => 'text',
                      content => 'you cannot vote against a witness, you can only vote for the witness or not vote for the witness.'
                    }
                  ]
                },
                params => [
                  {
                    parameters => [
                      {
                        name => 'voting_account'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'the name or id of the account who is voting with their shares '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'witness'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'the name or id of the witness\' owner account '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'approve'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'true if you wish to vote in favor of that witness, false to remove your vote in favor of that witness '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'broadcast'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'true if you wish to broadcast the transaction '
                      }
                    ]
                  }
                ],
                {
                  return => [
                    {
                      type => 'text',
                      content => 'the signed transaction changing your vote for the given witness '
                    }
                  ]
                }
              ]
            },
            type => 'signed_transaction',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'voting_account',
                type => 'string'
              },
              {
                declaration_name => 'witness',
                type => 'string'
              },
              {
                declaration_name => 'approve',
                type => 'bool'
              },
              {
                declaration_name => 'broadcast',
                type => 'bool',
                default_value => 'false'
              }
            ]
          },
          {
            kind => 'function',
            name => 'set_voting_proxy',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Set the voting proxy for an account.'
                },
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'If a user does not wish to take an active part in voting, they can choose to allow another account to vote their stake.'
                },
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Setting a vote proxy does not remove your previous votes from the blockchain, they remain there but are ignored. If you later null out your vote proxy, your previous votes will take effect again.'
                },
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'This setting can be changed at any time.'
                },
                {
                  type => 'parbreak'
                },
                params => [
                  {
                    parameters => [
                      {
                        name => 'account_to_modify'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'the name or id of the account to update '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'voting_account'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'the name or id of an account authorized to vote account_to_modify\'s shares, or null to vote your own shares'
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'broadcast'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'true if you wish to broadcast the transaction '
                      }
                    ]
                  }
                ],
                {
                  return => [
                    {
                      type => 'text',
                      content => 'the signed transaction changing your vote proxy settings '
                    }
                  ]
                }
              ]
            },
            type => 'signed_transaction',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'account_to_modify',
                type => 'string'
              },
              {
                declaration_name => 'voting_account',
                type => 'optional< string >'
              },
              {
                declaration_name => 'broadcast',
                type => 'bool',
                default_value => 'false'
              }
            ]
          },
          {
            kind => 'function',
            name => 'set_desired_witness_and_committee_member_count',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Set your vote for the number of witnesses and committee_members in the system.'
                },
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Each account can voice their opinion on how many committee_members and how many witnesses there should be in the active committee_member/active witness list. These are independent of each other. You must vote your approval of at least as many committee_members or witnesses as you claim there should be (you can\'t say that there should be 20 committee_members but only vote for 10).'
                },
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'There are maximum values for each set in the blockchain parameters (currently defaulting to 1001).'
                },
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'This setting can be changed at any time. If your account has a voting proxy set, your preferences will be ignored.'
                },
                {
                  type => 'parbreak'
                },
                params => [
                  {
                    parameters => [
                      {
                        name => 'account_to_modify'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'the name or id of the account to update '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'desired_number_of_witnesses'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'desired number of active witnesses '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'desired_number_of_committee_members'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'desired number of active committee members'
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'broadcast'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'true if you wish to broadcast the transaction '
                      }
                    ]
                  }
                ],
                {
                  return => [
                    {
                      type => 'text',
                      content => 'the signed transaction changing your vote proxy settings '
                    }
                  ]
                }
              ]
            },
            type => 'signed_transaction',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'account_to_modify',
                type => 'string'
              },
              {
                declaration_name => 'desired_number_of_witnesses',
                type => 'uint16_t'
              },
              {
                declaration_name => 'desired_number_of_committee_members',
                type => 'uint16_t'
              },
              {
                declaration_name => 'broadcast',
                type => 'bool',
                default_value => 'false'
              }
            ]
          },
          {
            kind => 'function',
            name => 'sign_transaction',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Signs a transaction.'
                },
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Given a fully-formed transaction that is only lacking signatures, this signs the transaction with the necessary keys and optionally broadcasts the transaction '
                },
                params => [
                  {
                    parameters => [
                      {
                        name => 'tx'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'the unsigned transaction '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'broadcast'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'true if you wish to broadcast the transaction '
                      }
                    ]
                  }
                ],
                {
                  return => [
                    {
                      type => 'text',
                      content => 'the signed version of the transaction '
                    }
                  ]
                }
              ]
            },
            type => 'signed_transaction',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'tx',
                type => 'signed_transaction'
              },
              {
                declaration_name => 'broadcast',
                type => 'bool',
                default_value => 'false'
              }
            ]
          },
          {
            kind => 'function',
            name => 'get_prototype_operation',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Returns an uninitialized object representing a given blockchain operation.'
                },
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'This returns a default-initialized object of the given type; it can be used during early development of the wallet when we don\'t yet have custom commands for creating all of the operations the blockchain supports.'
                },
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Any operation the blockchain supports can be created using the transaction builder\'s '
                },
                {
                  type => 'style',
                  style => 'code',
                  enable => 'yes'
                },
                {
                  type => 'url',
                  link => 'classgraphene_1_1wallet_1_1wallet__api_1ab5cd568be3fd1c283e0ed2c1fd3c5469',
                  content => 'add_operation_to_builder_transaction()'
                },
                {
                  type => 'style',
                  style => 'code',
                  enable => 'no'
                },
                {
                  type => 'text',
                  content => ' , but to do that from the CLI you need to know what the JSON form of the operation looks like. This will give you a template you can fill in. It\'s better than nothing.'
                },
                {
                  type => 'parbreak'
                },
                params => [
                  {
                    parameters => [
                      {
                        name => 'operation_type'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'the type of operation to return, must be one of the operations defined in '
                      },
                      {
                        type => 'style',
                        style => 'code',
                        enable => 'yes'
                      },
                      {
                        type => 'text',
                        content => 'graphene/chain/operations.hpp'
                      },
                      {
                        type => 'style',
                        style => 'code',
                        enable => 'no'
                      },
                      {
                        type => 'text',
                        content => ' (e.g., "global_parameters_update_operation") '
                      }
                    ]
                  }
                ],
                {
                  return => [
                    {
                      type => 'text',
                      content => 'a default-constructed operation of the given type '
                    }
                  ]
                }
              ]
            },
            type => 'operation',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'operation_type',
                type => 'string'
              }
            ]
          },
          {
            kind => 'function',
            name => 'propose_parameter_change',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Creates a transaction to propose a parameter change.'
                },
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Multiple parameters can be specified if an atomic change is desired.'
                },
                {
                  type => 'parbreak'
                },
                params => [
                  {
                    parameters => [
                      {
                        name => 'proposing_account'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'The account paying the fee to propose the tx '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'expiration_time'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'Timestamp specifying when the proposal will either take effect or expire. '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'changed_values'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'The values to change; all other chain parameters are filled in with default values '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'broadcast'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'true if you wish to broadcast the transaction '
                      }
                    ]
                  }
                ],
                {
                  return => [
                    {
                      type => 'text',
                      content => 'the signed version of the transaction '
                    }
                  ]
                }
              ]
            },
            type => 'signed_transaction',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'proposing_account',
                type => 'const string &'
              },
              {
                declaration_name => 'expiration_time',
                type => 'fc::time_point_sec'
              },
              {
                declaration_name => 'changed_values',
                type => 'const variant_object &'
              },
              {
                declaration_name => 'broadcast',
                type => 'bool',
                default_value => 'false'
              }
            ]
          },
          {
            kind => 'function',
            name => 'propose_fee_change',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Propose a fee change.'
                },
                {
                  type => 'parbreak'
                },
                params => [
                  {
                    parameters => [
                      {
                        name => 'proposing_account'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'The account paying the fee to propose the tx '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'expiration_time'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'Timestamp specifying when the proposal will either take effect or expire. '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'changed_values'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'Map of operation type to new fee. Operations may be specified by name or ID. The "scale" key changes the scale. All other operations will maintain current values. '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'broadcast'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'true if you wish to broadcast the transaction '
                      }
                    ]
                  }
                ],
                {
                  return => [
                    {
                      type => 'text',
                      content => 'the signed version of the transaction '
                    }
                  ]
                }
              ]
            },
            type => 'signed_transaction',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'proposing_account',
                type => 'const string &'
              },
              {
                declaration_name => 'expiration_time',
                type => 'fc::time_point_sec'
              },
              {
                declaration_name => 'changed_values',
                type => 'const variant_object &'
              },
              {
                declaration_name => 'broadcast',
                type => 'bool',
                default_value => 'false'
              }
            ]
          },
          {
            kind => 'function',
            name => 'approve_proposal',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Approve or disapprove a proposal.'
                },
                {
                  type => 'parbreak'
                },
                params => [
                  {
                    parameters => [
                      {
                        name => 'fee_paying_account'
                      }
                    ],
                    doc => [
                      {
                        type => 'text',
                        content => 'The account paying the fee for the op. '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'proposal_id'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'The proposal to modify. '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'delta'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'Members contain approvals to create or remove. In JSON you can leave empty members undefined. '
                      }
                    ]
                  },
                  {
                    parameters => [
                      {
                        name => 'broadcast'
                      }
                    ],
                    doc => [
                      {
                        type => 'parbreak'
                      },
                      {
                        type => 'text',
                        content => 'true if you wish to broadcast the transaction '
                      }
                    ]
                  }
                ],
                {
                  return => [
                    {
                      type => 'text',
                      content => 'the signed version of the transaction '
                    }
                  ]
                }
              ]
            },
            type => 'signed_transaction',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'fee_paying_account',
                type => 'const string &'
              },
              {
                declaration_name => 'proposal_id',
                type => 'const string &'
              },
              {
                declaration_name => 'delta',
                type => 'const approval_delta &'
              },
              {
                declaration_name => 'broadcast',
                type => 'bool'
              }
            ]
          },
          {
            kind => 'function',
            name => 'get_order_book',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'order_book',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'base',
                type => 'const string &'
              },
              {
                declaration_name => 'quote',
                type => 'const string &'
              },
              {
                declaration_name => 'limit',
                type => 'unsigned',
                default_value => '50'
              }
            ]
          },
          {
            kind => 'function',
            name => 'dbg_make_uia',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'creator',
                type => 'string'
              },
              {
                declaration_name => 'symbol',
                type => 'string'
              }
            ]
          },
          {
            kind => 'function',
            name => 'dbg_make_mia',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'creator',
                type => 'string'
              },
              {
                declaration_name => 'symbol',
                type => 'string'
              }
            ]
          },
          {
            kind => 'function',
            name => 'dbg_push_blocks',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'src_filename',
                type => 'std::string'
              },
              {
                declaration_name => 'count',
                type => 'uint32_t'
              }
            ]
          },
          {
            kind => 'function',
            name => 'dbg_generate_blocks',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'debug_wif_key',
                type => 'std::string'
              },
              {
                declaration_name => 'count',
                type => 'uint32_t'
              }
            ]
          },
          {
            kind => 'function',
            name => 'dbg_stream_json_objects',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'filename',
                type => 'const std::string &'
              }
            ]
          },
          {
            kind => 'function',
            name => 'dbg_update_object',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'update',
                type => 'fc::variant_object'
              }
            ]
          },
          {
            kind => 'function',
            name => 'flood_network',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'prefix',
                type => 'string'
              },
              {
                declaration_name => 'number_of_transactions',
                type => 'uint32_t'
              }
            ]
          },
          {
            kind => 'function',
            name => 'network_add_nodes',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'nodes',
                type => 'const vector< string > &'
              }
            ]
          },
          {
            kind => 'function',
            name => 'network_get_connected_peers',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'vector< variant >',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'blind_transfer_help',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Used to transfer from one set of blinded balances to another '
                }
              ]
            },
            type => 'blind_confirmation',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'from_key_or_label',
                type => 'string'
              },
              {
                declaration_name => 'to_key_or_label',
                type => 'string'
              },
              {
                declaration_name => 'amount',
                type => 'string'
              },
              {
                declaration_name => 'symbol',
                type => 'string'
              },
              {
                declaration_name => 'broadcast',
                type => 'bool',
                default_value => 'false'
              },
              {
                declaration_name => 'to_temp',
                type => 'bool',
                default_value => 'false'
              }
            ]
          },
          {
            kind => 'function',
            name => 'get_result_formatters',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'std::map< string, std::function< string(fc::variant, const fc::variants &)> >',
            const => 'yes',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'encrypt_keys',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          }
        ]
      },
      public_members => {
        members => [
          {
            kind => 'variable',
            name => 'lock_changed',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'fc::signal< void(bool)>'
          },
          {
            kind => 'variable',
            name => 'my',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'std::shared_ptr< detail::wallet_api_impl >'
          }
        ]
      },
      brief => {},
      detailed => {
        doc => [
          {
            type => 'parbreak'
          },
          {
            type => 'text',
            content => 'This wallet assumes it is connected to the database server with a high-bandwidth, low-latency connection and performs minimal caching. This API could be provided locally to be used by a web interface. '
          }
        ]
      }
    },
    {
      name => 'graphene::wallet::wallet_data',
      includes => {
        local => 'no',
        name => 'wallet.hpp'
      },
      all_members => [
        {
          name => 'blind_receipts',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::wallet_data'
        },
        {
          name => 'chain_id',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::wallet_data'
        },
        {
          name => 'cipher_keys',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::wallet_data'
        },
        {
          name => 'extra_keys',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::wallet_data'
        },
        {
          name => 'labeled_keys',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::wallet_data'
        },
        {
          name => 'my_account_ids',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::wallet_data'
        },
        {
          name => 'my_accounts',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::wallet_data'
        },
        {
          name => 'pending_account_registrations',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::wallet_data'
        },
        {
          name => 'pending_witness_registrations',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::wallet_data'
        },
        {
          name => 'update_account',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::wallet_data'
        },
        {
          name => 'ws_password',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::wallet_data'
        },
        {
          name => 'ws_server',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::wallet_data'
        },
        {
          name => 'ws_user',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::wallet_data'
        }
      ],
      public_methods => {
        members => [
          {
            kind => 'function',
            name => 'my_account_ids',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  return => [
                    {
                      type => 'text',
                      content => 'IDs of all accounts in '
                    },
                    {
                      type => 'ref',
                      content => [
                        {
                          type => 'text',
                          content => 'my_accounts'
                        }
                      ]
                    },
                    {
                      type => 'text',
                      content => ' '
                    }
                  ]
                }
              ]
            },
            type => 'vector< object_id_type >',
            const => 'yes',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'update_account',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Add acct to '
                },
                {
                  type => 'ref',
                  content => [
                    {
                      type => 'text',
                      content => 'my_accounts'
                    }
                  ]
                },
                {
                  type => 'text',
                  content => ', or update it if it is already in '
                },
                {
                  type => 'ref',
                  content => [
                    {
                      type => 'text',
                      content => 'my_accounts'
                    }
                  ]
                },
                {
                  type => 'text',
                  content => ' '
                },
                {
                  return => [
                    {
                      type => 'text',
                      content => 'true if the account was newly inserted; false if it was only updated '
                    }
                  ]
                }
              ]
            },
            type => 'bool',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'acct',
                type => 'const account_object &'
              }
            ]
          }
        ]
      },
      public_members => {
        members => [
          {
            kind => 'variable',
            name => 'chain_id',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'text',
                  content => 'Chain ID this wallet is used with '
                }
              ]
            },
            type => 'chain_id_type'
          },
          {
            kind => 'variable',
            name => 'my_accounts',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'account_multi_index_type'
          },
          {
            kind => 'variable',
            name => 'cipher_keys',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'text',
                  content => 'encrypted keys '
                }
              ]
            },
            type => 'vector< char >'
          },
          {
            kind => 'variable',
            name => 'extra_keys',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'text',
                  content => 'map an account to a set of extra keys that have been imported for that account '
                }
              ]
            },
            type => 'map< account_id_type, set< public_key_type > >'
          },
          {
            kind => 'variable',
            name => 'pending_account_registrations',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'map< string, vector< string > >'
          },
          {
            kind => 'variable',
            name => 'pending_witness_registrations',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'map< string, string >'
          },
          {
            kind => 'variable',
            name => 'labeled_keys',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'key_label_index_type'
          },
          {
            kind => 'variable',
            name => 'blind_receipts',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'blind_receipt_index_type'
          },
          {
            kind => 'variable',
            name => 'ws_server',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'string',
            initializer => '= "ws://localhost:8090"'
          },
          {
            kind => 'variable',
            name => 'ws_user',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'string'
          },
          {
            kind => 'variable',
            name => 'ws_password',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'string'
          }
        ]
      },
      brief => {},
      detailed => {}
    },
    {
      name => 'graphene::wallet::worker_vote_delta',
      includes => {
        local => 'no',
        name => 'wallet.hpp'
      },
      all_members => [
        {
          name => 'vote_abstain',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::worker_vote_delta'
        },
        {
          name => 'vote_against',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::worker_vote_delta'
        },
        {
          name => 'vote_for',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'graphene::wallet::worker_vote_delta'
        }
      ],
      public_members => {
        members => [
          {
            kind => 'variable',
            name => 'vote_for',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'flat_set< worker_id_type >'
          },
          {
            kind => 'variable',
            name => 'vote_against',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'flat_set< worker_id_type >'
          },
          {
            kind => 'variable',
            name => 'vote_abstain',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'flat_set< worker_id_type >'
          }
        ]
      },
      brief => {},
      detailed => {}
    }
  ],
  namespaces => [
    {
      name => 'fc',
      classes => [
      ],
      namespaces => [
      ],
      functions => {
        members => [
          {
            kind => 'function',
            name => 'to_variant',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'accts',
                type => 'const account_multi_index_type &'
              },
              {
                declaration_name => 'vo',
                type => 'variant &'
              },
              {
                declaration_name => 'max_depth',
                type => 'uint32_t'
              }
            ]
          },
          {
            kind => 'function',
            name => 'from_variant',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'var',
                type => 'const variant &'
              },
              {
                declaration_name => 'vo',
                type => 'account_multi_index_type &'
              },
              {
                declaration_name => 'max_depth',
                type => 'uint32_t'
              }
            ]
          }
        ]
      },
      brief => {},
      detailed => {}
    },
    {
      name => 'graphene',
      classes => [
      ],
      namespaces => [
        {
          name => 'graphene::wallet'
        }
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'graphene::app',
      classes => [
      ],
      namespaces => [
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'graphene::chain',
      classes => [
      ],
      namespaces => [
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'graphene::utilities',
      classes => [
      ],
      namespaces => [
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'graphene::wallet',
      classes => [
        {
          name => 'graphene::wallet::account_history_operation_detail'
        },
        {
          name => 'graphene::wallet::approval_delta'
        },
        {
          name => 'graphene::wallet::blind_balance'
        },
        {
          name => 'graphene::wallet::blind_confirmation'
        },
        {
          name => 'graphene::wallet::blind_receipt'
        },
        {
          name => 'graphene::wallet::brain_key_info'
        },
        {
          name => 'graphene::wallet::exported_account_keys'
        },
        {
          name => 'graphene::wallet::exported_keys'
        },
        {
          name => 'graphene::wallet::key_label'
        },
        {
          name => 'graphene::wallet::operation_detail'
        },
        {
          name => 'graphene::wallet::operation_detail_ex'
        },
        {
          name => 'graphene::wallet::plain_keys'
        },
        {
          name => 'graphene::wallet::signed_block_with_info'
        },
        {
          name => 'graphene::wallet::utility'
        },
        {
          name => 'graphene::wallet::vesting_balance_object_with_info'
        },
        {
          name => 'graphene::wallet::wallet_api'
        },
        {
          name => 'graphene::wallet::wallet_data'
        },
        {
          name => 'graphene::wallet::worker_vote_delta'
        }
      ],
      namespaces => [
        {
          name => 'graphene::wallet::detail'
        }
      ],
      typedefs => {
        members => [
          {
            kind => 'typedef',
            name => 'transaction_handle_type',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'uint16_t'
          },
          {
            kind => 'typedef',
            name => 'blind_receipt_index_type',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'multi_index_container< blind_receipt, indexed_by< ordered_unique< tag< by_commitment >, const_mem_fun< blind_receipt, const commitment_type &,&blind_receipt::commitment > >, ordered_unique< tag< by_to >, const_mem_fun< blind_receipt, std::pair< public_key_type, fc::time_point >,&blind_receipt::to_date > >, ordered_non_unique< tag< by_to_asset_used >, const_mem_fun< blind_receipt, std::tuple< public_key_type, asset_id_type, bool >,&blind_receipt::to_asset_used > >, ordered_unique< tag< by_from >, const_mem_fun< blind_receipt, std::pair< public_key_type, fc::time_point >,&blind_receipt::from_date > > >>'
          },
          {
            kind => 'typedef',
            name => 'key_label_index_type',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'multi_index_container< key_label, indexed_by< ordered_unique< tag< by_label >, member< key_label, string,&key_label::label > >, ordered_unique< tag< by_key >, member< key_label, public_key_type,&key_label::key > > >>'
          }
        ]
      },
      functions => {
        members => [
          {
            kind => 'function',
            name => 'create_object',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'text',
                  content => 'This class takes a variant and turns it into an object of the given type, with the new operator. '
                }
              ]
            },
            type => 'object *',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'v',
                type => 'const variant &'
              }
            ]
          }
        ]
      },
      brief => {},
      detailed => {}
    },
    {
      name => 'graphene::wallet::detail',
      classes => [
      ],
      namespaces => [
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'std',
      classes => [
      ],
      namespaces => [
      ],
      brief => {},
      detailed => {}
    }
  ],
  files => [
    {
      name => 'wallet.hpp',
      includes => [
        {
          name => 'graphene/app/api.hpp'
        },
        {
          name => 'graphene/utilities/key_conversion.hpp'
        }
      ],
      included_by => [
      ],
      typedefs => {
        members => [
          {
            kind => 'typedef',
            name => 'transaction_handle_type',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'uint16_t'
          },
          {
            kind => 'typedef',
            name => 'blind_receipt_index_type',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'multi_index_container< blind_receipt, indexed_by< ordered_unique< tag< by_commitment >, const_mem_fun< blind_receipt, const commitment_type &,&blind_receipt::commitment > >, ordered_unique< tag< by_to >, const_mem_fun< blind_receipt, std::pair< public_key_type, fc::time_point >,&blind_receipt::to_date > >, ordered_non_unique< tag< by_to_asset_used >, const_mem_fun< blind_receipt, std::tuple< public_key_type, asset_id_type, bool >,&blind_receipt::to_asset_used > >, ordered_unique< tag< by_from >, const_mem_fun< blind_receipt, std::pair< public_key_type, fc::time_point >,&blind_receipt::from_date > > >>'
          },
          {
            kind => 'typedef',
            name => 'key_label_index_type',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'multi_index_container< key_label, indexed_by< ordered_unique< tag< by_label >, member< key_label, string,&key_label::label > >, ordered_unique< tag< by_key >, member< key_label, public_key_type,&key_label::key > > >>'
          }
        ]
      },
      functions => {
        members => [
          {
            kind => 'function',
            name => 'to_variant',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'accts',
                type => 'const account_multi_index_type &'
              },
              {
                declaration_name => 'vo',
                type => 'variant &'
              },
              {
                declaration_name => 'max_depth',
                type => 'uint32_t'
              }
            ]
          },
          {
            kind => 'function',
            name => 'from_variant',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'var',
                type => 'const variant &'
              },
              {
                declaration_name => 'vo',
                type => 'account_multi_index_type &'
              },
              {
                declaration_name => 'max_depth',
                type => 'uint32_t'
              }
            ]
          },
          {
            kind => 'function',
            name => 'create_object',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {
              doc => [
                {
                  type => 'text',
                  content => 'This class takes a variant and turns it into an object of the given type, with the new operator. '
                }
              ]
            },
            type => 'object *',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'v',
                type => 'const variant &'
              }
            ]
          }
        ]
      },
      brief => {},
      detailed => {}
    }
  ],
  groups => [
  ],
  pages => [
    {
      name => 'todo',
      title4 => 'Todo List',
      detailed => {
        doc => [
          {
            type => 'parbreak'
          },
          {
            type => 'anchor',
            id => 'todo_1_todo000002'
          },
          {
            type => 'text',
            content => 'Member '
          },
          {
            type => 'ref',
            link => 'classgraphene_1_1wallet_1_1wallet__api_1ac27928f7ca6db74e0ec4aee3ff0c545e',
            content => [
              {
                type => 'text',
                content => 'graphene::wallet::wallet_api::create_account_with_brain_key'
              }
            ]
          },
          {
            type => 'text',
            content => ' (string brain_key, string account_name, string registrar_account, string referrer_account, bool broadcast=false)why no referrer_percent here? '
          },
          {
            type => 'anchor',
            id => 'todo_1_todo000003'
          },
          {
            type => 'text',
            content => 'Member '
          },
          {
            type => 'ref',
            link => 'classgraphene_1_1wallet_1_1wallet__api_1aeb0d71a0ed4c6d05a003e48c3a0cb6d3',
            content => [
              {
                type => 'text',
                content => 'graphene::wallet::wallet_api::sell_asset'
              }
            ]
          },
          {
            type => 'text',
            content => ' (string seller_account, string amount_to_sell, string symbol_to_sell, string min_to_receive, string symbol_to_receive, uint32_t timeout_sec=0, bool fill_or_kill=false, bool broadcast=false)Allow order expiration to be set here. Document default/max expiration time '
          },
          {
            type => 'anchor',
            id => 'todo_1_todo000001'
          },
          {
            type => 'text',
            content => 'Member '
          },
          {
            type => 'ref',
            link => 'classgraphene_1_1wallet_1_1wallet__api_1af2145755728919d7e4aaf0f02d7c4e82',
            content => [
              {
                type => 'text',
                content => 'graphene::wallet::wallet_api::upgrade_account'
              }
            ]
          },
          {
            type => 'text',
            content => ' (string name, bool broadcast)there is no option for annual membership '
          }
        ]
      }
    }
  ]
};
1;
