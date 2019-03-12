package hxTShopify.api;
import hxTShopify.store.Shop;
import hxTShopify.t.*;
import hxTShopify.connection.*;
import hxTShopify.api.Calls;
class Search {
    public static var log: String->Void;
    public static function searchProducts( shop: Shop, searchString: String, cb: Array<Product>->Void ){
        var https = new Https<Products>();
        https.onError = function( val: String ){ 
            if( log != null ) log('error ' + val );
        }
        https.onLoad = function( ps: Products ){
            var p: Array<Product> = ps.products;
            if( log != null ) log('loaded ' + p.length );
            cb( p );
        }
        log( shop.constructPath( PRODUCT ) );
        https.get( shop.constructPath( PRODUCT, searchString ), shop.getKeyPass() );
    }
    public static function searchCustomers( shop: Shop, searchString: String, cb: Array<Customer>->Void ){
        var https = new Https<Customers>();
        https.onError = function( val: String ){ 
            if( log != null ) log('error ' + val );
        }
        https.onLoad = function( cs: Customers ){
            var c: Array<Customer> = cs.customers;
            if( log != null ) log('loaded ' + c.length );
            cb( c );
        }
        log( shop.constructPath( CUSTOMER ) );
        https.get( shop.constructPath( CUSTOMER, searchString ), shop.getKeyPass() );
    }
    public static function searchOrders( shop: Shop, searchString: String, cb: Array<Order>->Void ){
        var https = new Https<Orders>();
        https.onError = function( val: String ){ 
            if( log != null ) log('error ' + val );
        }
        https.onLoad = function( os: Orders ){
            var o: Array<Order> = os.orders;
            if( log != null ) log('loaded ' + o.length );
            cb( o );
        }
        log( shop.constructPath( ORDER ) );
        https.get( shop.constructPath( ORDER, searchString ), shop.getKeyPass() );
    }
}