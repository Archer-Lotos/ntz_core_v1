#include <set>
#include <graphene/wallet/api_documentation.hpp>
#include <graphene/wallet/wallet.hpp>

namespace graphene { namespace wallet {
   namespace detail 
   {
      struct api_method_name_collector_visitor
      {
         std::set<std::string> method_names;

         template<typename R, typename... Args>
         void operator()( const char* name, std::function<R(Args...)>& memb )
         {
            method_names.emplace(name);
         }
      };
   }
  
   api_documentation::api_documentation()
   {
     {
        method_description this_method;
        this_method.method_name = "wallet_api";
        this_method.brief_description = "                                         wallet_api(const wallet_data & initial_data, fc::api<login_api> rapi)\n";
        this_method.detailed_description = ""
;
        method_descriptions.insert(this_method);
     }

     {
        method_description this_method;
        this_method.method_name = "~wallet_api";
        this_method.brief_description = "                                 virtual ~wallet_api()\n";
        this_method.detailed_description = ""
;
        method_descriptions.insert(this_method);
     }

     {
        method_description this_method;
        this_method.method_name = "copy_wallet_file";
        this_method.brief_description = "                                    bool copy_wallet_file(string destination_filename)\n";
        this_method.detailed_description = ""
;
        method_descriptions.insert(this_method);
     }

     {
        method_description this_method;
        this_method.method_name = "derive_private_key";
        this_method.brief_description = "                    fc::ecc::private_key derive_private_key(const std::string & prefix_string, int sequence_number)\n";
        this_method.detailed_description = ""
;
        method_descriptions.insert(this_method);
     }

     {
        method_description this_method;
        this_method.method_name = "info";
        this_method.brief_description = "                                 variant info()\n";
        this_method.detailed_description = ""
;
        method_descriptions.insert(this_method);
     }

     {
        method_description this_method;
        this_method.method_name = "about";
        this_method.brief_description = "                          variant_object about()\n";
        this_method.detailed_description = ""
                "Returns info such as client version, git version of graphene/fc, version of\n"
                "boost, openssl.\n"
                "\n"
                "Returns\n"
                "    compile time info and client and dependencies versions\n"
;
        method_descriptions.insert(this_method);
     }

     {
        method_description this_method;
        this_method.method_name = "get_block";
        this_method.brief_description = "        optional<signed_block_with_info> get_block(uint32_t num)\n";
        this_method.detailed_description = ""
;
        method_descriptions.insert(this_method);
     }

     {
        method_description this_method;
        this_method.method_name = "get_account_count";
        this_method.brief_description = "                                uint64_t get_account_count()\n";
        this_method.detailed_description = ""
                "Returns the number of accounts registered on the blockchain\n"
                "\n"
                "Returns\n"
                "    the number of registered accounts\n"
;
        method_descriptions.insert(this_method);
     }

     {
        method_description this_method;
        this_method.method_name = "list_my_accounts";
        this_method.brief_description = "                  vector<account_object> list_my_accounts()\n";
        this_method.detailed_description = ""
                "Lists all accounts controlled by this wallet. This returns a list of the\n"
                "full account objects for all accounts whose private keys we possess.\n"
                "\n"
                "Returns\n"
                "    a list of account objects\n"
;
        method_descriptions.insert(this_method);
     }

     {
        method_description this_method;
        this_method.method_name = "list_accounts";
        this_method.brief_description = "            map<string, account_id_type> list_accounts(const string & lowerbound, uint32_t limit)\n";
        this_method.detailed_description = ""
                "Lists all accounts registered in the blockchain. This returns a list of all\n"
                "account names and their account ids, sorted by account name.\n"
                "\n"
                "Use the 'lowerbound' and limit parameters to page through the list. To\n"
                "retrieve all accounts, start by setting 'lowerbound' to the empty string\n"
                "'\"\"', and then each iteration, pass the last account name returned as the\n"
                "'lowerbound' for the next 'list_accounts()' call.\n"
                "\n"
                "Parameters:\n"
                "    lowerbound: the name of the first account to return. If the named\n"
                "\taccount does not exist, the list will start at the account that\n"
                "\tcomes after 'lowerbound' (type: const string &)\n"
                "    limit: the maximum number of accounts to return (max: 1000) (type:\n"
                "\tuint32_t)\n"
                "\n"
                "Returns\n"
                "    a list of accounts mapping account names to account ids\n"
;
        method_descriptions.insert(this_method);
     }

     {
        method_description this_method;
        this_method.method_name = "list_account_balances";
        this_method.brief_description = "                           vector<asset> list_account_balances(const string & id)\n";
        this_method.detailed_description = ""
                "List the balances of an account. Each account can have multiple balances,\n"
                "one for each type of asset owned by that account. The returned list will\n"
                "only contain assets for which the account has a nonzero balance\n"
                "\n"
                "Parameters:\n"
                "    id: the name or id of the account whose balances you want (type: const\n"
                "\tstring &)\n"
                "\n"
                "Returns\n"
                "    a list of the given account's balances\n"
;
        method_descriptions.insert(this_method);
     }

     {
        method_description this_method;
        this_method.method_name = "list_assets";
        this_method.brief_description = "                    vector<asset_object> list_assets(const string & lowerbound, uint32_t limit)\n";
        this_method.detailed_description = ""
                "Lists all assets registered on the blockchain.\n"
                "\n"
                "To list all assets, pass the empty string '\"\"' for the lowerbound to start\n"
                "at the beginning of the list, and iterate as necessary.\n"
                "\n"
                "Parameters:\n"
                "    lowerbound: the symbol of the first asset to include in the list.\n"
                "\t(type: const string &)\n"
                "    limit: the maximum number of assets to return (max: 100) (type:\n"
                "\tuint32_t)\n"
                "\n"
                "Returns\n"
                "    the list of asset objects, ordered by symbol\n"
;
        method_descriptions.insert(this_method);
     }

     {
        method_description this_method;
        this_method.method_name = "get_asset_count";
        this_method.brief_description = "                                uint64_t get_asset_count()\n";
        this_method.detailed_description = ""
                "Returns assets count registered on the blockchain.\n"
                "\n"
                "Returns\n"
                "    assets count\n"
;
        method_descriptions.insert(this_method);
     }

     {
        method_description this_method;
        this_method.method_name = "get_account_history";
        this_method.brief_description = "                vector<operation_detail> get_account_history(string name, int limit)\n";
        this_method.detailed_description = ""
                "Returns the most recent operations on the named account.\n"
                "\n"
                "This returns a list of operation history objects, which describe activity\n"
                "on the account.\n"
                "\n"
                "Parameters:\n"
                "    name: the name or id of the account (type: string)\n"
                "    limit: the number of entries to return (starting from the most recent)\n"
                "\t(type: int)\n"
                "\n"
                "Returns\n"
                "    a list of 'operation_history_objects'\n"
;
        method_descriptions.insert(this_method);
     }

     {
        method_description this_method;
        this_method.method_name = "get_relative_account_history";
        this_method.brief_description = "                vector<operation_detail> get_relative_account_history(string name, uint32_t stop, int limit, uint32_t start)\n";
        this_method.detailed_description = ""
                "Returns the relative operations on the named account from start number.\n"
                "\n"
                "Parameters:\n"
                "    name: the name or id of the account (type: string)\n"
                "    stop: Sequence number of earliest operation. (type: uint32_t)\n"
                "    limit: the number of entries to return (type: int)\n"
                "    start: the sequence number where to start looping back throw the\n"
                "\thistory (type: uint32_t)\n"
                "\n"
                "Returns\n"
                "    a list of 'operation_history_objects'\n"
;
        method_descriptions.insert(this_method);
     }

     {
        method_description this_method;
        this_method.method_name = "get_full_account";
        this_method.brief_description = "                            full_account get_full_account(const string & name_or_id)\n";
        this_method.detailed_description = ""
                "This function fetches all relevant objects for the given account. If the\n"
                "string of 'name_or_id' cannot be tied to an account, that input will be\n"
                "ignored.\n"
                "\n"
                "Parameters:\n"
                "    name_or_id: Must be the name or ID of an account to retrieve (type:\n"
                "\tconst string &)\n"
                "\n"
                "Returns\n"
                "    All info about the specified account\n"
;
        method_descriptions.insert(this_method);
     }

     {
        method_description this_method;
        this_method.method_name = "get_market_history";
        this_method.brief_description = "                   vector<bucket_object> get_market_history(string symbol, string symbol2, uint32_t bucket, fc::time_point_sec start, fc::time_point_sec end)\n";
        this_method.detailed_description = ""
;
        method_descriptions.insert(this_method);
     }

     {
        method_description this_method;
        this_method.method_name = "get_account_limit_orders";
        this_method.brief_description = "              vector<limit_order_object> get_account_limit_orders(const string & name_or_id, const string & base, const string & quote, uint32_t limit, optional<limit_order_id_type> ostart_id, optional<price> ostart_price)\n";
        this_method.detailed_description = ""
                "\n"
                "\n"
                "Parameters:\n"
                "    name_or_id: The name or ID of an account to retrieve (type: const\n"
                "\tstring &)\n"
                "    base: Base asset (type: const string &)\n"
                "    quote: Quote asset (type: const string &)\n"
                "    limit: The limitation of items each query can fetch (max: 101) (type:\n"
                "\tuint32_t)\n"
                "    ostart_id: Start order id, fetch orders which price are lower than or\n"
                "\tequal to this order (type: optional<limit_order_id_type>)\n"
                "    ostart_price: Fetch orders with price lower than or equal to this price\n"
                "\t(type: optional<price>)\n"
                "\n"
                "Returns\n"
                "    List of orders from 'name_or_id' to the corresponding account\n"
;
        method_descriptions.insert(this_method);
     }

     {
        method_description this_method;
        this_method.method_name = "get_limit_orders";
        this_method.brief_description = "              vector<limit_order_object> get_limit_orders(string a, string b, uint32_t limit)\n";
        this_method.detailed_description = ""
;
        method_descriptions.insert(this_method);
     }

     {
        method_description this_method;
        this_method.method_name = "get_call_orders";
        this_method.brief_description = "               vector<call_order_object> get_call_orders(string a, uint32_t limit)\n";
        this_method.detailed_description = ""
;
        method_descriptions.insert(this_method);
     }

     {
        method_description this_method;
        this_method.method_name = "get_settle_orders";
        this_method.brief_description = "         vector<force_settlement_object> get_settle_orders(string a, uint32_t limit)\n";
        this_method.detailed_description = ""
;
        method_descriptions.insert(this_method);
     }

     {
        method_description this_method;
        this_method.method_name = "get_collateral_bids";
        this_method.brief_description = "           vector<collateral_bid_object> get_collateral_bids(string asset, uint32_t limit, uint32_t start)\n";
        this_method.detailed_description = ""
                "Returns the collateral_bid object for the given MPA\n"
                "\n"
                "Parameters:\n"
                "    asset: the name or id of the asset (type: string)\n"
                "    limit: the number of entries to return (type: uint32_t)\n"
                "    start: the sequence number where to start looping back throw the\n"
                "\thistory (type: uint32_t)\n"
                "\n"
                "Returns\n"
                "    a list of 'collateral_bid_objects'\n"
;
        method_descriptions.insert(this_method);
     }

     {
        method_description this_method;
        this_method.method_name = "get_global_properties";
        this_method.brief_description = "                  global_property_object get_global_properties()\n";
        this_method.detailed_description = ""
                "Returns the block chain's slowly-changing settings. This object contains\n"
                "all of the properties of the blockchain that are fixed or that change only\n"
                "once per maintenance interval (daily) such as the current list of\n"
                "witnesses, committee_members, block interval, etc.\n"
                "\n"
                "Returns\n"
                "    the global properties\n"
;
        method_descriptions.insert(this_method);
     }

     {
        method_description this_method;
        this_method.method_name = "get_account_history_by_operations";
        this_method.brief_description = "        account_history_operation_detail get_account_history_by_operations(string name, vector<uint16_t> operation_types, uint32_t start, int limit)\n";
        this_method.detailed_description = ""
                "Get operations relevant to the specified account filtering by operation\n"
                "type, with transaction id\n"
                "\n"
                "Parameters:\n"
                "    name: the name or id of the account, whose history shoulde be queried\n"
                "\t(type: string)\n"
                "    operation_types: The IDs of the operation we want to get operations in\n"
                "\tthe account( 0 = transfer , 1 = limit order create, ...) (type:\n"
                "\tvector<uint16_t>)\n"
                "    start: the sequence number where to start looping back throw the\n"
                "\thistory (type: uint32_t)\n"
                "    limit: the max number of entries to return (from start number) (type:\n"
                "\tint)\n"
                "\n"
                "Returns\n"
                "    account_history_operation_detail\n"
;
        method_descriptions.insert(this_method);
     }

     {
        method_description this_method;
        this_method.method_name = "get_dynamic_global_properties";
        this_method.brief_description = "          dynamic_global_property_object get_dynamic_global_properties()\n";
        this_method.detailed_description = ""
                "Returns the block chain's rapidly-changing properties. The returned object\n"
                "contains information that changes every block interval such as the head\n"
                "block number, the next witness, etc.\n"
                "\n"
                "Returns\n"
                "    the dynamic global properties\n"
;
        method_descriptions.insert(this_method);
     }

     {
        method_description this_method;
        this_method.method_name = "get_account";
        this_method.brief_description = "                          account_object get_account(string account_name_or_id)\n";
        this_method.detailed_description = ""
                "Returns information about the given account.\n"
                "\n"
                "Parameters:\n"
                "    account_name_or_id: the name or id of the account to provide\n"
                "\tinformation about (type: string)\n"
                "\n"
                "Returns\n"
                "    the public account data stored in the blockchain\n"
;
        method_descriptions.insert(this_method);
     }

     {
        method_description this_method;
        this_method.method_name = "get_asset";
        this_method.brief_description = "                            asset_object get_asset(string asset_name_or_id)\n";
        this_method.detailed_description = ""
                "Returns information about the given asset.\n"
                "\n"
                "Parameters:\n"
                "    asset_name_or_id: the symbol or id of the asset in question (type:\n"
                "\tstring)\n"
                "\n"
                "Returns\n"
                "    the information about the asset stored in the block chain\n"
;
        method_descriptions.insert(this_method);
     }

     {
        method_description this_method;
        this_method.method_name = "get_bitasset_data";
        this_method.brief_description = "              asset_bitasset_data_object get_bitasset_data(string asset_name_or_id)\n";
        this_method.detailed_description = ""
                "Returns the BitAsset-specific data for a given asset. Market-issued\n"
                "assets's behavior are determined both by their \"BitAsset Data\" and their\n"
                "basic asset data, as returned by 'get_asset()'.\n"
                "\n"
                "Parameters:\n"
                "    asset_name_or_id: the symbol or id of the BitAsset in question (type:\n"
                "\tstring)\n"
                "\n"
                "Returns\n"
                "    the BitAsset-specific data for this asset\n"
;
        method_descriptions.insert(this_method);
     }

     {
        method_description this_method;
        this_method.method_name = "get_account_id";
        this_method.brief_description = "                         account_id_type get_account_id(string account_name_or_id)\n";
        this_method.detailed_description = ""
                "Lookup the id of a named account.\n"
                "\n"
                "Parameters:\n"
                "    account_name_or_id: the name of the account to look up (type: string)\n"
                "\n"
                "Returns\n"
                "    the id of the named account\n"
;
        method_descriptions.insert(this_method);
     }

     {
        method_description this_method;
        this_method.method_name = "get_asset_id";
        this_method.brief_description = "                           asset_id_type get_asset_id(string asset_name_or_id)\n";
        this_method.detailed_description = ""
                "Lookup the id of a named asset.\n"
                "\n"
                "Parameters:\n"
                "    asset_name_or_id: the symbol of an asset to look up (type: string)\n"
                "\n"
                "Returns\n"
                "    the id of the given asset\n"
;
        method_descriptions.insert(this_method);
     }

     {
        method_description this_method;
        this_method.method_name = "get_object";
        this_method.brief_description = "                                 variant get_object(object_id_type id)\n";
        this_method.detailed_description = ""
                "Returns the blockchain object corresponding to the given id.\n"
                "\n"
                "This generic function can be used to retrieve any object from the\n"
                "blockchain that is assigned an ID. Certain types of objects have\n"
                "specialized convenience functions to return their objects - e.g., assets\n"
                "have 'get_asset()', accounts have 'get_account()', but this function will\n"
                "work for any object.\n"
                "\n"
                "Parameters:\n"
                "    id: the id of the object to return (type: object_id_type)\n"
                "\n"
                "Returns\n"
                "    the requested object\n"
;
        method_descriptions.insert(this_method);
     }

     {
        method_description this_method;
        this_method.method_name = "get_wallet_filename";
        this_method.brief_description = "                                  string get_wallet_filename()\n";
        this_method.detailed_description = ""
                "Returns the current wallet filename.\n"
                "\n"
                "This is the filename that will be used when automatically saving the\n"
                "wallet.\n"
                "\n"
                "Returns\n"
                "    the wallet filename\n"
;
        method_descriptions.insert(this_method);
     }

     {
        method_description this_method;
        this_method.method_name = "get_private_key";
        this_method.brief_description = "                                  string get_private_key(public_key_type pubkey)\n";
        this_method.detailed_description = ""
                "Get the WIF private key corresponding to a public key. The private key must\n"
                "already be in the wallet.\n"
;
        method_descriptions.insert(this_method);
     }

     {
        method_description this_method;
        this_method.method_name = "begin_builder_transaction";
        this_method.brief_description = "                 transaction_handle_type begin_builder_transaction()\n";
        this_method.detailed_description = ""
;
        method_descriptions.insert(this_method);
     }

     {
        method_description this_method;
        this_method.method_name = "add_operation_to_builder_transaction";
        this_method.brief_description = "                                    void add_operation_to_builder_transaction(transaction_handle_type transaction_handle, const operation & op)\n";
        this_method.detailed_description = ""
;
        method_descriptions.insert(this_method);
     }

     {
        method_description this_method;
        this_method.method_name = "replace_operation_in_builder_transaction";
        this_method.brief_description = "                                    void replace_operation_in_builder_transaction(transaction_handle_type handle, unsigned operation_index, const operation & new_op)\n";
        this_method.detailed_description = ""
;
        method_descriptions.insert(this_method);
     }

     {
        method_description this_method;
        this_method.method_name = "set_fees_on_builder_transaction";
        this_method.brief_description = "                                   asset set_fees_on_builder_transaction(transaction_handle_type handle, string fee_asset)\n";
        this_method.detailed_description = ""
;
        method_descriptions.insert(this_method);
     }

     {
        method_description this_method;
        this_method.method_name = "preview_builder_transaction";
        this_method.brief_description = "                             transaction preview_builder_transaction(transaction_handle_type handle)\n";
        this_method.detailed_description = ""
;
        method_descriptions.insert(this_method);
     }

     {
        method_description this_method;
        this_method.method_name = "sign_builder_transaction";
        this_method.brief_description = "                      signed_transaction sign_builder_transaction(transaction_handle_type transaction_handle, bool broadcast)\n";
        this_method.detailed_description = ""
;
        method_descriptions.insert(this_method);
     }

     {
        method_description this_method;
        this_method.method_name = "broadcast_transaction";
        this_method.brief_description = "pair<transaction_id_type, signed_transaction> broadcast_transaction(signed_transaction tx)\n";
        this_method.detailed_description = ""
                "Broadcast signed transaction\n"
                "\n"
                "Parameters:\n"
                "    tx: signed transaction (type: signed_transaction)\n"
                "\n"
                "Returns\n"
                "    the transaction ID along with the signed transaction.\n"
;
        method_descriptions.insert(this_method);
     }

     {
        method_description this_method;
        this_method.method_name = "propose_builder_transaction";
        this_method.brief_description = "                      signed_transaction propose_builder_transaction(transaction_handle_type handle, time_point_sec expiration, uint32_t review_period_seconds, bool broadcast)\n";
        this_method.detailed_description = ""
;
        method_descriptions.insert(this_method);
     }

     {
        method_description this_method;
        this_method.method_name = "propose_builder_transaction2";
        this_method.brief_description = "                      signed_transaction propose_builder_transaction2(transaction_handle_type handle, string account_name_or_id, time_point_sec expiration, uint32_t review_period_seconds, bool broadcast)\n";
        this_method.detailed_description = ""
;
        method_descriptions.insert(this_method);
     }

     {
        method_description this_method;
        this_method.method_name = "remove_builder_transaction";
        this_method.brief_description = "                                    void remove_builder_transaction(transaction_handle_type handle)\n";
        this_method.detailed_description = ""
;
        method_descriptions.insert(this_method);
     }

     {
        method_description this_method;
        this_method.method_name = "is_new";
        this_method.brief_description = "                                    bool is_new()\n";
        this_method.detailed_description = ""
                "Checks whether the wallet has just been created and has not yet had a\n"
                "password set.\n"
                "\n"
                "Calling 'set_password' will transition the wallet to the locked state.\n"
                "\n"
                "Returns\n"
                "    true if the wallet is new\n"
;
        method_descriptions.insert(this_method);
     }

     {
        method_description this_method;
        this_method.method_name = "is_locked";
        this_method.brief_description = "                                    bool is_locked()\n";
        this_method.detailed_description = ""
                "Checks whether the wallet is locked (is unable to use its private keys).\n"
                "\n"
                "This state can be changed by calling 'lock()' or 'unlock()'.\n"
                "\n"
                "Returns\n"
                "    true if the wallet is locked\n"
;
        method_descriptions.insert(this_method);
     }

     {
        method_description this_method;
        this_method.method_name = "lock";
        this_method.brief_description = "                                    void lock()\n";
        this_method.detailed_description = ""
                "Locks the wallet immediately.\n"
;
        method_descriptions.insert(this_method);
     }

     {
        method_description this_method;
        this_method.method_name = "unlock";
        this_method.brief_description = "                                    void unlock(string password)\n";
        this_method.detailed_description = ""
                "Unlocks the wallet.\n"
                "\n"
                "The wallet remain unlocked until the 'lock' is called or the program exits.\n"
                "\n"
                "Parameters:\n"
                "    password: the password previously set with 'set_password()' (type:\n"
                "\tstring)\n"
;
        method_descriptions.insert(this_method);
     }

     {
        method_description this_method;
        this_method.method_name = "set_password";
        this_method.brief_description = "                                    void set_password(string password)\n";
        this_method.detailed_description = ""
                "Sets a new password on the wallet.\n"
                "\n"
                "The wallet must be either 'new' or 'unlocked' to execute this command.\n"
;
        method_descriptions.insert(this_method);
     }

     {
        method_description this_method;
        this_method.method_name = "dump_private_keys";
        this_method.brief_description = "            map<public_key_type, string> dump_private_keys()\n";
        this_method.detailed_description = ""
                "Dumps all private keys owned by the wallet.\n"
                "\n"
                "The keys are printed in WIF format. You can import these keys into another\n"
                "wallet using 'import_key()'\n"
                "\n"
                "Returns\n"
                "    a map containing the private keys, indexed by their public key\n"
;
        method_descriptions.insert(this_method);
     }

     {
        method_description this_method;
        this_method.method_name = "help";
        this_method.brief_description = "                                  string help()\n";
        this_method.detailed_description = ""
                "Returns a list of all commands supported by the wallet API.\n"
                "\n"
                "This lists each command, along with its arguments and return types. For\n"
                "more detailed help on a single command, use 'get_help()'\n"
                "\n"
                "Returns\n"
                "    a multi-line string suitable for displaying on a terminal\n"
;
        method_descriptions.insert(this_method);
     }

     {
        method_description this_method;
        this_method.method_name = "gethelp";
        this_method.brief_description = "                                  string gethelp(const string & method)\n";
        this_method.detailed_description = ""
                "Returns detailed help on a single API command.\n"
                "\n"
                "Parameters:\n"
                "    method: the name of the API command you want help with (type: const\n"
                "\tstring &)\n"
                "\n"
                "Returns\n"
                "    a multi-line string suitable for displaying on a terminal\n"
;
        method_descriptions.insert(this_method);
     }

     {
        method_description this_method;
        this_method.method_name = "load_wallet_file";
        this_method.brief_description = "                                    bool load_wallet_file(string wallet_filename)\n";
        this_method.detailed_description = ""
                "Loads a specified Graphene wallet.\n"
                "\n"
                "The current wallet is closed before the new wallet is loaded.\n"
                "\n"
                "Parameters:\n"
                "    wallet_filename: the filename of the wallet JSON file to load. If\n"
                "\t'wallet_filename' is empty, it reloads the existing wallet file\n"
                "\t(type: string)\n"
                "\n"
                "Returns\n"
                "    true if the specified wallet is loaded\n"
;
        method_descriptions.insert(this_method);
     }

     {
        method_description this_method;
        this_method.method_name = "quit";
        this_method.brief_description = "                                    void quit()\n";
        this_method.detailed_description = ""
                "Quitting from Netizens wallet.\n"
                "\n"
                "The current wallet will be closed.\n"
;
        method_descriptions.insert(this_method);
     }

     {
        method_description this_method;
        this_method.method_name = "save_wallet_file";
        this_method.brief_description = "                                    void save_wallet_file(string wallet_filename)\n";
        this_method.detailed_description = ""
                "Saves the current wallet to the given filename.\n"
                "\n"
                "Parameters:\n"
                "    wallet_filename: the filename of the new wallet JSON file to create or\n"
                "\toverwrite. If 'wallet_filename' is empty, save to the current\n"
                "\tfilename. (type: string)\n"
;
        method_descriptions.insert(this_method);
     }

     {
        method_description this_method;
        this_method.method_name = "set_wallet_filename";
        this_method.brief_description = "                                    void set_wallet_filename(string wallet_filename)\n";
        this_method.detailed_description = ""
                "Sets the wallet filename used for future writes.\n"
                "\n"
                "This does not trigger a save, it only changes the default filename that\n"
                "will be used the next time a save is triggered.\n"
                "\n"
                "Parameters:\n"
                "    wallet_filename: the new filename to use for future saves (type:\n"
                "\tstring)\n"
;
        method_descriptions.insert(this_method);
     }

     {
        method_description this_method;
        this_method.method_name = "suggest_brain_key";
        this_method.brief_description = "                          brain_key_info suggest_brain_key()\n";
        this_method.detailed_description = ""
                "Suggests a safe brain key to use for creating your account.\n"
                "'create_account_with_brain_key()' requires you to specify a 'brain key', a\n"
                "long passphrase that provides enough entropy to generate cyrptographic\n"
                "keys. This function will suggest a suitably random string that should be\n"
                "easy to write down (and, with effort, memorize).\n"
                "\n"
                "Returns\n"
                "    a suggested brain_key\n"
;
        method_descriptions.insert(this_method);
     }

     {
        method_description this_method;
        this_method.method_name = "derive_owner_keys_from_brain_key";
        this_method.brief_description = "                  vector<brain_key_info> derive_owner_keys_from_brain_key(string brain_key, int number_of_desired_keys)\n";
        this_method.detailed_description = ""
                "Derive any number of possible owner keys from a given brain key.\n"
                "\n"
                "NOTE: These keys may or may not match with the owner keys of any account.\n"
                "This function is merely intended to assist with account or key recovery.\n"
                "\n"
                "Parameters:\n"
                "    brain_key: Brain key (type: string)\n"
                "    number_of_desired_keys: Number of desired keys (type: int)\n"
                "\n"
                "Returns\n"
                "    A list of keys that are deterministically derived from the brainkey\n"
;
        method_descriptions.insert(this_method);
     }

     {
        method_description this_method;
        this_method.method_name = "is_public_key_registered";
        this_method.brief_description = "                                    bool is_public_key_registered(string public_key)\n";
        this_method.detailed_description = ""
                "Determine whether a textual representation of a public key (in Base-58\n"
                "format) is currently linked to any registered (i.e. non-stealth) account on\n"
                "the blockchain\n"
                "\n"
                "Parameters:\n"
                "    public_key: Public key (type: string)\n"
                "\n"
                "Returns\n"
                "    Whether a public key is known\n"
;
        method_descriptions.insert(this_method);
     }

     {
        method_description this_method;
        this_method.method_name = "serialize_transaction";
        this_method.brief_description = "                                  string serialize_transaction(signed_transaction tx)\n";
        this_method.detailed_description = ""
                "Converts a signed_transaction in JSON form to its binary representation.\n"
                "\n"
                "Parameters:\n"
                "    tx: the transaction to serialize (type: signed_transaction)\n"
                "\n"
                "Returns\n"
                "    the binary form of the transaction. It will not be hex encoded, this\n"
                "\treturns a raw string that may have null characters embedded in it\n"
;
        method_descriptions.insert(this_method);
     }

     {
        method_description this_method;
        this_method.method_name = "import_key";
        this_method.brief_description = "                                    bool import_key(string account_name_or_id, string wif_key)\n";
        this_method.detailed_description = ""
                "Imports the private key for an existing account.\n"
                "\n"
                "The private key must match either an owner key or an active key for the\n"
                "named account.\n"
                "\n"
                "Parameters:\n"
                "    account_name_or_id: the account owning the key (type: string)\n"
                "    wif_key: the private key in WIF format (type: string)\n"
                "\n"
                "Returns\n"
                "    true if the key was imported\n"
;
        method_descriptions.insert(this_method);
     }

     {
        method_description this_method;
        this_method.method_name = "import_accounts";
        this_method.brief_description = "                       map<string, bool> import_accounts(string filename, string password)\n";
        this_method.detailed_description = ""
;
        method_descriptions.insert(this_method);
     }

     {
        method_description this_method;
        this_method.method_name = "import_account_keys";
        this_method.brief_description = "                                    bool import_account_keys(string filename, string password, string src_account_name, string dest_account_name)\n";
        this_method.detailed_description = ""
;
        method_descriptions.insert(this_method);
     }

     {
        method_description this_method;
        this_method.method_name = "import_balance";
        this_method.brief_description = "              vector<signed_transaction> import_balance(string account_name_or_id, const vector<string> & wif_keys, bool broadcast)\n";
        this_method.detailed_description = ""
                "This call will construct transaction(s) that will claim all balances\n"
                "controled by wif_keys and deposit them into the given account.\n"
;
        method_descriptions.insert(this_method);
     }

     {
        method_description this_method;
        this_method.method_name = "normalize_brain_key";
        this_method.brief_description = "                                  string normalize_brain_key(string s)\n";
        this_method.detailed_description = ""
                "Transforms a brain key to reduce the chance of errors when re-entering the\n"
                "key from memory.\n"
                "\n"
                "This takes a user-supplied brain key and normalizes it into the form used\n"
                "for generating private keys. In particular, this upper-cases all ASCII\n"
                "characters and collapses multiple spaces into one.\n"
                "\n"
                "Parameters:\n"
                "    s: the brain key as supplied by the user (type: string)\n"
                "\n"
                "Returns\n"
                "    the brain key in its normalized form\n"
;
        method_descriptions.insert(this_method);
     }

     {
        method_description this_method;
        this_method.method_name = "register_account";
        this_method.brief_description = "                      signed_transaction register_account(string name, public_key_type owner, public_key_type active, string registrar_account, string referrer_account, uint32_t referrer_percent, bool broadcast)\n";
        this_method.detailed_description = ""
                "Registers a third party's account on the blockckain.\n"
                "\n"
                "This function is used to register an account for which you do not own the\n"
                "private keys. When acting as a registrar, an end user will generate their\n"
                "own private keys and send you the public keys. The registrar will use this\n"
                "function to register the account on behalf of the end user.\n"
                "\n"
                "Parameters:\n"
                "    name: the name of the account, must be unique on the blockchain.\n"
                "\tShorter names are more expensive to register; the rules are still\n"
                "\tin flux, but in general names of more than 8 characters with at\n"
                "\tleast one digit will be cheap. (type: string)\n"
                "    owner: the owner key for the new account (type: public_key_type)\n"
                "    active: the active key for the new account (type: public_key_type)\n"
                "    registrar_account: the account which will pay the fee to register the\n"
                "\tuser (type: string)\n"
                "    referrer_account: the account who is acting as a referrer, and may\n"
                "\treceive a portion of the user's transaction fees. This can be the\n"
                "\tsame as the registrar_account if there is no referrer. (type:\n"
                "\tstring)\n"
                "    referrer_percent: the percentage (0 - 100) of the new user's\n"
                "\ttransaction fees not claimed by the blockchain that will be\n"
                "\tdistributed to the referrer; the rest will be sent to the\n"
                "\tregistrar. Will be multiplied by GRAPHENE_1_PERCENT when\n"
                "\tconstructing the transaction. (type: uint32_t)\n"
                "    broadcast: true to broadcast the transaction on the network (type:\n"
                "\tbool)\n"
                "\n"
                "Returns\n"
                "    the signed transaction registering the account\n"
;
        method_descriptions.insert(this_method);
     }

     {
        method_description this_method;
        this_method.method_name = "upgrade_account";
        this_method.brief_description = "                      signed_transaction upgrade_account(string name, bool broadcast)\n";
        this_method.detailed_description = ""
                "Upgrades an account to prime status. This makes the account holder a\n"
                "'lifetime member'.\n"
                "\n"
                "Parameters:\n"
                "    name: the name or id of the account to upgrade (type: string)\n"
                "    broadcast: true to broadcast the transaction on the network (type:\n"
                "\tbool)\n"
                "\n"
                "Returns\n"
                "    the signed transaction upgrading the account\n"
;
        method_descriptions.insert(this_method);
     }

     {
        method_description this_method;
        this_method.method_name = "create_account_with_brain_key";
        this_method.brief_description = "                      signed_transaction create_account_with_brain_key(string brain_key, string account_name, string registrar_account, string referrer_account, bool broadcast)\n";
        this_method.detailed_description = ""
                "Creates a new account and registers it on the blockchain.\n"
                "\n"
                "Parameters:\n"
                "    brain_key: the brain key used for generating the account's private keys\n"
                "\t(type: string)\n"
                "    account_name: the name of the account, must be unique on the\n"
                "\tblockchain. Shorter names are more expensive to register; the rules\n"
                "\tare still in flux, but in general names of more than 8 characters\n"
                "\twith at least one digit will be cheap. (type: string)\n"
                "    registrar_account: the account which will pay the fee to register the\n"
                "\tuser (type: string)\n"
                "    referrer_account: the account who is acting as a referrer, and may\n"
                "\treceive a portion of the user's transaction fees. This can be the\n"
                "\tsame as the registrar_account if there is no referrer. (type:\n"
                "\tstring)\n"
                "    broadcast: true to broadcast the transaction on the network (type:\n"
                "\tbool)\n"
                "\n"
                "Returns\n"
                "    the signed transaction registering the account\n"
;
        method_descriptions.insert(this_method);
     }

     {
        method_description this_method;
        this_method.method_name = "transfer";
        this_method.brief_description = "                      signed_transaction transfer(string from, string to, string amount, string asset_symbol, string memo, bool broadcast)\n";
        this_method.detailed_description = ""
                "Transfer an amount from one account to another.\n"
                "\n"
                "Parameters:\n"
                "    from: the name or id of the account sending the funds (type: string)\n"
                "    to: the name or id of the account receiving the funds (type: string)\n"
                "    amount: the amount to send (in nominal units - to send half of a NTZ,\n"
                "\tspecify 0.5) (type: string)\n"
                "    asset_symbol: the symbol or id of the asset to send (type: string)\n"
                "    memo: a memo to attach to the transaction. The memo will be encrypted\n"
                "\tin the transaction and readable for the receiver. There is no\n"
                "\tlength limit other than the limit imposed by maximum transaction\n"
                "\tsize, but transaction increase with transaction size (type: string)\n"
                "    broadcast: true to broadcast the transaction on the network (type:\n"
                "\tbool)\n"
                "\n"
                "Returns\n"
                "    the signed transaction transferring funds\n"
;
        method_descriptions.insert(this_method);
     }

     {
        method_description this_method;
        this_method.method_name = "transfer2";
        this_method.brief_description = "pair<transaction_id_type, signed_transaction> transfer2(string from, string to, string amount, string asset_symbol, string memo)\n";
        this_method.detailed_description = ""
                "This method works just like transfer, except it always broadcasts and\n"
                "returns the transaction ID along with the signed transaction.\n"
;
        method_descriptions.insert(this_method);
     }

     {
        method_description this_method;
        this_method.method_name = "get_transaction_id";
        this_method.brief_description = "                     transaction_id_type get_transaction_id(const signed_transaction & trx)\n";
        this_method.detailed_description = ""
                "This method is used to convert a JSON transaction to its transactin ID.\n"
;
        method_descriptions.insert(this_method);
     }

     {
        method_description this_method;
        this_method.method_name = "sign_memo";
        this_method.brief_description = "                               memo_data sign_memo(string from, string to, string memo)\n";
        this_method.detailed_description = ""
                "Sign a memo message.\n"
                "\n"
                "Parameters:\n"
                "    from: the name or id of signing account; or a public key. (type:\n"
                "\tstring)\n"
                "    to: the name or id of receiving account; or a public key. (type:\n"
                "\tstring)\n"
                "    memo: text to sign. (type: string)\n"
;
        method_descriptions.insert(this_method);
     }

     {
        method_description this_method;
        this_method.method_name = "read_memo";
        this_method.brief_description = "                                  string read_memo(const memo_data & memo)\n";
        this_method.detailed_description = ""
                "Read a memo.\n"
                "\n"
                "Parameters:\n"
                "    memo: JSON-enconded memo. (type: const memo_data &)\n"
                "\n"
                "Returns\n"
                "    string with decrypted message..\n"
;
        method_descriptions.insert(this_method);
     }

     {
        method_description this_method;
        this_method.method_name = "blind_history";
        this_method.brief_description = "                   vector<blind_receipt> blind_history(string key_or_account)\n";
        this_method.detailed_description = ""
                "\n"
                "\n"
                "Returns\n"
                "    all blind receipts to/form a particular account\n"
;
        method_descriptions.insert(this_method);
     }

     {
        method_description this_method;
        this_method.method_name = "receive_blind_transfer";
        this_method.brief_description = "                           blind_receipt receive_blind_transfer(string confirmation_receipt, string opt_from, string opt_memo)\n";
        this_method.detailed_description = ""
                "Given a confirmation receipt, this method will parse it for a blinded\n"
                "balance and confirm that it exists in the blockchain. If it exists then it\n"
                "will report the amount received and who sent it.\n"
                "\n"
                "Parameters:\n"
                "    opt_from: if not empty and the sender is a unknown public key, then the\n"
                "\tunknown public key will be given the label 'opt_from' (type:\n"
                "\tstring)\n"
                "    confirmation_receipt: a base58 encoded stealth confirmation (type:\n"
                "\tstring)\n"
                "    opt_memo: a self-defined label for this transfer to be saved in local\n"
                "\twallet file (type: string)\n"
;
        method_descriptions.insert(this_method);
     }

     {
        method_description this_method;
        this_method.method_name = "transfer_to_blind";
        this_method.brief_description = "                      blind_confirmation transfer_to_blind(string from_account_id_or_name, string asset_symbol, vector<pair<string, string>> to_amounts, bool broadcast)\n";
        this_method.detailed_description = ""
                "Transfers a public balance from 'from_account_id_or_name' to one or more\n"
                "blinded balances using a stealth transfer.\n"
;
        method_descriptions.insert(this_method);
     }

     {
        method_description this_method;
        this_method.method_name = "transfer_from_blind";
        this_method.brief_description = "                      blind_confirmation transfer_from_blind(string from_blind_account_key_or_label, string to_account_id_or_name, string amount, string asset_symbol, bool broadcast)\n";
        this_method.detailed_description = ""
                "Transfers funds from a set of blinded balances to a public account balance.\n"
;
        method_descriptions.insert(this_method);
     }

     {
        method_description this_method;
        this_method.method_name = "blind_transfer";
        this_method.brief_description = "                      blind_confirmation blind_transfer(string from_key_or_label, string to_key_or_label, string amount, string symbol, bool broadcast)\n";
        this_method.detailed_description = ""
                "Used to transfer from one set of blinded balances to another\n"
;
        method_descriptions.insert(this_method);
     }

     {
        method_description this_method;
        this_method.method_name = "sell_asset";
        this_method.brief_description = "                      signed_transaction sell_asset(string seller_account, string amount_to_sell, string symbol_to_sell, string min_to_receive, string symbol_to_receive, uint32_t timeout_sec, bool fill_or_kill, bool broadcast)\n";
        this_method.detailed_description = ""
                "Place a limit order attempting to sell one asset for another.\n"
                "\n"
                "Buying and selling are the same operation on Graphene; if you want to buy\n"
                "NTZ with USD, you should sell USD for NTZ.\n"
                "\n"
                "The blockchain will attempt to sell the 'symbol_to_sell' for as much\n"
                "'symbol_to_receive' as possible, as long as the price is at least\n"
                "'min_to_receive' / 'amount_to_sell'.\n"
                "\n"
                "In addition to the transaction fees, market fees will apply as specified by\n"
                "the issuer of both the selling asset and the receiving asset as a\n"
                "percentage of the amount exchanged.\n"
                "\n"
                "If either the selling asset or the receiving asset is whitelist restricted,\n"
                "the order will only be created if the seller is on the whitelist of the\n"
                "restricted asset type.\n"
                "\n"
                "Market orders are matched in the order they are included in the block\n"
                "chain.\n"
                "\n"
                "Parameters:\n"
                "    seller_account: the account providing the asset being sold, and which\n"
                "\twill receive the proceeds of the sale. (type: string)\n"
                "    amount_to_sell: the amount of the asset being sold to sell (in nominal\n"
                "\tunits) (type: string)\n"
                "    symbol_to_sell: the name or id of the asset to sell (type: string)\n"
                "    min_to_receive: the minimum amount you are willing to receive in return\n"
                "\tfor selling the entire amount_to_sell (type: string)\n"
                "    symbol_to_receive: the name or id of the asset you wish to receive\n"
                "\t(type: string)\n"
                "    timeout_sec: if the order does not fill immediately, this is the length\n"
                "\tof time the order will remain on the order books before it is\n"
                "\tcancelled and the un-spent funds are returned to the seller's\n"
                "\taccount (type: uint32_t)\n"
                "    fill_or_kill: if true, the order will only be included in the\n"
                "\tblockchain if it is filled immediately; if false, an open order\n"
                "\twill be left on the books to fill any amount that cannot be filled\n"
                "\timmediately. (type: bool)\n"
                "    broadcast: true to broadcast the transaction on the network (type:\n"
                "\tbool)\n"
                "\n"
                "Returns\n"
                "    the signed transaction selling the funds\n"
;
        method_descriptions.insert(this_method);
     }

     {
        method_description this_method;
        this_method.method_name = "borrow_asset";
        this_method.brief_description = "                      signed_transaction borrow_asset(string borrower_name, string amount_to_borrow, string asset_symbol, string amount_of_collateral, bool broadcast)\n";
        this_method.detailed_description = ""
                "Borrow an asset or update the debt/collateral ratio for the loan.\n"
                "\n"
                "This is the first step in shorting an asset. Call 'sell_asset()' to\n"
                "complete the short.\n"
                "\n"
                "Parameters:\n"
                "    borrower_name: the name or id of the account associated with the\n"
                "\ttransaction. (type: string)\n"
                "    amount_to_borrow: the amount of the asset being borrowed. Make this\n"
                "\tvalue negative to pay back debt. (type: string)\n"
                "    asset_symbol: the symbol or id of the asset being borrowed. (type:\n"
                "\tstring)\n"
                "    amount_of_collateral: the amount of the backing asset to add to your\n"
                "\tcollateral position. Make this negative to claim back some of your\n"
                "\tcollateral. The backing asset is defined in the 'bitasset_options'\n"
                "\tfor the asset being borrowed. (type: string)\n"
                "    broadcast: true to broadcast the transaction on the network (type:\n"
                "\tbool)\n"
                "\n"
                "Returns\n"
                "    the signed transaction borrowing the asset\n"
;
        method_descriptions.insert(this_method);
     }

     {
        method_description this_method;
        this_method.method_name = "borrow_asset_ext";
        this_method.brief_description = "                      signed_transaction borrow_asset_ext(string borrower_name, string amount_to_borrow, string asset_symbol, string amount_of_collateral, call_order_update_operation::extensions_type extensions, bool broadcast)\n";
        this_method.detailed_description = ""
                "Borrow an asset or update the debt/collateral ratio for the loan, with\n"
                "additional options.\n"
                "\n"
                "This is the first step in shorting an asset. Call 'sell_asset()' to\n"
                "complete the short.\n"
                "\n"
                "Parameters:\n"
                "    borrower_name: the name or id of the account associated with the\n"
                "\ttransaction. (type: string)\n"
                "    amount_to_borrow: the amount of the asset being borrowed. Make this\n"
                "\tvalue negative to pay back debt. (type: string)\n"
                "    asset_symbol: the symbol or id of the asset being borrowed. (type:\n"
                "\tstring)\n"
                "    amount_of_collateral: the amount of the backing asset to add to your\n"
                "\tcollateral position. Make this negative to claim back some of your\n"
                "\tcollateral. The backing asset is defined in the 'bitasset_options'\n"
                "\tfor the asset being borrowed. (type: string)\n"
                "    extensions: additional options (type:\n"
                "\tcall_order_update_operation::extensions_type)\n"
                "    broadcast: true to broadcast the transaction on the network (type:\n"
                "\tbool)\n"
                "\n"
                "Returns\n"
                "    the signed transaction borrowing the asset\n"
;
        method_descriptions.insert(this_method);
     }

     {
        method_description this_method;
        this_method.method_name = "cancel_order";
        this_method.brief_description = "                      signed_transaction cancel_order(object_id_type order_id, bool broadcast)\n";
        this_method.detailed_description = ""
                "Cancel an existing order\n"
                "\n"
                "Parameters:\n"
                "    order_id: the id of order to be cancelled (type: object_id_type)\n"
                "    broadcast: true to broadcast the transaction on the network (type:\n"
                "\tbool)\n"
                "\n"
                "Returns\n"
                "    the signed transaction canceling the order\n"
;
        method_descriptions.insert(this_method);
     }

     {
        method_description this_method;
        this_method.method_name = "create_asset";
        this_method.brief_description = "                      signed_transaction create_asset(string issuer, string symbol, uint8_t precision, asset_options common, fc::optional<bitasset_options> bitasset_opts, bool broadcast)\n";
        this_method.detailed_description = ""
                "Creates a new user-issued or market-issued asset.\n"
                "\n"
                "Many options can be changed later using 'update_asset()' \n"
                "\n"
                "Right now this function is difficult to use because you must provide raw\n"
                "JSON data structures for the options objects, and those include prices and\n"
                "asset ids.\n"
                "\n"
                "Parameters:\n"
                "    issuer: the name or id of the account who will pay the fee and become\n"
                "\tthe issuer of the new asset. This can be updated later (type:\n"
                "\tstring)\n"
                "    symbol: the ticker symbol of the new asset (type: string)\n"
                "    precision: the number of digits of precision to the right of the\n"
                "\tdecimal point, must be less than or equal to 12 (type: uint8_t)\n"
                "    common: asset options required for all new assets. Note that\n"
                "\tcore_exchange_rate technically needs to store the asset ID of this\n"
                "\tnew asset. Since this ID is not known at the time this operation is\n"
                "\tcreated, create this price as though the new asset has instance ID\n"
                "\t1, and the chain will overwrite it with the new asset's ID. (type:\n"
                "\tasset_options)\n"
                "    bitasset_opts: options specific to BitAssets. This may be null unless\n"
                "\tthe 'market_issued' flag is set in common.flags (type:\n"
                "\tfc::optional<bitasset_options>)\n"
                "    broadcast: true to broadcast the transaction on the network (type:\n"
                "\tbool)\n"
                "\n"
                "Returns\n"
                "    the signed transaction creating a new asset\n"
;
        method_descriptions.insert(this_method);
     }

     {
        method_description this_method;
        this_method.method_name = "issue_asset";
        this_method.brief_description = "                      signed_transaction issue_asset(string to_account, string amount, string symbol, string memo, bool broadcast)\n";
        this_method.detailed_description = ""
                "Issue new shares of an asset.\n"
                "\n"
                "Parameters:\n"
                "    to_account: the name or id of the account to receive the new shares\n"
                "\t(type: string)\n"
                "    amount: the amount to issue, in nominal units (type: string)\n"
                "    symbol: the ticker symbol of the asset to issue (type: string)\n"
                "    memo: a memo to include in the transaction, readable by the recipient\n"
                "\t(type: string)\n"
                "    broadcast: true to broadcast the transaction on the network (type:\n"
                "\tbool)\n"
                "\n"
                "Returns\n"
                "    the signed transaction issuing the new shares\n"
;
        method_descriptions.insert(this_method);
     }

     {
        method_description this_method;
        this_method.method_name = "update_asset";
        this_method.brief_description = "                      signed_transaction update_asset(string symbol, optional<string> new_issuer, asset_options new_options, bool broadcast)\n";
        this_method.detailed_description = ""
                "Update the core options on an asset. There are a number of options which\n"
                "all assets in the network use. These options are enumerated in the\n"
                "asset_object::asset_options struct. This command is used to update these\n"
                "options for an existing asset.\n"
                "\n"
                "Parameters:\n"
                "    symbol: the name or id of the asset to update (type: string)\n"
                "    new_issuer: if changing the asset's issuer, the name or id of the new\n"
                "\tissuer. null if you wish to remain the issuer of the asset (type:\n"
                "\toptional<string>)\n"
                "    new_options: the new asset_options object, which will entirely replace\n"
                "\tthe existing options. (type: asset_options)\n"
                "    broadcast: true to broadcast the transaction on the network (type:\n"
                "\tbool)\n"
                "\n"
                "Returns\n"
                "    the signed transaction updating the asset\n"
;
        method_descriptions.insert(this_method);
     }

     {
        method_description this_method;
        this_method.method_name = "update_asset_issuer";
        this_method.brief_description = "                      signed_transaction update_asset_issuer(string symbol, string new_issuer, bool broadcast)\n";
        this_method.detailed_description = ""
                "Update the issuer of an asset Since this call requires the owner authority\n"
                "of the current issuer to sign the transaction, a separated operation is\n"
                "used to change the issuer. This call simplifies the use of this action.\n"
                "\n"
                "Parameters:\n"
                "    symbol: the name or id of the asset to update (type: string)\n"
                "    new_issuer: if changing the asset's issuer, the name or id of the new\n"
                "\tissuer. (type: string)\n"
                "    broadcast: true to broadcast the transaction on the network (type:\n"
                "\tbool)\n"
                "\n"
                "Returns\n"
                "    the signed transaction updating the asset\n"
;
        method_descriptions.insert(this_method);
     }

     {
        method_description this_method;
        this_method.method_name = "update_bitasset";
        this_method.brief_description = "                      signed_transaction update_bitasset(string symbol, bitasset_options new_options, bool broadcast)\n";
        this_method.detailed_description = ""
                "Update the options specific to a BitAsset.\n"
                "\n"
                "BitAssets have some options which are not relevant to other asset types.\n"
                "This operation is used to update those options an an existing BitAsset.\n"
                "\n"
                "Parameters:\n"
                "    symbol: the name or id of the asset to update, which must be a\n"
                "\tmarket-issued asset (type: string)\n"
                "    new_options: the new bitasset_options object, which will entirely\n"
                "\treplace the existing options. (type: bitasset_options)\n"
                "    broadcast: true to broadcast the transaction on the network (type:\n"
                "\tbool)\n"
                "\n"
                "Returns\n"
                "    the signed transaction updating the bitasset\n"
;
        method_descriptions.insert(this_method);
     }

     {
        method_description this_method;
        this_method.method_name = "update_asset_feed_producers";
        this_method.brief_description = "                      signed_transaction update_asset_feed_producers(string symbol, flat_set<string> new_feed_producers, bool broadcast)\n";
        this_method.detailed_description = ""
                "Update the set of feed-producing accounts for a BitAsset.\n"
                "\n"
                "BitAssets have price feeds selected by taking the median values of\n"
                "recommendations from a set of feed producers. This command is used to\n"
                "specify which accounts may produce feeds for a given BitAsset.\n"
                "\n"
                "Parameters:\n"
                "    symbol: the name or id of the asset to update (type: string)\n"
                "    new_feed_producers: a list of account names or ids which are authorized\n"
                "\tto produce feeds for the asset. this list will completely replace\n"
                "\tthe existing list (type: flat_set<string>)\n"
                "    broadcast: true to broadcast the transaction on the network (type:\n"
                "\tbool)\n"
                "\n"
                "Returns\n"
                "    the signed transaction updating the bitasset's feed producers\n"
;
        method_descriptions.insert(this_method);
     }

     {
        method_description this_method;
        this_method.method_name = "publish_asset_feed";
        this_method.brief_description = "                      signed_transaction publish_asset_feed(string publishing_account, string symbol, price_feed feed, bool broadcast)\n";
        this_method.detailed_description = ""
                "Publishes a price feed for the named asset.\n"
                "\n"
                "Price feed providers use this command to publish their price feeds for\n"
                "market-issued assets. A price feed is used to tune the market for a\n"
                "particular market-issued asset. For each value in the feed, the median\n"
                "across all committee_member feeds for that asset is calculated and the\n"
                "market for the asset is configured with the median of that value.\n"
                "\n"
                "The feed object in this command contains three prices: a call price limit,\n"
                "a short price limit, and a settlement price. The call limit price is\n"
                "structured as (collateral asset) / (debt asset) and the short limit price\n"
                "is structured as (asset for sale) / (collateral asset). Note that the asset\n"
                "IDs are opposite to eachother, so if we're publishing a feed for USD, the\n"
                "call limit price will be CORE/USD and the short limit price will be\n"
                "USD/CORE. The settlement price may be flipped either direction, as long as\n"
                "it is a ratio between the market-issued asset and its collateral.\n"
                "\n"
                "Parameters:\n"
                "    publishing_account: the account publishing the price feed (type:\n"
                "\tstring)\n"
                "    symbol: the name or id of the asset whose feed we're publishing (type:\n"
                "\tstring)\n"
                "    feed: the price_feed object containing the three prices making up the\n"
                "\tfeed (type: price_feed)\n"
                "    broadcast: true to broadcast the transaction on the network (type:\n"
                "\tbool)\n"
                "\n"
                "Returns\n"
                "    the signed transaction updating the price feed for the given asset\n"
;
        method_descriptions.insert(this_method);
     }

     {
        method_description this_method;
        this_method.method_name = "fund_asset_fee_pool";
        this_method.brief_description = "                      signed_transaction fund_asset_fee_pool(string from, string symbol, string amount, bool broadcast)\n";
        this_method.detailed_description = ""
                "Pay into the fee pool for the given asset.\n"
                "\n"
                "User-issued assets can optionally have a pool of the core asset which is\n"
                "automatically used to pay transaction fees for any transaction using that\n"
                "asset (using the asset's core exchange rate).\n"
                "\n"
                "This command allows anyone to deposit the core asset into this fee pool.\n"
                "\n"
                "Parameters:\n"
                "    from: the name or id of the account sending the core asset (type:\n"
                "\tstring)\n"
                "    symbol: the name or id of the asset whose fee pool you wish to fund\n"
                "\t(type: string)\n"
                "    amount: the amount of the core asset to deposit (type: string)\n"
                "    broadcast: true to broadcast the transaction on the network (type:\n"
                "\tbool)\n"
                "\n"
                "Returns\n"
                "    the signed transaction funding the fee pool\n"
;
        method_descriptions.insert(this_method);
     }

     {
        method_description this_method;
        this_method.method_name = "claim_asset_fee_pool";
        this_method.brief_description = "                      signed_transaction claim_asset_fee_pool(string symbol, string amount, bool broadcast)\n";
        this_method.detailed_description = ""
                "Claim funds from the fee pool for the given asset.\n"
                "\n"
                "User-issued assets can optionally have a pool of the core asset which is\n"
                "automatically used to pay transaction fees for any transaction using that\n"
                "asset (using the asset's core exchange rate).\n"
                "\n"
                "This command allows the issuer to withdraw those funds from the fee pool.\n"
                "\n"
                "Parameters:\n"
                "    symbol: the name or id of the asset whose fee pool you wish to claim\n"
                "\t(type: string)\n"
                "    amount: the amount of the core asset to withdraw (type: string)\n"
                "    broadcast: true to broadcast the transaction on the network (type:\n"
                "\tbool)\n"
                "\n"
                "Returns\n"
                "    the signed transaction claiming from the fee pool\n"
;
        method_descriptions.insert(this_method);
     }

     {
        method_description this_method;
        this_method.method_name = "reserve_asset";
        this_method.brief_description = "                      signed_transaction reserve_asset(string from, string amount, string symbol, bool broadcast)\n";
        this_method.detailed_description = ""
                "Burns the given user-issued asset.\n"
                "\n"
                "This command burns the user-issued asset to reduce the amount in\n"
                "circulation.\n"
                "\n"
                "Parameters:\n"
                "    from: the account containing the asset you wish to burn (type: string)\n"
                "    amount: the amount to burn, in nominal units (type: string)\n"
                "    symbol: the name or id of the asset to burn (type: string)\n"
                "    broadcast: true to broadcast the transaction on the network (type:\n"
                "\tbool)\n"
                "\n"
                "Returns\n"
                "    the signed transaction burning the asset\n"
;
        method_descriptions.insert(this_method);
     }

     {
        method_description this_method;
        this_method.method_name = "global_settle_asset";
        this_method.brief_description = "                      signed_transaction global_settle_asset(string symbol, price settle_price, bool broadcast)\n";
        this_method.detailed_description = ""
                "Forces a global settling of the given asset (black swan or prediction\n"
                "markets).\n"
                "\n"
                "In order to use this operation, asset_to_settle must have the global_settle\n"
                "flag set\n"
                "\n"
                "When this operation is executed all balances are converted into the backing\n"
                "asset at the settle_price and all open margin positions are called at the\n"
                "settle price. If this asset is used as backing for other bitassets, those\n"
                "bitassets will be force settled at their current feed price.\n"
                "\n"
                "Parameters:\n"
                "    symbol: the name or id of the asset to force settlement on (type:\n"
                "\tstring)\n"
                "    settle_price: the price at which to settle (type: price)\n"
                "    broadcast: true to broadcast the transaction on the network (type:\n"
                "\tbool)\n"
                "\n"
                "Returns\n"
                "    the signed transaction settling the named asset\n"
;
        method_descriptions.insert(this_method);
     }

     {
        method_description this_method;
        this_method.method_name = "settle_asset";
        this_method.brief_description = "                      signed_transaction settle_asset(string account_to_settle, string amount_to_settle, string symbol, bool broadcast)\n";
        this_method.detailed_description = ""
                "Schedules a market-issued asset for automatic settlement.\n"
                "\n"
                "Holders of market-issued assests may request a forced settlement for some\n"
                "amount of their asset. This means that the specified sum will be locked by\n"
                "the chain and held for the settlement period, after which time the chain\n"
                "will choose a margin posision holder and buy the settled asset using the\n"
                "margin's collateral. The price of this sale will be based on the feed price\n"
                "for the market-issued asset being settled. The exact settlement price will\n"
                "be the feed price at the time of settlement with an offset in favor of the\n"
                "margin position, where the offset is a blockchain parameter set in the\n"
                "global_property_object.\n"
                "\n"
                "Parameters:\n"
                "    account_to_settle: the name or id of the account owning the asset\n"
                "\t(type: string)\n"
                "    amount_to_settle: the amount of the named asset to schedule for\n"
                "\tsettlement (type: string)\n"
                "    symbol: the name or id of the asset to settlement on (type: string)\n"
                "    broadcast: true to broadcast the transaction on the network (type:\n"
                "\tbool)\n"
                "\n"
                "Returns\n"
                "    the signed transaction settling the named asset\n"
;
        method_descriptions.insert(this_method);
     }

     {
        method_description this_method;
        this_method.method_name = "bid_collateral";
        this_method.brief_description = "                      signed_transaction bid_collateral(string bidder_name, string debt_amount, string debt_symbol, string additional_collateral, bool broadcast)\n";
        this_method.detailed_description = ""
                "Creates or updates a bid on an MPA after global settlement.\n"
                "\n"
                "In order to revive a market-pegged asset after global settlement (aka black\n"
                "swan), investors can bid collateral in order to take over part of the debt\n"
                "and the settlement fund, see BSIP-0018. Updating an existing bid to cover 0\n"
                "debt will delete the bid.\n"
                "\n"
                "Parameters:\n"
                "    bidder_name: the name or id of the account making the bid (type:\n"
                "\tstring)\n"
                "    debt_amount: the amount of debt of the named asset to bid for (type:\n"
                "\tstring)\n"
                "    debt_symbol: the name or id of the MPA to bid for (type: string)\n"
                "    additional_collateral: the amount of additional collateral to bid for\n"
                "\ttaking over debt_amount. The asset type of this amount is\n"
                "\tdetermined automatically from debt_symbol. (type: string)\n"
                "    broadcast: true to broadcast the transaction on the network (type:\n"
                "\tbool)\n"
                "\n"
                "Returns\n"
                "    the signed transaction creating/updating the bid\n"
;
        method_descriptions.insert(this_method);
     }

     {
        method_description this_method;
        this_method.method_name = "whitelist_account";
        this_method.brief_description = "                      signed_transaction whitelist_account(string authorizing_account, string account_to_list, account_whitelist_operation::account_listing new_listing_status, bool broadcast)\n";
        this_method.detailed_description = ""
                "Whitelist and blacklist accounts, primarily for transacting in whitelisted\n"
                "assets.\n"
                "\n"
                "Accounts can freely specify opinions about other accounts, in the form of\n"
                "either whitelisting or blacklisting them. This information is used in chain\n"
                "validation only to determine whether an account is authorized to transact\n"
                "in an asset type which enforces a whitelist, but third parties can use this\n"
                "information for other uses as well, as long as it does not conflict with\n"
                "the use of whitelisted assets.\n"
                "\n"
                "An asset which enforces a whitelist specifies a list of accounts to\n"
                "maintain its whitelist, and a list of accounts to maintain its blacklist.\n"
                "In order for a given account A to hold and transact in a whitelisted asset\n"
                "S, A must be whitelisted by at least one of S's whitelist_authorities and\n"
                "blacklisted by none of S's blacklist_authorities. If A receives a balance\n"
                "of S, and is later removed from the whitelist(s) which allowed it to hold\n"
                "S, or added to any blacklist S specifies as authoritative, A's balance of S\n"
                "will be frozen until A's authorization is reinstated.\n"
                "\n"
                "Parameters:\n"
                "    authorizing_account: the account who is doing the whitelisting (type:\n"
                "\tstring)\n"
                "    account_to_list: the account being whitelisted (type: string)\n"
                "    new_listing_status: the new whitelisting status (type:\n"
                "\taccount_whitelist_operation::account_listing)\n"
                "    broadcast: true to broadcast the transaction on the network (type:\n"
                "\tbool)\n"
                "\n"
                "Returns\n"
                "    the signed transaction changing the whitelisting status\n"
;
        method_descriptions.insert(this_method);
     }

     {
        method_description this_method;
        this_method.method_name = "create_committee_member";
        this_method.brief_description = "                      signed_transaction create_committee_member(string owner_account, string url, bool broadcast)\n";
        this_method.detailed_description = ""
                "Creates a committee_member object owned by the given account.\n"
                "\n"
                "An account can have at most one committee_member object.\n"
                "\n"
                "Parameters:\n"
                "    owner_account: the name or id of the account which is creating the\n"
                "\tcommittee_member (type: string)\n"
                "    url: a URL to include in the committee_member record in the blockchain.\n"
                "\tClients may display this when showing a list of committee_members.\n"
                "\tMay be blank. (type: string)\n"
                "    broadcast: true to broadcast the transaction on the network (type:\n"
                "\tbool)\n"
                "\n"
                "Returns\n"
                "    the signed transaction registering a committee_member\n"
;
        method_descriptions.insert(this_method);
     }

     {
        method_description this_method;
        this_method.method_name = "list_witnesses";
        this_method.brief_description = "            map<string, witness_id_type> list_witnesses(const string & lowerbound, uint32_t limit)\n";
        this_method.detailed_description = ""
                "Lists all witnesses registered in the blockchain. This returns a list of\n"
                "all account names that own witnesses, and the associated witness id, sorted\n"
                "by name. This lists witnesses whether they are currently voted in or not.\n"
                "\n"
                "Use the 'lowerbound' and limit parameters to page through the list. To\n"
                "retrieve all witnesss, start by setting 'lowerbound' to the empty string\n"
                "'\"\"', and then each iteration, pass the last witness name returned as the\n"
                "'lowerbound' for the next 'list_witnesss()' call.\n"
                "\n"
                "Parameters:\n"
                "    lowerbound: the name of the first witness to return. If the named\n"
                "\twitness does not exist, the list will start at the witness that\n"
                "\tcomes after 'lowerbound' (type: const string &)\n"
                "    limit: the maximum number of witnesss to return (max: 1000) (type:\n"
                "\tuint32_t)\n"
                "\n"
                "Returns\n"
                "    a list of witnesss mapping witness names to witness ids\n"
;
        method_descriptions.insert(this_method);
     }

     {
        method_description this_method;
        this_method.method_name = "list_committee_members";
        this_method.brief_description = "   map<string, committee_member_id_type> list_committee_members(const string & lowerbound, uint32_t limit)\n";
        this_method.detailed_description = ""
                "Lists all committee_members registered in the blockchain. This returns a\n"
                "list of all account names that own committee_members, and the associated\n"
                "committee_member id, sorted by name. This lists committee_members whether\n"
                "they are currently voted in or not.\n"
                "\n"
                "Use the 'lowerbound' and limit parameters to page through the list. To\n"
                "retrieve all committee_members, start by setting 'lowerbound' to the empty\n"
                "string '\"\"', and then each iteration, pass the last committee_member name\n"
                "returned as the 'lowerbound' for the next 'list_committee_members()' call.\n"
                "\n"
                "Parameters:\n"
                "    lowerbound: the name of the first committee_member to return. If the\n"
                "\tnamed committee_member does not exist, the list will start at the\n"
                "\tcommittee_member that comes after 'lowerbound' (type: const string\n"
                "\t&)\n"
                "    limit: the maximum number of committee_members to return (max: 1000)\n"
                "\t(type: uint32_t)\n"
                "\n"
                "Returns\n"
                "    a list of committee_members mapping committee_member names to\n"
                "\tcommittee_member ids\n"
;
        method_descriptions.insert(this_method);
     }

     {
        method_description this_method;
        this_method.method_name = "get_witness";
        this_method.brief_description = "                          witness_object get_witness(string owner_account)\n";
        this_method.detailed_description = ""
                "Returns information about the given witness.\n"
                "\n"
                "Parameters:\n"
                "    owner_account: the name or id of the witness account owner, or the id\n"
                "\tof the witness (type: string)\n"
                "\n"
                "Returns\n"
                "    the information about the witness stored in the block chain\n"
;
        method_descriptions.insert(this_method);
     }

     {
        method_description this_method;
        this_method.method_name = "get_committee_member";
        this_method.brief_description = "                 committee_member_object get_committee_member(string owner_account)\n";
        this_method.detailed_description = ""
                "Returns information about the given committee_member.\n"
                "\n"
                "Parameters:\n"
                "    owner_account: the name or id of the committee_member account owner, or\n"
                "\tthe id of the committee_member (type: string)\n"
                "\n"
                "Returns\n"
                "    the information about the committee_member stored in the block chain\n"
;
        method_descriptions.insert(this_method);
     }

     {
        method_description this_method;
        this_method.method_name = "create_witness";
        this_method.brief_description = "                      signed_transaction create_witness(string owner_account, string url, bool broadcast)\n";
        this_method.detailed_description = ""
                "Creates a witness object owned by the given account.\n"
                "\n"
                "An account can have at most one witness object.\n"
                "\n"
                "Parameters:\n"
                "    owner_account: the name or id of the account which is creating the\n"
                "\twitness (type: string)\n"
                "    url: a URL to include in the witness record in the blockchain. Clients\n"
                "\tmay display this when showing a list of witnesses. May be blank.\n"
                "\t(type: string)\n"
                "    broadcast: true to broadcast the transaction on the network (type:\n"
                "\tbool)\n"
                "\n"
                "Returns\n"
                "    the signed transaction registering a witness\n"
;
        method_descriptions.insert(this_method);
     }

     {
        method_description this_method;
        this_method.method_name = "update_witness";
        this_method.brief_description = "                      signed_transaction update_witness(string witness_name, string url, string block_signing_key, bool broadcast)\n";
        this_method.detailed_description = ""
                "Update a witness object owned by the given account.\n"
                "\n"
                "Parameters:\n"
                "    witness_name: The name of the witness's owner account. Also accepts the\n"
                "\tID of the owner account or the ID of the witness. (type: string)\n"
                "    url: Same as for create_witness. The empty string makes it remain the\n"
                "\tsame. (type: string)\n"
                "    block_signing_key: The new block signing public key. The empty string\n"
                "\tmakes it remain the same. (type: string)\n"
                "    broadcast: true if you wish to broadcast the transaction. (type: bool)\n"
;
        method_descriptions.insert(this_method);
     }

     {
        method_description this_method;
        this_method.method_name = "create_worker";
        this_method.brief_description = "                      signed_transaction create_worker(string owner_account, time_point_sec work_begin_date, time_point_sec work_end_date, share_type daily_pay, string name, string url, variant worker_settings, bool broadcast)\n";
        this_method.detailed_description = ""
                "Create a worker object.\n"
                "\n"
                "Parameters:\n"
                "    owner_account: The account which owns the worker and will be paid\n"
                "\t(type: string)\n"
                "    work_begin_date: When the work begins (type: time_point_sec)\n"
                "    work_end_date: When the work ends (type: time_point_sec)\n"
                "    daily_pay: Amount of pay per day (NOT per maint interval) (type:\n"
                "\tshare_type)\n"
                "    name: Any text (type: string)\n"
                "    url: Any text (type: string)\n"
                "    worker_settings: {\"type\" : \"burn\"|\"refund\"|\"vesting\",\n"
                "\t\"pay_vesting_period_days\" : x} (type: variant)\n"
                "    broadcast: true if you wish to broadcast the transaction. (type: bool)\n"
;
        method_descriptions.insert(this_method);
     }

     {
        method_description this_method;
        this_method.method_name = "update_worker_votes";
        this_method.brief_description = "                      signed_transaction update_worker_votes(string account, worker_vote_delta delta, bool broadcast)\n";
        this_method.detailed_description = ""
                "Update your votes for a worker\n"
                "\n"
                "Parameters:\n"
                "    account: The account which will pay the fee and update votes. (type:\n"
                "\tstring)\n"
                "    delta: {\"vote_for\" : [...], \"vote_against\" : [...], \"vote_abstain\" :\n"
                "\t[...]} (type: worker_vote_delta)\n"
                "    broadcast: true if you wish to broadcast the transaction. (type: bool)\n"
;
        method_descriptions.insert(this_method);
     }

     {
        method_description this_method;
        this_method.method_name = "get_vesting_balances";
        this_method.brief_description = "vector<vesting_balance_object_with_info> get_vesting_balances(string account_name)\n";
        this_method.detailed_description = ""
                "Get information about a vesting balance object.\n"
                "\n"
                "Parameters:\n"
                "    account_name: An account name, account ID, or vesting balance object\n"
                "\tID. (type: string)\n"
;
        method_descriptions.insert(this_method);
     }

     {
        method_description this_method;
        this_method.method_name = "withdraw_vesting";
        this_method.brief_description = "                      signed_transaction withdraw_vesting(string witness_name, string amount, string asset_symbol, bool broadcast)\n";
        this_method.detailed_description = ""
                "Withdraw a vesting balance.\n"
                "\n"
                "Parameters:\n"
                "    witness_name: The account name of the witness, also accepts account ID\n"
                "\tor vesting balance ID type. (type: string)\n"
                "    amount: The amount to withdraw. (type: string)\n"
                "    asset_symbol: The symbol of the asset to withdraw. (type: string)\n"
                "    broadcast: true if you wish to broadcast the transaction (type: bool)\n"
;
        method_descriptions.insert(this_method);
     }

     {
        method_description this_method;
        this_method.method_name = "vote_for_committee_member";
        this_method.brief_description = "                      signed_transaction vote_for_committee_member(string voting_account, string committee_member, bool approve, bool broadcast)\n";
        this_method.detailed_description = ""
                "Vote for a given committee_member.\n"
                "\n"
                "An account can publish a list of all committee_memberes they approve of.\n"
                "This command allows you to add or remove committee_memberes from this list.\n"
                "Each account's vote is weighted according to the number of shares of the\n"
                "core asset owned by that account at the time the votes are tallied.\n"
                "\n"
                "Parameters:\n"
                "    voting_account: the name or id of the account who is voting with their\n"
                "\tshares (type: string)\n"
                "    committee_member: the name or id of the committee_member' owner account\n"
                "\t(type: string)\n"
                "    approve: true if you wish to vote in favor of that committee_member,\n"
                "\tfalse to remove your vote in favor of that committee_member (type:\n"
                "\tbool)\n"
                "    broadcast: true if you wish to broadcast the transaction (type: bool)\n"
                "\n"
                "Returns\n"
                "    the signed transaction changing your vote for the given\n"
                "\tcommittee_member\n"
;
        method_descriptions.insert(this_method);
     }

     {
        method_description this_method;
        this_method.method_name = "vote_for_witness";
        this_method.brief_description = "                      signed_transaction vote_for_witness(string voting_account, string witness, bool approve, bool broadcast)\n";
        this_method.detailed_description = ""
                "Vote for a given witness.\n"
                "\n"
                "An account can publish a list of all witnesses they approve of. This\n"
                "command allows you to add or remove witnesses from this list. Each\n"
                "account's vote is weighted according to the number of shares of the core\n"
                "asset owned by that account at the time the votes are tallied.\n"
                "\n"
                "Parameters:\n"
                "    voting_account: the name or id of the account who is voting with their\n"
                "\tshares (type: string)\n"
                "    witness: the name or id of the witness' owner account (type: string)\n"
                "    approve: true if you wish to vote in favor of that witness, false to\n"
                "\tremove your vote in favor of that witness (type: bool)\n"
                "    broadcast: true if you wish to broadcast the transaction (type: bool)\n"
                "\n"
                "Returns\n"
                "    the signed transaction changing your vote for the given witness\n"
;
        method_descriptions.insert(this_method);
     }

     {
        method_description this_method;
        this_method.method_name = "set_voting_proxy";
        this_method.brief_description = "                      signed_transaction set_voting_proxy(string account_to_modify, optional<string> voting_account, bool broadcast)\n";
        this_method.detailed_description = ""
                "Set the voting proxy for an account.\n"
                "\n"
                "If a user does not wish to take an active part in voting, they can choose\n"
                "to allow another account to vote their stake.\n"
                "\n"
                "Setting a vote proxy does not remove your previous votes from the\n"
                "blockchain, they remain there but are ignored. If you later null out your\n"
                "vote proxy, your previous votes will take effect again.\n"
                "\n"
                "This setting can be changed at any time.\n"
                "\n"
                "Parameters:\n"
                "    account_to_modify: the name or id of the account to update (type:\n"
                "\tstring)\n"
                "    voting_account: the name or id of an account authorized to vote\n"
                "\taccount_to_modify's shares, or null to vote your own shares (type:\n"
                "\toptional<string>)\n"
                "    broadcast: true if you wish to broadcast the transaction (type: bool)\n"
                "\n"
                "Returns\n"
                "    the signed transaction changing your vote proxy settings\n"
;
        method_descriptions.insert(this_method);
     }

     {
        method_description this_method;
        this_method.method_name = "set_desired_witness_and_committee_member_count";
        this_method.brief_description = "                      signed_transaction set_desired_witness_and_committee_member_count(string account_to_modify, uint16_t desired_number_of_witnesses, uint16_t desired_number_of_committee_members, bool broadcast)\n";
        this_method.detailed_description = ""
                "Set your vote for the number of witnesses and committee_members in the\n"
                "system.\n"
                "\n"
                "Each account can voice their opinion on how many committee_members and how\n"
                "many witnesses there should be in the active committee_member/active\n"
                "witness list. These are independent of each other. You must vote your\n"
                "approval of at least as many committee_members or witnesses as you claim\n"
                "there should be (you can't say that there should be 20 committee_members\n"
                "but only vote for 10).\n"
                "\n"
                "There are maximum values for each set in the blockchain parameters\n"
                "(currently defaulting to 1001).\n"
                "\n"
                "This setting can be changed at any time. If your account has a voting proxy\n"
                "set, your preferences will be ignored.\n"
                "\n"
                "Parameters:\n"
                "    account_to_modify: the name or id of the account to update (type:\n"
                "\tstring)\n"
                "    desired_number_of_witnesses: desired number of active witnesses (type:\n"
                "\tuint16_t)\n"
                "    desired_number_of_committee_members: desired number of active committee\n"
                "\tmembers (type: uint16_t)\n"
                "    broadcast: true if you wish to broadcast the transaction (type: bool)\n"
                "\n"
                "Returns\n"
                "    the signed transaction changing your vote proxy settings\n"
;
        method_descriptions.insert(this_method);
     }

     {
        method_description this_method;
        this_method.method_name = "sign_transaction";
        this_method.brief_description = "                      signed_transaction sign_transaction(signed_transaction tx, bool broadcast)\n";
        this_method.detailed_description = ""
                "Signs a transaction.\n"
                "\n"
                "Given a fully-formed transaction that is only lacking signatures, this\n"
                "signs the transaction with the necessary keys and optionally broadcasts the\n"
                "transaction\n"
                "\n"
                "Parameters:\n"
                "    tx: the unsigned transaction (type: signed_transaction)\n"
                "    broadcast: true if you wish to broadcast the transaction (type: bool)\n"
                "\n"
                "Returns\n"
                "    the signed version of the transaction\n"
;
        method_descriptions.insert(this_method);
     }

     {
        method_description this_method;
        this_method.method_name = "get_prototype_operation";
        this_method.brief_description = "                               operation get_prototype_operation(string operation_type)\n";
        this_method.detailed_description = ""
                "Returns an uninitialized object representing a given blockchain operation.\n"
                "\n"
                "This returns a default-initialized object of the given type; it can be used\n"
                "during early development of the wallet when we don't yet have custom\n"
                "commands for creating all of the operations the blockchain supports.\n"
                "\n"
                "Any operation the blockchain supports can be created using the transaction\n"
                "builder's 'add_operation_to_builder_transaction()' , but to do that from\n"
                "the CLI you need to know what the JSON form of the operation looks like.\n"
                "This will give you a template you can fill in. It's better than nothing.\n"
                "\n"
                "Parameters:\n"
                "    operation_type: the type of operation to return, must be one of the\n"
                "\toperations defined in 'graphene/chain/operations.hpp' (e.g.,\n"
                "\t\"global_parameters_update_operation\") (type: string)\n"
                "\n"
                "Returns\n"
                "    a default-constructed operation of the given type\n"
;
        method_descriptions.insert(this_method);
     }

     {
        method_description this_method;
        this_method.method_name = "propose_parameter_change";
        this_method.brief_description = "                      signed_transaction propose_parameter_change(const string & proposing_account, fc::time_point_sec expiration_time, const variant_object & changed_values, bool broadcast)\n";
        this_method.detailed_description = ""
                "Creates a transaction to propose a parameter change.\n"
                "\n"
                "Multiple parameters can be specified if an atomic change is desired.\n"
                "\n"
                "Parameters:\n"
                "    proposing_account: The account paying the fee to propose the tx (type:\n"
                "\tconst string &)\n"
                "    expiration_time: Timestamp specifying when the proposal will either\n"
                "\ttake effect or expire. (type: fc::time_point_sec)\n"
                "    changed_values: The values to change; all other chain parameters are\n"
                "\tfilled in with default values (type: const variant_object &)\n"
                "    broadcast: true if you wish to broadcast the transaction (type: bool)\n"
                "\n"
                "Returns\n"
                "    the signed version of the transaction\n"
;
        method_descriptions.insert(this_method);
     }

     {
        method_description this_method;
        this_method.method_name = "propose_fee_change";
        this_method.brief_description = "                      signed_transaction propose_fee_change(const string & proposing_account, fc::time_point_sec expiration_time, const variant_object & changed_values, bool broadcast)\n";
        this_method.detailed_description = ""
                "Propose a fee change.\n"
                "\n"
                "Parameters:\n"
                "    proposing_account: The account paying the fee to propose the tx (type:\n"
                "\tconst string &)\n"
                "    expiration_time: Timestamp specifying when the proposal will either\n"
                "\ttake effect or expire. (type: fc::time_point_sec)\n"
                "    changed_values: Map of operation type to new fee. Operations may be\n"
                "\tspecified by name or ID. The \"scale\" key changes the scale. All\n"
                "\tother operations will maintain current values. (type: const\n"
                "\tvariant_object &)\n"
                "    broadcast: true if you wish to broadcast the transaction (type: bool)\n"
                "\n"
                "Returns\n"
                "    the signed version of the transaction\n"
;
        method_descriptions.insert(this_method);
     }

     {
        method_description this_method;
        this_method.method_name = "approve_proposal";
        this_method.brief_description = "                      signed_transaction approve_proposal(const string & fee_paying_account, const string & proposal_id, const approval_delta & delta, bool broadcast)\n";
        this_method.detailed_description = ""
                "Approve or disapprove a proposal.\n"
                "\n"
                "Parameters:\n"
                "    fee_paying_account: The account paying the fee for the op. (type: const\n"
                "\tstring &)\n"
                "    proposal_id: The proposal to modify. (type: const string &)\n"
                "    delta: Members contain approvals to create or remove. In JSON you can\n"
                "\tleave empty members undefined. (type: const approval_delta &)\n"
                "    broadcast: true if you wish to broadcast the transaction (type: bool)\n"
                "\n"
                "Returns\n"
                "    the signed version of the transaction\n"
;
        method_descriptions.insert(this_method);
     }

     {
        method_description this_method;
        this_method.method_name = "get_order_book";
        this_method.brief_description = "                              order_book get_order_book(const string & base, const string & quote, unsigned limit)\n";
        this_method.detailed_description = ""
;
        method_descriptions.insert(this_method);
     }

     {
        method_description this_method;
        this_method.method_name = "dbg_make_uia";
        this_method.brief_description = "                                    void dbg_make_uia(string creator, string symbol)\n";
        this_method.detailed_description = ""
;
        method_descriptions.insert(this_method);
     }

     {
        method_description this_method;
        this_method.method_name = "dbg_make_mia";
        this_method.brief_description = "                                    void dbg_make_mia(string creator, string symbol)\n";
        this_method.detailed_description = ""
;
        method_descriptions.insert(this_method);
     }

     {
        method_description this_method;
        this_method.method_name = "dbg_push_blocks";
        this_method.brief_description = "                                    void dbg_push_blocks(std::string src_filename, uint32_t count)\n";
        this_method.detailed_description = ""
;
        method_descriptions.insert(this_method);
     }

     {
        method_description this_method;
        this_method.method_name = "dbg_generate_blocks";
        this_method.brief_description = "                                    void dbg_generate_blocks(std::string debug_wif_key, uint32_t count)\n";
        this_method.detailed_description = ""
;
        method_descriptions.insert(this_method);
     }

     {
        method_description this_method;
        this_method.method_name = "dbg_stream_json_objects";
        this_method.brief_description = "                                    void dbg_stream_json_objects(const std::string & filename)\n";
        this_method.detailed_description = ""
;
        method_descriptions.insert(this_method);
     }

     {
        method_description this_method;
        this_method.method_name = "dbg_update_object";
        this_method.brief_description = "                                    void dbg_update_object(fc::variant_object update)\n";
        this_method.detailed_description = ""
;
        method_descriptions.insert(this_method);
     }

     {
        method_description this_method;
        this_method.method_name = "flood_network";
        this_method.brief_description = "                                    void flood_network(string prefix, uint32_t number_of_transactions)\n";
        this_method.detailed_description = ""
;
        method_descriptions.insert(this_method);
     }

     {
        method_description this_method;
        this_method.method_name = "network_add_nodes";
        this_method.brief_description = "                                    void network_add_nodes(const vector<string> & nodes)\n";
        this_method.detailed_description = ""
;
        method_descriptions.insert(this_method);
     }

     {
        method_description this_method;
        this_method.method_name = "network_get_connected_peers";
        this_method.brief_description = "                         vector<variant> network_get_connected_peers()\n";
        this_method.detailed_description = ""
;
        method_descriptions.insert(this_method);
     }

     {
        method_description this_method;
        this_method.method_name = "blind_transfer_help";
        this_method.brief_description = "                      blind_confirmation blind_transfer_help(string from_key_or_label, string to_key_or_label, string amount, string symbol, bool broadcast, bool to_temp)\n";
        this_method.detailed_description = ""
                "Used to transfer from one set of blinded balances to another\n"
;
        method_descriptions.insert(this_method);
     }

     {
        method_description this_method;
        this_method.method_name = "get_result_formatters";
        this_method.brief_description = "std::map<string, std::function<string(fc::variant, const fc::variants &)>> get_result_formatters()\n";
        this_method.detailed_description = ""
;
        method_descriptions.insert(this_method);
     }

     {
        method_description this_method;
        this_method.method_name = "encrypt_keys";
        this_method.brief_description = "                                    void encrypt_keys()\n";
        this_method.detailed_description = ""
;
        method_descriptions.insert(this_method);
     }

      fc::api<wallet_api> tmp;
      detail::api_method_name_collector_visitor visitor;
      tmp->visit(visitor);
      for (auto iter = method_descriptions.begin(); iter != method_descriptions.end();)
        if (visitor.method_names.find(iter->method_name) == visitor.method_names.end())
          iter = method_descriptions.erase(iter);
        else
          ++iter;
   }

} } // end namespace graphene::wallet
