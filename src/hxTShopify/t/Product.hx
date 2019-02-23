package hxTShopify.t;
typedef Product = {
        var id:                   Int;
        var title:                String;
        var body_html:            String;  // new haxe xml?
        var vendor:               String;
        var product_type:         String;
        var created_at:           StringDate;
        var handle:               String;
        var updated_at:           StringDate;
        var published_at:         StringDate;
        var template_suffix:      Null<String>;
        var tags:                 Array<String>;         // abstract ArrayString
        var published_scope:      String;
        var admin_graphql_api_id: String;
        var variants:             Array<Variant>;
}
