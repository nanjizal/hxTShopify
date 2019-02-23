package hxTShopify.api;
import hxTShopify.store.Shop;
import hxTShopify.t.*;
import hxTShopify.connection.*;
import hxTShopify.api.Calls;

class Explore {
    var webJson = new WebJson();
    public var shop:                        Shop;
    public var ordersLoadProgress:          Int -> Void;
    public var ordersLoaded:                Array<Order> -> Void;
    public var productsLoadProgress:        Int -> Void;
    public var productsLoaded:              Array<Product> -> Void;
    public var customersLoadProgress:       Int -> Void;
    public var customersLoaded:             Array<Customer> -> Void;
    // test
    public function createProduct(){
        var data = '{
          "product": {
            "title": "Burton Custom Freestyle 151",
            "body_html": "<strong>Good snowboard!</strong>",
            "vendor": "Burton",
            "product_type": "Snowboard",
            "tags": "Barnes & Noble, Johns Fav, Big Air"
          }
        }';
        log(' creating product ' + data );
        webJson.screenLog = log;
        webJson.Create( shop.constructPath( PRODUCT )
                      , data
                      , function( data_: String ){
                           var productHolder: ProductHolder = haxe.Json.parse( data_ );
                           var product:   Product  = productHolder.product;
                           log( Std.string( product ) );
                        }
                      );
    }
    /*
    public function deleteProduct( id: String ){
        webJson.Delete( shop.constructItemPath( PRODUCT, id )
                      , function( data: String ){
                           log( Std.string( data ) );
                       }
                      );
    }
    public function updateProduct( id: String, data: String ){
        webJson.Update( shop.constructItemPath( PRODUCT, id )
                      , data
                      , function( data_: String ){
                           log( Std.string( data_ ) );
                        }
                      );
    }
    */
    public 
    function new( shop_: Shop ){
        shop = shop_;
        shop.screenLog = log;
    }
    public function arrayCall( call: CallStrings ){
        var call_ = call;
        var onData = function( data: String ){
            log('loaded ' + data );
            switch( call_ ){
                case BALANCE:
                    var balanceHolder: Balance = haxe.Json.parse( data );
                    var balances: Array<BalanceDetail> = balanceHolder.balance;
                    log( Std.string( balances[0] ) );
                case DISPUTES:
                    var disputesHolder: Disputes = haxe.Json.parse( data );
                    var disputes:  Array<Dispute> = disputesHolder.disputes;
                    for( d in disputes ){
                        log( Std.string( d ) );
                    }
                case PAYOUTS:
                    var payoutsHolder: Payouts = haxe.Json.parse( data );
                    var payouts:  Array<Payout> = payoutsHolder.payouts;
                    log( payouts.toString() );
                case ACCESS_SCOPE:
                    
                case STORE_FRONT_ACCESS:
                    var tokensHolder: Tokens = haxe.Json.parse( data );
                    var tokens:  Array<Token> = tokensHolder.storefront_access_tokens;
                    for( t in tokens ){
                        log( Std.string( t ) );
                    }
                    //log( tokens.toString() );
                //case APPLICATION_CHARGES:
                    //
                //case APPLICATION_CREDIT:
                    //
                case CHARGES:
                    var chargesHolder: Charges = haxe.Json.parse( data );
                    var charges: Array<Charge> = chargesHolder.application_charges;
                    for( c in charges ){
                        log( Std.string( c ) );
                    }
                case CURRENCY:
                    var currencysHolder: Currencys = haxe.Json.parse( data );
                    var currencys: Array<Currency> = currencysHolder.currencies;
                    for( c in currencys ){
                        log( Std.string( c ) );
                    }
                case _:
                    
            }
        }
        webJson.screenLog = log;
        webJson.Get( shop.constructPath( call )
                       , onData
                       );
    }
    public
    function getProductPage( no: Int ){
        var path = shop.constructPath;
        var section = new Section<Product,Products> ( 
              ()                 -> path( PRODUCT_COUNT )
            , ( n:   Int )       -> path( PRODUCT, PRODUCT_PAGE + Std.string( n ) )
            , ( ps: Products )   -> ps.products
            , productPageSize );
        section.screenLog   = log;
        section.onLoaded    = productsLoaded;
        section.getPage( no );
    }
    public
    function getOrderPage( no: Int ){
        var path = shop.constructPath;
        var section = new Section<Order,Orders> ( 
              ()               -> path( ORDER_COUNT )
            , ( n:   Int )     -> path( ORDER, ORDER_PAGE + Std.string( n ) )
            , ( os: Orders )   -> os.orders
            , orderPageSize );
        section.screenLog   = log;
        section.onLoaded    = ordersLoaded;
        section.getPage( no );
    }
    public 
    function getCustomerPage( no: Int ){
        var path = shop.constructPath;
        var section = new Section<Customer,Customers> ( 
              ()                -> path( CUSTOMER_COUNT )
            , ( n:   Int )      -> path( CUSTOMER, CUSTOMER_PAGE + Std.string( n ) )
            , ( cs: Customers ) -> cs.customers
            , customerPageSize );
        section.onLoaded    = customersLoaded;
        section.getPage( no );
    }
    public
    function getProducts(){
        var path = shop.constructPath;
        var section = new Section<Product,Products> ( 
              ()                 -> path( PRODUCT_COUNT )
            , ( n:   Int )       -> path( PRODUCT, PRODUCT_PAGE + Std.string( n ) )
            , ( ps: Products )   -> ps.products
            , productPageSize );
        section.screenLog   = log;
        section.onItemTotal = ( c: Int ) -> log( 'product total' + c );
        section.onPageTotal = ( t: Int ) -> log( 'product page total' + t );
        section.onPercent   = productsLoadProgress;
        section.onLoaded    = productsLoaded;
        section.getSections();
    }
    public
    function getOrders(){
        var path = shop.constructPath;
        var section = new Section<Order,Orders> ( 
              ()               -> path( ORDER_COUNT )
            , ( n:   Int )     -> path( ORDER, ORDER_PAGE + Std.string( n ) )
            , ( os: Orders )   -> os.orders
            , orderPageSize );
        section.screenLog   = log;
        section.onItemTotal = ( c: Int ) -> log( 'order total' + c );
        section.onPageTotal = ( t: Int ) -> log( 'order page total' + t );
        section.onPercent   = ordersLoadProgress;
        section.onLoaded    = ordersLoaded;
        section.getSections();
    }
    public
    function getCustomers(){
        var path = shop.constructPath;
        var section = new Section<Customer,Customers> ( 
              ()                -> path( CUSTOMER_COUNT )
            , ( n:   Int )      -> path( CUSTOMER, CUSTOMER_PAGE + Std.string( n ) )
            , ( cs: Customers ) -> cs.customers
            , customerPageSize );
        section.screenLog   = log;
        section.onItemTotal = ( c: Int ) -> log( 'customer total' + c );
        section.onPageTotal = ( t: Int ) -> log( 'customer page total' + t );
        section.onPercent   = customersLoadProgress;
        section.onLoaded    = customersLoaded;
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