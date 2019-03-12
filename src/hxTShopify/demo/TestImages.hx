package hxTShopify.demo;
import hxTShopify.t.Image;
import hxTShopify.demo.TestOptions;
enum abstract TestPictures ( String ) to String from String {
    var babyYellowBlueSock;
    var blackDress;
    var blackHat;
    var blackJumper;
    var blackPants;
    var blackSock;
    var blackTie;
    var blackTrousers;
    var blueHat;
    var blueJumper;
    var bluePants;
    var blueSkirt;
    var blueSock;
    var blueTie;
    var blueTrousers;
    var darkGrayHat;
    var darkGrayJumper;
    var darkGreyPants;
    var darkGreyPinkSock;
    var darkGreySkirt;
    var darkGreySock;
    var darkGreyTie;
    var darkGreyTrousers;
    var darkPurpleJumper;
    var denimTrousers;
    var giraffeTie;
    var greenHat;
    var greenJumper;
    var greenPants;
    var greenSkirt;
    var greenSock;
    var greenTie;
    var greenTrousers;
    var greenVioletHat;
    var greenyTie;
    var indigoHat;
    var indigoJumper;
    var indigoPants;
    var indigoSkirt;
    var indigoSock;
    var indigoTie;
    var indigoTrousers;
    var lightGreyHat;
    var lightGreyJumper;
    var lightGreyPants;
    var lightGreySkirt;
    var lightGreySock;
    var lightGreyTie;
    var lightGreyTrousers;
    var lightPlumAndGreenJumper;
    var mediumGreyHat;
    var mediumGreyJumper;
    var mediumGreyPants;
    var mediumGreySkirt;
    var mediumGreySock;
    var mediumGreyTie;
    var mediumGreyTrousers;
    var oliveOrangePants;
    var orangeHat;
    var orangeJumper;
    var orangePants;
    var orangeSkirt;
    var orangeSock;
    var orangeTie;
    var orangeTrousers;
    var pinkAndMauveSkirt;
    var pinkBabyBlueSkirt;
    var pinkHat;
    var purpleCyanPants;
    var redHat;
    var redJumper;
    var redPants;
    var redSkirt;
    var redSock;
    var redTie;
    var redTrousers;
    var violetHat;
    var violetJumper;
    var violetPants;
    var violetSkirt;
    var violetSock;
    var violetTie;
    var violetTrousers;
    var whiteHat;
    var whiteJumper;
    var whitePants;
    var whiteSkirt;
    var whiteSock;
    var whiteTie;
    var whiteTrousers;
    var yellowAndRedTrousers;
    var yellowHat;
    var yellowJumper;
    var yellowPants;
    var yellowSkirt;
    var yellowSock;
    var yellowTie;
    var yellowTrousers;
}

class TestImages {
    public static inline var srcPath = 'https://nanjizal.github.io/TestProduct/assets/';
    // oldish
    public static function create(): Array<Image> {
        var images = new Array<hxTShopify.t.Image>();
        var pics = ['hat','jumper','tie','shirt','sock','pants','trousers'];
        var pic = '';
        var l = pics.length;
        for( i in 0...l ){
            pic = pics[ i ];
            images[ i ] = getImage( i, pic );
        }
        return images;
    }
    public static inline function getImage(  no: Int, col: String, pic: String
                                          , width: Int = 500, height: Int = 500 ): Image { 
        var src = srcPath + col + pic + '.png';
        var image: Image = { position: no, alt: null
                           , width: width, height: height
                           , src: src };
        return image;
    }
}