package hxTShopify.t;
/**
 *  
 **/
typedef Charge = {
    var id:                     String;
    var api_client_id:          String;
    var price:                  Float;
    var status:                 ChargeStatus;
    var return_url:             String;
    var test:                   Bool;
    var created_at:             StringDate;
    var update_at:              StringDate;
    var charge_type:            Null<String>;
    var decorated_return_url:   String;
}
enum abstract ChargeStatus( String ) to String from String{
    var pending;   //: The application charge is pending approval by the merchant.
    var accepted;  //: The application charge has been accepted by the merchant and is ready to be activated by the app.
    var active;    //: The application charge has been activated by the app and appears on the merchant's invoice.
    var declined;  //: The application charge was declined by the merchant.
    var expired;   //: The application charge was not accepted within 2 days of being created.
}