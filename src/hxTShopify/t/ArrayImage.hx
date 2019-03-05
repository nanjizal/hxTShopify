package hxTShopify.t;
import hxTShopify.t.Image;
// used as a helper for working with Images
@:forward
abstract ArrayImage( Array<Image> ) to Array<Image> {
    public inline function new( ?images: Null<Array<Image>> ){
        this = ( images == null )? empty(): images;
    }
    static inline function empty(){
        return new Array<Image>();
    }
    public inline function stringDimensions(){
        var image: Image;
        var arr = new Array<String>();
        for( j in 0...this.length ){
            image = this[ j ];
            arr[ j ] = Std.string( image.width ) + 'x' + Std.string( image.height );
        }
        return arr;
    }
    public inline function imageLocations(){
        var image: Image;
        var arr = new Array<String>();
        for( j in 0...this.length ){
            image = this[ j ];
            arr[ j ] = image.src;
        }
        return arr;
    }
}