package hxTShopify.t;
typedef Order = {
    var id:                         String;
    var email:                      String;
    var closed_at :                 Null<String>;
    var created_at:                 StringDate;
    var updated_at:                 StringDate;
    var number:                     Int;
    var note:                       String;
    var token:                      String;
    var gateway:                    String;
    var test:                       Bool;
    var total_price:                Float;
    var subtotal_price:             Float;
    var total_weight:               Int;
    var total_tax:                  Float;
    var taxes_included:             Float;
    var currency:                   String;
    var financial_status:           String;
    var confirmed:                  Bool;
    var total_discounts:            Float;
    var total_line_items_price:     Float;
    var cart_token:                 String;
    var buyer_accepts_marketing:    Bool;
    var name:                       String;
    var referring_site:             String;
    var landing_site:               String;
    var cancelled_at:               Null<String>;
    var cancel_reason:              Null<String>;
    var total_price_usd:            Float;
    var checkout_token:             String;
    var reference:                  Null<String>;
    var user_id:                    Null<String>;
    var location_id:                Null<String>;
    var source_identifier:          Null<String>;
    var source_url:                 Null<String>;
    var processed_at:               StringDate;
    var device_id:                  Null<String>;
    var phone:                      Null<String>;
    var customer_locale:            String;
    var app_id:                     Int;
    var browser_ip:                 Null<String>;
    var landing_site_ref:           Null<String>;
    var order_number:               Int;
    var discount_applications:      Array<String>;
    var discount_codes:             Array<String>;
    var note_attributes:            Array<String>;
    var payment_gateway_names:      Array<String>;
    var processing_method:          String;
    var checkout_id:                Int;
    var source_name:                String;
    var fulfillment_status:         Null<String>;
    var tax_lines:                  Array<TaxLines>;
    var tags:                       String; // abstract ArrayString
    var contact_email:              String; // abscract email
    var order_status_url:           String;
    var presentment_currency:       CurrencyType;
    var total_line_items_price_set: PriceSet;
    var total_discounts_set:        PriceSet;
    var total_shipping_price_set:   PriceSet;
    var subtotal_price_set:         PriceSet;
    var total_price_set:            PriceSet;
    var total_tax_set:              PriceSet;
    var total_tip_received:         Float;
    var admin_graphql_api_id:       String;
    var line_items:                 Array<LineItem>; // perhaps
}