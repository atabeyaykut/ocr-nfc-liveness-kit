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
import tr.gov.turkiye.edevlet.kapisi.data.about.AboutPageModelRealm;
import x9.l;
import xf.a;

/* loaded from: classes3.dex */
public class AboutPageItemModel_ extends AboutPageItemModel implements y<c>, a {
    private i0<AboutPageItemModel_, c> onModelBoundListener_epoxyGeneratedModel;
    private k0<AboutPageItemModel_, c> onModelUnboundListener_epoxyGeneratedModel;
    private l0<AboutPageItemModel_, c> onModelVisibilityChangedListener_epoxyGeneratedModel;
    private m0<AboutPageItemModel_, c> onModelVisibilityStateChangedListener_epoxyGeneratedModel;

    @Override // xf.a
    public AboutPageItemModel_ aboutPageItem(AboutPageModelRealm aboutPageModelRealm) {
        onMutation();
        this.aboutPageItem = aboutPageModelRealm;
        return this;
    }

    public AboutPageModelRealm aboutPageItem() {
        return this.aboutPageItem;
    }

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
        if (!(obj instanceof AboutPageItemModel_) || !super.equals(obj)) {
            return false;
        }
        AboutPageItemModel_ aboutPageItemModel_ = (AboutPageItemModel_) obj;
        aboutPageItemModel_.getClass();
        AboutPageModelRealm aboutPageModelRealm = this.aboutPageItem;
        if (aboutPageModelRealm == null ? aboutPageItemModel_.aboutPageItem != null : !aboutPageModelRealm.equals(aboutPageItemModel_.aboutPageItem)) {
            return false;
        }
        l<? super AboutPageModelRealm, m> lVar = this.listener;
        l<? super AboutPageModelRealm, m> lVar2 = aboutPageItemModel_.listener;
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
        AboutPageModelRealm aboutPageModelRealm = this.aboutPageItem;
        int r03 = (r02 + (aboutPageModelRealm != null ? aboutPageModelRealm.hashCode() : 0)) * 31;
        l<? super AboutPageModelRealm, m> lVar = this.listener;
        return r03 + (lVar != null ? lVar.hashCode() : 0);
    }

    @Override // com.airbnb.epoxy.u
    public AboutPageItemModel_ hide() {
        super.hide();
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id, reason: merged with bridge method [inline-methods] */
    public AboutPageItemModel_ m38id(long j10) {
        super.m38id(j10);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id, reason: merged with bridge method [inline-methods] */
    public AboutPageItemModel_ m39id(long j10, long j11) {
        super.m39id(j10, j11);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id, reason: merged with bridge method [inline-methods] */
    public AboutPageItemModel_ m40id(@Nullable CharSequence charSequence) {
        super.m40id(charSequence);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id, reason: merged with bridge method [inline-methods] */
    public AboutPageItemModel_ m41id(@Nullable CharSequence charSequence, long j10) {
        super.m41id(charSequence, j10);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id, reason: merged with bridge method [inline-methods] */
    public AboutPageItemModel_ m42id(@Nullable CharSequence charSequence, @Nullable CharSequence... charSequenceArr) {
        super.m42id(charSequence, charSequenceArr);
        return this;
    }

    @Override // xf.a
    /* renamed from: id, reason: merged with bridge method [inline-methods] */
    public AboutPageItemModel_ mo43id(@Nullable Number... numberArr) {
        super.mo43id(numberArr);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: layout, reason: merged with bridge method [inline-methods] */
    public AboutPageItemModel_ m44layout(@LayoutRes int r12) {
        super.m44layout(r12);
        return this;
    }

    @Override // xf.a
    public AboutPageItemModel_ listener(l<? super AboutPageModelRealm, m> lVar) {
        onMutation();
        this.listener = lVar;
        return this;
    }

    public l<? super AboutPageModelRealm, m> listener() {
        return this.listener;
    }

    @Override // xf.a
    public /* bridge */ /* synthetic */ a listener(l lVar) {
        return listener((l<? super AboutPageModelRealm, m>) lVar);
    }

    public AboutPageItemModel_ onBind(i0<AboutPageItemModel_, c> i0Var) {
        onMutation();
        return this;
    }

    /* renamed from: onBind, reason: collision with other method in class */
    public /* bridge */ /* synthetic */ a m45onBind(i0 i0Var) {
        return onBind((i0<AboutPageItemModel_, c>) i0Var);
    }

    public AboutPageItemModel_ onUnbind(k0<AboutPageItemModel_, c> k0Var) {
        onMutation();
        return this;
    }

    /* renamed from: onUnbind, reason: collision with other method in class */
    public /* bridge */ /* synthetic */ a m46onUnbind(k0 k0Var) {
        return onUnbind((k0<AboutPageItemModel_, c>) k0Var);
    }

    public AboutPageItemModel_ onVisibilityChanged(l0<AboutPageItemModel_, c> l0Var) {
        onMutation();
        return this;
    }

    /* renamed from: onVisibilityChanged, reason: collision with other method in class */
    public /* bridge */ /* synthetic */ a m47onVisibilityChanged(l0 l0Var) {
        return onVisibilityChanged((l0<AboutPageItemModel_, c>) l0Var);
    }

    @Override // com.airbnb.epoxy.v, com.airbnb.epoxy.u
    public void onVisibilityChanged(float f, float f10, int r32, int r42, c cVar) {
        super.onVisibilityChanged(f, f10, r32, r42, (int) cVar);
    }

    public AboutPageItemModel_ onVisibilityStateChanged(m0<AboutPageItemModel_, c> m0Var) {
        onMutation();
        return this;
    }

    /* renamed from: onVisibilityStateChanged, reason: collision with other method in class */
    public /* bridge */ /* synthetic */ a m48onVisibilityStateChanged(m0 m0Var) {
        return onVisibilityStateChanged((m0<AboutPageItemModel_, c>) m0Var);
    }

    @Override // com.airbnb.epoxy.v, com.airbnb.epoxy.u
    public void onVisibilityStateChanged(int r12, c cVar) {
        super.onVisibilityStateChanged(r12, (int) cVar);
    }

    @Override // com.airbnb.epoxy.u
    public AboutPageItemModel_ reset() {
        this.aboutPageItem = null;
        this.listener = null;
        super.reset();
        return this;
    }

    @Override // com.airbnb.epoxy.u
    public AboutPageItemModel_ show() {
        super.show();
        return this;
    }

    @Override // com.airbnb.epoxy.u
    public AboutPageItemModel_ show(boolean z10) {
        super.show(z10);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: spanSizeOverride, reason: merged with bridge method [inline-methods] */
    public AboutPageItemModel_ m49spanSizeOverride(@Nullable u.c cVar) {
        super.m49spanSizeOverride(cVar);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    public String toString() {
        return "AboutPageItemModel_{aboutPageItem=" + this.aboutPageItem + "}" + super.toString();
    }

    @Override // com.airbnb.epoxy.v, com.airbnb.epoxy.u
    public void unbind(c cVar) {
        super.unbind((AboutPageItemModel_) cVar);
    }
}
