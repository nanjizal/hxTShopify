package hxTShopify.t;
/**
 * Variants are covered within a product as an Array<Variant> and covers different sizes and colors.
 *
 * https://help.shopify.com/en/api/reference/products/product
 **/

typedef Variant = {
    var id:                     Int;
    var product_id:             Int;
    var title:                  String;
    var price:                  Float;
    var sku:                    String;
    var position:               Int;
    var inventory_policy:       String;
    var compare_at_price:       Float;
    var fulfillment_service:    String;
    var inventory_management:   String;
    var option1:                Null<String>;
    var option2:                Null<String>;
    var option3:                Null<String>;
    var created_at:             StringDate;
    var updated_at:             StringDate;
    var taxable:                Bool;
    var barcode:                String;
    var grams:                  Float;
    var image_id:               Null<String>;
    var weight:                 Float;
    var weight_unit:            String;
    var inventory_item_id:      Int;
    var inventory_quantity:     Int;
    var old_inventory_quantity: Int;
    var requires_shipping:      Bool;
    var admin_graphql_api_id:   String;
}