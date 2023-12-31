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
#pragma once
#include <graphene/chain/protocol/base.hpp>
#include <graphene/chain/protocol/types.hpp>
#include <fc/smart_ref_fwd.hpp>

namespace graphene { namespace chain { struct fee_schedule; } }

namespace graphene { namespace chain {

   typedef static_variant<>  parameter_extension; 
   struct chain_parameters
   {
      /** using a smart ref breaks the circular dependency created between operations and the fee schedule */
      smart_ref<fee_schedule> current_fees;                       ///< current schedule of fees
      uint8_t                 block_interval                      = GRAPHENE_DEFAULT_BLOCK_INTERVAL; ///< interval in seconds between blocks
      uint32_t                maintenance_interval                = GRAPHENE_DEFAULT_MAINTENANCE_INTERVAL; ///< interval in sections between blockchain maintenance events
      uint8_t                 maintenance_skip_slots              = GRAPHENE_DEFAULT_MAINTENANCE_SKIP_SLOTS; ///< number of block_intervals to skip at maintenance time
      uint32_t                committee_proposal_review_period    = GRAPHENE_DEFAULT_COMMITTEE_PROPOSAL_REVIEW_PERIOD_SEC; ///< minimum time in seconds that a proposed transaction requiring committee authority may not be signed, prior to expiration
      uint32_t                maximum_transaction_size            = GRAPHENE_DEFAULT_MAX_TRANSACTION_SIZE; ///< maximum allowable size in bytes for a transaction
      uint32_t                maximum_block_size                  = GRAPHENE_DEFAULT_MAX_BLOCK_SIZE; ///< maximum allowable size in bytes for a block
      uint32_t                maximum_time_until_expiration       = GRAPHENE_DEFAULT_MAX_TIME_UNTIL_EXPIRATION; ///< maximum lifetime in seconds for transactions to be valid, before expiring
      uint32_t                maximum_proposal_lifetime           = GRAPHENE_DEFAULT_MAX_PROPOSAL_LIFETIME_SEC; ///< maximum lifetime in seconds for proposed transactions to be kept, before expiring
      uint8_t                 maximum_asset_whitelist_authorities = GRAPHENE_DEFAULT_MAX_ASSET_WHITELIST_AUTHORITIES; ///< maximum number of accounts which an asset may list as authorities for its whitelist OR blacklist
      uint8_t                 maximum_asset_feed_publishers       = GRAPHENE_DEFAULT_MAX_ASSET_FEED_PUBLISHERS; ///< the maximum number of feed publishers for a given asset
      uint16_t                maximum_witness_count               = GRAPHENE_DEFAULT_MAX_WITNESSES; ///< maximum number of active witnesses
      uint16_t                maximum_committee_count             = GRAPHENE_DEFAULT_MAX_COMMITTEE; ///< maximum number of active committee_members
      uint16_t                maximum_authority_membership        = GRAPHENE_DEFAULT_MAX_AUTHORITY_MEMBERSHIP; ///< largest number of keys/accounts an authority can have
      uint16_t                reserve_percent_of_fee              = GRAPHENE_DEFAULT_BURN_PERCENT_OF_FEE; ///< the percentage of the network's allocation of a fee that is taken out of circulation
      uint16_t                network_percent_of_fee              = GRAPHENE_DEFAULT_NETWORK_PERCENT_OF_FEE; ///< percent of transaction fees paid to network
      uint16_t                lifetime_referrer_percent_of_fee    = GRAPHENE_DEFAULT_LIFETIME_REFERRER_PERCENT_OF_FEE; ///< percent of transaction fees paid to network
      uint32_t                cashback_vesting_period_seconds     = GRAPHENE_DEFAULT_CASHBACK_VESTING_PERIOD_SEC; ///< time after cashback rewards are accrued before they become liquid
      share_type              cashback_vesting_threshold          = GRAPHENE_DEFAULT_CASHBACK_VESTING_THRESHOLD; ///< the maximum cashback that can be received without vesting
      bool                    count_non_member_votes              = true; ///< set to false to restrict voting privlegages to member accounts
      bool                    allow_non_member_whitelists         = false; ///< true if non-member accounts may set whitelists and blacklists; false otherwise
      share_type              witness_pay_per_block               = GRAPHENE_DEFAULT_WITNESS_PAY_PER_BLOCK; ///< CORE to be allocated to witnesses (per block)
      uint32_t                witness_pay_vesting_seconds         = GRAPHENE_DEFAULT_WITNESS_PAY_VESTING_SECONDS; ///< vesting_seconds parameter for witness VBO's
      share_type              worker_budget_per_day               = GRAPHENE_DEFAULT_WORKER_BUDGET_PER_DAY; ///< CORE to be allocated to workers (per day)
      uint16_t                max_predicate_opcode                = GRAPHENE_DEFAULT_MAX_ASSERT_OPCODE; ///< predicate_opcode must be less than this number
      share_type              fee_liquidation_threshold           = GRAPHENE_DEFAULT_FEE_LIQUIDATION_THRESHOLD; ///< value in CORE at which accumulated fees in blockchain-issued market assets should be liquidated
      uint16_t                accounts_per_fee_scale              = GRAPHENE_DEFAULT_ACCOUNTS_PER_FEE_SCALE; ///< number of accounts between fee scalings
      uint8_t                 account_fee_scale_bitshifts         = GRAPHENE_DEFAULT_ACCOUNT_FEE_SCALE_BITSHIFTS; ///< number of times to left bitshift account registration fee at each scaling
      uint8_t                 max_authority_depth                 = GRAPHENE_MAX_SIG_CHECK_DEPTH;
      uint16_t                merchant_percent                    = (30*GRAPHENE_1_PERCENT); ///< percent of reward paid to merchant
      uint16_t                merchant_referrer_percent           = (1*GRAPHENE_1_PERCENT); ///< percent of reward paid to merchant
      uint16_t                ref_01_percent_of_fee               = (20*GRAPHENE_1_PERCENT); ///< percent of transaction fees paid to ref_01
      uint16_t                ref_02_percent_of_fee               = (10*GRAPHENE_1_PERCENT); ///< percent of transaction fees paid to ref_02
      uint16_t                ref_03_percent_of_fee               = (6*GRAPHENE_1_PERCENT); ///< percent of transaction fees paid to ref_03
      uint16_t                ref_04_percent_of_fee               = (4*GRAPHENE_1_PERCENT); ///< percent of transaction fees paid to ref_04
      uint16_t                ref_05_percent_of_fee               = (3*GRAPHENE_1_PERCENT); ///< percent of transaction fees paid to ref_05
      uint16_t                ref_06_percent_of_fee               = (2*GRAPHENE_1_PERCENT); ///< percent of transaction fees paid to ref_06
      uint16_t                ref_07_percent_of_fee               = (2*GRAPHENE_1_PERCENT); ///< percent of transaction fees paid to ref_07
      uint16_t                ref_08_percent_of_fee               = (3*GRAPHENE_1_PERCENT); ///< percent of transaction fees paid to ref_08
      uint8_t                 status_levels_00                    = 0;
      uint8_t                 status_levels_01                    = 3;
      uint8_t                 status_levels_02                    = 6;
      uint8_t                 status_levels_03                    = 8;
      bool                    status_bonus                        = true;
      asset_id_type           status_bonus_asset_id               = asset_id_type(1);
      bool                    denominator                         = false;
      uint16_t                status_denominator_00               = (100*GRAPHENE_1_PERCENT);
      uint16_t                status_denominator_01               = (100*GRAPHENE_1_PERCENT);
      uint16_t                status_denominator_02               = (100*GRAPHENE_1_PERCENT);
      uint16_t                status_denominator_03               = (100*GRAPHENE_1_PERCENT);
      uint8_t                 denominator_bonus_level             = 3;
      uint8_t                 nv_levels                           = 30;
      uint8_t                 min_nv_status                       = 2;
      uint8_t                 ref_levels                          = 8;
      uint8_t                 compression_levels                  = 30;
      bool                    compression                         = true; /// Referral reward program have compression
      bool                    cashback                            = true; /// Cashback - fist level reward paid to self
      bool                    alllow_non_partner_register         = true; /// 
      uint8_t                 min_not_compressed                  = 3;
      share_type              compression_limit                   = (GRAPHENE_BLOCKCHAIN_PRECISION * int64_t(0));
      uint64_t                referral_statistic_seconds          = 90*24*60*60;
      account_id_type         root_account                        = account_id_type(27);
      account_id_type         merchant_validator_account          = account_id_type(27);
      account_id_type         transfer_to_merchants               = account_id_type(27);
      share_type              nv_level_threshold_01               = (GRAPHENE_BLOCKCHAIN_PRECISION * int64_t(300000));
      share_type              nv_level_threshold_02               = (GRAPHENE_BLOCKCHAIN_PRECISION * int64_t(700000));
      share_type              nv_level_threshold_03               = (GRAPHENE_BLOCKCHAIN_PRECISION * int64_t(2000000));
      share_type              nv_level_threshold_04               = (GRAPHENE_BLOCKCHAIN_PRECISION * int64_t(5000000));
      share_type              nv_level_threshold_05               = (GRAPHENE_BLOCKCHAIN_PRECISION * int64_t(9000000));
      share_type              nv_level_threshold_06               = (GRAPHENE_BLOCKCHAIN_PRECISION * int64_t(14000000));
      share_type              nv_level_threshold_07               = (GRAPHENE_BLOCKCHAIN_PRECISION * int64_t(30000000));
      share_type              nv_level_threshold_08               = (GRAPHENE_BLOCKCHAIN_PRECISION * int64_t(50000000));
      share_type              status_threshold_01                 = (GRAPHENE_BLOCKCHAIN_PRECISION * int64_t(20000));
      share_type              status_threshold_02                 = (GRAPHENE_BLOCKCHAIN_PRECISION * int64_t(10000));
      share_type              status_threshold_03                 = (GRAPHENE_BLOCKCHAIN_PRECISION * int64_t(0));
      share_type              status_threshold_10                 = (GRAPHENE_BLOCKCHAIN_PRECISION * int64_t(2500));
      share_type              status_bonus_reward_01              = (GRAPHENE_BLOCKCHAIN_PRECISION * int64_t(6000));
      share_type              status_bonus_reward_02              = (GRAPHENE_BLOCKCHAIN_PRECISION * int64_t(30000));
      share_type              status_bonus_reward_03              = (GRAPHENE_BLOCKCHAIN_PRECISION * int64_t(60000));
      uint16_t                nv_level_reward_01                  = (1*GRAPHENE_1_PERCENT); 
      uint16_t                nv_level_reward_02                  = (2*GRAPHENE_1_PERCENT); 
      uint16_t                nv_level_reward_03                  = (3*GRAPHENE_1_PERCENT); 
      uint16_t                nv_level_reward_04                  = (4*GRAPHENE_1_PERCENT); 
      uint16_t                nv_level_reward_05                  = (5*GRAPHENE_1_PERCENT); 
      uint16_t                nv_level_reward_06                  = (6*GRAPHENE_1_PERCENT); 
      uint16_t                nv_level_reward_07                  = (7*GRAPHENE_1_PERCENT); 
      uint16_t                nv_level_reward_08                  = (8*GRAPHENE_1_PERCENT); 
      uint16_t                merchant_percent_of_fee             = (10*GRAPHENE_1_PERCENT);
      extensions_type         extensions;

