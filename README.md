# hxTShopify
Experimental Haxe Shopify Typedefs, and helpers for developing Haxe based shopify private applications, currently setup for use with nodejs and hxElectron. 

[hxTShopify documentation   ](https://nanjizal.github.io/hxTShopify/pages/index.html?i=1) _( serializer.hx ommited for now )_

**Demo code included to show creation, deletion and transfer between stores.**

API is still under production actively looking for full time role. HIRE ME :)

## Shoppy Test

### Creates 7 products with variants with code and transfers them to another Shopify store.

<img width="565" alt="store0ProductPage" src="https://user-images.githubusercontent.com/20134338/54243517-b5a0e000-4520-11e9-96b6-8a423631650a.png">

### Hat product in Shopify's admin, showing uploaded variants and images that were created using code. 

<img width="626" alt="HatDetail" src="https://user-images.githubusercontent.com/20134338/54243521-bb96c100-4520-11e9-86c9-6f8ff42f7680.png">

### All product Shopify admin page showing the code uploaded products, this looks the same on the second store.

<img width="1398" alt="productCreationPage" src="https://user-images.githubusercontent.com/20134338/54243530-c05b7500-4520-11e9-82e5-0f392050ce73.png">

### Summary of Shoppy Test

Shoppy creates 7 products with range of images and variants and then transfers the value to another store with some price changes.

### Details of Shoppy Test

- Shoppy first tries to delete the 7 products from shop[0].
- Creates the 7 products on shop[0], with images from **TestProduct** repo.
- Tries to delete the 7 products on shop[1].
- Transfers shop[0] products to shop[1] with a price change applied.


### To run the 'Shoppy Test' 

- Install and setup an hxElectron project.
- Setup *two* Shoppify stores.
- Set them up to allow private applications.
- create Store files for them see hxTShopify.store.DemoStore.hx as an example.
- Test hxElectron runs ok.
- In the App.hx file of hxElectron, setup a div for logging text to screen a static DivElement called **logDiv**.
- In the App.hx file of the hxElectron project you need to create new Shoppy:
```haxe 
    function setupShoppy(){
        Shoppy.log = screenLog;
        Shoppy.clear = screenLogClear;
        var shoppy = new Shoppy( [ new Shop( new YourShopA()  )
                                 , new Shop( new YourShopB() ) 
                                 ] );
    }
    public static function screenLogClear(){
        logDiv.innerText = '';
    }
    public static function screenLog( d: Dynamic ){
        logDiv.innerText += ' ' + d + '\r\n';
    }
 ```
