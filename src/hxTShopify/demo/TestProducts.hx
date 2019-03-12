package hxTShopify.demo;
import hxTShopify.t.Product;
import hxTShopify.t.Variant ;
import hxTShopify.t.Option;
import hxTShopify.demo.*;
import hxTShopify.store.Shop;
class TestProducts{
    public static var log: String->Void;
    var testVariants: TestVariants;
    var shop: Shop;
    public function new( shop_: Shop ){
        shop = shop_;
        var testVariants = new TestVariants();
    }
    public function hat(){
        var images  = TestImages.create();
        var image   = TestImages.getImage( 0, 'hat' );
        var product = createTestProduct( 'hat', 
                            [ { size: size6,  color: Black,  quantity: 3 }
                            , { size: size8,  color: Yellow, quantity: 13 }
                            , { size: size10, color: Orange, quantity: 56 } ]
                            , 15.00
                            , 2.2
                            , [ 'hats' ]
                            , [ image ] );
        createProduct( shop, product );
    }
    public function tie(){
        var images  = TestImages.create();
        var image   = TestImages.getImage( 0, 'tie' );
        var product = createTestProduct( 'tie', 
                            [ { size: size24, color: Green,  quantity: 33 }
                            , { size: size14, color: Yellow, quantity: 24 }
                            , { size: size16, color: Orange, quantity: 19 } ]
                            , 16.00
                            , 2.2
                            , [ 'silk' ]
                            , [ image ] );
        createProduct( shops[0], product );
    }
    public function jumper(){
        var images  = TestImages.create();
        var image   = TestImages.getImage( 0, 'jumper' );
        var product = createTestProduct( 'jumper', 
                            [ { size: size10, color: Red,  quantity: 33 }
                            , { size: size12, color: White, quantity: 24 }
                            , { size: size22, color: Blue, quantity: 19 } ]
                            , 16.00
                            , 2.2
                            , [ 'tops','wool']
                            , [ image ] );
        createProduct( shops[0], product );
    }
    public function createProduct( shop: Shop, product: Product ){
        var https = new Https<ProductHolder>();
        https.onLoad = function( ps: ProductHolder ){
            var p: Product = ps.product;
            if( log != null ) log( 'loaded ' + Std.string( p ) );
        }
        https.onError = function( error: String ){
            if( log != null ) log( error );
        }
        var payload = { "product" : product }; 
        https.post( shop.constructPath( PRODUCT ), payload, shop.getKeyPass() );
    }
    public function createTestProduct(  title:          String
                                      , optionLight:    Array<OptionLight>
                                      , price:          Float
                                      , compareFactor:  Float
                                      , tags:           Array<String>
                                      , images:         Array<Image> ): Product {
        var product: Product =   
                        { title:            title
                        , body_html:        title
                        , vendor:           vendor
                        , product_type:     testVariant.productType  
                        , handle:           title
                        , tags:             tags
                        , published_scope:  testVariants.publishScope
                        , variants:         testVariants.create()
                        , options:          TestOptions.create()
                        , images:           images
                        , image:            images[ 0 ] }
        return product;
    }
}