package hxTShopify.t;
@:forward
abstract ShopifyDate( Date ) from Date to Date {
    public inline function new( d: Date ){
        this = d;
    }
    @:from
    static public function fromString(s:String): ShopifyDate {
        //  typical format seems to be.. "2018-06-07T13:44:42+01:00" 
        var count = 0;
        var y = parseInt( s.substr( count, 4 ) );
        count += 4+1;
        var m = parseInt( s.substr( count, 2 ) );
        count += 2+1;
        var d = parseInt( s.substr( count, 2 ) );
        count += 2+1;
        var h = parseInt( s.substr( count, 2 ) );
        count += 2+1;
        var min = parseInt( s.substr( count, 2 ) );
        count += 2+1;
        var dh = parseInt( s.substr( count, 2 ) );
        count += 2+1;
        var dm = parseInt( s.substr( count, 2 ) );
        return new ShopifyDate( new Date( y, m-1, d, h-dh, min-dm, 0 ) );
    }
    public static function parseInt(str:String):Int{
        #if js
            str = ~/^0+(\d)/.replace(str, '$1');
            return untyped return __js__('parseInt')(str);
        #else
            return Std.parseInt( str );
        #end
    }
}