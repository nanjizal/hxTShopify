package hxTShopify.api;
import hxTShopify.store.Shop;
import hxTShopify.api.Search;
import hxTShopify.t.Product;
import hxTShopify.api.Calls;
import hxTShopify.connection.Https;
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
            function( ps_: Array<Product> ){
                // exit if no product or multiple product found
                if( ps_.length != 1 ){
                    if( ps_.length == 0 || ps_.length == null ){
                        if( finished != null ) finished();
                        log( 'error: no product found for: $searchString' );
                    } else {
                        var l = ps_.length;
                        if( finished != null ) finished(); 
                        log( 'error: lots of products found for: $searchString + ( $l )' );
                    }
                    return;
                }
                var p_ = ps_[0];
                var https = new Https<ProductHolder>();
                //https.onLoad = function( ps_: ProductHolder ){
                    //var p_: Product = ps_.product;
                    var id          = Std.string( p_.id );
                    var title       = p_.title;
                    if( log != null ) log( 'deleting ' + shop.constructItemPath( PRODUCT, id ) );
                    https.delete( shop.constructItemPath( PRODUCT, id ), id, shop.getKeyPass() );
                    https.onError =  ( val: String ) -> { 
                        if( finished != null ) finished(); 
                        if( log != null ) log( 'error deleting $title, $id, $val' );
                    }
                    https.onDelete = ( val: String ) -> { 
                        if( finished != null ) finished(); 
                        if( log != null ) log( 'Deleted $title, $id, $val' );
                    }
                    //}
            }
        );
    }
}