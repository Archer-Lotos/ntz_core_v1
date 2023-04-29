/*****************************************
 *                                       *
 * This file is automatically generated. *
 * To create new hardfork, please modify *
 * the .hf files in hardfork.d instead   *
 * of modifying this file.               *
 *                                       *
 *****************************************/

#pragma once
// Issue #23: Withdrawal claims made before the first withdrawal period are incorrectly allowed
#ifndef HARDFORK_23_TIME
#define HARDFORK_23_TIME (fc::time_point_sec( 1512747600 ))
#endif
// #357 Disallow publishing certain malformed price feeds
#ifndef HARDFORK_357_TIME
#define HARDFORK_357_TIME (fc::time_point_sec( 1444416300 ))
#endif
// #359 Allow digits in asset name
#ifndef HARDFORK_359_TIME
#define HARDFORK_359_TIME (fc::time_point_sec( 1444416300 ))
#endif
// #385 October 23 enforce PARENT.CHILD and allow short names
#ifndef HARDFORK_385_TIME
#define HARDFORK_385_TIME (fc::time_point_sec( 1445558400 ))
#endif
// #409 Allow creation of sub-assets
#ifndef HARDFORK_409_TIME
#define HARDFORK_409_TIME (fc::time_point_sec( 1446652800 ))
#endif
// #413 Add operation to claim asset fees
#ifndef HARDFORK_413_TIME
#define HARDFORK_413_TIME (fc::time_point_sec( 1446652800 ))
#endif
// #415 Default accept policy for asset with no whitelist authorities
#ifndef HARDFORK_415_TIME
#define HARDFORK_415_TIME (fc::time_point_sec( 1446652800 ))
#endif
// #416 enforce_white_list is inconsistently applied
#ifndef HARDFORK_416_TIME
#define HARDFORK_416_TIME (fc::time_point_sec( 1446652800 ))
#endif
// #419 Account can pay fees in blacklisted asset
#ifndef HARDFORK_419_TIME
#define HARDFORK_419_TIME (fc::time_point_sec( 1446652800 ))
#endif
// #436 Prevent margin call from being triggered unless feed < call price
#ifndef HARDFORK_436_TIME
#define HARDFORK_436_TIME (fc::time_point_sec( 1450288800 ))
#endif
// #445 Refund create order fees on cancel
#ifndef HARDFORK_445_TIME
#define HARDFORK_445_TIME (fc::time_point_sec( 1450288800 ))
#endif
// #453 Hardfork to retroactively correct referral percentages
#ifndef HARDFORK_453_TIME
#define HARDFORK_453_TIME (fc::time_point_sec( 1450288800 ))
#endif
// #480 Fix non-NTZ MIA core_exchange_rate check
#ifndef HARDFORK_480_TIME
#define HARDFORK_480_TIME (fc::time_point_sec( 1450378800 ))
#endif
// #483 Operation history numbering change
#ifndef HARDFORK_483_TIME
#define HARDFORK_483_TIME (fc::time_point_sec( 1450378800 ))
#endif
// #516 Special authorities
#ifndef HARDFORK_516_TIME
#define HARDFORK_516_TIME (fc::time_point_sec( 1456250400 ))
#endif
// #533 Improve vote counting implementation
#ifndef HARDFORK_533_TIME
#define HARDFORK_533_TIME (fc::time_point_sec( 1456250400 ))
#endif
// #538 Buyback accounts
#ifndef HARDFORK_538_TIME
#define HARDFORK_538_TIME (fc::time_point_sec( 1456250400 ))
#endif
// #555 Buyback accounts
#ifndef HARDFORK_555_TIME
#define HARDFORK_555_TIME (fc::time_point_sec( 1456250400 ))
#endif
// #563 Stealth fee routing
#ifndef HARDFORK_563_TIME
#define HARDFORK_563_TIME (fc::time_point_sec( 1456250400 ))
#endif
// #572 Allow asset to update permission flags when no supply exists
#ifndef HARDFORK_572_TIME
#define HARDFORK_572_TIME (fc::time_point_sec( 1456250400 ))
#endif
// #599 Unpacking of extension is incorrect
#ifndef HARDFORK_599_TIME
#define HARDFORK_599_TIME (fc::time_point_sec( 1459789200 ))
#endif
// #607 Disable negative voting on workers
#ifndef HARDFORK_607_TIME
#define HARDFORK_607_TIME (fc::time_point_sec( 1458752400 ))
#endif
// #613 Deprecate annual membership
#ifndef HARDFORK_613_TIME
#define HARDFORK_613_TIME (fc::time_point_sec( 1458752400 ))
#endif
// #615 Fix price feed expiration check, so websocket server will never spam too much data
#ifndef HARDFORK_615_TIME
#define HARDFORK_615_TIME (fc::time_point_sec( 1458752400 ))
#endif
// netizens-core issue #1040 Remove temp-account balance check
#ifndef HARDFORK_CORE_1040_TIME
#define HARDFORK_CORE_1040_TIME (fc::time_point_sec( 1532008920 )) // Thu, 19 Jul 2018 14:02:00 UTC
#endif
// netizens-core issue #1479 nodes crashing on self-approving proposal
#ifndef HARDFORK_CORE_1479_TIME
#define HARDFORK_CORE_1479_TIME (fc::time_point_sec( 1545436800 )) // 2018-12-22T00:00:00Z
#endif
// netizens-core issue #184 Fix "Potential something-for-nothing fill bug"
#ifndef HARDFORK_CORE_184_TIME
#define HARDFORK_CORE_184_TIME (fc::time_point_sec( 1532008920 )) // Thu, 19 Jul 2018 14:02:00 UTC
#endif
// #188 Add operation to allow claiming of funds in an asset's fee pool
#ifndef HARDFORK_CORE_188_TIME
#define HARDFORK_CORE_188_TIME (fc::time_point_sec( 1532008920 )) // Thu, 19 Jul 2018 14:02:00 UTC
#endif
// netizens-core #199 Require owner key for change of asset-issuer (new operation)
#ifndef HARDFORK_CORE_199_TIME
#define HARDFORK_CORE_199_TIME (fc::time_point_sec( 1532008920 )) // Thu, 19 Jul 2018 14:02:00 UTC
#endif
// netizens-core #214 Proposal cannot contain proposal_update_operation
#ifndef HARDFORK_CORE_214_TIME
#define HARDFORK_CORE_214_TIME (fc::time_point_sec( 1532008920 )) // Thu, 19 Jul 2018 14:02:00 UTC
#endif
// netizens-core #216 Process to reset a Smartcoin after a Black Swan
#ifndef HARDFORK_CORE_216_TIME
#define HARDFORK_CORE_216_TIME (fc::time_point_sec( 1512747600 ))
#endif
// netizens-core issue #338 Fix "margin call order fills at price of matching limit_order"
#ifndef HARDFORK_CORE_338_TIME
#define HARDFORK_CORE_338_TIME (fc::time_point_sec( 1532008920 )) // Thu, 19 Jul 2018 14:02:00 UTC
#endif
// netizens-core issue #342
// Mitigate rounding issue when matching orders
#ifndef HARDFORK_CORE_342_TIME
#define HARDFORK_CORE_342_TIME (fc::time_point_sec( 1532008920 )) // Thu, 19 Jul 2018 14:02:00 UTC
#endif
// netizens-core issue #343
// Fix "Inconsistent sorting of call orders between matching against a limit order and a force settle order"
#ifndef HARDFORK_CORE_343_TIME
#define HARDFORK_CORE_343_TIME (fc::time_point_sec( 1532008920 )) // Thu, 19 Jul 2018 14:02:00 UTC
#endif
// netizens-core #429 rounding issue when creating assets
#ifndef HARDFORK_CORE_429_TIME
#define HARDFORK_CORE_429_TIME (fc::time_point_sec( 1512747600 ))
#endif
// netizens-core issue #453 Fix "Multiple limit order and call order matching issue"
#ifndef HARDFORK_CORE_453_TIME
#define HARDFORK_CORE_453_TIME (fc::time_point_sec( 1532008920 )) // Thu, 19 Jul 2018 14:02:00 UTC
#endif
// netizens-core issue #518 Clean up bitasset_data during maintenance
#ifndef HARDFORK_CORE_518_TIME
#define HARDFORK_CORE_518_TIME (fc::time_point_sec( 1532008920 )) // Thu, 19 Jul 2018 14:02:00 UTC
#endif
// netizens-core issue #583 Always allow updating a call order to higher collateral ratio
#ifndef HARDFORK_CORE_583_TIME
#define HARDFORK_CORE_583_TIME (fc::time_point_sec( 1532008920 )) // Thu, 19 Jul 2018 14:02:00 UTC
#endif
// Issue #588: Virtual operations should be excluded from transactions
#ifndef HARDFORK_CORE_588_TIME
#define HARDFORK_CORE_588_TIME (fc::time_point_sec( 1532008920 )) // Thu, 19 Jul 2018 14:02:00 UTC
#endif
// netizens-core issue #604
// Implement BSIP 26: refund order creation fee in original paid asset when order is cancelled
#ifndef HARDFORK_CORE_604_TIME
#define HARDFORK_CORE_604_TIME (fc::time_point_sec( 1532008920 )) // Thu, 19 Jul 2018 14:02:00 UTC
#endif
// netizens-core issue #606 Fix "Undercollateralized short positions should be called regardless of asks"
#ifndef HARDFORK_CORE_606_TIME
#define HARDFORK_CORE_606_TIME (fc::time_point_sec( 1532008920 )) // Thu, 19 Jul 2018 14:02:00 UTC
#endif
// netizens-core issue #620 Allow numbers at the end of asset symbol
#ifndef HARDFORK_CORE_620_TIME
#define HARDFORK_CORE_620_TIME (fc::time_point_sec( 1532008920 )) // Thu, 19 Jul 2018 14:02:00 UTC
#endif
// netizens-core issue #625 Fix "Potential erratic order matching issue involving margin call orders"
#ifndef HARDFORK_CORE_625_TIME
#define HARDFORK_CORE_625_TIME (fc::time_point_sec( 1532008920 )) // Thu, 19 Jul 2018 14:02:00 UTC
#endif
// netizens-core issue #834 "BSIP38: add target CR option to short positions"
#ifndef HARDFORK_CORE_834_TIME
#define HARDFORK_CORE_834_TIME (fc::time_point_sec( 1532008920 )) // Thu, 19 Jul 2018 14:02:00 UTC
#endif
// netizens-core issue #868 Clear price feed data after updated a bitAsset's backing asset ID
// netizens-core issue #890 Update median feeds after feed_lifetime_sec changed
#ifndef HARDFORK_CORE_868_890_TIME
#define HARDFORK_CORE_868_890_TIME (fc::time_point_sec( 1532008920 )) // Thu, 19 Jul 2018 14:02:00 UTC
#endif
// netizens-core issue #922 Missing checks when updating an asset's bitasset_data
// netizens-core issue #931 Changing backing asset ID runs some checks against the old value instead of the new
#ifndef HARDFORK_CORE_922_931_TIME
#define HARDFORK_CORE_922_931_TIME (fc::time_point_sec( 1532008920 )) // Thu, 19 Jul 2018 14:02:00 UTC
#endif
// netizens-core issue #935 Call check_call_orders not only when settlement_price changed
#ifndef HARDFORK_CORE_935_TIME
#define HARDFORK_CORE_935_TIME (fc::time_point_sec( 1532008920 )) // Thu, 19 Jul 2018 14:02:00 UTC
#endif
// netizens-core issue #942
//   Incorrectly checking asset authorization for withdraw_from_account in withdraw_permission_claim_evaluator
#ifndef HARDFORK_CORE_942_TIME
#define HARDFORK_CORE_942_TIME (fc::time_point_sec( 1532008920 )) // Thu, 19 Jul 2018 14:02:00 UTC
#endif
// Mass changes with invoices and referral reward Friday, 23 August 2019 г., 14:00:00
#ifndef HARDFORK_NTZ_1_TIME
#define HARDFORK_NTZ_1_TIME (fc::time_point_sec( 1566568800 ))
#endif
// Fixed new Invoice pay validation Sat, 14 Sep 2019 16:50:20 GMT
#ifndef HARDFORK_NTZ_2_TIME
#define HARDFORK_NTZ_2_TIME (fc::time_point_sec( 1568479820 ))
#endif
// Disable NTL deposit for account_status_give_operatoin validation Tuesday, 29 October 2019 г., 18:00:00 GMT
#ifndef HARDFORK_NTZ_3_TIME
#define HARDFORK_NTZ_3_TIME (fc::time_point_sec( 1572372000 ))
#endif
// Disable NTL
#ifndef HARDFORK_NTZ_4_TIME
#define HARDFORK_NTZ_4_TIME (fc::time_point_sec( 1602709140 ))
// #define HARDFORK_NTZ_4_TIME (fc::time_point_sec( 1602687000 ))
#endif
// Disable NTL
#ifndef HARDFORK_NTZ_5_TIME
#define HARDFORK_NTZ_5_TIME (fc::time_point_sec( 1606953600 )) //Thu Dec 03 2020 03:00:00 UTC+0300 (Москва, стандартное время)
#endif// #143 Require voted entities to exist
#ifndef HARDFORK_CORE_143_TIME
#define HARDFORK_CORE_143_TIME (fc::time_point_sec( 1512747600 ))
#endif
