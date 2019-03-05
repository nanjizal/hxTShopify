package hxTShopify.t;
import hxTShopify.t.Variant;
// used as a helper for working with Variants
@:forward
abstract ArrayVariant( Array<Variant> ) to Array<Variant> {
    public inline function new( ?variants: Null<Array<Variant>> ){
        this = ( variants == null )? empty(): variants;
    }
    static inline function empty(){
        return new Array<Variant>();
    }
    public inline function stringQuanitiesBelow( max: Int ){
        var variant: Variant;
        var str: String = '';
        for( i in 0...this.length ){
            var variant = this[ i ];
            if( variant.inventory_quantity < max ) str += variant.title + '( ' + variant.inventory_quantity + ' ),\n ';
        }
        return str;
    }
    public inline function quanitiesBelow( max: Int ){
        var variant: Variant;
        var variants = new ArrayVariant();
        for( i in 0...this.length ){
            var variant = this[ i ];
            if( variant.inventory_quantity < max )  variants[ variants.length ] = variant;
        }
        return variants;
    }
    public inline function stringQuanitiesAbove( min: Int ){
        var variant: Variant;
        var str: String = '';
        for( i in 0...this.length ){
            var variant = this[ i ];
            if( variant.inventory_quantity > min ) str += variant.title + '( ' + variant.inventory_quantity + ' ),\n ';
        }
        return str;
    }
    public inline function quanitiesAbove( min: Int ){
        var variant: Variant;
        var variants = new ArrayVariant();
        for( i in 0...this.length ){
            var variant = this[ i ];
            if( variant.inventory_quantity > min )  variants[ variants.length ] = variant;
        }
        return variants;
    }
    public inline function stringQuanities(){
        var variant: Variant;
        var str: String = '';
        for( i in 0...this.length ){
            var variant = this[ i ];
            str += variant.title + '( ' + variant.inventory_quantity + ' ),\n ';
        }
        return str;
    }
    public inline function emptyVariants(){
        var variant: Variant;
        var variants = new ArrayVariant();
        for( i in 0...this.length ){
            var variant = this[ i ];
            if( variant.inventory_quantity < 1 )  variants[ variants.length ] = variant;
        }
        return variants;
    }
    public inline function emptyVariantIds(){
        var variant: Variant;
        var variants = new Array<String>();
        for( i in 0...this.length ){
            var variant = this[ i ];
            if( variant.inventory_quantity < 1 )  variants[ variants.length ] = variant.id;
        }
        return variants;
    }
    
}