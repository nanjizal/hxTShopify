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
    public function stringQuanitiesBelow( max: Int ){
        var variant: Variant;
        var str: String = '';
        for( i in 0...this.length ){
            var variant = this[ i ];
            if( variant.inventory_quantity < max ) str += variant.title + '( ' + variant.inventory_quantity + ' ),\n ';
        }
        return str;
    }
    public function quanitiesBelow( max: Int ){
        var variant: Variant;
        var variants = new ArrayVariant();
        for( i in 0...this.length ){
            var variant = this[ i ];
            if( variant.inventory_quantity < max )  variants[ variants.length ] = variant;
        }
        return variants;
    }
    public function stringQuanitiesAbove( min: Int ){
        var variant: Variant;
        var str: String = '';
        for( i in 0...this.length ){
            var variant = this[ i ];
            if( variant.inventory_quantity > min ) str += variant.title + '( ' + variant.inventory_quantity + ' ),\n ';
        }
        return str;
    }
    public function quanitiesAbove( min: Int ){
        var variant: Variant;
        var variants = new ArrayVariant();
        for( i in 0...this.length ){
            var variant = this[ i ];
            if( variant.inventory_quantity > min )  variants[ variants.length ] = variant;
        }
        return variants;
    }
    public function stringQuanities(){
        var variant: Variant;
        var strTemp: String = '';
        for( i in 0...this.length ){
            var variant = this[ i ];
            str += variant.title + '( ' + variant.inventory_quantity + ' ),\n ';
        }
        return str;
    }
}