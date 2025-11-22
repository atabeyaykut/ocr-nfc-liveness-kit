package tr.gov.turkiye.edevlet.kapisi.search.ui;

import com.airbnb.epoxy.TypedEpoxyController;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.h;
import kotlin.jvm.internal.j;
import l9.m;
import tr.gov.turkiye.edevlet.kapisi.data.service.SearchServiceContent;
import x9.l;

@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001:\u0001\fB\u000f\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\n\u0010\u000bJ\u0018\u0010\u0006\u001a\u00020\u00052\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002H\u0014R\u0014\u0010\b\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\t¨\u0006\r"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/search/ui/SearchServiceListController;", "Lcom/airbnb/epoxy/TypedEpoxyController;", "", "Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;", "data", "Ll9/m;", "buildModels", "Ltr/gov/turkiye/edevlet/kapisi/search/ui/SearchServiceListController$a;", "callbacks", "Ltr/gov/turkiye/edevlet/kapisi/search/ui/SearchServiceListController$a;", "<init>", "(Ltr/gov/turkiye/edevlet/kapisi/search/ui/SearchServiceListController$a;)V", "a", "ui-search_release"}, k = 1, mv = {1, 8, 0})
/* loaded from: classes3.dex */
public final class SearchServiceListController extends TypedEpoxyController<List<? extends SearchServiceContent>> {
    private final a callbacks;

    public interface a {
        void q(SearchServiceContent searchServiceContent);
    }

    public static final class b extends j implements l<SearchServiceContent, m> {
        public b() {
            super(1);
        }

        @Override // x9.l
        public final m invoke(SearchServiceContent searchServiceContent) {
            SearchServiceContent service = searchServiceContent;
            a aVar = SearchServiceListController.this.callbacks;
            h.e(service, "service");
            aVar.q(service);
            return m.f9594a;
        }
    }

    public SearchServiceListController(a callbacks) {
        h.f(callbacks, "callbacks");
        this.callbacks = callbacks;
    }

    @Override // com.airbnb.epoxy.TypedEpoxyController
    public /* bridge */ /* synthetic */ void buildModels(List<? extends SearchServiceContent> list) {
        buildModels2((List<SearchServiceContent>) list);
    }

    /* renamed from: buildModels, reason: avoid collision after fix types in other method */
    public void buildModels2(List<SearchServiceContent> list) {
        if (list != null) {
            for (SearchServiceContent searchServiceContent : list) {
                SearchResultListItemModel_ searchResultListItemModel_ = new SearchResultListItemModel_();
                searchResultListItemModel_.mo298id((CharSequence) searchServiceContent.getServiceCode());
                searchResultListItemModel_.service(searchServiceContent);
                searchResultListItemModel_.listener((l<? super SearchServiceContent, m>) new b());
                add(searchResultListItemModel_);
            }
        }
    }
}
