package hxTShopify.connection;
import haxe.Http;
import haxe.Json;
import js.html.XMLHttpRequest;
class Https<THolder> {
    public var onError:     String -> Void;
    public var onStatus:    Int -> Void;
    public var onLoad:      THolder -> Void;
    public var onDelete:    String -> Void;
    public function new(){}
    /**
     // example:
        var https = new Https<Products>();
        https.onLoad = function( ps: ProductHolder ){
            var p: Array<Product> = ps.products;
            screenLog( 'loaded ' + Std.string( p[0] ) );
        }
        ttps.get( shop.constructPath( PRODUCT ), shop.getKeyPass() );
    **/
    public function get( url: String, pass: String ) {
        var req: Http = new Http( url );
        req.addHeader( "Content-type", "application/json" );
        req.setHeader( 'Authorization', 'Basic $pass' );
        req.onError  = function( error: String ) if( onError != null  ) onError( error );
        req.onStatus = function( status: Int )   if( onStatus != null ) onStatus( status );
        req.onData   = function( data:   String ) {
            var holder: THolder = haxe.Json.parse( data );
            onLoad( holder );
        };
        req.request( false );
    }
    /**
     // example:
        var https = new Https<ProductHolder>();
        https.onLoad = function( ps: ProductHolder ){
            var p: Product = ps.product;
            screenLog( 'loaded ' + Std.string( p ) );
        }
        https.onError = function( error: String ) screenLog( error );
        var payload = {
            "product" :{
                "title": "Burton Custom Freestyle 151",
                "body_html": "<strong>Good snowboard!</strong>",
                "vendor": "Burton",
                "product_type": "Snowboard",
                "published": false
            }
        };
        https.post( shop.constructPath( PRODUCT ), payload, shop.getKeyPass() );
    **/
    public function post( url: String, payload: Dynamic, pass: String ) {
        var req: Http = new Http( url );
        req.setPostData( Json.stringify( payload ) ); 
        req.addHeader( "Content-type", "application/json" );
        req.setHeader( 'Authorization', 'Basic $pass' );
        req.onError  = function( error:  String ) if( onError != null )  onError( error );
        req.onStatus = function( status: Int )    if( onStatus != null ) onStatus( status );
        req.onData   = function( data:   String ) {
            var holder: THolder = haxe.Json.parse( data );
            onLoad( holder );
        };
        req.request( true );
    }
    /**
     // example:
        var https = new Https<ProductHolder>();
        https.onLoad = function( ps: ProductHolder ){
            var p: Product = ps.product;
            var id: String = Std.string( p.id );
            var payload = {
                "product": {
                "id": id,
                "title": 'Burton Custom Frestyle 151 updated'
              }
            };
            https.onLoad = function( ps: ProductHolder ){
                var p: Product = ps.product;
                screenLog( 'loaded ' + Std.string( p ) );
            }
            https.put( shop.constructItemPath( PRODUCT, id ), payload, shop.getKeyPass() );
        }
        https.onError = function( error: String ) screenLog( error );
        https.onDelete = function( id: String ) screenLog( 'deleted ' + id );
        var payload = {
            "product" :{
                "title": "Burton Custom Freestyle 151",
                "body_html": "<strong>Good snowboard!</strong>",
                "vendor": "Burton",
                "product_type": "Snowboard",
                "published": false
            }
        };
        https.post( shop.constructPath( PRODUCT ), payload, shop.getKeyPass() );
    **/
    public function put( url: String, payload: Dynamic, pass: String ){
        var http = new XMLHttpRequest();
        http.onreadystatechange = function(){
            if( http.readyState == 4 ){
                if( http.status == 200 ){
                    var holder: THolder = haxe.Json.parse( http.responseText );
                    onLoad( holder );
                } else {
                    onError( Std.string( http.status ) );
                }
            }
        }
        http.open( "PUT", url, true );
        http.withCredentials = true;
        http.setRequestHeader( "Content-type", "application/json" );
        http.setRequestHeader( 'Authorization', 'Basic $pass' );
        http.send( Json.stringify( payload ) );
    }
    /**
     // example:
        var https = new Https<ProductHolder>();
        https.onLoad = function( ps: ProductHolder ){
            var p: Product = ps.product;
            var id: String = Std.string( p.id );
            https.delete( shop.constructItemPath( PRODUCT, id ), id, shop.getKeyPass() );
        }
        https.onError = function( error: String ) screenLog( error );
        https.onDelete = function( id: String ) screenLog( 'deleted ' + id );
        var payload = {
            "product" :{
                "title": "Burton Custom Freestyle 151",
                "body_html": "<strong>Good snowboard!</strong>",
                "vendor": "Burton",
                "product_type": "Snowboard",
                "published": false
            }
        };
        https.post( shop.constructPath( PRODUCT ), payload, shop.getKeyPass() );
    **/
    public function delete( url: String, id: String, pass: String ){
        var http = new XMLHttpRequest();
        http.onreadystatechange = function(){
            if( http.readyState == 4 ){
                if( http.status == 200 ){
                    onDelete( id );
                } else {                    
                    onError( Std.string( http.status ) );
                }
            }
        }
        http.open( "DELETE", url, true );
        http.withCredentials = true;
        http.setRequestHeader( "Content-type", "application/json" );
        http.setRequestHeader( 'Authorization', 'Basic $pass' );
        http.send();
    }
}