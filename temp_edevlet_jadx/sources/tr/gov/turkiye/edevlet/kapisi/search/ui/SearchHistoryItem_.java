package tr.gov.turkiye.edevlet.kapisi.search.ui;

import androidx.annotation.LayoutRes;
import androidx.annotation.Nullable;
import androidx.browser.browseractions.b;
import com.airbnb.epoxy.i0;
import com.airbnb.epoxy.k0;
import com.airbnb.epoxy.l0;
import com.airbnb.epoxy.m0;
import com.airbnb.epoxy.p;
import com.airbnb.epoxy.u;
import com.airbnb.epoxy.x;
import com.airbnb.epoxy.y;
import he.c;
import l9.m;
import og.a;
import x9.l;

/* loaded from: classes3.dex */
public class SearchHistoryItem_ extends SearchHistoryItem implements y<c>, a {
    private i0<SearchHistoryItem_, c> onModelBoundListener_epoxyGeneratedModel;
    private k0<SearchHistoryItem_, c> onModelUnboundListener_epoxyGeneratedModel;
    private l0<SearchHistoryItem_, c> onModelVisibilityChangedListener_epoxyGeneratedModel;
    private m0<SearchHistoryItem_, c> onModelVisibilityStateChangedListener_epoxyGeneratedModel;

    @Override // com.airbnb.epoxy.u
    public void addTo(p pVar) {
        super.addTo(pVar);
        addWithDebugValidation(pVar);
    }

