package hxTShopify.t;
// orders
typedef LineItem = {        
    var id:                             Int;
    var variant_id:                     Int;
    var title:                          String;
    var quantity:                       Int;
    var price:                          Float;
    var sku:                            String;
    var variant_title:                  String;
    var vendor:                         String;
    var fulfillment_service:            String;
    var product_id:                     Int; 
    var requires_shipping:              Bool;
    var taxable:                        Bool;
    var gift_card:                      Bool;
    var name:                           String;
    var variant_inventory_management:   String;
    var properties:                     String;
    var product_exists:                 Bool;
    var fulfillable_quantity:           Int;
    var grams:                          Float;
    var total_discount:                 Float;
    var fulfillment_status:             Null<String>;
    var price_set:                      PriceSet;
    var total_discount_set:             PriceSet;
    var discount_allocations:           Array<String>;
    var admin_graphql_api_id:           String;
    var tax_lines:                      Array<TaxLines>;
    var origin_location:                OriginLocation;
    var shipping_lines:                 Array<String>; // []
    var billing_address:                Address;
    var shipping_address:               Address;
    var fulfillments:                   Array<String>;// []
    var refunds:                        Array<String>;// []
    var customer:                       Customer;
    
}
