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
import x9.l;
import xf.a0;

/* loaded from: classes3.dex */
public class ServiceDBListItemModel_ extends ServiceDBListItemModel implements y<c>, a0 {
    private i0<ServiceDBListItemModel_, c> onModelBoundListener_epoxyGeneratedModel;
    private k0<ServiceDBListItemModel_, c> onModelUnboundListener_epoxyGeneratedModel;
    private l0<ServiceDBListItemModel_, c> onModelVisibilityChangedListener_epoxyGeneratedModel;
    private m0<ServiceDBListItemModel_, c> onModelVisibilityStateChangedListener_epoxyGeneratedModel;

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
        if (!(obj instanceof ServiceDBListItemModel_) || !super.equals(obj)) {
            return false;
        }
        ServiceDBListItemModel_ serviceDBListItemModel_ = (ServiceDBListItemModel_) obj;
        serviceDBListItemModel_.getClass();
        ServiceModelRealm serviceModelRealm = this.service;
        if (serviceModelRealm == null ? serviceDBListItemModel_.service != null : !serviceModelRealm.equals(serviceDBListItemModel_.service)) {
            return false;
        }
        l<? super ServiceModelRealm, m> lVar = this.listener;
        if (lVar == null ? serviceDBListItemModel_.listener != null : !lVar.equals(serviceDBListItemModel_.listener)) {
            return false;
        }
        l<? super ServiceModelRealm, m> lVar2 = this.unFavoriteListener;
        if (lVar2 == null ? serviceDBListItemModel_.unFavoriteListener != null : !lVar2.equals(serviceDBListItemModel_.unFavoriteListener)) {
            return false;
        }
        l<? super ServiceModelRealm, m> lVar3 = this.favoriteListener;
        l<? super ServiceModelRealm, m> lVar4 = serviceDBListItemModel_.favoriteListener;
        return lVar3 == null ? lVar4 == null : lVar3.equals(lVar4);
    }

    @Override // xf.a0
    public ServiceDBListItemModel_ favoriteListener(l<? super ServiceModelRealm, m> lVar) {
        onMutation();
        this.favoriteListener = lVar;
        return this;
    }

    public l<? super ServiceModelRealm, m> favoriteListener() {
        return this.favoriteListener;
    }

    @Override // xf.a0
    public /* bridge */ /* synthetic */ a0 favoriteListener(l lVar) {
        return favoriteListener((l<? super ServiceModelRealm, m>) lVar);
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
        int r04 = (r03 + (lVar != null ? lVar.hashCode() : 0)) * 31;
        l<? super ServiceModelRealm, m> lVar2 = this.unFavoriteListener;
        int r05 = (r04 + (lVar2 != null ? lVar2.hashCode() : 0)) * 31;
        l<? super ServiceModelRealm, m> lVar3 = this.favoriteListener;
        return r05 + (lVar3 != null ? lVar3.hashCode() : 0);
    }

    @Override // com.airbnb.epoxy.u
    public ServiceDBListItemModel_ hide() {
        super.hide();
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id, reason: merged with bridge method [inline-methods] */
    public ServiceDBListItemModel_ m229id(long j10) {
        super.m229id(j10);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id, reason: merged with bridge method [inline-methods] */
    public ServiceDBListItemModel_ m230id(long j10, long j11) {
        super.m230id(j10, j11);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id, reason: merged with bridge method [inline-methods] */
    public ServiceDBListItemModel_ m231id(@Nullable CharSequence charSequence) {
        super.m231id(charSequence);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id, reason: merged with bridge method [inline-methods] */
    public ServiceDBListItemModel_ m232id(@Nullable CharSequence charSequence, long j10) {
        super.m232id(charSequence, j10);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id, reason: merged with bridge method [inline-methods] */
    public ServiceDBListItemModel_ m233id(@Nullable CharSequence charSequence, @Nullable CharSequence... charSequenceArr) {
        super.m233id(charSequence, charSequenceArr);
        return this;
    }

    @Override // xf.a0
    /* renamed from: id, reason: merged with bridge method [inline-methods] */
    public ServiceDBListItemModel_ mo234id(@Nullable Number... numberArr) {
        super.mo234id(numberArr);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: layout, reason: merged with bridge method [inline-methods] */
    public ServiceDBListItemModel_ m235layout(@LayoutRes int r12) {
        super.m235layout(r12);
        return this;
    }

    @Override // xf.a0
    public ServiceDBListItemModel_ listener(l<? super ServiceModelRealm, m> lVar) {
        onMutation();
        this.listener = lVar;
        return this;
    }

    public l<? super ServiceModelRealm, m> listener() {
        return this.listener;
    }

    @Override // xf.a0
    public /* bridge */ /* synthetic */ a0 listener(l lVar) {
        return listener((l<? super ServiceModelRealm, m>) lVar);
    }

    public ServiceDBListItemModel_ onBind(i0<ServiceDBListItemModel_, c> i0Var) {
        onMutation();
        return this;
    }

    /* renamed from: onBind, reason: collision with other method in class */
    public /* bridge */ /* synthetic */ a0 m236onBind(i0 i0Var) {
        return onBind((i0<ServiceDBListItemModel_, c>) i0Var);
    }

    public ServiceDBListItemModel_ onUnbind(k0<ServiceDBListItemModel_, c> k0Var) {
        onMutation();
        return this;
    }

    /* renamed from: onUnbind, reason: collision with other method in class */
    public /* bridge */ /* synthetic */ a0 m237onUnbind(k0 k0Var) {
        return onUnbind((k0<ServiceDBListItemModel_, c>) k0Var);
    }

    public ServiceDBListItemModel_ onVisibilityChanged(l0<ServiceDBListItemModel_, c> l0Var) {
        onMutation();
        return this;
    }

    /* renamed from: onVisibilityChanged, reason: collision with other method in class */
    public /* bridge */ /* synthetic */ a0 m238onVisibilityChanged(l0 l0Var) {
        return onVisibilityChanged((l0<ServiceDBListItemModel_, c>) l0Var);
    }

    @Override // com.airbnb.epoxy.v, com.airbnb.epoxy.u
    public void onVisibilityChanged(float f, float f10, int r32, int r42, c cVar) {
        super.onVisibilityChanged(f, f10, r32, r42, (int) cVar);
    }

    public ServiceDBListItemModel_ onVisibilityStateChanged(m0<ServiceDBListItemModel_, c> m0Var) {
        onMutation();
        return this;
    }

    /* renamed from: onVisibilityStateChanged, reason: collision with other method in class */
    public /* bridge */ /* synthetic */ a0 m239onVisibilityStateChanged(m0 m0Var) {
        return onVisibilityStateChanged((m0<ServiceDBListItemModel_, c>) m0Var);
    }

    @Override // com.airbnb.epoxy.v, com.airbnb.epoxy.u
    public void onVisibilityStateChanged(int r12, c cVar) {
        super.onVisibilityStateChanged(r12, (int) cVar);
    }

    @Override // com.airbnb.epoxy.u
    public ServiceDBListItemModel_ reset() {
        this.service = null;
        this.listener = null;
        this.unFavoriteListener = null;
        this.favoriteListener = null;
        super.reset();
        return this;
    }

    @Override // xf.a0
    public ServiceDBListItemModel_ service(ServiceModelRealm serviceModelRealm) {
        onMutation();
        this.service = serviceModelRealm;
        return this;
    }

    public ServiceModelRealm service() {
        return this.service;
    }

    @Override // com.airbnb.epoxy.u
    public ServiceDBListItemModel_ show() {
        super.show();
        return this;
    }

    @Override // com.airbnb.epoxy.u
    public ServiceDBListItemModel_ show(boolean z10) {
        super.show(z10);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: spanSizeOverride, reason: merged with bridge method [inline-methods] */
    public ServiceDBListItemModel_ m240spanSizeOverride(@Nullable u.c cVar) {
        super.m240spanSizeOverride(cVar);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    public String toString() {
        return "ServiceDBListItemModel_{service=" + this.service + "}" + super.toString();
    }

    @Override // xf.a0
    public ServiceDBListItemModel_ unFavoriteListener(l<? super ServiceModelRealm, m> lVar) {
        onMutation();
        this.unFavoriteListener = lVar;
        return this;
    }

    public l<? super ServiceModelRealm, m> unFavoriteListener() {
        return this.unFavoriteListener;
    }

    @Override // xf.a0
    public /* bridge */ /* synthetic */ a0 unFavoriteListener(l lVar) {
        return unFavoriteListener((l<? super ServiceModelRealm, m>) lVar);
    }

    @Override // com.airbnb.epoxy.v, com.airbnb.epoxy.u
    public void unbind(c cVar) {
        super.unbind((ServiceDBListItemModel_) cVar);
    }
}
