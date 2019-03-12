package hxTShopify.demo;
import hxTShopify.demo.TestOption;
import hxTShopify.t.Variant;
class TestVariants{
    public var inventoryManagement  = 'shopify';
    public var fulfillmentService   = 'manual';
    public var inventoryPolicy      = 'deny';
    public var weightUnit           = 'kg'; // must use lower case... abstract enums?
    public var defaultWeight        = 0.4;
    public var requireShipping      = true;
    public var taxable              = true;
    public var publishScope         = 'web';
    public var vendor               = 'Nanjizal';
    public var productType          = 'Clothing';
    public function new(){}
    public inline
    function create( optionLight: Array<OptionLight>, price: Float, compareFactor: Float ){
        var l = optionLight.length;
        var variants = new Array<Variant>();
        for( i in 0...l ){
            variants.push( createVariant( i, optionLight[i], price, compareFactor ) );
        }
    }
    public inline 
    function createVariant( i: Int, optionLight: OptionLight
                          , price: Float, compareFactor: Float ): Variant {
        var size:     String  = ( optionLight.size: String );
        var color:    String  = ( optionLight.color: String );
        var quantity: Int     = optionLight.quantity;
        return
            { title:                size + ' / ' + color
            , price:                price
            , sku:                  ''
            , position:             i+1
            , inventory_policy:     inventoryPolicy
            , inventory_management: inventoryManagement
            , compare_at_price:     price*compareFactor
            , fulfillment_service:  fulfillmentService
            , option1:              size
            , option2:              color
            , option3:              null
            , taxable:              taxable
            , barcode:              ''
            , grams:                defaultWeight*100
            , image_id:             null
            , weight:               defaultWeight
            , weight_unit:          weightUnit
            , inventory_quantity:   quantity 
            , requires_shipping:    requireShipping };
    }
}