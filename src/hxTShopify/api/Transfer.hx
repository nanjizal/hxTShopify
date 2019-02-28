package hxTShopify.api;
import hxTShopify.store.Shop;
import hxTShopify.api.Search;
import hxTShopify.t.Product;
import hxTShopify.api.Calls;
import hxTShopify.t.*;
import hxTShopify.connection.*;
class Transfer{
    public static function productsCreation(    from_:                  Shop
                                              , to_:                    Shop
                                              , productNames:           Array<String>
                                              , productTransformation:  Product->Product
                                              , variantTransformation:  (Variant,Variant)->Variant
                                              , loaded:                 ( Product, String )->Void
                                              , log:                    String->Void ){
        for( i in 0...productNames.length ){
            var nom = productNames[ i ];
            Transfer.productCreate(  from_, to_, '?title=$nom', productTransformation, variantTransformation, loaded, log );
        }
    }
    public static function productCreate( from_:                 Shop
                                        , to_:                   Shop
                                        , searchString:          String
                                        , productTransformation: Product->Product
                                        , variantTransformation: (Variant,Variant)->Variant
                                        , loaded:                ( Product, String )->Void
                                        , log:                   String->Void
                                         ){
        Search.log = log;
        Search.searchProducts( from_, searchString, 
        function( ps: Array<Product> ){
            // exit if no product or multiple product found
            if( ps.length != 1 ){
                if( ps.length == 0 || ps.length == null ){
                    log( 'error: no product found for: $searchString' );
                } else {
                    log( 'error: lots of products found for: $searchString + ( ${ps.length} )' );
                }
                return;
            }
            var https = new Https<ProductHolder>();
            https.onLoad = function( ps_: ProductHolder ){
                var p_: Product = ps_.product;
                loaded( p_, searchString );
            }
            https.onError              = ( e: String ) -> log( 'error loading $searchString $e' );
            var p                      = ps[ 0 ];
            var productClone: Product  = ProductCloner.withChanges( p, productTransformation, variantTransformation );
            var payload: ProductHolder = { product: productClone };
            https.post( to_.constructPath( PRODUCT )
                      , payload
                      , to_.getKeyPass() 
                      );
        });
    }
}