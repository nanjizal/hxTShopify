package hxTShopify.t;
import hxTShopify.t.*;

typedef MetaField = { 
    @:optional var id:            String;
    var key:           String;
    @:optional var created_at:    StringDate;
    @:optional var updated_at:    StringDate;
    var namespace:     String;
    @:optional var description:   String;
    @:optional var owner_id:      String; // String in case too big for hxBit
    @:optional var owner_resource:String;
    var value:                    String; // may not be string see value_type
    var value_type:               String;
    @:optional: var admin_graphql_api_id: String;
}
