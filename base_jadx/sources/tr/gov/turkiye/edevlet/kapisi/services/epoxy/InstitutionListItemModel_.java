package tr.gov.turkiye.edevlet.kapisi.services.epoxy;

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
import sg.f;
import tr.gov.turkiye.edevlet.kapisi.data.institution.InstitutionModelRealm;
import x9.a;

/* loaded from: classes3.dex */
public class InstitutionListItemModel_ extends InstitutionListItemModel implements y<c>, f {
    private i0<InstitutionListItemModel_, c> onModelBoundListener_epoxyGeneratedModel;
    private k0<InstitutionListItemModel_, c> onModelUnboundListener_epoxyGeneratedModel;
    private l0<InstitutionListItemModel_, c> onModelVisibilityChangedListener_epoxyGeneratedModel;
    private m0<InstitutionListItemModel_, c> onModelVisibilityStateChangedListener_epoxyGeneratedModel;

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
        if (!(obj instanceof InstitutionListItemModel_) || !super.equals(obj)) {
            return false;
        }
        InstitutionListItemModel_ institutionListItemModel_ = (InstitutionListItemModel_) obj;
        institutionListItemModel_.getClass();
        InstitutionModelRealm institutionModelRealm = this.institution;
        if (institutionModelRealm == null ? institutionListItemModel_.institution != null : !institutionModelRealm.equals(institutionListItemModel_.institution)) {
            return false;
        }
        String str = this.serviceCount;
        if (str == null ? institutionListItemModel_.serviceCount != null : !str.equals(institutionListItemModel_.serviceCount)) {
            return false;
        }
        a<m> aVar = this.listener;
        a<m> aVar2 = institutionListItemModel_.listener;
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
    public InstitutionListItemModel_ hide() {
        super.hide();
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id, reason: merged with bridge method [inline-methods] */
    public InstitutionListItemModel_ m368id(long j10) {
        super.m368id(j10);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id, reason: merged with bridge method [inline-methods] */
    public InstitutionListItemModel_ m369id(long j10, long j11) {
        super.m369id(j10, j11);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id, reason: merged with bridge method [inline-methods] */
    public InstitutionListItemModel_ m370id(@Nullable CharSequence charSequence) {
        super.m370id(charSequence);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id, reason: merged with bridge method [inline-methods] */
    public InstitutionListItemModel_ m371id(@Nullable CharSequence charSequence, long j10) {
        super.m371id(charSequence, j10);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id, reason: merged with bridge method [inline-methods] */
    public InstitutionListItemModel_ m372id(@Nullable CharSequence charSequence, @Nullable CharSequence... charSequenceArr) {
        super.m372id(charSequence, charSequenceArr);
        return this;
    }

    @Override // sg.f
    /* renamed from: id, reason: merged with bridge method [inline-methods] */
    public InstitutionListItemModel_ mo373id(@Nullable Number... numberArr) {
        super.mo373id(numberArr);
        return this;
    }

    public InstitutionModelRealm institution() {
        return this.institution;
    }

    @Override // sg.f
    public InstitutionListItemModel_ institution(InstitutionModelRealm institutionModelRealm) {
        onMutation();
        this.institution = institutionModelRealm;
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: layout, reason: merged with bridge method [inline-methods] */
    public InstitutionListItemModel_ m374layout(@LayoutRes int r12) {
        super.m374layout(r12);
        return this;
    }

    @Override // sg.f
    public /* bridge */ /* synthetic */ f listener(a aVar) {
        return listener((a<m>) aVar);
    }

    @Override // sg.f
    public InstitutionListItemModel_ listener(a<m> aVar) {
        onMutation();
        this.listener = aVar;
        return this;
    }

    public a<m> listener() {
        return this.listener;
    }

    public /* bridge */ /* synthetic */ f onBind(i0 i0Var) {
        return m375onBind((i0<InstitutionListItemModel_, c>) i0Var);
    }

    /* renamed from: onBind, reason: collision with other method in class */
    public InstitutionListItemModel_ m375onBind(i0<InstitutionListItemModel_, c> i0Var) {
        onMutation();
        return this;
    }

    public /* bridge */ /* synthetic */ f onUnbind(k0 k0Var) {
        return m376onUnbind((k0<InstitutionListItemModel_, c>) k0Var);
    }

    /* renamed from: onUnbind, reason: collision with other method in class */
    public InstitutionListItemModel_ m376onUnbind(k0<InstitutionListItemModel_, c> k0Var) {
        onMutation();
        return this;
    }

    public /* bridge */ /* synthetic */ f onVisibilityChanged(l0 l0Var) {
        return m377onVisibilityChanged((l0<InstitutionListItemModel_, c>) l0Var);
    }

    /* renamed from: onVisibilityChanged, reason: collision with other method in class */
    public InstitutionListItemModel_ m377onVisibilityChanged(l0<InstitutionListItemModel_, c> l0Var) {
        onMutation();
        return this;
    }

    @Override // com.airbnb.epoxy.v, com.airbnb.epoxy.u
    public void onVisibilityChanged(float f, float f10, int r32, int r42, c cVar) {
        super.onVisibilityChanged(f, f10, r32, r42, (int) cVar);
    }

    public /* bridge */ /* synthetic */ f onVisibilityStateChanged(m0 m0Var) {
        return m378onVisibilityStateChanged((m0<InstitutionListItemModel_, c>) m0Var);
    }

    /* renamed from: onVisibilityStateChanged, reason: collision with other method in class */
    public InstitutionListItemModel_ m378onVisibilityStateChanged(m0<InstitutionListItemModel_, c> m0Var) {
        onMutation();
        return this;
    }

    @Override // com.airbnb.epoxy.v, com.airbnb.epoxy.u
    public void onVisibilityStateChanged(int r12, c cVar) {
        super.onVisibilityStateChanged(r12, (int) cVar);
    }

    @Override // com.airbnb.epoxy.u
    public InstitutionListItemModel_ reset() {
        this.institution = null;
        this.serviceCount = null;
        this.listener = null;
        super.reset();
        return this;
    }

    public String serviceCount() {
        return this.serviceCount;
    }

    @Override // sg.f
    public InstitutionListItemModel_ serviceCount(String str) {
        onMutation();
        this.serviceCount = str;
        return this;
    }

    @Override // com.airbnb.epoxy.u
    public InstitutionListItemModel_ show() {
        super.show();
        return this;
    }

    @Override // com.airbnb.epoxy.u
    public InstitutionListItemModel_ show(boolean z10) {
        super.show(z10);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: spanSizeOverride, reason: merged with bridge method [inline-methods] */
    public InstitutionListItemModel_ m379spanSizeOverride(@Nullable u.c cVar) {
        super.m379spanSizeOverride(cVar);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    public String toString() {
        return "InstitutionListItemModel_{institution=" + this.institution + ", serviceCount=" + this.serviceCount + "}" + super.toString();
    }

    @Override // com.airbnb.epoxy.v, com.airbnb.epoxy.u
    public void unbind(c cVar) {
        super.unbind((InstitutionListItemModel_) cVar);
    }
}
