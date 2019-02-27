package hxTShopify.api;
import hxTShopify.store.Shop;
import hxTShopify.api.Search;
import helpers.HomeFiles;
import hxTShopify.t.Product;
import hxTShopify.api.Calls;
import hxTShopify.t.*;
import hxTShopify.connection.*;
class Transfer{
    public static function productsCreation(    from_:        Shop
                                              , to_:          Shop
                                              , productNames: Array<String>
                                              , priceFactory: Float->Float
                                              , loaded:       Product->Void
                                              , log:    String->Void ){
        for( i in 0...productNames.length ){
            var nom = productNames[ i ];
            Transfer.productCreate(  from_, to_, '?title=$nom', priceFactory, loaded, log );
        }
    }
    public static function productCreate( from_:        Shop
                                        , to_:          Shop
                                        , searchString: String
                                        , priceFactory: Float->Float
                                        , loaded:       Product->Void
                                        , log:    String->Void
                                         ){
        Search.log = log;
        Search.searchProducts( from_, searchString, 
        function( ps: Array<Product> ){
            // exit if no product or multiple product found
            if( ps.length != 1 ){
                if( ps.length == 0 || ps.length == null ){
                    log( 'error: no product found for: $searchString' );
                } else {
                    log( 'error: lots of products found for: $searchString + (${ps.length))' );
                }
                return;
            }
            var https = new Https<ProductHolder>();
            https.onLoad = function( ps_: ProductHolder ){
                var p_: Product = ps_.product;
                loaded( p_ );
            }
            https.onError              = ( e: String ) -> log( 'error loading $searchString $e' );
            var p                      = ps[ 0 ];
            var v                      = p.variants[ 0 ];
            var newPrice               = priceFactory( v.price );
            var productClone: Product  = ProductCloner.withNewPrice( p, newPrice );
            var payload: ProductHolder = { product: productClone };
            https.post( to_.constructPath( PRODUCT )
                      , payload
                      , to_.getKeyPass() 
                      );
        });
    }
}
