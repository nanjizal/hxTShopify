package hxTShopify.t;
import hxTShopify.t.*;
import hxTShopify.t.Image;
import hxTShopify.t.Option;
import hxTShopify.t.Variant;
import hxTShopify.t.Product;
typedef Product = {
        @:optional var id:                   Int;
        var title:                           String;
        var body_html:                       String;  // new haxe xml?
        var vendor:                          String;
        var product_type:                    String;
        @:optional var created_at:           StringDate;
        var handle:                          String;
        @:optional var updated_at:           StringDate;
        @:optional var published_at:         StringDate;
        @:optional var template_suffix:      Null<String>;
        var tags:                            Array<String>;         // abstract ArrayString
        var published_scope:                 String;
        @:optional var admin_graphql_api_id: String;
        var variants:                        Array<Variant>;
        var options:                         Array<Option>;
        var images:                          Array<Image>;
        var image:                           Image;
}
abstract ProductWrapper( Product ) to Product from Product {
    public inline function new( p: Product ) this = p;
    public inline function toJsonString() return haxe.Json.stringify( this, null, '   ' ); // pretty print for reading easier
    
}
// macro solution might be nicer but not as easy to be flexible 
@:forward
abstract ProductCloner( Product ) to Product {
    public inline function new( p: Product ){
        var variants_ = new Array<Variant>();
        var options_  = new Array<Option>();
        var images_   = new Array<Image>();
        var image_    = new ImageCloner( p.image );
        var l;
        l = p.variants.length;
        for( i in 0...l ) variants_[ i ] = new VariantCloner( p.variants[ i ] );
        l = p.options.length;
        for( i in 0...l ) options_[ i ]  = new OptionCloner(  p.options[ i ]  );
        l = p.images.length;
        for( i in 0...l ) images_[ i ]   = new ImageCloner(   p.images[ i ]   );
        this = { title:             p.title
               , body_html:         p.body_html
               , vendor:            p.vendor
               , product_type:      p.product_type
               , handle:            p.handle
               , tags:              p.tags        // abstract ArrayString
               , published_scope:   p.published_scope
               , variants:          variants_
               , options:           options_
               , images:            images_
               , image:             image_
               };
    }
    static inline public function withNewPrice( p0: Product, price: Float ){
        var p1 = ( p0: ProductCloner );
        var l = p1.variants.length;
        for( i in 0...l ) p1.variants[ i ].price = price;
        return p1;
    }
    @:from
    static inline public function fromProduct( p: Product ) return new ProductCloner( p );
    inline public function toJsonString() return haxe.Json.stringify( this, null, '   ' ); // pretty print for reading easier
}