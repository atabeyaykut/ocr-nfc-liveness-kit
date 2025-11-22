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
import xf.b0;

/* loaded from: classes3.dex */
public class WonderListItemModel_ extends WonderListItemModel implements y<c>, b0 {
    private i0<WonderListItemModel_, c> onModelBoundListener_epoxyGeneratedModel;
    private k0<WonderListItemModel_, c> onModelUnboundListener_epoxyGeneratedModel;
    private l0<WonderListItemModel_, c> onModelVisibilityChangedListener_epoxyGeneratedModel;
    private m0<WonderListItemModel_, c> onModelVisibilityStateChangedListener_epoxyGeneratedModel;

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
        if (!(obj instanceof WonderListItemModel_) || !super.equals(obj)) {
            return false;
        }
        WonderListItemModel_ wonderListItemModel_ = (WonderListItemModel_) obj;
        wonderListItemModel_.getClass();
        ServiceModelRealm serviceModelRealm = this.service;
        if (serviceModelRealm == null ? wonderListItemModel_.service != null : !serviceModelRealm.equals(wonderListItemModel_.service)) {
            return false;
        }
        String str = this.question;
        if (str == null ? wonderListItemModel_.question != null : !str.equals(wonderListItemModel_.question)) {
            return false;
        }
        l<? super ServiceModelRealm, m> lVar = this.listener;
        l<? super ServiceModelRealm, m> lVar2 = wonderListItemModel_.listener;
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
        String str = this.question;
        int r04 = (r03 + (str != null ? str.hashCode() : 0)) * 31;
        l<? super ServiceModelRealm, m> lVar = this.listener;
        return r04 + (lVar != null ? lVar.hashCode() : 0);
    }

    @Override // com.airbnb.epoxy.u
    public WonderListItemModel_ hide() {
        super.hide();
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id, reason: merged with bridge method [inline-methods] */
    public WonderListItemModel_ m241id(long j10) {
        super.m241id(j10);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id, reason: merged with bridge method [inline-methods] */
    public WonderListItemModel_ m242id(long j10, long j11) {
        super.m242id(j10, j11);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id, reason: merged with bridge method [inline-methods] */
    public WonderListItemModel_ m243id(@Nullable CharSequence charSequence) {
        super.m243id(charSequence);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id, reason: merged with bridge method [inline-methods] */
    public WonderListItemModel_ m244id(@Nullable CharSequence charSequence, long j10) {
        super.m244id(charSequence, j10);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id, reason: merged with bridge method [inline-methods] */
    public WonderListItemModel_ m245id(@Nullable CharSequence charSequence, @Nullable CharSequence... charSequenceArr) {
        super.m245id(charSequence, charSequenceArr);
        return this;
    }

    @Override // xf.b0
    /* renamed from: id, reason: merged with bridge method [inline-methods] */
    public WonderListItemModel_ mo246id(@Nullable Number... numberArr) {
        super.mo246id(numberArr);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: layout, reason: merged with bridge method [inline-methods] */
    public WonderListItemModel_ m247layout(@LayoutRes int r12) {
        super.m247layout(r12);
        return this;
    }

    @Override // xf.b0
    public WonderListItemModel_ listener(l<? super ServiceModelRealm, m> lVar) {
        onMutation();
        this.listener = lVar;
        return this;
    }

    public l<? super ServiceModelRealm, m> listener() {
        return this.listener;
    }

    @Override // xf.b0
    public /* bridge */ /* synthetic */ b0 listener(l lVar) {
        return listener((l<? super ServiceModelRealm, m>) lVar);
    }

    public WonderListItemModel_ onBind(i0<WonderListItemModel_, c> i0Var) {
        onMutation();
        return this;
    }

    /* renamed from: onBind, reason: collision with other method in class */
    public /* bridge */ /* synthetic */ b0 m248onBind(i0 i0Var) {
        return onBind((i0<WonderListItemModel_, c>) i0Var);
    }

    public WonderListItemModel_ onUnbind(k0<WonderListItemModel_, c> k0Var) {
        onMutation();
        return this;
    }

    /* renamed from: onUnbind, reason: collision with other method in class */
    public /* bridge */ /* synthetic */ b0 m249onUnbind(k0 k0Var) {
        return onUnbind((k0<WonderListItemModel_, c>) k0Var);
    }

    public WonderListItemModel_ onVisibilityChanged(l0<WonderListItemModel_, c> l0Var) {
        onMutation();
        return this;
    }

    /* renamed from: onVisibilityChanged, reason: collision with other method in class */
    public /* bridge */ /* synthetic */ b0 m250onVisibilityChanged(l0 l0Var) {
        return onVisibilityChanged((l0<WonderListItemModel_, c>) l0Var);
    }

    @Override // com.airbnb.epoxy.v, com.airbnb.epoxy.u
    public void onVisibilityChanged(float f, float f10, int r32, int r42, c cVar) {
        super.onVisibilityChanged(f, f10, r32, r42, (int) cVar);
    }

    public WonderListItemModel_ onVisibilityStateChanged(m0<WonderListItemModel_, c> m0Var) {
        onMutation();
        return this;
    }

    /* renamed from: onVisibilityStateChanged, reason: collision with other method in class */
    public /* bridge */ /* synthetic */ b0 m251onVisibilityStateChanged(m0 m0Var) {
        return onVisibilityStateChanged((m0<WonderListItemModel_, c>) m0Var);
    }

    @Override // com.airbnb.epoxy.v, com.airbnb.epoxy.u
    public void onVisibilityStateChanged(int r12, c cVar) {
        super.onVisibilityStateChanged(r12, (int) cVar);
    }

    public String question() {
        return this.question;
    }

    @Override // xf.b0
    public WonderListItemModel_ question(String str) {
        onMutation();
        this.question = str;
        return this;
    }

    @Override // com.airbnb.epoxy.u
    public WonderListItemModel_ reset() {
        this.service = null;
        this.question = null;
        this.listener = null;
        super.reset();
        return this;
    }

    @Override // xf.b0
    public WonderListItemModel_ service(ServiceModelRealm serviceModelRealm) {
        onMutation();
        this.service = serviceModelRealm;
        return this;
    }

    public ServiceModelRealm service() {
        return this.service;
    }

    @Override // com.airbnb.epoxy.u
    public WonderListItemModel_ show() {
        super.show();
        return this;
    }

    @Override // com.airbnb.epoxy.u
    public WonderListItemModel_ show(boolean z10) {
        super.show(z10);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: spanSizeOverride, reason: merged with bridge method [inline-methods] */
    public WonderListItemModel_ m252spanSizeOverride(@Nullable u.c cVar) {
        super.m252spanSizeOverride(cVar);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    public String toString() {
        return "WonderListItemModel_{service=" + this.service + ", question=" + this.question + "}" + super.toString();
    }

    @Override // com.airbnb.epoxy.v, com.airbnb.epoxy.u
    public void unbind(c cVar) {
        super.unbind((WonderListItemModel_) cVar);
    }
}
