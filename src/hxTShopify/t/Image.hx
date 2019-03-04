package hxTShopify.t;
import hxTShopify.t.*;
typedef Image = {
    //@:optional 
    var id: String;
    @:optional var product_id: String;
    var position: Int;
    @:optional var created_at: StringDate;
    @:optional var updated_at: StringDate;
    var alt: String;
    var width: Int;
    var height: Int;
    var src: String;
    @:optional var admin_graphjl_api_id: String;
}

// macro solution might be nicer but not as easy to be flexible 
abstract ImageCloner( Image ) to Image {
    public inline function new( i: Image ){
        this = { position:          i.position
               , alt:               i.alt
               , width:             i.width
               , height:            i.height
               , src:               i.src
               };
    }
    @:from
    static inline public function fromImage( i: Image ) return new ImageCloner( i );
}