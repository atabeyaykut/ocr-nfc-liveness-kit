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
import xf.e;

/* loaded from: classes3.dex */
public class DashboardGridItemModel_ extends DashboardGridItemModel implements y<c>, e {
    private i0<DashboardGridItemModel_, c> onModelBoundListener_epoxyGeneratedModel;
    private k0<DashboardGridItemModel_, c> onModelUnboundListener_epoxyGeneratedModel;
    private l0<DashboardGridItemModel_, c> onModelVisibilityChangedListener_epoxyGeneratedModel;
    private m0<DashboardGridItemModel_, c> onModelVisibilityStateChangedListener_epoxyGeneratedModel;

    @Override // com.airbnb.epoxy.u
    public void addTo(p pVar) {
        super.addTo(pVar);
        addWithDebugValidation(pVar);
    }

    public b dashboardItem() {
        return this.dashboardItem;
    }

    /* renamed from: dashboardItem, reason: merged with bridge method [inline-methods] */
    public DashboardGridItemModel_ m76dashboardItem(b bVar) {
        onMutation();
        this.dashboardItem = bVar;
        return this;
    }

    @Override // com.airbnb.epoxy.u
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof DashboardGridItemModel_) || !super.equals(obj)) {
            return false;
        }
        DashboardGridItemModel_ dashboardGridItemModel_ = (DashboardGridItemModel_) obj;
        dashboardGridItemModel_.getClass();
        b bVar = this.dashboardItem;
        if (bVar == null ? dashboardGridItemModel_.dashboardItem != null : !bVar.equals(dashboardGridItemModel_.dashboardItem)) {
            return false;
        }
        l<? super b, m> lVar = this.listener;
        l<? super b, m> lVar2 = dashboardGridItemModel_.listener;
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
    public DashboardGridItemModel_ hide() {
        super.hide();
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id, reason: merged with bridge method [inline-methods] */
    public DashboardGridItemModel_ m77id(long j10) {
        super.m444id(j10);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id, reason: merged with bridge method [inline-methods] */
    public DashboardGridItemModel_ m78id(long j10, long j11) {
        super.m285id(j10, j11);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id, reason: merged with bridge method [inline-methods] */
    public DashboardGridItemModel_ m79id(@Nullable CharSequence charSequence) {
        super.m286id(charSequence);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id, reason: merged with bridge method [inline-methods] */
    public DashboardGridItemModel_ m80id(@Nullable CharSequence charSequence, long j10) {
        super.m287id(charSequence, j10);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id, reason: merged with bridge method [inline-methods] */
    public DashboardGridItemModel_ m81id(@Nullable CharSequence charSequence, @Nullable CharSequence... charSequenceArr) {
        super.m288id(charSequence, charSequenceArr);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id, reason: merged with bridge method [inline-methods] */
    public DashboardGridItemModel_ m82id(@Nullable Number... numberArr) {
        super.mo289id(numberArr);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: layout, reason: merged with bridge method [inline-methods] */
    public DashboardGridItemModel_ m83layout(@LayoutRes int r12) {
        super.m290layout(r12);
        return this;
    }

    public DashboardGridItemModel_ listener(l<? super b, m> lVar) {
        onMutation();
        this.listener = lVar;
        return this;
    }

    public l<? super b, m> listener() {
        return this.listener;
    }

    /* renamed from: listener, reason: collision with other method in class */
    public /* bridge */ /* synthetic */ e m84listener(l lVar) {
        return listener((l<? super b, m>) lVar);
    }

    public DashboardGridItemModel_ onBind(i0<DashboardGridItemModel_, c> i0Var) {
        onMutation();
        return this;
    }

    /* renamed from: onBind, reason: collision with other method in class */
    public /* bridge */ /* synthetic */ e m85onBind(i0 i0Var) {
        return onBind((i0<DashboardGridItemModel_, c>) i0Var);
    }

    public DashboardGridItemModel_ onUnbind(k0<DashboardGridItemModel_, c> k0Var) {
        onMutation();
        return this;
    }

    /* renamed from: onUnbind, reason: collision with other method in class */
    public /* bridge */ /* synthetic */ e m86onUnbind(k0 k0Var) {
        return onUnbind((k0<DashboardGridItemModel_, c>) k0Var);
    }

    public DashboardGridItemModel_ onVisibilityChanged(l0<DashboardGridItemModel_, c> l0Var) {
        onMutation();
        return this;
    }

    /* renamed from: onVisibilityChanged, reason: collision with other method in class */
    public /* bridge */ /* synthetic */ e m87onVisibilityChanged(l0 l0Var) {
        return onVisibilityChanged((l0<DashboardGridItemModel_, c>) l0Var);
    }

    @Override // com.airbnb.epoxy.v, com.airbnb.epoxy.u
    public void onVisibilityChanged(float f, float f10, int r32, int r42, c cVar) {
        super.onVisibilityChanged(f, f10, r32, r42, (int) cVar);
    }

    public DashboardGridItemModel_ onVisibilityStateChanged(m0<DashboardGridItemModel_, c> m0Var) {
        onMutation();
        return this;
    }

    /* renamed from: onVisibilityStateChanged, reason: collision with other method in class */
    public /* bridge */ /* synthetic */ e m88onVisibilityStateChanged(m0 m0Var) {
        return onVisibilityStateChanged((m0<DashboardGridItemModel_, c>) m0Var);
    }

    @Override // com.airbnb.epoxy.v, com.airbnb.epoxy.u
    public void onVisibilityStateChanged(int r12, c cVar) {
        super.onVisibilityStateChanged(r12, (int) cVar);
    }

    @Override // com.airbnb.epoxy.u
    public DashboardGridItemModel_ reset() {
        this.dashboardItem = null;
        this.listener = null;
        super.reset();
        return this;
    }

    @Override // com.airbnb.epoxy.u
    public DashboardGridItemModel_ show() {
        super.show();
        return this;
    }

    @Override // com.airbnb.epoxy.u
    public DashboardGridItemModel_ show(boolean z10) {
        super.show(z10);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: spanSizeOverride, reason: merged with bridge method [inline-methods] */
    public DashboardGridItemModel_ m89spanSizeOverride(@Nullable u.c cVar) {
        super.m295spanSizeOverride(cVar);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    public String toString() {
        return "DashboardGridItemModel_{dashboardItem=" + this.dashboardItem + "}" + super.toString();
    }

    @Override // com.airbnb.epoxy.v, com.airbnb.epoxy.u
    public void unbind(c cVar) {
        super.unbind((DashboardGridItemModel_) cVar);
    }
}
