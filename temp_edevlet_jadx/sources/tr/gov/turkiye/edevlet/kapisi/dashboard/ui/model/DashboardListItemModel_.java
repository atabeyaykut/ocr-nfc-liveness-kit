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
import xf.f;

/* loaded from: classes3.dex */
public class DashboardListItemModel_ extends DashboardListItemModel implements y<c>, f {
    private i0<DashboardListItemModel_, c> onModelBoundListener_epoxyGeneratedModel;
    private k0<DashboardListItemModel_, c> onModelUnboundListener_epoxyGeneratedModel;
    private l0<DashboardListItemModel_, c> onModelVisibilityChangedListener_epoxyGeneratedModel;
    private m0<DashboardListItemModel_, c> onModelVisibilityStateChangedListener_epoxyGeneratedModel;

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
        if (!(obj instanceof DashboardListItemModel_) || !super.equals(obj)) {
            return false;
        }
        ((DashboardListItemModel_) obj).getClass();
        return true;
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
        return (((((((super.hashCode() * 31) + 0) * 31) + 0) * 31) + 0) * 31) + 0;
    }

    @Override // com.airbnb.epoxy.u
    public DashboardListItemModel_ hide() {
        super.hide();
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id, reason: merged with bridge method [inline-methods] */
    public DashboardListItemModel_ m90id(long j10) {
        super.m90id(j10);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id, reason: merged with bridge method [inline-methods] */
    public DashboardListItemModel_ m91id(long j10, long j11) {
        super.m91id(j10, j11);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id, reason: merged with bridge method [inline-methods] */
    public DashboardListItemModel_ m92id(@Nullable CharSequence charSequence) {
        super.m92id(charSequence);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id, reason: merged with bridge method [inline-methods] */
    public DashboardListItemModel_ m93id(@Nullable CharSequence charSequence, long j10) {
        super.m93id(charSequence, j10);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id, reason: merged with bridge method [inline-methods] */
    public DashboardListItemModel_ m94id(@Nullable CharSequence charSequence, @Nullable CharSequence... charSequenceArr) {
        super.m94id(charSequence, charSequenceArr);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id, reason: merged with bridge method [inline-methods] */
    public DashboardListItemModel_ m95id(@Nullable Number... numberArr) {
        super.m95id(numberArr);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: layout, reason: merged with bridge method [inline-methods] */
    public DashboardListItemModel_ m96layout(@LayoutRes int r12) {
        super.m96layout(r12);
        return this;
    }

    public DashboardListItemModel_ onBind(i0<DashboardListItemModel_, c> i0Var) {
        onMutation();
        return this;
    }

    /* renamed from: onBind, reason: collision with other method in class */
    public /* bridge */ /* synthetic */ f m97onBind(i0 i0Var) {
        return onBind((i0<DashboardListItemModel_, c>) i0Var);
    }

    public DashboardListItemModel_ onUnbind(k0<DashboardListItemModel_, c> k0Var) {
        onMutation();
        return this;
    }

    /* renamed from: onUnbind, reason: collision with other method in class */
    public /* bridge */ /* synthetic */ f m98onUnbind(k0 k0Var) {
        return onUnbind((k0<DashboardListItemModel_, c>) k0Var);
    }

    public DashboardListItemModel_ onVisibilityChanged(l0<DashboardListItemModel_, c> l0Var) {
        onMutation();
        return this;
    }

    /* renamed from: onVisibilityChanged, reason: collision with other method in class */
    public /* bridge */ /* synthetic */ f m99onVisibilityChanged(l0 l0Var) {
        return onVisibilityChanged((l0<DashboardListItemModel_, c>) l0Var);
    }

    @Override // com.airbnb.epoxy.v, com.airbnb.epoxy.u
    public void onVisibilityChanged(float f, float f10, int r32, int r42, c cVar) {
        super.onVisibilityChanged(f, f10, r32, r42, (int) cVar);
    }

    public DashboardListItemModel_ onVisibilityStateChanged(m0<DashboardListItemModel_, c> m0Var) {
        onMutation();
        return this;
    }

    /* renamed from: onVisibilityStateChanged, reason: collision with other method in class */
    public /* bridge */ /* synthetic */ f m100onVisibilityStateChanged(m0 m0Var) {
        return onVisibilityStateChanged((m0<DashboardListItemModel_, c>) m0Var);
    }

    @Override // com.airbnb.epoxy.v, com.airbnb.epoxy.u
    public void onVisibilityStateChanged(int r12, c cVar) {
        super.onVisibilityStateChanged(r12, (int) cVar);
    }

    @Override // com.airbnb.epoxy.u
    public DashboardListItemModel_ reset() {
        super.reset();
        return this;
    }

    @Override // com.airbnb.epoxy.u
    public DashboardListItemModel_ show() {
        super.show();
        return this;
    }

    @Override // com.airbnb.epoxy.u
    public DashboardListItemModel_ show(boolean z10) {
        super.show(z10);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: spanSizeOverride, reason: merged with bridge method [inline-methods] */
    public DashboardListItemModel_ m101spanSizeOverride(@Nullable u.c cVar) {
        super.m101spanSizeOverride(cVar);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    public String toString() {
        return "DashboardListItemModel_{}" + super.toString();
    }

    @Override // com.airbnb.epoxy.v, com.airbnb.epoxy.u
    public void unbind(c cVar) {
        super.unbind((DashboardListItemModel_) cVar);
    }
}
