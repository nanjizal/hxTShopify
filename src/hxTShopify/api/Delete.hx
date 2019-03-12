package hxTShopify.api;
import hxTShopify.store.Shop;
import hxTShopify.api.Search;
import hxTShopify.t.Product;
import hxTShopify.api.Calls;
import hxTShopify.t.*;
import hxTShopify.connection.*;
// May need more testing
class Delete {
    public static var finished: Void->Void;
    public static function productsRemove( shop:          Shop
                                         , productNames:  Array<String>
                                         , log:           String->Void ){
        for( i in 0...productNames.length ){
            var nom = productNames[ i ];
            Delete.productDelete(  shop, '?title=$nom', log );
        }
    }
    public static function productDelete( shop:           Shop
                                        , searchString:   String
                                        , log:            String->Void
                                        ){
        Search.log = log;
        Search.searchProducts( shop, searchString, 
            function( ps: Array<Product> ){
                // exit if no product or multiple product found
                if( ps.length != 1 ){
                    if( ps.length == 0 || ps.length == null ){
                        log( 'error: no product found for: $searchString' );
                    } else {
                        var l = ps.length;
                        log( 'error: lots of products found for: $searchString + ( $l )' );
                    }
                    return;
                }
                
                var https = new Https<ProductHolder>();
                https.onLoad = function( ps_: ProductHolder ){
                    var p_: Product = ps_.product;
                    var id          = Std.string( p_.id );
                    var title       = p_.title;
                    https.delete( shop.constructItemPath( PRODUCT, id ), id, shop.getKeyPass() );
                    https.onError =  ( val: String ) -> { 
                        if( finished != null ) finished(); 
                        if( log != null ) log( 'error deleting $title, $id, $val' );
                    }
                    https.onDelete = ( val: String ) -> { 
                        if( finished != null ) finished(); 
                        if( log != null ) log( 'Deleted $title, $id, $val' );
                    }
                }
            }
        );
    }
}