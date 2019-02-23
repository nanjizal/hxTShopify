package hxTShopify.t;
/**
 *  https://help.shopify.com/en/api/reference/customers/customer
 **/
typedef Customer = {
    var id:                   Int;
    var email:                String;
    var accepts_marketing:    Bool;
    var created_at:           StringDate;
    var updated_at:           StringDate;
    var first_name:           String;
    var last_name:            String;
    var orders_count:         Int;
    var state:                String;
    var total_spent:          Float;
    var last_order_id:        Int;
    var note:                 String;
    var verified_email:       Bool;
    var multipass_identifier: Null<String>;
    var tax_exempt:           Bool;
    var phone:                String;
    var tags:                 String; // TODO: abstract string that resolves Array<String>
    var last_order_name:      String;
    var currency:             String;
    var admin_graphql_api_id: String;
    var default_address:      DefaultAddress;
}