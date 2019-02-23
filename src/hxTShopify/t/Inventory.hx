package hxTShopify.t;
// inventory
typedef Tinventory = {
    var id:                     Int;
    var sku:                    String;
    var created_at:             StringDate;
    var updated_at:             StringDate;
    var requires_shipping:      Bool;
    var cost:                   Float;
    var tracked:                Bool;
    var admin_graphql_api_id:   String;
}