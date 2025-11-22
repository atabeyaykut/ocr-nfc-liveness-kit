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
import xf.k;

/* loaded from: classes3.dex */
public class ElectronicServiceListItemModel_ extends ElectronicServiceListItemModel implements y<c>, k {
    private i0<ElectronicServiceListItemModel_, c> onModelBoundListener_epoxyGeneratedModel;
    private k0<ElectronicServiceListItemModel_, c> onModelUnboundListener_epoxyGeneratedModel;
    private l0<ElectronicServiceListItemModel_, c> onModelVisibilityChangedListener_epoxyGeneratedModel;
    private m0<ElectronicServiceListItemModel_, c> onModelVisibilityStateChangedListener_epoxyGeneratedModel;

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
        if (!(obj instanceof ElectronicServiceListItemModel_) || !super.equals(obj)) {
            return false;
        }
        ElectronicServiceListItemModel_ electronicServiceListItemModel_ = (ElectronicServiceListItemModel_) obj;
        electronicServiceListItemModel_.getClass();
        ServiceModelRealm serviceModelRealm = this.service;
        if (serviceModelRealm == null ? electronicServiceListItemModel_.service != null : !serviceModelRealm.equals(electronicServiceListItemModel_.service)) {
            return false;
        }
        l<? super ServiceModelRealm, m> lVar = this.listener;
        if (lVar == null ? electronicServiceListItemModel_.listener != null : !lVar.equals(electronicServiceListItemModel_.listener)) {
            return false;
        }
        l<? super ServiceModelRealm, m> lVar2 = this.unFavoriteListener;
        if (lVar2 == null ? electronicServiceListItemModel_.unFavoriteListener != null : !lVar2.equals(electronicServiceListItemModel_.unFavoriteListener)) {
            return false;
        }
        l<? super ServiceModelRealm, m> lVar3 = this.favoriteListener;
        l<? super ServiceModelRealm, m> lVar4 = electronicServiceListItemModel_.favoriteListener;
        return lVar3 == null ? lVar4 == null : lVar3.equals(lVar4);
    }

    @Override // xf.k
    public ElectronicServiceListItemModel_ favoriteListener(l<? super ServiceModelRealm, m> lVar) {
        onMutation();
        this.favoriteListener = lVar;
        return this;
    }

    public l<? super ServiceModelRealm, m> favoriteListener() {
        return this.favoriteListener;
    }

    @Override // xf.k
    public /* bridge */ /* synthetic */ k favoriteListener(l lVar) {
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
    public ElectronicServiceListItemModel_ hide() {
        super.hide();
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id, reason: merged with bridge method [inline-methods] */
    public ElectronicServiceListItemModel_ m130id(long j10) {
        super.m130id(j10);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id, reason: merged with bridge method [inline-methods] */
    public ElectronicServiceListItemModel_ m131id(long j10, long j11) {
        super.m131id(j10, j11);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id, reason: merged with bridge method [inline-methods] */
    public ElectronicServiceListItemModel_ m132id(@Nullable CharSequence charSequence) {
        super.m132id(charSequence);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id, reason: merged with bridge method [inline-methods] */
    public ElectronicServiceListItemModel_ m133id(@Nullable CharSequence charSequence, long j10) {
        super.m133id(charSequence, j10);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id, reason: merged with bridge method [inline-methods] */
    public ElectronicServiceListItemModel_ m134id(@Nullable CharSequence charSequence, @Nullable CharSequence... charSequenceArr) {
        super.m134id(charSequence, charSequenceArr);
        return this;
    }

    @Override // xf.k
    /* renamed from: id, reason: merged with bridge method [inline-methods] */
    public ElectronicServiceListItemModel_ mo135id(@Nullable Number... numberArr) {
        super.mo135id(numberArr);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: layout, reason: merged with bridge method [inline-methods] */
    public ElectronicServiceListItemModel_ m136layout(@LayoutRes int r12) {
        super.m136layout(r12);
        return this;
    }

    @Override // xf.k
    public ElectronicServiceListItemModel_ listener(l<? super ServiceModelRealm, m> lVar) {
        onMutation();
        this.listener = lVar;
        return this;
    }

    public l<? super ServiceModelRealm, m> listener() {
        return this.listener;
    }

    @Override // xf.k
    public /* bridge */ /* synthetic */ k listener(l lVar) {
        return listener((l<? super ServiceModelRealm, m>) lVar);
    }

    public ElectronicServiceListItemModel_ onBind(i0<ElectronicServiceListItemModel_, c> i0Var) {
        onMutation();
        return this;
    }

    /* renamed from: onBind, reason: collision with other method in class */
    public /* bridge */ /* synthetic */ k m137onBind(i0 i0Var) {
        return onBind((i0<ElectronicServiceListItemModel_, c>) i0Var);
    }

    public ElectronicServiceListItemModel_ onUnbind(k0<ElectronicServiceListItemModel_, c> k0Var) {
        onMutation();
        return this;
    }

    /* renamed from: onUnbind, reason: collision with other method in class */
    public /* bridge */ /* synthetic */ k m138onUnbind(k0 k0Var) {
        return onUnbind((k0<ElectronicServiceListItemModel_, c>) k0Var);
    }

    public ElectronicServiceListItemModel_ onVisibilityChanged(l0<ElectronicServiceListItemModel_, c> l0Var) {
        onMutation();
        return this;
    }

    /* renamed from: onVisibilityChanged, reason: collision with other method in class */
    public /* bridge */ /* synthetic */ k m139onVisibilityChanged(l0 l0Var) {
        return onVisibilityChanged((l0<ElectronicServiceListItemModel_, c>) l0Var);
    }

    @Override // com.airbnb.epoxy.v, com.airbnb.epoxy.u
    public void onVisibilityChanged(float f, float f10, int r32, int r42, c cVar) {
        super.onVisibilityChanged(f, f10, r32, r42, (int) cVar);
    }

    public ElectronicServiceListItemModel_ onVisibilityStateChanged(m0<ElectronicServiceListItemModel_, c> m0Var) {
        onMutation();
        return this;
    }

    /* renamed from: onVisibilityStateChanged, reason: collision with other method in class */
    public /* bridge */ /* synthetic */ k m140onVisibilityStateChanged(m0 m0Var) {
        return onVisibilityStateChanged((m0<ElectronicServiceListItemModel_, c>) m0Var);
    }

    @Override // com.airbnb.epoxy.v, com.airbnb.epoxy.u
    public void onVisibilityStateChanged(int r12, c cVar) {
        super.onVisibilityStateChanged(r12, (int) cVar);
    }

    @Override // com.airbnb.epoxy.u
    public ElectronicServiceListItemModel_ reset() {
        this.service = null;
        this.listener = null;
        this.unFavoriteListener = null;
        this.favoriteListener = null;
        super.reset();
        return this;
    }

    @Override // xf.k
    public ElectronicServiceListItemModel_ service(ServiceModelRealm serviceModelRealm) {
        onMutation();
        this.service = serviceModelRealm;
        return this;
    }

    public ServiceModelRealm service() {
        return this.service;
    }

    @Override // com.airbnb.epoxy.u
    public ElectronicServiceListItemModel_ show() {
        super.show();
        return this;
    }

    @Override // com.airbnb.epoxy.u
    public ElectronicServiceListItemModel_ show(boolean z10) {
        super.show(z10);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: spanSizeOverride, reason: merged with bridge method [inline-methods] */
    public ElectronicServiceListItemModel_ m141spanSizeOverride(@Nullable u.c cVar) {
        super.m141spanSizeOverride(cVar);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    public String toString() {
        return "ElectronicServiceListItemModel_{service=" + this.service + "}" + super.toString();
    }

    @Override // xf.k
    public ElectronicServiceListItemModel_ unFavoriteListener(l<? super ServiceModelRealm, m> lVar) {
        onMutation();
        this.unFavoriteListener = lVar;
        return this;
    }

    public l<? super ServiceModelRealm, m> unFavoriteListener() {
        return this.unFavoriteListener;
    }

    @Override // xf.k
    public /* bridge */ /* synthetic */ k unFavoriteListener(l lVar) {
        return unFavoriteListener((l<? super ServiceModelRealm, m>) lVar);
    }

    @Override // com.airbnb.epoxy.v, com.airbnb.epoxy.u
    public void unbind(c cVar) {
        super.unbind((ElectronicServiceListItemModel_) cVar);
    }
}
