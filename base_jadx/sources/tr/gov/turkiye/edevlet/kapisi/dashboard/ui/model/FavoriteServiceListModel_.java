package tr.gov.turkiye.edevlet.kapisi.dashboard.ui.model;

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
import xf.l;

/* loaded from: classes3.dex */
public class FavoriteServiceListModel_ extends FavoriteServiceListModel implements y<c>, l {
    private i0<FavoriteServiceListModel_, c> onModelBoundListener_epoxyGeneratedModel;
    private k0<FavoriteServiceListModel_, c> onModelUnboundListener_epoxyGeneratedModel;
    private l0<FavoriteServiceListModel_, c> onModelVisibilityChangedListener_epoxyGeneratedModel;
    private m0<FavoriteServiceListModel_, c> onModelVisibilityStateChangedListener_epoxyGeneratedModel;

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
        if (!(obj instanceof FavoriteServiceListModel_) || !super.equals(obj)) {
            return false;
        }
        FavoriteServiceListModel_ favoriteServiceListModel_ = (FavoriteServiceListModel_) obj;
        favoriteServiceListModel_.getClass();
        ServiceModelRealm serviceModelRealm = this.service;
        if (serviceModelRealm == null ? favoriteServiceListModel_.service != null : !serviceModelRealm.equals(favoriteServiceListModel_.service)) {
            return false;
        }
        if (getServiceIndex() == null ? favoriteServiceListModel_.getServiceIndex() != null : !getServiceIndex().equals(favoriteServiceListModel_.getServiceIndex())) {
            return false;
        }
        x9.l<? super ServiceModelRealm, m> lVar = this.listener;
        if (lVar == null ? favoriteServiceListModel_.listener != null : !lVar.equals(favoriteServiceListModel_.listener)) {
            return false;
        }
        x9.l<? super ServiceModelRealm, m> lVar2 = this.unFavoriteListener;
        x9.l<? super ServiceModelRealm, m> lVar3 = favoriteServiceListModel_.unFavoriteListener;
        return lVar2 == null ? lVar3 == null : lVar2.equals(lVar3);
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
        int r03 = (((r02 + (serviceModelRealm != null ? serviceModelRealm.hashCode() : 0)) * 31) + (getServiceIndex() != null ? getServiceIndex().hashCode() : 0)) * 31;
        x9.l<? super ServiceModelRealm, m> lVar = this.listener;
        int r04 = (r03 + (lVar != null ? lVar.hashCode() : 0)) * 31;
        x9.l<? super ServiceModelRealm, m> lVar2 = this.unFavoriteListener;
        return r04 + (lVar2 != null ? lVar2.hashCode() : 0);
    }

    @Override // com.airbnb.epoxy.u
    public FavoriteServiceListModel_ hide() {
        super.hide();
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id, reason: merged with bridge method [inline-methods] */
    public FavoriteServiceListModel_ m142id(long j10) {
        super.m142id(j10);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id, reason: merged with bridge method [inline-methods] */
    public FavoriteServiceListModel_ m143id(long j10, long j11) {
        super.m143id(j10, j11);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id, reason: merged with bridge method [inline-methods] */
    public FavoriteServiceListModel_ m144id(@Nullable CharSequence charSequence) {
        super.m144id(charSequence);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id, reason: merged with bridge method [inline-methods] */
    public FavoriteServiceListModel_ m145id(@Nullable CharSequence charSequence, long j10) {
        super.m145id(charSequence, j10);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id, reason: merged with bridge method [inline-methods] */
    public FavoriteServiceListModel_ m146id(@Nullable CharSequence charSequence, @Nullable CharSequence... charSequenceArr) {
        super.m146id(charSequence, charSequenceArr);
        return this;
    }

    @Override // xf.l
    /* renamed from: id, reason: merged with bridge method [inline-methods] */
    public FavoriteServiceListModel_ mo147id(@Nullable Number... numberArr) {
        super.mo147id(numberArr);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: layout, reason: merged with bridge method [inline-methods] */
    public FavoriteServiceListModel_ m148layout(@LayoutRes int r12) {
        super.m148layout(r12);
        return this;
    }

    @Override // xf.l
    public FavoriteServiceListModel_ listener(x9.l<? super ServiceModelRealm, m> lVar) {
        onMutation();
        this.listener = lVar;
        return this;
    }

    public x9.l<? super ServiceModelRealm, m> listener() {
        return this.listener;
    }

    @Override // xf.l
    public /* bridge */ /* synthetic */ l listener(x9.l lVar) {
        return listener((x9.l<? super ServiceModelRealm, m>) lVar);
    }

    public FavoriteServiceListModel_ onBind(i0<FavoriteServiceListModel_, c> i0Var) {
        onMutation();
        return this;
    }

    /* renamed from: onBind, reason: collision with other method in class */
    public /* bridge */ /* synthetic */ l m149onBind(i0 i0Var) {
        return onBind((i0<FavoriteServiceListModel_, c>) i0Var);
    }

    public FavoriteServiceListModel_ onUnbind(k0<FavoriteServiceListModel_, c> k0Var) {
        onMutation();
        return this;
    }

    /* renamed from: onUnbind, reason: collision with other method in class */
    public /* bridge */ /* synthetic */ l m150onUnbind(k0 k0Var) {
        return onUnbind((k0<FavoriteServiceListModel_, c>) k0Var);
    }

    public FavoriteServiceListModel_ onVisibilityChanged(l0<FavoriteServiceListModel_, c> l0Var) {
        onMutation();
        return this;
    }

    /* renamed from: onVisibilityChanged, reason: collision with other method in class */
    public /* bridge */ /* synthetic */ l m151onVisibilityChanged(l0 l0Var) {
        return onVisibilityChanged((l0<FavoriteServiceListModel_, c>) l0Var);
    }

    @Override // com.airbnb.epoxy.v, com.airbnb.epoxy.u
    public void onVisibilityChanged(float f, float f10, int r32, int r42, c cVar) {
        super.onVisibilityChanged(f, f10, r32, r42, (int) cVar);
    }

    public FavoriteServiceListModel_ onVisibilityStateChanged(m0<FavoriteServiceListModel_, c> m0Var) {
        onMutation();
        return this;
    }

    /* renamed from: onVisibilityStateChanged, reason: collision with other method in class */
    public /* bridge */ /* synthetic */ l m152onVisibilityStateChanged(m0 m0Var) {
        return onVisibilityStateChanged((m0<FavoriteServiceListModel_, c>) m0Var);
    }

    @Override // com.airbnb.epoxy.v, com.airbnb.epoxy.u
    public void onVisibilityStateChanged(int r12, c cVar) {
        super.onVisibilityStateChanged(r12, (int) cVar);
    }

    @Override // com.airbnb.epoxy.u
    public FavoriteServiceListModel_ reset() {
        this.service = null;
        super.setServiceIndex(null);
        this.listener = null;
        this.unFavoriteListener = null;
        super.reset();
        return this;
    }

    @Override // xf.l
    public FavoriteServiceListModel_ service(ServiceModelRealm serviceModelRealm) {
        onMutation();
        this.service = serviceModelRealm;
        return this;
    }

    public ServiceModelRealm service() {
        return this.service;
    }

    public Integer serviceIndex() {
        return super.getServiceIndex();
    }

    @Override // xf.l
    public FavoriteServiceListModel_ serviceIndex(Integer num) {
        onMutation();
        super.setServiceIndex(num);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    public FavoriteServiceListModel_ show() {
        super.show();
        return this;
    }

    @Override // com.airbnb.epoxy.u
    public FavoriteServiceListModel_ show(boolean z10) {
        super.show(z10);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: spanSizeOverride, reason: merged with bridge method [inline-methods] */
    public FavoriteServiceListModel_ m153spanSizeOverride(@Nullable u.c cVar) {
        super.m153spanSizeOverride(cVar);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    public String toString() {
        return "FavoriteServiceListModel_{service=" + this.service + ", serviceIndex=" + getServiceIndex() + "}" + super.toString();
    }

    @Override // xf.l
    public FavoriteServiceListModel_ unFavoriteListener(x9.l<? super ServiceModelRealm, m> lVar) {
        onMutation();
        this.unFavoriteListener = lVar;
        return this;
    }

    public x9.l<? super ServiceModelRealm, m> unFavoriteListener() {
        return this.unFavoriteListener;
    }

    @Override // xf.l
    public /* bridge */ /* synthetic */ l unFavoriteListener(x9.l lVar) {
        return unFavoriteListener((x9.l<? super ServiceModelRealm, m>) lVar);
    }

    @Override // com.airbnb.epoxy.v, com.airbnb.epoxy.u
    public void unbind(c cVar) {
        super.unbind((FavoriteServiceListModel_) cVar);
    }
}
