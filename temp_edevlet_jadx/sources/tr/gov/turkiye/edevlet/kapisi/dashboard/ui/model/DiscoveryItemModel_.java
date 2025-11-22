package tr.gov.turkiye.edevlet.kapisi.dashboard.ui.model;

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
import lf.b;
import x9.l;
import xf.g;

/* loaded from: classes3.dex */
public class DiscoveryItemModel_ extends DiscoveryItemModel implements y<c>, g {
    private i0<DiscoveryItemModel_, c> onModelBoundListener_epoxyGeneratedModel;
    private k0<DiscoveryItemModel_, c> onModelUnboundListener_epoxyGeneratedModel;
    private l0<DiscoveryItemModel_, c> onModelVisibilityChangedListener_epoxyGeneratedModel;
    private m0<DiscoveryItemModel_, c> onModelVisibilityStateChangedListener_epoxyGeneratedModel;

    @Override // com.airbnb.epoxy.u
    public void addTo(p pVar) {
        super.addTo(pVar);
        addWithDebugValidation(pVar);
    }

    public b dashboardItem() {
        return this.dashboardItem;
    }

    /* renamed from: dashboardItem, reason: merged with bridge method [inline-methods] */
    public DiscoveryItemModel_ m102dashboardItem(b bVar) {
        onMutation();
        this.dashboardItem = bVar;
        return this;
    }

    @Override // com.airbnb.epoxy.u
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof DiscoveryItemModel_) || !super.equals(obj)) {
            return false;
        }
        DiscoveryItemModel_ discoveryItemModel_ = (DiscoveryItemModel_) obj;
        discoveryItemModel_.getClass();
        b bVar = this.dashboardItem;
        if (bVar == null ? discoveryItemModel_.dashboardItem != null : !bVar.equals(discoveryItemModel_.dashboardItem)) {
            return false;
        }
        l<? super b, m> lVar = this.listener;
        l<? super b, m> lVar2 = discoveryItemModel_.listener;
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
        b bVar = this.dashboardItem;
        int r03 = (r02 + (bVar != null ? bVar.hashCode() : 0)) * 31;
        l<? super b, m> lVar = this.listener;
        return r03 + (lVar != null ? lVar.hashCode() : 0);
    }

    @Override // com.airbnb.epoxy.u
    public DiscoveryItemModel_ hide() {
        super.hide();
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id, reason: merged with bridge method [inline-methods] */
    public DiscoveryItemModel_ m103id(long j10) {
        super.m284id(j10);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id, reason: merged with bridge method [inline-methods] */
    public DiscoveryItemModel_ m104id(long j10, long j11) {
        super.m285id(j10, j11);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id, reason: merged with bridge method [inline-methods] */
    public DiscoveryItemModel_ m105id(@Nullable CharSequence charSequence) {
        super.m286id(charSequence);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id, reason: merged with bridge method [inline-methods] */
    public DiscoveryItemModel_ m106id(@Nullable CharSequence charSequence, long j10) {
        super.m287id(charSequence, j10);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id, reason: merged with bridge method [inline-methods] */
    public DiscoveryItemModel_ m107id(@Nullable CharSequence charSequence, @Nullable CharSequence... charSequenceArr) {
        super.m288id(charSequence, charSequenceArr);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id, reason: merged with bridge method [inline-methods] */
    public DiscoveryItemModel_ m108id(@Nullable Number... numberArr) {
        super.mo289id(numberArr);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: layout, reason: merged with bridge method [inline-methods] */
    public DiscoveryItemModel_ m109layout(@LayoutRes int r12) {
        super.m290layout(r12);
        return this;
    }

    public DiscoveryItemModel_ listener(l<? super b, m> lVar) {
        onMutation();
        this.listener = lVar;
        return this;
    }

    public l<? super b, m> listener() {
        return this.listener;
    }

    /* renamed from: listener, reason: collision with other method in class */
    public /* bridge */ /* synthetic */ g m110listener(l lVar) {
        return listener((l<? super b, m>) lVar);
    }

    public DiscoveryItemModel_ onBind(i0<DiscoveryItemModel_, c> i0Var) {
        onMutation();
        return this;
    }

    /* renamed from: onBind, reason: collision with other method in class */
    public /* bridge */ /* synthetic */ g m111onBind(i0 i0Var) {
        return onBind((i0<DiscoveryItemModel_, c>) i0Var);
    }

    public DiscoveryItemModel_ onUnbind(k0<DiscoveryItemModel_, c> k0Var) {
        onMutation();
        return this;
    }

    /* renamed from: onUnbind, reason: collision with other method in class */
    public /* bridge */ /* synthetic */ g m112onUnbind(k0 k0Var) {
        return onUnbind((k0<DiscoveryItemModel_, c>) k0Var);
    }

    public DiscoveryItemModel_ onVisibilityChanged(l0<DiscoveryItemModel_, c> l0Var) {
        onMutation();
        return this;
    }

    /* renamed from: onVisibilityChanged, reason: collision with other method in class */
    public /* bridge */ /* synthetic */ g m113onVisibilityChanged(l0 l0Var) {
        return onVisibilityChanged((l0<DiscoveryItemModel_, c>) l0Var);
    }

    @Override // com.airbnb.epoxy.v, com.airbnb.epoxy.u
    public void onVisibilityChanged(float f, float f10, int r32, int r42, c cVar) {
        super.onVisibilityChanged(f, f10, r32, r42, (int) cVar);
    }

    public DiscoveryItemModel_ onVisibilityStateChanged(m0<DiscoveryItemModel_, c> m0Var) {
        onMutation();
        return this;
    }

    /* renamed from: onVisibilityStateChanged, reason: collision with other method in class */
    public /* bridge */ /* synthetic */ g m114onVisibilityStateChanged(m0 m0Var) {
        return onVisibilityStateChanged((m0<DiscoveryItemModel_, c>) m0Var);
    }

    @Override // com.airbnb.epoxy.v, com.airbnb.epoxy.u
    public void onVisibilityStateChanged(int r12, c cVar) {
        super.onVisibilityStateChanged(r12, (int) cVar);
    }

    @Override // com.airbnb.epoxy.u
    public DiscoveryItemModel_ reset() {
        this.dashboardItem = null;
        this.listener = null;
        super.reset();
        return this;
    }

    @Override // com.airbnb.epoxy.u
    public DiscoveryItemModel_ show() {
        super.show();
        return this;
    }

    @Override // com.airbnb.epoxy.u
    public DiscoveryItemModel_ show(boolean z10) {
        super.show(z10);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: spanSizeOverride, reason: merged with bridge method [inline-methods] */
    public DiscoveryItemModel_ m115spanSizeOverride(@Nullable u.c cVar) {
        super.m295spanSizeOverride(cVar);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    public String toString() {
        return "DiscoveryItemModel_{dashboardItem=" + this.dashboardItem + "}" + super.toString();
    }

    @Override // com.airbnb.epoxy.v, com.airbnb.epoxy.u
    public void unbind(c cVar) {
        super.unbind((DiscoveryItemModel_) cVar);
    }
}
