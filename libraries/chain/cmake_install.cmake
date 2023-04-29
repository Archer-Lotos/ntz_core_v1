# Install script for directory: /root/ntzcore2/libraries/chain

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/root/ntzcore2/libraries/chain/libgraphene_chain.a")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/graphene/chain" TYPE FILE FILES
    "/root/ntzcore2/libraries/chain/include/graphene/chain/account_evaluator.hpp"
    "/root/ntzcore2/libraries/chain/include/graphene/chain/account_object.hpp"
    "/root/ntzcore2/libraries/chain/include/graphene/chain/assert_evaluator.hpp"
    "/root/ntzcore2/libraries/chain/include/graphene/chain/asset_evaluator.hpp"
    "/root/ntzcore2/libraries/chain/include/graphene/chain/asset_object.hpp"
    "/root/ntzcore2/libraries/chain/include/graphene/chain/balance_evaluator.hpp"
    "/root/ntzcore2/libraries/chain/include/graphene/chain/balance_object.hpp"
    "/root/ntzcore2/libraries/chain/include/graphene/chain/block_database.hpp"
    "/root/ntzcore2/libraries/chain/include/graphene/chain/block_summary_object.hpp"
    "/root/ntzcore2/libraries/chain/include/graphene/chain/budget_record_object.hpp"
    "/root/ntzcore2/libraries/chain/include/graphene/chain/buyback.hpp"
    "/root/ntzcore2/libraries/chain/include/graphene/chain/buyback_object.hpp"
    "/root/ntzcore2/libraries/chain/include/graphene/chain/chain_property_object.hpp"
    "/root/ntzcore2/libraries/chain/include/graphene/chain/committee_member_evaluator.hpp"
    "/root/ntzcore2/libraries/chain/include/graphene/chain/committee_member_object.hpp"
    "/root/ntzcore2/libraries/chain/include/graphene/chain/confidential_evaluator.hpp"
    "/root/ntzcore2/libraries/chain/include/graphene/chain/confidential_object.hpp"
    "/root/ntzcore2/libraries/chain/include/graphene/chain/config.hpp"
    "/root/ntzcore2/libraries/chain/include/graphene/chain/custom_evaluator.hpp"
    "/root/ntzcore2/libraries/chain/include/graphene/chain/database.hpp"
    "/root/ntzcore2/libraries/chain/include/graphene/chain/db_with.hpp"
    "/root/ntzcore2/libraries/chain/include/graphene/chain/evaluator.hpp"
    "/root/ntzcore2/libraries/chain/include/graphene/chain/exceptions.hpp"
    "/root/ntzcore2/libraries/chain/include/graphene/chain/fba_accumulator_id.hpp"
    "/root/ntzcore2/libraries/chain/include/graphene/chain/fba_object.hpp"
    "/root/ntzcore2/libraries/chain/include/graphene/chain/fork_database.hpp"
    "/root/ntzcore2/libraries/chain/include/graphene/chain/genesis_state.hpp"
    "/root/ntzcore2/libraries/chain/include/graphene/chain/get_config.hpp"
    "/root/ntzcore2/libraries/chain/include/graphene/chain/global_property_object.hpp"
    "/root/ntzcore2/libraries/chain/include/graphene/chain/hardfork.hpp"
    "/root/ntzcore2/libraries/chain/include/graphene/chain/immutable_chain_parameters.hpp"
    "/root/ntzcore2/libraries/chain/include/graphene/chain/impacted.hpp"
    "/root/ntzcore2/libraries/chain/include/graphene/chain/internal_exceptions.hpp"
    "/root/ntzcore2/libraries/chain/include/graphene/chain/invoice_evaluator.hpp"
    "/root/ntzcore2/libraries/chain/include/graphene/chain/invoice_object.hpp"
    "/root/ntzcore2/libraries/chain/include/graphene/chain/is_authorized_asset.hpp"
    "/root/ntzcore2/libraries/chain/include/graphene/chain/market_evaluator.hpp"
    "/root/ntzcore2/libraries/chain/include/graphene/chain/market_object.hpp"
    "/root/ntzcore2/libraries/chain/include/graphene/chain/node_property_object.hpp"
    "/root/ntzcore2/libraries/chain/include/graphene/chain/operation_history_object.hpp"
    "/root/ntzcore2/libraries/chain/include/graphene/chain/proposal_evaluator.hpp"
    "/root/ntzcore2/libraries/chain/include/graphene/chain/proposal_object.hpp"
    "/root/ntzcore2/libraries/chain/include/graphene/chain/pts_address.hpp"
    "/root/ntzcore2/libraries/chain/include/graphene/chain/special_authority.hpp"
    "/root/ntzcore2/libraries/chain/include/graphene/chain/special_authority_object.hpp"
    "/root/ntzcore2/libraries/chain/include/graphene/chain/transaction_evaluation_state.hpp"
    "/root/ntzcore2/libraries/chain/include/graphene/chain/transaction_object.hpp"
    "/root/ntzcore2/libraries/chain/include/graphene/chain/transfer_evaluator.hpp"
    "/root/ntzcore2/libraries/chain/include/graphene/chain/vesting_balance_evaluator.hpp"
    "/root/ntzcore2/libraries/chain/include/graphene/chain/vesting_balance_object.hpp"
    "/root/ntzcore2/libraries/chain/include/graphene/chain/vote_count.hpp"
    "/root/ntzcore2/libraries/chain/include/graphene/chain/withdraw_permission_evaluator.hpp"
    "/root/ntzcore2/libraries/chain/include/graphene/chain/withdraw_permission_object.hpp"
    "/root/ntzcore2/libraries/chain/include/graphene/chain/witness_evaluator.hpp"
    "/root/ntzcore2/libraries/chain/include/graphene/chain/witness_object.hpp"
    "/root/ntzcore2/libraries/chain/include/graphene/chain/witness_schedule_object.hpp"
    "/root/ntzcore2/libraries/chain/include/graphene/chain/worker_evaluator.hpp"
    "/root/ntzcore2/libraries/chain/include/graphene/chain/worker_object.hpp"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/graphene/chain/protocol" TYPE FILE FILES
    "/root/ntzcore2/libraries/chain/include/graphene/chain/protocol/account.hpp"
    "/root/ntzcore2/libraries/chain/include/graphene/chain/protocol/address.hpp"
    "/root/ntzcore2/libraries/chain/include/graphene/chain/protocol/assert.hpp"
    "/root/ntzcore2/libraries/chain/include/graphene/chain/protocol/asset.hpp"
    "/root/ntzcore2/libraries/chain/include/graphene/chain/protocol/asset_ops.hpp"
    "/root/ntzcore2/libraries/chain/include/graphene/chain/protocol/authority.hpp"
    "/root/ntzcore2/libraries/chain/include/graphene/chain/protocol/balance.hpp"
    "/root/ntzcore2/libraries/chain/include/graphene/chain/protocol/base.hpp"
    "/root/ntzcore2/libraries/chain/include/graphene/chain/protocol/block.hpp"
    "/root/ntzcore2/libraries/chain/include/graphene/chain/protocol/buyback.hpp"
    "/root/ntzcore2/libraries/chain/include/graphene/chain/protocol/chain_parameters.hpp"
    "/root/ntzcore2/libraries/chain/include/graphene/chain/protocol/committee_member.hpp"
    "/root/ntzcore2/libraries/chain/include/graphene/chain/protocol/confidential.hpp"
    "/root/ntzcore2/libraries/chain/include/graphene/chain/protocol/config.hpp"
    "/root/ntzcore2/libraries/chain/include/graphene/chain/protocol/custom.hpp"
    "/root/ntzcore2/libraries/chain/include/graphene/chain/protocol/ext.hpp"
    "/root/ntzcore2/libraries/chain/include/graphene/chain/protocol/fba.hpp"
    "/root/ntzcore2/libraries/chain/include/graphene/chain/protocol/fee_schedule.hpp"
    "/root/ntzcore2/libraries/chain/include/graphene/chain/protocol/invoice.hpp"
    "/root/ntzcore2/libraries/chain/include/graphene/chain/protocol/market.hpp"
    "/root/ntzcore2/libraries/chain/include/graphene/chain/protocol/memo.hpp"
    "/root/ntzcore2/libraries/chain/include/graphene/chain/protocol/operations.hpp"
    "/root/ntzcore2/libraries/chain/include/graphene/chain/protocol/proposal.hpp"
    "/root/ntzcore2/libraries/chain/include/graphene/chain/protocol/special_authority.hpp"
    "/root/ntzcore2/libraries/chain/include/graphene/chain/protocol/transaction.hpp"
    "/root/ntzcore2/libraries/chain/include/graphene/chain/protocol/transfer.hpp"
    "/root/ntzcore2/libraries/chain/include/graphene/chain/protocol/types.hpp"
    "/root/ntzcore2/libraries/chain/include/graphene/chain/protocol/vesting.hpp"
    "/root/ntzcore2/libraries/chain/include/graphene/chain/protocol/vote.hpp"
    "/root/ntzcore2/libraries/chain/include/graphene/chain/protocol/withdraw_permission.hpp"
    "/root/ntzcore2/libraries/chain/include/graphene/chain/protocol/witness.hpp"
    "/root/ntzcore2/libraries/chain/include/graphene/chain/protocol/worker.hpp"
    )
endif()

