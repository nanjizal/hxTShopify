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
import hxTShopify.api.Delete;
import hxTShopify.api.Transfer;
class TestProducts{
    public static var log: String->Void;
    var testVariants: TestVariants;
    public var onLoad: String->Void;
    var shop: Shop;
    var imageColors = [ 'violet', 'black'
                      , 'indigo',    'blue'
                      , 'green',     'yellow'
                      , 'orange',    'red'
                      , 'lightGrey', 'mediumGrey'
                      , 'darkGrey',  'white' ];
    public function new( shop_: Shop ){
        shop = shop_;
        testVariants = new TestVariants();
    }
    public function deleteHat(){
        Delete.productDelete( shop, '?title=$hat', log );
    }
    public function moveHat( targetShop: Shop ){
        moveProduct( targetShop, 'hat' );
    }
    public function hat(){
        var images = new Array<Image>();
        for( i in 0...imageColors.length ) images[ i ] = TestImages.getImage( i, imageColors[ i ], 'Hat' );
        images.push( TestImages.getImage( images.length, 'greenViolet','Hat') );
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
    public function deleteTie(){
        Delete.productDelete( shop, '?title=$tie', log );
    }
    public function moveTie( targetShop: Shop ){
        moveProduct( targetShop, 'tie' );
    }
    public function tie(){
        var images = new Array<Image>();
        for( i in 0...imageColors.length ) images[ i ] = TestImages.getImage( i, imageColors[ i ], 'Tie' );
        images.push( TestImages.getImage( images.length, 'giraffe','Hat') );
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
    public function deleteJumper(){
        Delete.productDelete( shop, '?title=$jumper', log );
    }
    public function moveJumper( targetShop: Shop ){
        moveProduct( targetShop, 'jumper' );
    }
    public function jumper(){
        var images = new Array<Image>();
        for( i in 0...imageColors.length ) images[ i ] = TestImages.getImage( i, imageColors[ i ], 'Jumper' );
        images.push( TestImages.getImage( images.length, 'lightPlumAndGreen','Jumper') );
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
    public function deletePants(){
        Delete.productDelete( shop, '?title=$pants', log );
    }
    public function movePants( targetShop: Shop ){
        moveProduct( targetShop, 'pants' );
    }
    public function pants(){
        var images = new Array<Image>();
        for( i in 0...imageColors.length ) images[ i ] = TestImages.getImage( i, imageColors[ i ], 'Pants' );
        images.push( TestImages.getImage( images.length, 'oliveOrange','Pants') );
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
    public function deleteSock(){
        Delete.productDelete( shop, '?title=$sock', log );
    }
    public function moveSock( targetShop: Shop ){
        moveProduct( targetShop, 'sock' );
    }
    public function sock(){
        var images = new Array<Image>();
        for( i in 0...imageColors.length ) images[ i ] = TestImages.getImage( i, imageColors[ i ], 'Sock' );
        images.push( TestImages.getImage( images.length, 'babyYellowBlue','Pants') );
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
    public function deleteSkirt(){
        Delete.productDelete( shop, '?title=$skirt', log );
    }
    public function moveSkirt( targetShop: Shop ){
        moveProduct( targetShop, 'skirt' );
    }
    public function skirt(){
        var images = new Array<Image>();
        for( i in 0...imageColors.length ) images[ i ] = TestImages.getImage( i, imageColors[ i ], 'Skirt' );
        images.push( TestImages.getImage( images.length, 'pinkAndMauve','Pants') );
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
    public function deleteTrousers(){
        Delete.productDelete( shop, '?title=$trousers', log );
    }
    public function moveTrousers( targetShop: Shop ){
        moveProduct( targetShop, 'trousers' );
    }
    public function trousers(){
        var images = new Array<Image>();
        for( i in 0...imageColors.length ) images[ i ] = TestImages.getImage( i, imageColors[ i ], 'Trousers' );
        images.push( TestImages.getImage( images.length, 'denim','Pants') );
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
    public var loadCount = 0;
    public function createProduct( shop: Shop, product: Product ){
        var https = new Https<ProductHolder>();
        https.onLoad = function( ps: ProductHolder ){
            var p: Product = ps.product;
            if( log != null ) log( 'loaded ' + Std.string( p.title ) );
            loadCount++;
            if( onLoad != null ) onLoad( product.title );
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
    // simulates going from wholesale to retail shop.
    public function moveProduct( targetShop: Shop, searchString: String ){
        Transfer.productCreate( shop, targetShop, '?title=$searchString'
                              , ( p_: Product ) -> return p_
                              , ( v0: Variant, v1: Variant ) -> {
                                        var price = v0.price;
                                        v1.price                = Math.round( price*1.3 );
                                        v1.compare_at_price     = price*(2*1.3);
                                        return v1;
                                    }
                              , ( p_: Product, searchString: String ) -> log( 'created' + searchString )
                              , log );
    }
    
}