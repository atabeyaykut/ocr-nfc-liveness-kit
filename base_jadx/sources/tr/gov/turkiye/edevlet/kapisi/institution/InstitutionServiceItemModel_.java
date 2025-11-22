package tr.gov.turkiye.edevlet.kapisi.institution;

import ag.j;
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
public class InstitutionServiceItemModel_ extends InstitutionServiceItemModel implements y<c>, j {
    private i0<InstitutionServiceItemModel_, c> onModelBoundListener_epoxyGeneratedModel;
    private k0<InstitutionServiceItemModel_, c> onModelUnboundListener_epoxyGeneratedModel;
    private l0<InstitutionServiceItemModel_, c> onModelVisibilityChangedListener_epoxyGeneratedModel;
    private m0<InstitutionServiceItemModel_, c> onModelVisibilityStateChangedListener_epoxyGeneratedModel;

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
        if (!(obj instanceof InstitutionServiceItemModel_) || !super.equals(obj)) {
            return false;
        }
        InstitutionServiceItemModel_ institutionServiceItemModel_ = (InstitutionServiceItemModel_) obj;
        institutionServiceItemModel_.getClass();
        ServiceModelRealm serviceModelRealm = this.service;
        if (serviceModelRealm == null ? institutionServiceItemModel_.service != null : !serviceModelRealm.equals(institutionServiceItemModel_.service)) {
            return false;
        }
        if (getProgressView() != institutionServiceItemModel_.getProgressView()) {
            return false;
        }
        l<? super ServiceModelRealm, m> lVar = this.unFavoriteListener;
        if (lVar == null ? institutionServiceItemModel_.unFavoriteListener != null : !lVar.equals(institutionServiceItemModel_.unFavoriteListener)) {
            return false;
        }
        l<? super ServiceModelRealm, m> lVar2 = this.favoriteListener;
        if (lVar2 == null ? institutionServiceItemModel_.favoriteListener != null : !lVar2.equals(institutionServiceItemModel_.favoriteListener)) {
            return false;
        }
        l<? super ServiceModelRealm, m> lVar3 = this.listener;
        l<? super ServiceModelRealm, m> lVar4 = institutionServiceItemModel_.listener;
        return lVar3 == null ? lVar4 == null : lVar3.equals(lVar4);
    }

    @Override // ag.j
    public /* bridge */ /* synthetic */ j favoriteListener(l lVar) {
        return favoriteListener((l<? super ServiceModelRealm, m>) lVar);
    }

    @Override // ag.j
    public InstitutionServiceItemModel_ favoriteListener(l<? super ServiceModelRealm, m> lVar) {
        onMutation();
        this.favoriteListener = lVar;
        return this;
    }

    public l<? super ServiceModelRealm, m> favoriteListener() {
        return this.favoriteListener;
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
        int r12 = ((getProgressView() ? 1 : 0) + ((r02 + (serviceModelRealm != null ? serviceModelRealm.hashCode() : 0)) * 31)) * 31;
        l<? super ServiceModelRealm, m> lVar = this.unFavoriteListener;
        int r13 = (r12 + (lVar != null ? lVar.hashCode() : 0)) * 31;
        l<? super ServiceModelRealm, m> lVar2 = this.favoriteListener;
        int r14 = (r13 + (lVar2 != null ? lVar2.hashCode() : 0)) * 31;
        l<? super ServiceModelRealm, m> lVar3 = this.listener;
        return r14 + (lVar3 != null ? lVar3.hashCode() : 0);
    }

    @Override // com.airbnb.epoxy.u
    public InstitutionServiceItemModel_ hide() {
        super.hide();
        return this;
    }

    @Override // com.airbnb.epoxy.u
    public InstitutionServiceItemModel_ id(long j10) {
        super.id(j10);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    public InstitutionServiceItemModel_ id(long j10, long j11) {
        super.id(j10, j11);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    public InstitutionServiceItemModel_ id(@Nullable CharSequence charSequence) {
        super.id(charSequence);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    public InstitutionServiceItemModel_ id(@Nullable CharSequence charSequence, long j10) {
        super.id(charSequence, j10);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    public InstitutionServiceItemModel_ id(@Nullable CharSequence charSequence, @Nullable CharSequence... charSequenceArr) {
        super.id(charSequence, charSequenceArr);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    public InstitutionServiceItemModel_ id(@Nullable Number... numberArr) {
        super.id(numberArr);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    public InstitutionServiceItemModel_ layout(@LayoutRes int r12) {
        super.layout(r12);
        return this;
    }

    @Override // ag.j
    public /* bridge */ /* synthetic */ j listener(l lVar) {
        return listener((l<? super ServiceModelRealm, m>) lVar);
    }

    @Override // ag.j
    public InstitutionServiceItemModel_ listener(l<? super ServiceModelRealm, m> lVar) {
        onMutation();
        this.listener = lVar;
        return this;
    }

    public l<? super ServiceModelRealm, m> listener() {
        return this.listener;
    }

    public /* bridge */ /* synthetic */ j onBind(i0 i0Var) {
        return m253onBind((i0<InstitutionServiceItemModel_, c>) i0Var);
    }

    /* renamed from: onBind, reason: collision with other method in class */
    public InstitutionServiceItemModel_ m253onBind(i0<InstitutionServiceItemModel_, c> i0Var) {
        onMutation();
        return this;
    }

    public /* bridge */ /* synthetic */ j onUnbind(k0 k0Var) {
        return m254onUnbind((k0<InstitutionServiceItemModel_, c>) k0Var);
    }

    /* renamed from: onUnbind, reason: collision with other method in class */
    public InstitutionServiceItemModel_ m254onUnbind(k0<InstitutionServiceItemModel_, c> k0Var) {
        onMutation();
        return this;
    }

    public /* bridge */ /* synthetic */ j onVisibilityChanged(l0 l0Var) {
        return m255onVisibilityChanged((l0<InstitutionServiceItemModel_, c>) l0Var);
    }

    /* renamed from: onVisibilityChanged, reason: collision with other method in class */
    public InstitutionServiceItemModel_ m255onVisibilityChanged(l0<InstitutionServiceItemModel_, c> l0Var) {
        onMutation();
        return this;
    }

    @Override // com.airbnb.epoxy.v, com.airbnb.epoxy.u
    public void onVisibilityChanged(float f, float f10, int r32, int r42, c cVar) {
        super.onVisibilityChanged(f, f10, r32, r42, (int) cVar);
    }

    public /* bridge */ /* synthetic */ j onVisibilityStateChanged(m0 m0Var) {
        return m256onVisibilityStateChanged((m0<InstitutionServiceItemModel_, c>) m0Var);
    }

    /* renamed from: onVisibilityStateChanged, reason: collision with other method in class */
    public InstitutionServiceItemModel_ m256onVisibilityStateChanged(m0<InstitutionServiceItemModel_, c> m0Var) {
        onMutation();
        return this;
    }

    @Override // com.airbnb.epoxy.v, com.airbnb.epoxy.u
    public void onVisibilityStateChanged(int r12, c cVar) {
        super.onVisibilityStateChanged(r12, (int) cVar);
    }

    public InstitutionServiceItemModel_ progressView(boolean z10) {
        onMutation();
        super.setProgressView(z10);
        return this;
    }

    public boolean progressView() {
        return super.getProgressView();
    }

    @Override // com.airbnb.epoxy.u
    public InstitutionServiceItemModel_ reset() {
        this.service = null;
        super.setProgressView(false);
        this.unFavoriteListener = null;
        this.favoriteListener = null;
        this.listener = null;
        super.reset();
        return this;
    }

    public ServiceModelRealm service() {
        return this.service;
    }

    @Override // ag.j
    public InstitutionServiceItemModel_ service(ServiceModelRealm serviceModelRealm) {
        onMutation();
        this.service = serviceModelRealm;
        return this;
    }

    @Override // com.airbnb.epoxy.u
    public InstitutionServiceItemModel_ show() {
        super.show();
        return this;
    }

    @Override // com.airbnb.epoxy.u
    public InstitutionServiceItemModel_ show(boolean z10) {
        super.show(z10);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    public InstitutionServiceItemModel_ spanSizeOverride(@Nullable u.c cVar) {
        super.spanSizeOverride(cVar);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    public String toString() {
        return "InstitutionServiceItemModel_{service=" + this.service + ", progressView=" + getProgressView() + "}" + super.toString();
    }

    @Override // ag.j
    public /* bridge */ /* synthetic */ j unFavoriteListener(l lVar) {
        return unFavoriteListener((l<? super ServiceModelRealm, m>) lVar);
    }

    @Override // ag.j
    public InstitutionServiceItemModel_ unFavoriteListener(l<? super ServiceModelRealm, m> lVar) {
        onMutation();
        this.unFavoriteListener = lVar;
        return this;
    }

    public l<? super ServiceModelRealm, m> unFavoriteListener() {
        return this.unFavoriteListener;
    }

    @Override // com.airbnb.epoxy.v, com.airbnb.epoxy.u
    public void unbind(c cVar) {
        super.unbind((InstitutionServiceItemModel_) cVar);
    }
}
