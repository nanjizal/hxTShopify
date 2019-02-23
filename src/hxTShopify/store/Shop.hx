package hxTShopify.store;
import hxTShopify.store.IStore;
class Shop {
    public var screenLog: String -> Void;
    var apiKey:           String;
    var password:         String;
    public var name:      String;
    public
    function constructItemPath( path_: String, resource_: String, ?extra_: String ): String {
        var path        = path_;
        var resource    = '#' + resource_;
        var out: String = 'https://$apiKey:$password@$name.myshopify.com/admin/$path/$resource.json';
        if( extra_ != null ) out = out + extra_;
        return out;
    }
    public
    function constructPath( resource_: String, ?extra_: String ): String {
        var resource = resource_;
        var out: String = 'https://$apiKey:$password@$name.myshopify.com/admin/$resource.json';
        if( extra_ != null ) out = out + extra_;
        return out;
    }
    public
    function new( store_: IStore ){
        apiKey   = store_.apiKey;
        password = store_.password;
        name     = store_.name;
    }
}