package hxTShopify.api;
import hxTShopify.store.Shop;
import hxTShopify.t.*;
import hxTShopify.connection.*;
import hxTShopify.api.Calls;

class ManyPages {
    public var shop:                        Shop;
    public var ordersLoadProgress:          Int -> Void;
    public var ordersLoaded:                Array<Order> -> Void;
    public var productsLoadProgress:        Int -> Void;
    public var productsLoaded:              Array<Product> -> Void;
    public var customersLoadProgress:       Int -> Void;
    public var customersLoaded:             Array<Customer> -> Void;
    public 
    function new( shop_: Shop ){
        shop = shop_;
        shop.screenLog = log;
    }
    /**
      // example use:
        var manyPages = new ManyPages( shop );
        manyPages.screenLog = screenLog;
        manyPages.productsLoadProgress = function( percent: Float ){
            screenLog( Std.string( percent ) + '%' );
        }
        manyPages.productsLoaded = function( products: Array<Product> ){
            var str: String = '';
            var product: Product;
            var variant: Variant;
            for( i in 0...products.length ){
                product = products[ i ];
                if( product.tags.indexOf( 'cool' ) != -1  || product.tags.indexOf( 'COOL' ) != -1 ){
                    str += product.title + ': ';
                    for( j in 0...product.variants.length ){
                        variant = product.variants[ j ];
                        str += variant.title + '( ' + variant.inventory_quantity + ' ), ';
                    }
                    str += '\n';
                }
            }
            str = str.substr( 0, str.length - 2 );
            screenLog( products.length );
            screenLog( str );
        }
        manyPages.getProducts();
    **/
    
    public
    function getProducts(){
        var path = shop.constructPath;
        var section = new SectionHttps<Product,Products> ( 
              ()                 -> path( PRODUCT_COUNT )
            , ( n:   Int )       -> path( PRODUCT, PRODUCT_PAGE + Std.string( n ) )
            , ( ps: Products )   -> ps.products
            , shop.getKeyPass()
            , productPageSize );
        section.onItemTotal = ( c: Int ) -> log( 'product total' + c );
        section.onPageTotal = ( t: Int ) -> log( 'product page total' + t );
        section.onPercent   = productsLoadProgress;
        section.onFinish    = productsLoaded;
        section.getSections();
    }
    public
    function getOrders(){
        var path = shop.constructPath;
        var section = new SectionHttps<Order,Orders> ( 
              ()               -> path( ORDER_COUNT )
            , ( n:   Int )     -> path( ORDER, ORDER_PAGE + Std.string( n ) )
            , ( os: Orders )   -> os.orders
            , shop.getKeyPass()
            , orderPageSize );
        section.onItemTotal = ( c: Int ) -> log( 'order total' + c );
        section.onPageTotal = ( t: Int ) -> log( 'order page total' + t );
        section.onPercent   = ordersLoadProgress;
        section.onFinish    = ordersLoaded;
        section.getSections();
    }
    public
    function getCustomers(){
        var path = shop.constructPath;
        var section = new SectionHttps<Customer,Customers> ( 
              ()                -> path( CUSTOMER_COUNT )
            , ( n:   Int )      -> path( CUSTOMER, CUSTOMER_PAGE + Std.string( n ) )
            , ( cs: Customers ) -> cs.customers
            , shop.getKeyPass()
            , customerPageSize );
        section.onItemTotal = ( c: Int ) -> log( 'customer total' + c );
        section.onPageTotal = ( t: Int ) -> log( 'customer page total' + t );
        section.onPercent   = customersLoadProgress;
        section.onFinish    = customersLoaded;
        section.getSections();
    }
    var allowLogs: Bool = false;
    public 
    var screenLog( default, set ): String -> Void;
    public
    function set_screenLog( screenLog_: String -> Void ){
        screenLog = screenLog_;
        allowLogs = true;
        return screenLog_;
    }
    public inline
    function log( data: String ){
        if( allowLogs ) screenLog( data );
    }
}