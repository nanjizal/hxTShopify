package hxTShopify.demo;
import hxTShopify.t.Image;
class TestImages {
    public static inline var srcPath = 'https://nanjizal.github.io/TestProduct/assets/';
    public static function create(): Array<Image> {
        var images = new Array<hxTShopify.t.Image>();
        var pics = ['hat','jumper','tie','skirt','sock','pants','trousers'];
        var pic = '';
        var l = pics.length;
        for( i in 0...l ){
            pic = pics[ i ];
            images[ i ] = getImage( i, pic );
        }
        return images;
    }
    public static inline function getImage(  no: Int, pic: String
                                          , width: Int = 500, height: Int = 500 ): Image { 
        var src = srcPath + pic + '.png';
        var image: Image = { position: no, alt: null
                           , width: width, height: height
                           , src: src };
        return image;
    }
}