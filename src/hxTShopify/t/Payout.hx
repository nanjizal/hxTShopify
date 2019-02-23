package hxTShopify.t;
enum abstract PayoutStatus( String ) to String from String {
    var scheduled;//: The payout has been created and had transactions assigned to it, but it has not yet been submitted to the bank.
    var in_transit;//: The payout has been submitted to the bank for processing.
    var paid;//: The payout has been successfully deposited into the bank.
    var failed;//: The payout has been declined by the bank.
    var canceled;//: The payout has been canceled by Shopify.
}

typedef Payout = {   
    var id:         Int;
    var status:     PayoutStatus;
    var date:       StringDate;
    var currency:   CurrencyType;
    var amount:     Float;
    var summary:    Summary;
}