package hxTShopify.store;
import hxTShopify.store.IStore;
class Shop {
    public var screenLog: String -> Void;
    var apiKey:           String;
    var password:         String;
    public var name:      String;
    // not used yet but maybe with post commands to get pages.
    public
    function constructItemPathWithHash( path_: String, resource_: String, ?extra_: String ): String {
        var path        = path_;
        var resource    = resource_ '#' + resource_;
        var out: String = 'https://$apiKey:$password@$name.myshopify.com/admin/$path/$resource.json';
        if( extra_ != null ) out = out + extra_;
        return out;
    }
    // used with DELETE and PUT
    public
    function constructItemPath( path_: String, resource_: String, ?extra_: String ): String {
        var path        = path_;
        var resource    = resource_;
        var out: String = 'https://$apiKey:$password@$name.myshopify.com/admin/$path/$resource.json';
        if( extra_ != null ) out = out + extra_;
        return out;
    }
    // used with GET and POST
    public
    function constructPath( resource_: String, ?extra_: String ): String {
        var resource = resource_;
        var out: String = 'https://$apiKey:$password@$name.myshopify.com/admin/$resource.json';
        if( extra_ != null ) out = out + extra_;
        return out;
    }
    // needed for non GET calls
    public function getKeyPass(){
        return haxe.crypto.Base64.encode(haxe.io.Bytes.ofString('$apiKey:$password'));
    }
    public
    function new( store_: IStore ){
        apiKey   = store_.apiKey;
        password = store_.password;
        name     = store_.name;
    }
}