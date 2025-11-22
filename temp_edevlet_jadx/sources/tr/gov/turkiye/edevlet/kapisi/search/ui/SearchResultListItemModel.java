package tr.gov.turkiye.edevlet.kapisi.search.ui;

import android.view.View;
import android.widget.ImageView;
import androidx.core.app.NotificationCompat;
import ge.b;
import he.a;
import kotlin.Metadata;
import kotlin.jvm.internal.h;
import l9.m;
import tr.gov.turkiye.edevlet.kapisi.R;
import tr.gov.turkiye.edevlet.kapisi.data.service.SearchServiceContent;
import tr.gov.turkiye.edevlet.kapisi.search.databinding.ItemSearchResultBinding;
import x9.l;

@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\t\b'\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u0015\u0010\u0016J\b\u0010\u0004\u001a\u00020\u0003H\u0014J\f\u0010\u0006\u001a\u00020\u0005*\u00020\u0002H\u0016R\"\u0010\b\u001a\u00020\u00078\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR.\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00050\u000e8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014¨\u0006\u0017"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/search/ui/SearchResultListItemModel;", "Lhe/a;", "Ltr/gov/turkiye/edevlet/kapisi/search/databinding/ItemSearchResultBinding;", "", "getDefaultLayout", "Ll9/m;", "bind", "Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;", NotificationCompat.CATEGORY_SERVICE, "Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;", "getService", "()Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;", "setService", "(Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;)V", "Lkotlin/Function1;", "listener", "Lx9/l;", "getListener", "()Lx9/l;", "setListener", "(Lx9/l;)V", "<init>", "()V", "ui-search_release"}, k = 1, mv = {1, 8, 0})
/* loaded from: classes3.dex */
public abstract class SearchResultListItemModel extends a<ItemSearchResultBinding> {
    public l<? super SearchServiceContent, m> listener;
    public SearchServiceContent service;

    /* JADX INFO: Access modifiers changed from: private */
    public static final void bind$lambda$0(SearchResultListItemModel this$0, View view) {
        h.f(this$0, "this$0");
        this$0.getListener().invoke(this$0.getService());
    }

    @Override // he.a
    public void bind(ItemSearchResultBinding itemSearchResultBinding) {
        h.f(itemSearchResultBinding, "<this>");
        itemSearchResultBinding.f16756e.setText(getService().getServiceName());
        itemSearchResultBinding.f16755d.setText(getService().getInstitutionName());
        itemSearchResultBinding.f16754c.setOnClickListener(new zd.a(9, this));
        ImageView imgServiceInstitutionLogo = itemSearchResultBinding.f16753b;
        h.e(imgServiceInstitutionLogo, "imgServiceInstitutionLogo");
        b.c(imgServiceInstitutionLogo, getService().getIconUrl());
    }

    @Override // com.airbnb.epoxy.u
    public int getDefaultLayout() {
        return R.layout.item_search_result;
    }

    public final l<SearchServiceContent, m> getListener() {
        l lVar = this.listener;
        if (lVar != null) {
            return lVar;
        }
        h.n("listener");
        throw null;
    }

    public final SearchServiceContent getService() {
        SearchServiceContent searchServiceContent = this.service;
        if (searchServiceContent != null) {
            return searchServiceContent;
        }
        h.n(NotificationCompat.CATEGORY_SERVICE);
        throw null;
    }

    public final void setListener(l<? super SearchServiceContent, m> lVar) {
        h.f(lVar, "<set-?>");
        this.listener = lVar;
    }

    public final void setService(SearchServiceContent searchServiceContent) {
        h.f(searchServiceContent, "<set-?>");
        this.service = searchServiceContent;
    }
}
