package hxTShopify.connection;
import hxTShopify.connection.HttpJs; // including CustomRequest
class WebJson {
    public 
    var screenLog( default, set ): String -> Void;
    var logGET = true;
        // log to page details don't set if you don't need logging.
    var allowLogs: Bool = true;
    public
    function new(){}
    public
    function Update( url_: String, data: String, onData_: String -> Void, ?extra: Null<String> = null ){
        var req = createRequest( url_, onData_, extra );
        req.setPostData( data );
        req.request_( PUT );
    }
    public
    function Delete( url_: String, onData_: String -> Void, ?extra: Null<String> = null ){
        var req = createRequest( url_, onData_, extra );
        req.request_( DELETE );
    }
    public
    function Create( url_: String, data: String, onData_: String -> Void, ?extra: Null<String> = null ){
        var req = createRequest( url_, onData_, extra );
        req.setPostData( data );
        log( 'created req ');
        req.request( true );
    }
    
    public
    function Get( url_: String, onData_: String -> Void, ?extra: Null<String> = null ){
        var req = createRequest( url_, onData_, extra );
        req.request( false );
    }
        
    public inline
    function createRequest( url_: String, onData_: String -> Void, ?extra: Null<String> = null ) {
        var req = ( extra == null )? new HttpJs( url_ ): new HttpJs( url_ + extra );
        var urlEnd = url_.split('admin')[ 1 ];
        var onData = onData_;
        //req.addHeader( "Content-type", "application/json" );
        req.onError = function( error: String ) {
            if( logGET ) log( urlEnd +' error ' + error );
            throw error;
        };
        req.onStatus = function( status: Int ) {
            if( logGET ) log( urlEnd + ' status ' + status );
        }
        req.onData = function( data: String ){
            if( logGET ) log( urlEnd + ' loaded ' + data );
            onData( data );
        }
        return req;
    }
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