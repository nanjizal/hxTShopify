package hxTShopify.connection;
import hxTShopify.t.Count;
class SectionHttps<T,THolder> extends Https<THolder> {
    var totalItems:         Int;
    var totalPages:         Int;
    var currPage:           Int;
    var sections:           Array<T>;
    var countUrl:           Void -> String;
    var pageUrl:            Int -> String;
    var getSection:         THolder->Array<T>;
    var pageSize:           Int;
    var countHttps          = new Https<Count>();
    var sectionHttps        = new Https<THolder>();
    var pass:               String;
    public var onFinish:           Array<T> -> Void;
    // provides rough approximation of total pages load as percentage
    public var onPercent:   Int -> Void;
    // When page count is resolved
    public var onItemTotal: Int->Void;
    // total pages needed available when count resolved
    public var onPageTotal: Int->Void;
    public function new( countUrl_:   Void->String
                       , pageUrl_:    Int->String
                       , getSection_: THolder->Array<T>
                       , pass_:       String
                       , pageSize_:   Int = 250
                       ){
        countUrl   = countUrl_;
        pageUrl    = pageUrl_;
        getSection = getSection_;
        pass       = pass_;
        pageSize   = pageSize_;
        super();
    }
    public function getSections(){
        if( onFinish == null ) return;
        sections            = new Array<T>();
        countHttps.onLoad   = loadSections;
        countHttps.onStatus = onStatus;
        countHttps.onError  = onError;
        countHttps.get( countUrl(), pass );
    }
    public function loadSections( counter: Count ){
        var count = counter.count;
        addFirstPage( count );
    }
    function addFirstPage( noItems: Int ){
        totalItems      = noItems;
        if( onItemTotal != null ) onItemTotal( noItems );
        totalPages      = Math.ceil( totalItems / pageSize ); 
        if( onPageTotal != null ) onPageTotal( totalPages );
        currPage        = 0;
        nextPage( null );
    }
    function nextPage( sectionsHolder: THolder ){
        addSections( sectionsHolder );
        if( onPercent != null ) onPercent( Std.int( 100 * currPage / totalPages ) );
        if( totalPages > currPage ) {
            currPage++;
            getSectionPage( currPage );
        } else {
            onFinish( sections );
        }
    }
    function getSectionPage( pageNo: Int ){
        var url = pageUrl( pageNo );
        sectionHttps.onLoad  = nextPage;
        sectionHttps.onError = onError;
        sectionHttps.get( url, pass );
    }
    inline
    function addSections( sectionsHolder: THolder ){
        if( sectionsHolder != null ) sections = sections.concat( getSection( sectionsHolder ) );
    }
}