    @Override // com.airbnb.epoxy.u
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof SearchHistoryItem_) || !super.equals(obj)) {
            return false;
        }
        SearchHistoryItem_ searchHistoryItem_ = (SearchHistoryItem_) obj;
        searchHistoryItem_.getClass();
        String str = this.historyItem;
        if (str == null ? searchHistoryItem_.historyItem != null : !str.equals(searchHistoryItem_.historyItem)) {
            return false;
        }
        l<? super String, m> lVar = this.listener;
        l<? super String, m> lVar2 = searchHistoryItem_.listener;
        return lVar == null ? lVar2 == null : lVar.equals(lVar2);
    }

    @Override // com.airbnb.epoxy.y
    public void handlePostBind(c cVar, int r22) {
        validateStateHasNotChangedSinceAdded("The model was changed during the bind call.", r22);
    }

    @Override // com.airbnb.epoxy.y
    public void handlePreBind(x xVar, c cVar, int r32) {
        validateStateHasNotChangedSinceAdded("The model was changed between being added to the controller and being bound.", r32);
    }

    @Override // com.airbnb.epoxy.u
    public int hashCode() {
        int r02 = b.c(super.hashCode(), 31, 0, 31, 0, 31, 0, 31, 0, 31);
        String str = this.historyItem;
        int r03 = (r02 + (str != null ? str.hashCode() : 0)) * 31;
        l<? super String, m> lVar = this.listener;
        return r03 + (lVar != null ? lVar.hashCode() : 0);
    }

    @Override // com.airbnb.epoxy.u
    public SearchHistoryItem_ hide() {
        super.hide();
        return this;
    }

    public String historyItem() {
        return this.historyItem;
    }

    @Override // og.a
    public SearchHistoryItem_ historyItem(String str) {
        onMutation();
        this.historyItem = str;
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id, reason: merged with bridge method [inline-methods] */
    public SearchHistoryItem_ m284id(long j10) {
        super.m284id(j10);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id, reason: merged with bridge method [inline-methods] */
    public SearchHistoryItem_ m285id(long j10, long j11) {
        super.m285id(j10, j11);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id, reason: merged with bridge method [inline-methods] */
    public SearchHistoryItem_ m286id(@Nullable CharSequence charSequence) {
        super.m286id(charSequence);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id, reason: merged with bridge method [inline-methods] */
    public SearchHistoryItem_ m287id(@Nullable CharSequence charSequence, long j10) {
        super.m287id(charSequence, j10);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id, reason: merged with bridge method [inline-methods] */
    public SearchHistoryItem_ m288id(@Nullable CharSequence charSequence, @Nullable CharSequence... charSequenceArr) {
        super.m288id(charSequence, charSequenceArr);
        return this;
    }

    @Override // og.a
    /* renamed from: id, reason: merged with bridge method [inline-methods] */
    public SearchHistoryItem_ mo289id(@Nullable Number... numberArr) {
        super.mo289id(numberArr);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: layout, reason: merged with bridge method [inline-methods] */
    public SearchHistoryItem_ m290layout(@LayoutRes int r12) {
        super.m290layout(r12);
        return this;
    }

    @Override // og.a
    public /* bridge */ /* synthetic */ a listener(l lVar) {
        return listener((l<? super String, m>) lVar);
    }

    @Override // og.a
    public SearchHistoryItem_ listener(l<? super String, m> lVar) {
        onMutation();
        this.listener = lVar;
        return this;
    }

    public l<? super String, m> listener() {
        return this.listener;
    }

    public /* bridge */ /* synthetic */ a onBind(i0 i0Var) {
        return m291onBind((i0<SearchHistoryItem_, c>) i0Var);
    }

    /* renamed from: onBind, reason: collision with other method in class */
    public SearchHistoryItem_ m291onBind(i0<SearchHistoryItem_, c> i0Var) {
        onMutation();
        return this;
    }

    public /* bridge */ /* synthetic */ a onUnbind(k0 k0Var) {
        return m292onUnbind((k0<SearchHistoryItem_, c>) k0Var);
    }

    /* renamed from: onUnbind, reason: collision with other method in class */
    public SearchHistoryItem_ m292onUnbind(k0<SearchHistoryItem_, c> k0Var) {
        onMutation();
        return this;
    }

    public /* bridge */ /* synthetic */ a onVisibilityChanged(l0 l0Var) {
        return m293onVisibilityChanged((l0<SearchHistoryItem_, c>) l0Var);
    }

    /* renamed from: onVisibilityChanged, reason: collision with other method in class */
    public SearchHistoryItem_ m293onVisibilityChanged(l0<SearchHistoryItem_, c> l0Var) {
        onMutation();
        return this;
    }

    @Override // com.airbnb.epoxy.v, com.airbnb.epoxy.u
    public void onVisibilityChanged(float f, float f10, int r32, int r42, c cVar) {
        super.onVisibilityChanged(f, f10, r32, r42, (int) cVar);
    }

    public /* bridge */ /* synthetic */ a onVisibilityStateChanged(m0 m0Var) {
        return m294onVisibilityStateChanged((m0<SearchHistoryItem_, c>) m0Var);
    }

    /* renamed from: onVisibilityStateChanged, reason: collision with other method in class */
    public SearchHistoryItem_ m294onVisibilityStateChanged(m0<SearchHistoryItem_, c> m0Var) {
        onMutation();
        return this;
    }

    @Override // com.airbnb.epoxy.v, com.airbnb.epoxy.u
    public void onVisibilityStateChanged(int r12, c cVar) {
        super.onVisibilityStateChanged(r12, (int) cVar);
    }

    @Override // com.airbnb.epoxy.u
    public SearchHistoryItem_ reset() {
        this.historyItem = null;
        this.listener = null;
        super.reset();
        return this;
    }

    @Override // com.airbnb.epoxy.u
    public SearchHistoryItem_ show() {
        super.show();
        return this;
    }

    @Override // com.airbnb.epoxy.u
    public SearchHistoryItem_ show(boolean z10) {
        super.show(z10);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: spanSizeOverride, reason: merged with bridge method [inline-methods] */
    public SearchHistoryItem_ m295spanSizeOverride(@Nullable u.c cVar) {
        super.m295spanSizeOverride(cVar);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    public String toString() {
        return "SearchHistoryItem_{historyItem=" + this.historyItem + "}" + super.toString();
    }

    @Override // com.airbnb.epoxy.v, com.airbnb.epoxy.u
    public void unbind(c cVar) {
        super.unbind((SearchHistoryItem_) cVar);
    }
}
