package hxTShopify.t;
import hxTShopify.t.Product;
import hxbit.Serializable;
class ProductSerializer implements hxbit.Serializable {
    @:s public var product : Product;
    public function new( product_ ){
        product = ( product_: ProductWrapper );
    }
}