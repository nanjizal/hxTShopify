package hxTShopify.demo;
import js.Browser.console;
import js.Browser.document;
import js.Browser.window;
import js.Node.process;
import js.node.ChildProcess;
import js.html.*;
import hxTShopify.store.Shop;
import folderNode.folder.HomeFiles;
import hxTShopify.t.*;
import hxTShopify.api.ManyPages;
import hxTShopify.connection.Https;
import hxTShopify.api.Calls;
import hxTShopify.api.Search;
import hxTShopify.t.Product;
import hxTShopify.t.ProductSerializer;
import hxTShopify.t.Option;
import hxTShopify.api.Transfer;
import hxTShopify.api.Delete;
import haxe.io.Bytes;
//#if( !doc_gen )
import hxbit.Serializer;    
//#end
import hxTShopify.api.Calls;
import hxTShopify.t.*;
import hxTShopify.connection.*;
import hxTShopify.connection.Https;
import hxTShopify.demo.TestProducts;
class Shoppy {
    public static var log: String->Void;
    public static var clear: Void->Void;
    var shops:     Array<Shop>;
    var homeFiles: Array<HomeFiles>;
    var testProducts: TestProducts;
    var testProducts2: TestProducts;
    public function new( shops_: Array<Shop> ){
        shops = shops_;
        for( shop in shops ) makeHome( shop );
        log( 'shoppy' );
        TestProducts.log = log;
        testProducts = new TestProducts( shops[ 0 ] );
        testProducts.onLoad = deleteProduct2;
        testProducts.onDelete = loadProduct;
        deleteProducts0();
    }
    // try to delete if one was created before if more then :(
    inline function deleteProducts0(){
        clear();
        log( 'DELETE PRODUCT 0' );
        testProducts.deleteHat();
        testProducts.deleteTie();
        testProducts.deleteJumper();
        testProducts.deletePants();
        testProducts.deleteSock();
        testProducts.deleteTrousers();
        testProducts.deleteSkirt();
    }
    inline function loadProduct(){
        // create products in shop0
        clear();
        log( 'LOAD PRODUCT 0');
        testProducts.hat();
        testProducts.tie();
        testProducts.jumper();
        testProducts.pants();
        testProducts.sock();
        testProducts.trousers();
        testProducts.skirt();
    }
    // transfer products to shop1 only when created on shop0
    inline function deleteProduct2( productTitle: String ){
        log( 'transfer check ' + testProducts.loadCount );
        if( testProducts.loadCount == 7 ){
            clear();
            log('deleting shop2 products');
            testProducts2 = new TestProducts( shops[ 1 ] );
            testProducts2.onDelete = transferProduct2;
            testProducts2.deleteHat();
            testProducts2.deleteTie();
            testProducts2.deleteJumper();
            testProducts2.deletePants();
            testProducts2.deleteSock();
            testProducts2.deleteTrousers();
            testProducts2.deleteSkirt();
        }
    }
    inline function transferProduct2(){
        clear();
        log('transfering shop2 products');
        var shop1 = shops[ 1 ];
        testProducts.moveHat( shop1 );
        testProducts.moveTie( shop1 );
        testProducts.moveJumper( shop1 );
        testProducts.movePants( shop1 );
        testProducts.moveSock( shop1 );
        testProducts.moveTrousers( shop1 );
        testProducts.moveSkirt( shop1 );
    }
    
    // make directory for each shop
    inline function makeHome( shop: Shop ){
        return new HomeFiles( shop.name );
    }
}