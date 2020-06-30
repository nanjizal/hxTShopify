package hxTShopify.t;
import hxTShopify.t.Payout;// PayoutStatus
// payment
enum abstract TransactionType( String ) from String to String {
    var charge;
    var refund;
    var dispute;
    var reserve;
    var adjustment;
    var credit;
    var debit;
    var payout;
    var payout_failure;
    var payout_cancellation;
}
enum abstract AbstractPayoutType( String ) from String to String {
    var scheduled;
    var pending;
}
enum abstract SourceType( String ) from String to String {
    var charge;
    var refund;
    var dispute;
    var reserve;
    var adjustment;
    var payout;
}
typedef Transaction = {
    var id:                             Int;
    var type:                           TransactionType;
    var test:                           Bool;
    var payout_id:                      Int;
    var payout_status:                  PayoutStatus;
    var currency:                       Currency;
    var amount:                         Float;
    var fee:                            Float;
    var source_id:                      Int;
    var source_type:                    SourceType;
    var source_order_transaction_id:    Int;
    var source_order_id:                Int;
    var processed_at:                   StringDate;
}