// TODO: Extend this to cover Call_list
package hxTShopify.api;
enum abstract CallStrings( String ) to String from String {
    var BALANCE             = 'shopify_payments/balance';
    var DISPUTES            = 'shopify_payments/disputes';
    var PAYOUTS             = 'shopify_payments/payouts';
    var ACCESS_SCOPE        = 'oauth/access_scopes';
    var STORE_FRONT_ACCESS  = 'storefront_access_tokens';
    var APPLICATION_CHARGE  = 'application_charges';
    var APPLICATION_CREDIT  = 'application_credits';
    var CHARGES             = 'application_charge';
    var PRODUCT             = 'products';
    var PRODUCT_COUNT       = 'products/count';
    var PRODUCT_PAGE        = '?limit=250&page=';
    var ORDER               = 'orders';
    var ORDER_COUNT         = 'orders/count';
    var ORDER_PAGE          = '?limit=100&page=';
    var CUSTOMER            = 'customers';
    var CUSTOMER_COUNT      = 'customers/count';
    var CUSTOMER_PAGE       = '?limit=250&page=';
    var CURRENCY            = 'currencies';
}
enum abstract PageSizes( Int ) from Int to Int {
    var productPageSize   = 250;
    var orderPageSize     = 100;
    var customerPageSize  = 250;
}
class Calls{
    public static function byId( callString: CallStrings, id: String ){
        return '$callString/#id';
    }
}
