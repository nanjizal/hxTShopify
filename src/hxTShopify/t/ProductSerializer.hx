package hxTShopify.t;
//#if( !doc_gen )
import hxTShopify.t.Product;
import hxbit.Serializable;

class ProductSerializer implements hxbit.Serializable {
    @:s public var product : Product;
    public function new( product_ ){
        product = ( product_: ProductWrapper );
    }
    public static function product2Bytes( p: Product ): haxe.io.Bytes {
        var productSerializer = new ProductSerializer( new ProductWrapper( p ) );// important make sure id's are String
        var s = new hxbit.Serializer();
        var bytesOut = s.serialize( productSerializer );
        return bytesOut;
    }
    public static function bytes2Product( bytesIn: haxe.io.Bytes ): Product {
        var u = new hxbit.Serializer();
        var productSerializerOut = u.unserialize( bytesIn, ProductSerializer );
        return productSerializerOut.product;
    }
}
//#end