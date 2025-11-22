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
import tr.gov.turkiye.edevlet.kapisi.data.service.ServiceModelRealm;
import x9.l;

/* loaded from: classes3.dex */
public class SearchServiceListItemModel_ extends SearchServiceListItemModel implements y<c>, og.c {
    private i0<SearchServiceListItemModel_, c> onModelBoundListener_epoxyGeneratedModel;
    private k0<SearchServiceListItemModel_, c> onModelUnboundListener_epoxyGeneratedModel;
    private l0<SearchServiceListItemModel_, c> onModelVisibilityChangedListener_epoxyGeneratedModel;
    private m0<SearchServiceListItemModel_, c> onModelVisibilityStateChangedListener_epoxyGeneratedModel;

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
        if (!(obj instanceof SearchServiceListItemModel_) || !super.equals(obj)) {
            return false;
        }
        SearchServiceListItemModel_ searchServiceListItemModel_ = (SearchServiceListItemModel_) obj;
        searchServiceListItemModel_.getClass();
        ServiceModelRealm serviceModelRealm = this.service;
        if (serviceModelRealm == null ? searchServiceListItemModel_.service != null : !serviceModelRealm.equals(searchServiceListItemModel_.service)) {
            return false;
        }
        l<? super ServiceModelRealm, m> lVar = this.listener;
        l<? super ServiceModelRealm, m> lVar2 = searchServiceListItemModel_.listener;
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
        ServiceModelRealm serviceModelRealm = this.service;
        int r03 = (r02 + (serviceModelRealm != null ? serviceModelRealm.hashCode() : 0)) * 31;
        l<? super ServiceModelRealm, m> lVar = this.listener;
        return r03 + (lVar != null ? lVar.hashCode() : 0);
    }

    @Override // com.airbnb.epoxy.u
    public SearchServiceListItemModel_ hide() {
        super.hide();
        return this;
    }

    @Override // com.airbnb.epoxy.u
    public SearchServiceListItemModel_ m308id(long j10) {
        super.id(j10);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    public SearchServiceListItemModel_ m309id(long j10, long j11) {
        super.id(j10, j11);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    public SearchServiceListItemModel_ m310id(@Nullable CharSequence charSequence) {
        super.id(charSequence);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    public SearchServiceListItemModel_ m311id(@Nullable CharSequence charSequence, long j10) {
        super.id(charSequence, j10);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    public SearchServiceListItemModel_ m312id(@Nullable CharSequence charSequence, @Nullable CharSequence... charSequenceArr) {
        super.id(charSequence, charSequenceArr);
        return this;
    }

    @Override // og.c
    public SearchServiceListItemModel_ mo313id(@Nullable Number... numberArr) {
        super.id(numberArr);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    public SearchServiceListItemModel_ m314layout(@LayoutRes int r12) {
        super.layout(r12);
        return this;
    }

    @Override // og.c
    public /* bridge */ /* synthetic */ og.c listener(l lVar) {
        return listener((l<? super ServiceModelRealm, m>) lVar);
    }

    @Override // og.c
    public SearchServiceListItemModel_ listener(l<? super ServiceModelRealm, m> lVar) {
        onMutation();
        this.listener = lVar;
        return this;
    }

    public l<? super ServiceModelRealm, m> listener() {
        return this.listener;
    }

    public /* bridge */ /* synthetic */ og.c onBind(i0 i0Var) {
        return m315onBind((i0<SearchServiceListItemModel_, c>) i0Var);
    }

    /* renamed from: onBind, reason: collision with other method in class */
    public SearchServiceListItemModel_ m315onBind(i0<SearchServiceListItemModel_, c> i0Var) {
        onMutation();
        return this;
    }

    public /* bridge */ /* synthetic */ og.c onUnbind(k0 k0Var) {
        return m316onUnbind((k0<SearchServiceListItemModel_, c>) k0Var);
    }

    /* renamed from: onUnbind, reason: collision with other method in class */
    public SearchServiceListItemModel_ m316onUnbind(k0<SearchServiceListItemModel_, c> k0Var) {
        onMutation();
        return this;
    }

    public /* bridge */ /* synthetic */ og.c onVisibilityChanged(l0 l0Var) {
        return m317onVisibilityChanged((l0<SearchServiceListItemModel_, c>) l0Var);
    }

    /* renamed from: onVisibilityChanged, reason: collision with other method in class */
    public SearchServiceListItemModel_ m317onVisibilityChanged(l0<SearchServiceListItemModel_, c> l0Var) {
        onMutation();
        return this;
    }

    @Override // com.airbnb.epoxy.v, com.airbnb.epoxy.u
    public void onVisibilityChanged(float f, float f10, int r32, int r42, c cVar) {
        super.onVisibilityChanged(f, f10, r32, r42, (int) cVar);
    }

    public /* bridge */ /* synthetic */ og.c onVisibilityStateChanged(m0 m0Var) {
        return m318onVisibilityStateChanged((m0<SearchServiceListItemModel_, c>) m0Var);
    }

    /* renamed from: onVisibilityStateChanged, reason: collision with other method in class */
    public SearchServiceListItemModel_ m318onVisibilityStateChanged(m0<SearchServiceListItemModel_, c> m0Var) {
        onMutation();
        return this;
    }

    @Override // com.airbnb.epoxy.v, com.airbnb.epoxy.u
    public void onVisibilityStateChanged(int r12, c cVar) {
        super.onVisibilityStateChanged(r12, (int) cVar);
    }

    @Override // com.airbnb.epoxy.u
    public SearchServiceListItemModel_ reset() {
        this.service = null;
        this.listener = null;
        super.reset();
        return this;
    }

    public ServiceModelRealm service() {
        return this.service;
    }

    @Override // og.c
    public SearchServiceListItemModel_ service(ServiceModelRealm serviceModelRealm) {
        onMutation();
        this.service = serviceModelRealm;
        return this;
    }

    @Override // com.airbnb.epoxy.u
    public SearchServiceListItemModel_ show() {
        super.show();
        return this;
    }

    @Override // com.airbnb.epoxy.u
    public SearchServiceListItemModel_ show(boolean z10) {
        super.show(z10);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    public SearchServiceListItemModel_ m319spanSizeOverride(@Nullable u.c cVar) {
        super.spanSizeOverride(cVar);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    public String toString() {
        return "SearchServiceListItemModel_{service=" + this.service + "}" + super.toString();
    }

    @Override // com.airbnb.epoxy.v, com.airbnb.epoxy.u
    public void unbind(c cVar) {
        super.unbind((SearchServiceListItemModel_) cVar);
    }
}