      /** defined in fee_schedule.cpp */
      void validate()const;
   };

} }  // graphene::chain

FC_REFLECT( graphene::chain::chain_parameters,
            (current_fees)
            (block_interval)
            (maintenance_interval)
            (maintenance_skip_slots)
            (committee_proposal_review_period)
            (maximum_transaction_size)
            (maximum_block_size)
            (maximum_time_until_expiration)
            (maximum_proposal_lifetime)
            (maximum_asset_whitelist_authorities)
            (maximum_asset_feed_publishers)
            (maximum_witness_count)
            (maximum_committee_count)
            (maximum_authority_membership)
            (reserve_percent_of_fee)
            (network_percent_of_fee)
            (lifetime_referrer_percent_of_fee)
            (cashback_vesting_period_seconds)
            (cashback_vesting_threshold)
            (count_non_member_votes)
            (allow_non_member_whitelists)
            (witness_pay_per_block)
            (worker_budget_per_day)
            (max_predicate_opcode)
            (fee_liquidation_threshold)
            (accounts_per_fee_scale)
            (account_fee_scale_bitshifts)
            (max_authority_depth)
            (merchant_percent)
            (merchant_referrer_percent)
            (ref_01_percent_of_fee)
            (ref_02_percent_of_fee)
            (ref_03_percent_of_fee)
            (ref_04_percent_of_fee)
            (ref_05_percent_of_fee)
            (ref_06_percent_of_fee)
            (ref_07_percent_of_fee)
            (ref_08_percent_of_fee)
            (status_levels_00)
            (status_levels_01)
            (status_levels_02)
            (status_levels_03)
            (status_bonus)
            (status_bonus_asset_id)
            (denominator)
            (status_denominator_00)
            (status_denominator_01)
            (status_denominator_02)
            (status_denominator_03)
            (denominator_bonus_level)
            (nv_levels)
            (min_nv_status)
            (ref_levels)
            (compression_levels)
            (compression)
            (cashback)
            (alllow_non_partner_register)
            (min_not_compressed)
            (compression_limit)
            (referral_statistic_seconds)
            (root_account)
            (merchant_validator_account)
            (transfer_to_merchants)
            (nv_level_threshold_01)
            (nv_level_threshold_02)
            (nv_level_threshold_03)
            (nv_level_threshold_04)
            (nv_level_threshold_05)
            (nv_level_threshold_06)
            (nv_level_threshold_07)
            (nv_level_threshold_08)
            (status_threshold_01)
            (status_threshold_02)
            (status_threshold_03)
            (status_threshold_10)
            (status_bonus_reward_01)
            (status_bonus_reward_02)
            (status_bonus_reward_03)
            (nv_level_reward_01)
            (nv_level_reward_02)
            (nv_level_reward_03)
            (nv_level_reward_04)
            (nv_level_reward_05)
            (nv_level_reward_06)
            (nv_level_reward_07)
            (nv_level_reward_08)
            (merchant_percent_of_fee)
            (extensions)
          )
