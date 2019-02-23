package hxTShopify.t;
/**
 *  https://help.shopify.com/en/api/reference/shopify_payments/balance
 **/
typedef BalanceDetail = {
    var currency: CurrencyType;
    var amount:   Float;
}