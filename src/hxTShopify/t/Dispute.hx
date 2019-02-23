package hxTShopify.t;
/**
 *  https://help.shopify.com/en/api/reference/shopify_payments/dispute
 **/
typedef Dispute = {
    var id:                  Int;
    var order_id:            Int;
    var type:                DisputeType; // "chargeback",
    var amount:              Float; //
    var currency:            CurrencyType;
    var reason:              DisputeReason; //"fraudulent",
    var network_reason_code: Int;
    var status:              DisputeReason; // "needs_response",  // TODO: probably wrong?
    var evidence_due_by:     StringDate;
    var evidence_sent_on:    StringDate; // null?
    var finalized_on:        StringDate;
    var initiated_at:        StringDate; // null?
}
enum abstract DisputeType( String ) from String to String {
    // The dispute is in the inquiry phase.
    var inquiry;
    // The dispute has turned into a chargeback.
    var chargeback;
}
enum abstract DisputeReason( String ) from String to String {
    // The customer's bank cannot process the charge.
    var bank_not_process;
    // The customer claims that the purchased product was returned or the transaction was otherwise
    var credit_not_processed; //canceled, but the merchant have not yet provided a refund or credit.
    // The customer initiated the dispute, so the merchant should contact the customer for additional
    var customer_initiated; //details to find out why the payment was disputed.
    // The customer's bank cannot proceed with the debit since it has not been authorized.
    var debit_not_authorized;
    // The customer claims they were charged multiple times for the same product or service.
    var duplicate;
    // The cardholder claims that they didn't authorize the payment.
    var fraudulent;
    // The dispute is uncategorized, so the merchant should contact the customer for additional details to find out why the payment was disputed.
    var general;
    // The customer account associated with the purchase is incorrect.
    var incorrect_account_details;
    // The customer's bank account has insufficient funds.
    var insufficient_funds;
    // The customer claims they did not receive the products or services purchased.
    var product_not_received;
    // The product or service was received but was defective, damaged, or not as described.
    var product_unacceptable;
    // The customer claims that the merchant continued to charge them after a subscription was
    var subscription_cancelled; //canceled.
    // The customer doesn't recognize the payment appearing on their card statement.
    var unrecognized;
}