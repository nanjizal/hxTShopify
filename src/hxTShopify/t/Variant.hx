package hxTShopify.t;
/**
 * Variants are covered within a product as an Array<Variant> and covers different sizes and colors.
 *
 * https://help.shopify.com/en/api/reference/products/product
 **/

typedef Variant = {
    @:optional var id:          String;
    @:optional var product_id:  Int;
    var title:                  String;
    @:optional var price:       Null<Float>;
    var sku:                    String;
    var position:               Int;
    var inventory_policy:       String;
    @:optional var compare_at_price:       Float;
    var fulfillment_service:    String;
    var inventory_management:   String;
    var option1:                Null<String>;
    var option2:                Null<String>;
    var option3:                Null<String>;
    @:optional var created_at:             StringDate;
    @:optional var updated_at:             StringDate;
    var taxable:                Bool;
    var barcode:                String;
    var grams:                  Float;
    @:optional var image_id:               Null<String>;
    var weight:                 Float;
    var weight_unit:            String;
    @:optional var inventory_item_id:      Int;
    var inventory_quantity:     Int;
    @:optional var old_inventory_quantity: Int;
    var requires_shipping:      Bool;
    @:optional var admin_graphql_api_id:   String;
}

// macro solution might be nicer but not as easy to be flexible 
abstract VariantCloner( Variant ) to Variant {
    public inline function new( v: Variant ){
        this = {  title:                  v.title
                /* price:                  Float; */ // DON'T COPY PRICE!!
                , sku:                    v.sku
                , position:               v.position
                , inventory_policy:       v.inventory_policy
                , fulfillment_service:    v.fulfillment_service
                , inventory_management:   v.inventory_management
                , option1:                v.option1
                , option2:                v.option2
                , option3:                v.option3
                , taxable:                v.taxable
                , barcode:                v.barcode
                , grams:                  v.grams
                /* , image_id:               Null<String>; */ // PRETTY SURE I CAN'T TRANSFER THIS
                , weight:                 v.weight
                , weight_unit:            v.weight_unit
                , inventory_quantity:     v.inventory_quantity
                , requires_shipping:      v.requires_shipping
                };
    }
    @:from
    static inline public function fromVariant( v: Variant ) return new VariantCloner( v );
}