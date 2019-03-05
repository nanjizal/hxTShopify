package hxTShopify.t;
import hxTShopify.t.Option;
// used as a helper for working with Options
@:forward
abstract ArrayOption( Array<Option> ) to Array<Option> {
    public inline function new( ?options: Null<Array<Option>> ){
        this = ( options == null )? empty(): options;
    }
    static inline function empty(){
        return new Array<Option>();
    }
    // Color?
    public function notNumbers( ){
        var option: Option;
        var arr = new Array<String>();
        for( j in 0...this.length ){
            var option = this[ j ];
            var op: Array<String> = option.values;
            for( k in 0...op.length ){ 
                var notNumber: Bool = Math.isNaN( Std.parseFloat( op[ k ] ) );
                if( notNumber ){
                    var anOption = op[k].toLowerCase();
                    if( arr.indexOf( anOption ) == -1 ){
                        arr[ arr.length ] = anOption;
                    }
                } else {
                    break;
                }
            }
        }
        return arr;
    }
    // Size?
    public function isNumbers( ){
        var option: Option;
        var arr = new Array<Float>();
        var no: Float;
        for( j in 0...this.length ){
            var option = this[ j ];
            var op: Array<String> = option.values;
            for( k in 0...op.length ){ 
                no = Std.parseFloat( op[ k ] );
                var notNumber: Bool = Math.isNaN( no );
                if( notNumber ){
                    if( arr.indexOf( no ) == -1 ){
                        arr[ arr.length ] = no;
                    }
                } else {
                    break;
                }
            }
        }
        return arr;
    }
}