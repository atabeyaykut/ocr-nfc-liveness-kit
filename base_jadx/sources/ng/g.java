package ng;

import com.airbnb.epoxy.p;
import l9.m;
import tr.gov.turkiye.edevlet.kapisi.search.SearchFragment;
import tr.gov.turkiye.edevlet.kapisi.search.ui.SearchHistoryItem_;

/* loaded from: classes3.dex */
public final class g extends kotlin.jvm.internal.j implements x9.l<p, m> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ String[] f10956a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ SearchFragment f10957b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g(String[] strArr, SearchFragment searchFragment) {
        super(1);
        this.f10956a = strArr;
        this.f10957b = searchFragment;
    }

    @Override // x9.l
    public final m invoke(p pVar) {
        p withModels = pVar;
        kotlin.jvm.internal.h.f(withModels, "$this$withModels");
        String[] strArr = this.f10956a;
        int length = strArr.length;
        int r32 = 0;
        int r42 = 0;
        while (r32 < length) {
            String str = strArr[r32];
            SearchHistoryItem_ searchHistoryItem_ = new SearchHistoryItem_();
            searchHistoryItem_.mo289id(Integer.valueOf(r42));
            searchHistoryItem_.historyItem(str);
            searchHistoryItem_.listener((x9.l<? super String, m>) new f(this.f10957b));
            withModels.add(searchHistoryItem_);
            r32++;
            r42++;
        }
        return m.f9594a;
    }
}
