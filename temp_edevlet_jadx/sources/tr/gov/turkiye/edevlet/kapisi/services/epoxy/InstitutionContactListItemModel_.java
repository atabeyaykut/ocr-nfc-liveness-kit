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
import tr.gov.turkiye.edevlet.kapisi.data.institution.InstitutionContactModelRealm;
import x9.l;
import x9.q;

/* loaded from: classes3.dex */
public class InstitutionContactListItemModel_ extends InstitutionContactListItemModel implements y<c>, sg.c {
    private i0<InstitutionContactListItemModel_, c> onModelBoundListener_epoxyGeneratedModel;
    private k0<InstitutionContactListItemModel_, c> onModelUnboundListener_epoxyGeneratedModel;
    private l0<InstitutionContactListItemModel_, c> onModelVisibilityChangedListener_epoxyGeneratedModel;
    private m0<InstitutionContactListItemModel_, c> onModelVisibilityStateChangedListener_epoxyGeneratedModel;

    @Override // com.airbnb.epoxy.u
    public void addTo(p pVar) {
        super.addTo(pVar);
        addWithDebugValidation(pVar);
    }

    @Override // sg.c
    public /* bridge */ /* synthetic */ sg.c addressListener(q qVar) {
        return addressListener((q<? super String, ? super String, ? super String, m>) qVar);
    }

    @Override // sg.c
    public InstitutionContactListItemModel_ addressListener(q<? super String, ? super String, ? super String, m> qVar) {
        onMutation();
        this.addressListener = qVar;
        return this;
    }

    public q<? super String, ? super String, ? super String, m> addressListener() {
        return this.addressListener;
    }

