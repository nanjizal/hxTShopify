package hxTShopify.t;
typedef Option = {
    @:optional var id: String;
    @:optional var product_id: String;
    var name:      String;
    @:optional var position:  String;
    var values:    Array<String>;
}
abstract OptionWrapper( Option ) to Option {
    public inline function new( op: Option ) {
        this = op;
        this.id = this.id + '';
        this.product_id = this.product_id + '';
    }
}
// macro solution might be nicer but not as easy to be flexible 
abstract OptionCloner( Option ) to Option {
    public inline function new( o: Option ){
        var l = o.values.length;
        var values_ = new Array<String>();
        for( i in 0...l ) values_[ i ] = o.values[ i ];
        this = { name:      o.name
               , position:  o.position
               , values:    values_
               };
    }
    @:from
    static inline public function fromOption( o: Option ) return new OptionCloner( o );
}