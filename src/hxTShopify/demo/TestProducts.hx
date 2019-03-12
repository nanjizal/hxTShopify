package hxTShopify.demo;
import hxTShopify.t.Product;
import hxTShopify.t.Variant ;
import hxTShopify.t.Option;
import hxTShopify.demo.*;
import hxTShopify.demo.TestOptions;
import hxTShopify.store.Shop;
import hxTShopify.t.Image;
import hxTShopify.t.*;
import hxTShopify.connection.*;
import hxTShopify.connection.Https;
import hxTShopify.api.Calls;
class TestProducts{
    public static var log: String->Void;
    var testVariants: TestVariants;
    var shop: Shop;
    var imageColors = [ 'black','violet', 'indigo', 'blue', 'green', 'yellow', 'orange', 'red', 'black', 'lightGrey', 'mediumGrey','darkGrey','white' ];
    public function new( shop_: Shop ){
        shop = shop_;
        testVariants = new TestVariants();
    }
    public function hat(){
        var images = new Array<Image>();
        for( i in 0...imageColors.length ) images[ i ] = TestImages.getImage( i, imageColors[ i ], 'Hat' );
        var product = createTestProduct( 'hat', 
                            [ { size: size6,  color: Black,  quantity: 3 }
                            , { size: size8,  color: Yellow, quantity: 13 }
                            , { size: size10, color: Orange, quantity: 56 } ]
                            , 15.00
                            , 2.2
                            , [ 'hats' ]
                            , images );
        createProduct( shop, product );
    }
    public function tie(){
        var images = new Array<Image>();
        for( i in 0...imageColors.length ) images[ i ] = TestImages.getImage( i, imageColors[ i ], 'Tie' );
        var product = createTestProduct( 'tie', 
                            [ { size: size24, color: Green,  quantity: 33 }
                            , { size: size14, color: Yellow, quantity: 24 }
                            , { size: size16, color: Orange, quantity: 19 } ]
                            , 14.00
                            , 2.2
                            , [ 'silk' ]
                            , images );
        createProduct( shop, product );
    }
    public function jumper(){
        var images = new Array<Image>();
        for( i in 0...imageColors.length ) images[ i ] = TestImages.getImage( i, imageColors[ i ], 'Jumper' );
        var product = createTestProduct( 'jumper', 
                            [ { size: size10, color: Red,  quantity: 33 }
                            , { size: size12, color: White, quantity: 24 }
                            , { size: size22, color: Blue, quantity: 19 } ]
                            , 16.00
                            , 2.2
                            , [ 'tops','wool']
                            , images );
        createProduct( shop, product );
    }
    public function pants(){
        var images = new Array<Image>();
        for( i in 0...imageColors.length ) images[ i ] = TestImages.getImage( i, imageColors[ i ], 'Pants' );
        var product = createTestProduct( 'pants', 
                            [ { size: size10, color: Red,  quantity: 33 }
                            , { size: size12, color: White, quantity: 24 }
                            , { size: size22, color: Blue, quantity: 19 } ]
                            , 16.00
                            , 2.2
                            , [ 'underwear','cotton']
                            , images );
        createProduct( shop, product );
    }
    public function sock(){
        var images = new Array<Image>();
        for( i in 0...imageColors.length ) images[ i ] = TestImages.getImage( i, imageColors[ i ], 'Sock' );
        var product = createTestProduct( 'sock', 
                            [ { size: size10, color: Red,  quantity: 33 }
                            , { size: size12, color: White, quantity: 24 }
                            , { size: size22, color: Blue, quantity: 19 } ]
                            , 16.00
                            , 2.2
                            , [ 'underwear','cotton']
                            , images );
        createProduct( shop, product );
    }
    public function skirt(){
        var images = new Array<Image>();
        for( i in 0...imageColors.length ) images[ i ] = TestImages.getImage( i, imageColors[ i ], 'Skirt' );
        var product = createTestProduct( 'skirt', 
                            [ { size: size10, color: Red,  quantity: 33 }
                            , { size: size12, color: White, quantity: 24 }
                            , { size: size22, color: Blue, quantity: 19 } 
                            , { size: size22, color: Green, quantity: 19 } ]
                            , 16.00
                            , 2.2
                            , [ 'dresses','bottoms']
                            , images );
        createProduct( shop, product );
    }
    public function trousers(){
        var images = new Array<Image>();
        for( i in 0...imageColors.length ) images[ i ] = TestImages.getImage( i, imageColors[ i ], 'Trousers' );
        var product = createTestProduct( 'trousers', 
                            [ { size: size10, color: Red,  quantity: 33 }
                            , { size: size12, color: White, quantity: 24 }
                            , { size: size22, color: Blue, quantity: 19 } 
                            , { size: size22, color: Green, quantity: 19 } ]
                            , 16.00
                            , 2.2
                            , [ 'bottoms']
                            , images );
        createProduct( shop, product );
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
                        , vendor:           testVariants.vendor
                        , product_type:     testVariants.productType  
                        , handle:           title
                        , tags:             tags
                        , published_scope:  testVariants.publishScope
                        , variants:         testVariants.create( optionLight, price, compareFactor )
                        , options:          TestOptions.create()
                        , images:           images
                        , image:            images[ 0 ] }
        return product;
    }
}