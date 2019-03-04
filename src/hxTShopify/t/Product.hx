package hxTShopify.t;
import hxTShopify.t.*;
import hxTShopify.t.Image;
import hxTShopify.t.Option;
import hxTShopify.t.Variant;
import hxTShopify.t.Product;
typedef Product = {
    // change id to string as it's too large!
        @:optional var id:                   String;
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
@:forward
abstract ProductWrapper( Product ) to Product {
    public inline function new( p: Product ) {
        this = p;
        this.id = p.id + ''; // make sure string
        var images = this.images;
        for( i in 0...images.length ) this.images[ i ] = new ImageWrapper( images[ i ] );
        this.image = new ImageWrapper( this.image );
    }
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
    static inline public function withChanges( p0: Product
                                             , productTransformation: Product->Product
                                             , variantTransformation: (Variant,Variant)->Variant ){
        var p1 = ( p0: ProductCloner );
        var l  = p1.variants.length;
        var p2 = ( productTransformation != null )? productTransformation( p1 ): p1;
        if( variantTransformation != null ) for( i in 0...l ) p2.variants[ i ] = variantTransformation( p0.variants[ i ], p2.variants[ i ] );
        return p2;
    }
    @:from
    static inline public function fromProduct( p: Product ) return new ProductCloner( p );
    inline public function toJsonString() return haxe.Json.stringify( this, null, '   ' ); // pretty print for reading easier
}
