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
import tr.gov.turkiye.edevlet.kapisi.data.institution.InstitutionModelRealm;
import x9.a;
import xf.v;

/* loaded from: classes3.dex */
public class MyCityInstitutionItemModel_ extends MyCityInstitutionItemModel implements y<c>, v {
    private i0<MyCityInstitutionItemModel_, c> onModelBoundListener_epoxyGeneratedModel;
    private k0<MyCityInstitutionItemModel_, c> onModelUnboundListener_epoxyGeneratedModel;
    private l0<MyCityInstitutionItemModel_, c> onModelVisibilityChangedListener_epoxyGeneratedModel;
    private m0<MyCityInstitutionItemModel_, c> onModelVisibilityStateChangedListener_epoxyGeneratedModel;

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
        if (!(obj instanceof MyCityInstitutionItemModel_) || !super.equals(obj)) {
            return false;
        }
        MyCityInstitutionItemModel_ myCityInstitutionItemModel_ = (MyCityInstitutionItemModel_) obj;
        myCityInstitutionItemModel_.getClass();
        InstitutionModelRealm institutionModelRealm = this.institution;
        if (institutionModelRealm == null ? myCityInstitutionItemModel_.institution != null : !institutionModelRealm.equals(myCityInstitutionItemModel_.institution)) {
            return false;
        }
        String str = this.serviceCount;
        if (str == null ? myCityInstitutionItemModel_.serviceCount != null : !str.equals(myCityInstitutionItemModel_.serviceCount)) {
            return false;
        }
        a<m> aVar = this.listener;
        a<m> aVar2 = myCityInstitutionItemModel_.listener;
        return aVar == null ? aVar2 == null : aVar.equals(aVar2);
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
        InstitutionModelRealm institutionModelRealm = this.institution;
        int r03 = (r02 + (institutionModelRealm != null ? institutionModelRealm.hashCode() : 0)) * 31;
        String str = this.serviceCount;
        int r04 = (r03 + (str != null ? str.hashCode() : 0)) * 31;
        a<m> aVar = this.listener;
        return r04 + (aVar != null ? aVar.hashCode() : 0);
    }

    @Override // com.airbnb.epoxy.u
    public MyCityInstitutionItemModel_ hide() {
        super.hide();
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id, reason: merged with bridge method [inline-methods] */
    public MyCityInstitutionItemModel_ m191id(long j10) {
        super.m191id(j10);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id, reason: merged with bridge method [inline-methods] */
    public MyCityInstitutionItemModel_ m192id(long j10, long j11) {
        super.m192id(j10, j11);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id, reason: merged with bridge method [inline-methods] */
    public MyCityInstitutionItemModel_ m193id(@Nullable CharSequence charSequence) {
        super.m193id(charSequence);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id, reason: merged with bridge method [inline-methods] */
    public MyCityInstitutionItemModel_ m194id(@Nullable CharSequence charSequence, long j10) {
        super.m194id(charSequence, j10);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id, reason: merged with bridge method [inline-methods] */
    public MyCityInstitutionItemModel_ m195id(@Nullable CharSequence charSequence, @Nullable CharSequence... charSequenceArr) {
        super.m195id(charSequence, charSequenceArr);
        return this;
    }

    @Override // xf.v
    /* renamed from: id, reason: merged with bridge method [inline-methods] */
    public MyCityInstitutionItemModel_ mo196id(@Nullable Number... numberArr) {
        super.mo196id(numberArr);
        return this;
    }

    @Override // xf.v
    public MyCityInstitutionItemModel_ institution(InstitutionModelRealm institutionModelRealm) {
        onMutation();
        this.institution = institutionModelRealm;
        return this;
    }

    public InstitutionModelRealm institution() {
        return this.institution;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: layout, reason: merged with bridge method [inline-methods] */
    public MyCityInstitutionItemModel_ m197layout(@LayoutRes int r12) {
        super.m197layout(r12);
        return this;
    }

    @Override // xf.v
    public MyCityInstitutionItemModel_ listener(a<m> aVar) {
        onMutation();
        this.listener = aVar;
        return this;
    }

    public a<m> listener() {
        return this.listener;
    }

    @Override // xf.v
    public /* bridge */ /* synthetic */ v listener(a aVar) {
        return listener((a<m>) aVar);
    }

    public MyCityInstitutionItemModel_ onBind(i0<MyCityInstitutionItemModel_, c> i0Var) {
        onMutation();
        return this;
    }

    /* renamed from: onBind, reason: collision with other method in class */
    public /* bridge */ /* synthetic */ v m198onBind(i0 i0Var) {
        return onBind((i0<MyCityInstitutionItemModel_, c>) i0Var);
    }

    public MyCityInstitutionItemModel_ onUnbind(k0<MyCityInstitutionItemModel_, c> k0Var) {
        onMutation();
        return this;
    }

    /* renamed from: onUnbind, reason: collision with other method in class */
    public /* bridge */ /* synthetic */ v m199onUnbind(k0 k0Var) {
        return onUnbind((k0<MyCityInstitutionItemModel_, c>) k0Var);
    }

    public MyCityInstitutionItemModel_ onVisibilityChanged(l0<MyCityInstitutionItemModel_, c> l0Var) {
        onMutation();
        return this;
    }

    /* renamed from: onVisibilityChanged, reason: collision with other method in class */
    public /* bridge */ /* synthetic */ v m200onVisibilityChanged(l0 l0Var) {
        return onVisibilityChanged((l0<MyCityInstitutionItemModel_, c>) l0Var);
    }

    @Override // com.airbnb.epoxy.v, com.airbnb.epoxy.u
    public void onVisibilityChanged(float f, float f10, int r32, int r42, c cVar) {
        super.onVisibilityChanged(f, f10, r32, r42, (int) cVar);
    }

    public MyCityInstitutionItemModel_ onVisibilityStateChanged(m0<MyCityInstitutionItemModel_, c> m0Var) {
        onMutation();
        return this;
    }

    /* renamed from: onVisibilityStateChanged, reason: collision with other method in class */
    public /* bridge */ /* synthetic */ v m201onVisibilityStateChanged(m0 m0Var) {
        return onVisibilityStateChanged((m0<MyCityInstitutionItemModel_, c>) m0Var);
    }

    @Override // com.airbnb.epoxy.v, com.airbnb.epoxy.u
    public void onVisibilityStateChanged(int r12, c cVar) {
        super.onVisibilityStateChanged(r12, (int) cVar);
    }

    @Override // com.airbnb.epoxy.u
    public MyCityInstitutionItemModel_ reset() {
        this.institution = null;
        this.serviceCount = null;
        this.listener = null;
        super.reset();
        return this;
    }

    public String serviceCount() {
        return this.serviceCount;
    }

    @Override // xf.v
    public MyCityInstitutionItemModel_ serviceCount(String str) {
        onMutation();
        this.serviceCount = str;
        return this;
    }

    @Override // com.airbnb.epoxy.u
    public MyCityInstitutionItemModel_ show() {
        super.show();
        return this;
    }

    @Override // com.airbnb.epoxy.u
    public MyCityInstitutionItemModel_ show(boolean z10) {
        super.show(z10);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: spanSizeOverride, reason: merged with bridge method [inline-methods] */
    public MyCityInstitutionItemModel_ m202spanSizeOverride(@Nullable u.c cVar) {
        super.m202spanSizeOverride(cVar);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    public String toString() {
        return "MyCityInstitutionItemModel_{institution=" + this.institution + ", serviceCount=" + this.serviceCount + "}" + super.toString();
    }

    @Override // com.airbnb.epoxy.v, com.airbnb.epoxy.u
    public void unbind(c cVar) {
        super.unbind((MyCityInstitutionItemModel_) cVar);
    }
}
