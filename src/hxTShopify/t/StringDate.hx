package hxTShopify.t;
@:forward
abstract StringDate( String ) from String to String {
    public inline function new( s: String ){
        this = s;
    }
    @:to
    inline public function toShopifyDate(): ShopifyDate {
        var sd = this;
        return sd;
    }
    @:to
    inline public function toDate(): Date {
        var sd: ShopifyDate = this;
        var d: Date = sd;
        return d;
    }
    inline public function getEnglishDate(): String {
        return DateTools.format( toDate(), "%m / %b / %Y");
    }
}