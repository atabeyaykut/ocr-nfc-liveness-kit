package tr.gov.turkiye.edevlet.kapisi.search.ui;

import android.view.View;
import he.a;
import kotlin.Metadata;
import kotlin.jvm.internal.h;
import l9.m;
import tr.gov.turkiye.edevlet.kapisi.R;
import tr.gov.turkiye.edevlet.kapisi.search.databinding.ItemSearchHistoryBinding;
import x9.l;

@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\t\b'\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u0015\u0010\u0016J\b\u0010\u0004\u001a\u00020\u0003H\u0014J\f\u0010\u0006\u001a\u00020\u0005*\u00020\u0002H\u0016R\"\u0010\b\u001a\u00020\u00078\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR.\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00050\u000e8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014¨\u0006\u0017"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/search/ui/SearchHistoryItem;", "Lhe/a;", "Ltr/gov/turkiye/edevlet/kapisi/search/databinding/ItemSearchHistoryBinding;", "", "getDefaultLayout", "Ll9/m;", "bind", "", "historyItem", "Ljava/lang/String;", "getHistoryItem", "()Ljava/lang/String;", "setHistoryItem", "(Ljava/lang/String;)V", "Lkotlin/Function1;", "listener", "Lx9/l;", "getListener", "()Lx9/l;", "setListener", "(Lx9/l;)V", "<init>", "()V", "ui-search_release"}, k = 1, mv = {1, 8, 0})
/* loaded from: classes3.dex */
public abstract class SearchHistoryItem extends a<ItemSearchHistoryBinding> {
    public String historyItem;
    public l<? super String, m> listener;

    /* JADX INFO: Access modifiers changed from: private */
    public static final void bind$lambda$0(SearchHistoryItem this$0, View view) {
        h.f(this$0, "this$0");
        this$0.getListener().invoke(this$0.getHistoryItem());
    }

    @Override // he.a
    public void bind(ItemSearchHistoryBinding itemSearchHistoryBinding) {
        h.f(itemSearchHistoryBinding, "<this>");
        itemSearchHistoryBinding.f16751c.setText(getHistoryItem());
        itemSearchHistoryBinding.f16750b.setOnClickListener(new nf.a(6, this));
    }

    @Override // com.airbnb.epoxy.u
    public int getDefaultLayout() {
        return R.layout.item_search_history;
    }

    public final String getHistoryItem() {
        String str = this.historyItem;
        if (str != null) {
            return str;
        }
        h.n("historyItem");
        throw null;
    }

    public final l<String, m> getListener() {
        l lVar = this.listener;
        if (lVar != null) {
            return lVar;
        }
        h.n("listener");
        throw null;
    }

    public final void setHistoryItem(String str) {
        h.f(str, "<set-?>");
        this.historyItem = str;
    }

    public final void setListener(l<? super String, m> lVar) {
        h.f(lVar, "<set-?>");
        this.listener = lVar;
    }
}