    @Override // com.airbnb.epoxy.u
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof InstitutionContactListItemModel_) || !super.equals(obj)) {
            return false;
        }
        InstitutionContactListItemModel_ institutionContactListItemModel_ = (InstitutionContactListItemModel_) obj;
        institutionContactListItemModel_.getClass();
        InstitutionContactModelRealm institutionContactModelRealm = this.institutionContact;
        if (institutionContactModelRealm == null ? institutionContactListItemModel_.institutionContact != null : !institutionContactModelRealm.equals(institutionContactListItemModel_.institutionContact)) {
            return false;
        }
        l<? super String, m> lVar = this.phoneListener;
        if (lVar == null ? institutionContactListItemModel_.phoneListener != null : !lVar.equals(institutionContactListItemModel_.phoneListener)) {
            return false;
        }
        q<? super String, ? super String, ? super String, m> qVar = this.addressListener;
        if (qVar == null ? institutionContactListItemModel_.addressListener != null : !qVar.equals(institutionContactListItemModel_.addressListener)) {
            return false;
        }
        l<? super String, m> lVar2 = this.websiteListener;
        l<? super String, m> lVar3 = institutionContactListItemModel_.websiteListener;
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
        InstitutionContactModelRealm institutionContactModelRealm = this.institutionContact;
        int r03 = (r02 + (institutionContactModelRealm != null ? institutionContactModelRealm.hashCode() : 0)) * 31;
        l<? super String, m> lVar = this.phoneListener;
        int r04 = (r03 + (lVar != null ? lVar.hashCode() : 0)) * 31;
        q<? super String, ? super String, ? super String, m> qVar = this.addressListener;
        int r05 = (r04 + (qVar != null ? qVar.hashCode() : 0)) * 31;
        l<? super String, m> lVar2 = this.websiteListener;
        return r05 + (lVar2 != null ? lVar2.hashCode() : 0);
    }

    @Override // com.airbnb.epoxy.u
    public InstitutionContactListItemModel_ hide() {
        super.hide();
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id, reason: merged with bridge method [inline-methods] */
    public InstitutionContactListItemModel_ m332id(long j10) {
        super.m332id(j10);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id, reason: merged with bridge method [inline-methods] */
    public InstitutionContactListItemModel_ m333id(long j10, long j11) {
        super.m333id(j10, j11);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id, reason: merged with bridge method [inline-methods] */
    public InstitutionContactListItemModel_ m334id(@Nullable CharSequence charSequence) {
        super.m334id(charSequence);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id, reason: merged with bridge method [inline-methods] */
    public InstitutionContactListItemModel_ m335id(@Nullable CharSequence charSequence, long j10) {
        super.m335id(charSequence, j10);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id, reason: merged with bridge method [inline-methods] */
    public InstitutionContactListItemModel_ m336id(@Nullable CharSequence charSequence, @Nullable CharSequence... charSequenceArr) {
        super.m336id(charSequence, charSequenceArr);
        return this;
    }

    @Override // sg.c
    /* renamed from: id, reason: merged with bridge method [inline-methods] */
    public InstitutionContactListItemModel_ mo337id(@Nullable Number... numberArr) {
        super.mo337id(numberArr);
        return this;
    }

    public InstitutionContactModelRealm institutionContact() {
        return this.institutionContact;
    }

    @Override // sg.c
    public InstitutionContactListItemModel_ institutionContact(InstitutionContactModelRealm institutionContactModelRealm) {
        onMutation();
        this.institutionContact = institutionContactModelRealm;
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: layout, reason: merged with bridge method [inline-methods] */
    public InstitutionContactListItemModel_ m338layout(@LayoutRes int r12) {
        super.m338layout(r12);
        return this;
    }

    public /* bridge */ /* synthetic */ sg.c onBind(i0 i0Var) {
        return m339onBind((i0<InstitutionContactListItemModel_, c>) i0Var);
    }

    /* renamed from: onBind, reason: collision with other method in class */
    public InstitutionContactListItemModel_ m339onBind(i0<InstitutionContactListItemModel_, c> i0Var) {
        onMutation();
        return this;
    }

    public /* bridge */ /* synthetic */ sg.c onUnbind(k0 k0Var) {
        return m340onUnbind((k0<InstitutionContactListItemModel_, c>) k0Var);
    }

    /* renamed from: onUnbind, reason: collision with other method in class */
    public InstitutionContactListItemModel_ m340onUnbind(k0<InstitutionContactListItemModel_, c> k0Var) {
        onMutation();
        return this;
    }

    public /* bridge */ /* synthetic */ sg.c onVisibilityChanged(l0 l0Var) {
        return m341onVisibilityChanged((l0<InstitutionContactListItemModel_, c>) l0Var);
    }

    /* renamed from: onVisibilityChanged, reason: collision with other method in class */
    public InstitutionContactListItemModel_ m341onVisibilityChanged(l0<InstitutionContactListItemModel_, c> l0Var) {
        onMutation();
        return this;
    }

    @Override // com.airbnb.epoxy.v, com.airbnb.epoxy.u
    public void onVisibilityChanged(float f, float f10, int r32, int r42, c cVar) {
        super.onVisibilityChanged(f, f10, r32, r42, (int) cVar);
    }

    public /* bridge */ /* synthetic */ sg.c onVisibilityStateChanged(m0 m0Var) {
        return m342onVisibilityStateChanged((m0<InstitutionContactListItemModel_, c>) m0Var);
    }

    /* renamed from: onVisibilityStateChanged, reason: collision with other method in class */
    public InstitutionContactListItemModel_ m342onVisibilityStateChanged(m0<InstitutionContactListItemModel_, c> m0Var) {
        onMutation();
        return this;
    }

    @Override // com.airbnb.epoxy.v, com.airbnb.epoxy.u
    public void onVisibilityStateChanged(int r12, c cVar) {
        super.onVisibilityStateChanged(r12, (int) cVar);
    }

    @Override // sg.c
    public /* bridge */ /* synthetic */ sg.c phoneListener(l lVar) {
        return phoneListener((l<? super String, m>) lVar);
    }

    @Override // sg.c
    public InstitutionContactListItemModel_ phoneListener(l<? super String, m> lVar) {
        onMutation();
        this.phoneListener = lVar;
        return this;
    }

    public l<? super String, m> phoneListener() {
        return this.phoneListener;
    }

    @Override // com.airbnb.epoxy.u
    public InstitutionContactListItemModel_ reset() {
        this.institutionContact = null;
        this.phoneListener = null;
        this.addressListener = null;
        this.websiteListener = null;
        super.reset();
        return this;
    }

    @Override // com.airbnb.epoxy.u
    public InstitutionContactListItemModel_ show() {
        super.show();
        return this;
    }

    @Override // com.airbnb.epoxy.u
    public InstitutionContactListItemModel_ show(boolean z10) {
        super.show(z10);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: spanSizeOverride, reason: merged with bridge method [inline-methods] */
    public InstitutionContactListItemModel_ m343spanSizeOverride(@Nullable u.c cVar) {
        super.m343spanSizeOverride(cVar);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    public String toString() {
        return "InstitutionContactListItemModel_{institutionContact=" + this.institutionContact + "}" + super.toString();
    }

    @Override // com.airbnb.epoxy.v, com.airbnb.epoxy.u
    public void unbind(c cVar) {
        super.unbind((InstitutionContactListItemModel_) cVar);
    }

    @Override // sg.c
    public /* bridge */ /* synthetic */ sg.c websiteListener(l lVar) {
        return websiteListener((l<? super String, m>) lVar);
    }

    @Override // sg.c
    public InstitutionContactListItemModel_ websiteListener(l<? super String, m> lVar) {
        onMutation();
        this.websiteListener = lVar;
        return this;
    }

    public l<? super String, m> websiteListener() {
        return this.websiteListener;
    }
}
