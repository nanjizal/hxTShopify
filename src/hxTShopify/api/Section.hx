package hxTShopify.connection;
import hxTShopify.t.Count;
/**
 *
 *  General approach to getting all pages from a Shopify section
 *
 */
// extends - WebJson is abstracted to GET or POST shopify data.
class Section<T,THolder> extends WebJson {
    // When page count is resolved
    public var onItemTotal: Int->Void;
    // total pages needed available when count resolved
    public var onPageTotal: Int->Void;
    // section ie: Products, Orders ..
    public var onLoaded:    Array<T> -> Void;
    // provides rough approximation of total pages load as percentage
    public var onPercent:   Int -> Void;
    // methods to resolve the section and count web paths
    var pageUrl:            Int -> String;
    var countUrl:           Void -> String;
    //
    var totalItems:         Int;
    var totalPages:         Int;
    var currPage:           Int;
    var sections:           Array<T>;
    var onAddSectionPage:   THolder -> Void;
    var onSectionTotal:     Int->Void;
    var getSection:         THolder->Array<T>;
    var pageSize:           Int;
    public
    function new( countUrl_:   Void->String
                , pageUrl_:    Int->String
                , getSection_: THolder->Array<T>
                , pageSize_:   Int = 250 ){
        countUrl   = countUrl_;
        pageUrl    = pageUrl_;
        getSection = getSection_;
        pageSize   = pageSize_;
        super();
    }
    // gets all the sections information.
    public
    function getSections(){
        if( onLoaded == null ) throw 'Must set onSections: Array<T> ->Void before using this method.';
        sections        = new Array<T>();
        onSectionTotal  = addFirstPage;
        sectionCount();
    }
    // Provides number of pages.
    public
    function sectionCount(){
        if( onSectionTotal == null ) throw 'Must set onSectionTotal: Int->Void before using this method.';
        var url = countUrl();
        Get( url, setSectionTotal );
    }
    public
    function getPage( no: Int ){
        onAddSectionPage = ( data: THolder ) -> onLoaded( getSection( data ) );
        getSectionPage( no );
    }
    // --- internals used for looping and getting section information ------------------------------------
    function addFirstPage( noItems: Int ){
        totalItems      = noItems;
        if( onItemTotal != null ) onItemTotal( noItems );
        totalPages      = Math.ceil( totalItems / pageSize ); 
        if( onPageTotal != null ) onPageTotal( totalPages );
        currPage        = 0;
        onAddSectionPage = nextPage;
        nextPage( null );
    }
    inline
    function nextPage( sectionsHolder: THolder ){
        addSections( sectionsHolder );
        if( onPercent != null ) onPercent( Std.int( 100 * currPage / totalPages ) );
        if( totalPages > currPage ) {
            currPage++;
            getSectionPage( currPage );
        } else {
            onLoaded( sections );
        }
    }
    inline
    function addSections( sectionsHolder: THolder ){
        if( sectionsHolder != null ) sections = sections.concat( getSection( sectionsHolder ) );
    }
    function getSectionPage( pageNo: Int ){
        if( onAddSectionPage == null ) throw 'Must set onAddSectionPage: T->Void before using this method.';
        var url = pageUrl( pageNo );
        Get( url, addSectionPage );
    }
    inline
    function addSectionPage( data: String ){
        var p: THolder = haxe.Json.parse( data );
        onAddSectionPage( p );
    }
    inline
    function setSectionTotal( data: String ){
        var counter: Count = haxe.Json.parse( data );
        var count          = counter.count;
        onSectionTotal( count );
    }
}