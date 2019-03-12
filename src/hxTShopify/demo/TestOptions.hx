package hxTShopify.demo;
import hxTShopify.demo.TestOptions;
import hxTShopify.t.Option;
@:enum
abstract TestColors( Int ) to Int from Int {
    var VIOLET      = 0x9400D3;
    var INDIGO      = 0x4B0082;
    var BLUE        = 0x0000FF;
    var GREEN       = 0x00FF00;
    var YELLOW      = 0xFFFF00;
    var ORANGE      = 0xFF7F00;
    var RED         = 0xFF0000;
    var BLACK       = 0x000000;
    var LIGHTGREY   = 0x444444;
    var MIDGREY     = 0x333333;
    var DARKGREY    = 0x0C0C0C;
    var NEARLYBLACK = 0x111111;
    var WHITE       = 0xFFFFFF;
}
@:enum
abstract UkSizes( String ) to String from String {
    var size6  = 'size 6';
    var size8  = 'size 8';
    var size10 = 'size 10';
    var size12 = 'size 12';
    var size14 = 'size 14';
    var size16 = 'size 16';
    var size18 = 'size 18';
    var size20 = 'size 20';
    var size22 = 'size 22';
    var size24 = 'size 24';
    var size26 = 'size 26';
}
@:enum
abstract ColorNames( String ) to String from String {
    var Violet;
    var Indigo;
    var Blue;
    var Green;
    var Yellow;
    var Orange;
    var Red;
    var Black;
    var LightGrey;
    var MidGrey;
    var DarkGrey;
    var NearlyBlack;
    var White;
}
typedef OptionLight = {
    var size:       UkSizes;
    var color:      ColorNames;
    var quantity:   Int;
}
class TestOptions {
    // Debenhams standard sizes
    public static 
    var ukSizes( get, null ): Array<UkSizes>;
    public static inline
    function get_ukSizes():Array<UkSizes> {
        return [  size6
                , size8
                , size10
                , size12
                , size14
                , size16
                , size18
                , size20
                , size22
                , size24
                , size26
                ];
    }
    public static 
    var approxSizes( get, null ): Array<String>;
    public static inline
    function get_approxSizes():Array<String>{
        return  [ 'XS'
                , 'S'
                , 'M'
                , 'L'
                , 'XL'
                , 'XXL'
                ];
    } 
    public static function convertToApprox( size: UkSizes ){
        return switch( size ){
            case size6:
                'XS';
            case size8:
                'S';
            case size10:
                'S';
            case size12:
                'M';
            case size14:
                'M';
            case size16:
                'L';
            case size18:
                'L';
            case size20:
                'XL';
            case size22:
                'XL';
            case size24:
                'XXL';
            case size26:
                'XXL';
            default:
                'M';
        }
    }
    public static 
    var testColors( get, null ): Array<ColorNames>;
    public static inline
    function get_testColors(): Array<ColorNames> {
        return [    Violet
                ,   Indigo
                ,   Blue
                ,   Green
                ,   Yellow
                ,   Orange
                ,   Red
                ,   Black
                ,   LightGrey
                ,   MidGrey
                ,   DarkGrey
                ,   NearlyBlack
                ,   White
        ];
    }
    public static function testColorToInt( str: ColorNames ): TestColors {
        return switch( str ){
                    case Violet:
                        VIOLET;
                    case Indigo:
                        INDIGO;
                    case Blue:
                        BLUE;
                    case Green:
                        GREEN;
                    case Yellow:
                        YELLOW;
                    case Orange:
                        ORANGE;
                    case Red:
                        RED;
                    case Black:
                        BLACK;
                    case LightGrey:
                        LIGHTGREY;
                    case MidGrey:
                        MIDGREY;
                    case DarkGrey:
                        DARKGREY;
                    case NearlyBlack:
                        NEARLYBLACK;
                    case White:
                        WHITE;
        }
    }
    public static function create( useUkSizes: Bool = true ): Array<Option> {
        var option0: Option;
        // not sure if this is required
        var ukSizes2 = new Array<String>();
        for( i in 0...ukSizes.length ){
            var uk: String = ukSizes[i];
            ukSizes2.push( uk );
        }
        if( useUkSizes ){
            option0 = { name:'Sizes', position: '1', values: ukSizes2 }
        } else {
            option0 = { name:'Sizes', position: '1', values: approxSizes }
        }
        var testColors2 = new Array<String>();
        // not sure if this is required
        for( i in 0...testColors.length ){
            var c: String = testColors[i];
            testColors2.push( c );
        }
        var option1: Option = { name:'Colors', position: '2', values: testColors2 }
        return [ option0, option1 ];
    }
}