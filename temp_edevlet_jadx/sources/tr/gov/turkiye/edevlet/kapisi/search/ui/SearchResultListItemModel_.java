package tr.gov.turkiye.edevlet.kapisi.search.ui;

import androidx.annotation.LayoutRes;
import androidx.annotation.Nullable;
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
import og.b;
import tr.gov.turkiye.edevlet.kapisi.data.service.SearchServiceContent;
import x9.l;

/* loaded from: classes3.dex */
public class SearchResultListItemModel_ extends SearchResultListItemModel implements y<c>, b {
    private i0<SearchResultListItemModel_, c> onModelBoundListener_epoxyGeneratedModel;
    private k0<SearchResultListItemModel_, c> onModelUnboundListener_epoxyGeneratedModel;
    private l0<SearchResultListItemModel_, c> onModelVisibilityChangedListener_epoxyGeneratedModel;
    private m0<SearchResultListItemModel_, c> onModelVisibilityStateChangedListener_epoxyGeneratedModel;

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
        if (!(obj instanceof SearchResultListItemModel_) || !super.equals(obj)) {
            return false;
        }
        SearchResultListItemModel_ searchResultListItemModel_ = (SearchResultListItemModel_) obj;
        searchResultListItemModel_.getClass();
        SearchServiceContent searchServiceContent = this.service;
        if (searchServiceContent == null ? searchResultListItemModel_.service != null : !searchServiceContent.equals(searchResultListItemModel_.service)) {
            return false;
        }
        l<? super SearchServiceContent, m> lVar = this.listener;
        l<? super SearchServiceContent, m> lVar2 = searchResultListItemModel_.listener;
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
        int r02 = androidx.browser.browseractions.b.c(super.hashCode(), 31, 0, 31, 0, 31, 0, 31, 0, 31);
        SearchServiceContent searchServiceContent = this.service;
        int r03 = (r02 + (searchServiceContent != null ? searchServiceContent.hashCode() : 0)) * 31;
        l<? super SearchServiceContent, m> lVar = this.listener;
        return r03 + (lVar != null ? lVar.hashCode() : 0);
    }

    @Override // com.airbnb.epoxy.u
    public SearchResultListItemModel_ hide() {
        super.hide();
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id, reason: merged with bridge method [inline-methods] */
    public SearchResultListItemModel_ m296id(long j10) {
        super.m296id(j10);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id, reason: merged with bridge method [inline-methods] */
    public SearchResultListItemModel_ m297id(long j10, long j11) {
        super.m297id(j10, j11);
        return this;
    }

    @Override // og.b
    /* renamed from: id, reason: merged with bridge method [inline-methods] */
    public SearchResultListItemModel_ mo298id(@Nullable CharSequence charSequence) {
        super.mo298id(charSequence);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id, reason: merged with bridge method [inline-methods] */
    public SearchResultListItemModel_ m299id(@Nullable CharSequence charSequence, long j10) {
        super.m299id(charSequence, j10);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id, reason: merged with bridge method [inline-methods] */
    public SearchResultListItemModel_ m300id(@Nullable CharSequence charSequence, @Nullable CharSequence... charSequenceArr) {
        super.m300id(charSequence, charSequenceArr);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id, reason: merged with bridge method [inline-methods] */
    public SearchResultListItemModel_ m301id(@Nullable Number... numberArr) {
        super.m301id(numberArr);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: layout, reason: merged with bridge method [inline-methods] */
    public SearchResultListItemModel_ m302layout(@LayoutRes int r12) {
        super.m302layout(r12);
        return this;
    }

    @Override // og.b
    public /* bridge */ /* synthetic */ b listener(l lVar) {
        return listener((l<? super SearchServiceContent, m>) lVar);
    }

    @Override // og.b
    public SearchResultListItemModel_ listener(l<? super SearchServiceContent, m> lVar) {
        onMutation();
        this.listener = lVar;
        return this;
    }

    public l<? super SearchServiceContent, m> listener() {
        return this.listener;
    }

    public /* bridge */ /* synthetic */ b onBind(i0 i0Var) {
        return m303onBind((i0<SearchResultListItemModel_, c>) i0Var);
    }

    /* renamed from: onBind, reason: collision with other method in class */
    public SearchResultListItemModel_ m303onBind(i0<SearchResultListItemModel_, c> i0Var) {
        onMutation();
        return this;
    }

    public /* bridge */ /* synthetic */ b onUnbind(k0 k0Var) {
        return m304onUnbind((k0<SearchResultListItemModel_, c>) k0Var);
    }

    /* renamed from: onUnbind, reason: collision with other method in class */
    public SearchResultListItemModel_ m304onUnbind(k0<SearchResultListItemModel_, c> k0Var) {
        onMutation();
        return this;
    }

    public /* bridge */ /* synthetic */ b onVisibilityChanged(l0 l0Var) {
        return m305onVisibilityChanged((l0<SearchResultListItemModel_, c>) l0Var);
    }

    /* renamed from: onVisibilityChanged, reason: collision with other method in class */
    public SearchResultListItemModel_ m305onVisibilityChanged(l0<SearchResultListItemModel_, c> l0Var) {
        onMutation();
        return this;
    }

    @Override // com.airbnb.epoxy.v, com.airbnb.epoxy.u
    public void onVisibilityChanged(float f, float f10, int r32, int r42, c cVar) {
        super.onVisibilityChanged(f, f10, r32, r42, (int) cVar);
    }

    public /* bridge */ /* synthetic */ b onVisibilityStateChanged(m0 m0Var) {
        return m306onVisibilityStateChanged((m0<SearchResultListItemModel_, c>) m0Var);
    }

    /* renamed from: onVisibilityStateChanged, reason: collision with other method in class */
    public SearchResultListItemModel_ m306onVisibilityStateChanged(m0<SearchResultListItemModel_, c> m0Var) {
        onMutation();
        return this;
    }

    @Override // com.airbnb.epoxy.v, com.airbnb.epoxy.u
    public void onVisibilityStateChanged(int r12, c cVar) {
        super.onVisibilityStateChanged(r12, (int) cVar);
    }

    @Override // com.airbnb.epoxy.u
    public SearchResultListItemModel_ reset() {
        this.service = null;
        this.listener = null;
        super.reset();
        return this;
    }

    public SearchServiceContent service() {
        return this.service;
    }

    @Override // og.b
    public SearchResultListItemModel_ service(SearchServiceContent searchServiceContent) {
        onMutation();
        this.service = searchServiceContent;
        return this;
    }

    @Override // com.airbnb.epoxy.u
    public SearchResultListItemModel_ show() {
        super.show();
        return this;
    }

    @Override // com.airbnb.epoxy.u
    public SearchResultListItemModel_ show(boolean z10) {
        super.show(z10);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: spanSizeOverride, reason: merged with bridge method [inline-methods] */
    public SearchResultListItemModel_ m307spanSizeOverride(@Nullable u.c cVar) {
        super.m307spanSizeOverride(cVar);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    public String toString() {
        return "SearchResultListItemModel_{service=" + this.service + "}" + super.toString();
    }

    @Override // com.airbnb.epoxy.v, com.airbnb.epoxy.u
    public void unbind(c cVar) {
        super.unbind((SearchResultListItemModel_) cVar);
    }
}
