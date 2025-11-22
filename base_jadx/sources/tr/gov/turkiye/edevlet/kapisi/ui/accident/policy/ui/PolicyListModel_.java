package tr.gov.turkiye.edevlet.kapisi.ui.accident.policy.ui;

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
import tr.gov.turkiye.edevlet.kapisi.data.mkt.AccidentReportPolicy;
import vh.a;

/* loaded from: classes3.dex */
public class PolicyListModel_ extends PolicyListModel implements y<c>, a {
    private i0<PolicyListModel_, c> onModelBoundListener_epoxyGeneratedModel;
    private k0<PolicyListModel_, c> onModelUnboundListener_epoxyGeneratedModel;
    private l0<PolicyListModel_, c> onModelVisibilityChangedListener_epoxyGeneratedModel;
    private m0<PolicyListModel_, c> onModelVisibilityStateChangedListener_epoxyGeneratedModel;

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
        if (!(obj instanceof PolicyListModel_) || !super.equals(obj)) {
            return false;
        }
        PolicyListModel_ policyListModel_ = (PolicyListModel_) obj;
        policyListModel_.getClass();
        AccidentReportPolicy accidentReportPolicy = this.policyItem;
        if (accidentReportPolicy == null ? policyListModel_.policyItem != null : !accidentReportPolicy.equals(policyListModel_.policyItem)) {
            return false;
        }
        String str = this.isDivider;
        String str2 = policyListModel_.isDivider;
        return str == null ? str2 == null : str.equals(str2);
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
        AccidentReportPolicy accidentReportPolicy = this.policyItem;
        int r03 = (r02 + (accidentReportPolicy != null ? accidentReportPolicy.hashCode() : 0)) * 31;
        String str = this.isDivider;
        return r03 + (str != null ? str.hashCode() : 0);
    }

    @Override // com.airbnb.epoxy.u
    public PolicyListModel_ hide() {
        super.hide();
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id, reason: merged with bridge method [inline-methods] */
    public PolicyListModel_ m444id(long j10) {
        super.m444id(j10);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id, reason: merged with bridge method [inline-methods] */
    public PolicyListModel_ m445id(long j10, long j11) {
        super.m445id(j10, j11);
        return this;
    }

    @Override // vh.a
    /* renamed from: id, reason: merged with bridge method [inline-methods] */
    public PolicyListModel_ mo446id(@Nullable CharSequence charSequence) {
        super.mo446id(charSequence);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id, reason: merged with bridge method [inline-methods] */
    public PolicyListModel_ m447id(@Nullable CharSequence charSequence, long j10) {
        super.m447id(charSequence, j10);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id, reason: merged with bridge method [inline-methods] */
    public PolicyListModel_ m448id(@Nullable CharSequence charSequence, @Nullable CharSequence... charSequenceArr) {
        super.m448id(charSequence, charSequenceArr);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id, reason: merged with bridge method [inline-methods] */
    public PolicyListModel_ m449id(@Nullable Number... numberArr) {
        super.m449id(numberArr);
        return this;
    }

    @Override // vh.a
    public PolicyListModel_ isDivider(String str) {
        onMutation();
        this.isDivider = str;
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: layout, reason: merged with bridge method [inline-methods] */
    public PolicyListModel_ m450layout(@LayoutRes int r12) {
        super.m450layout(r12);
        return this;
    }

    public PolicyListModel_ onBind(i0<PolicyListModel_, c> i0Var) {
        onMutation();
        return this;
    }

    /* renamed from: onBind, reason: collision with other method in class */
    public /* bridge */ /* synthetic */ a m451onBind(i0 i0Var) {
        return onBind((i0<PolicyListModel_, c>) i0Var);
    }

    public PolicyListModel_ onUnbind(k0<PolicyListModel_, c> k0Var) {
        onMutation();
        return this;
    }

    /* renamed from: onUnbind, reason: collision with other method in class */
    public /* bridge */ /* synthetic */ a m452onUnbind(k0 k0Var) {
        return onUnbind((k0<PolicyListModel_, c>) k0Var);
    }

    public PolicyListModel_ onVisibilityChanged(l0<PolicyListModel_, c> l0Var) {
        onMutation();
        return this;
    }

    /* renamed from: onVisibilityChanged, reason: collision with other method in class */
    public /* bridge */ /* synthetic */ a m453onVisibilityChanged(l0 l0Var) {
        return onVisibilityChanged((l0<PolicyListModel_, c>) l0Var);
    }

    @Override // com.airbnb.epoxy.v, com.airbnb.epoxy.u
    public void onVisibilityChanged(float f, float f10, int r32, int r42, c cVar) {
        super.onVisibilityChanged(f, f10, r32, r42, (int) cVar);
    }

    public PolicyListModel_ onVisibilityStateChanged(m0<PolicyListModel_, c> m0Var) {
        onMutation();
        return this;
    }

    /* renamed from: onVisibilityStateChanged, reason: collision with other method in class */
    public /* bridge */ /* synthetic */ a m454onVisibilityStateChanged(m0 m0Var) {
        return onVisibilityStateChanged((m0<PolicyListModel_, c>) m0Var);
    }

    @Override // com.airbnb.epoxy.v, com.airbnb.epoxy.u
    public void onVisibilityStateChanged(int r12, c cVar) {
        super.onVisibilityStateChanged(r12, (int) cVar);
    }

    public AccidentReportPolicy policyItem() {
        return this.policyItem;
    }

    @Override // vh.a
    public PolicyListModel_ policyItem(AccidentReportPolicy accidentReportPolicy) {
        onMutation();
        this.policyItem = accidentReportPolicy;
        return this;
    }

    @Override // com.airbnb.epoxy.u
    public PolicyListModel_ reset() {
        this.policyItem = null;
        this.isDivider = null;
        super.reset();
        return this;
    }

    @Override // com.airbnb.epoxy.u
    public PolicyListModel_ show() {
        super.show();
        return this;
    }

    @Override // com.airbnb.epoxy.u
    public PolicyListModel_ show(boolean z10) {
        super.show(z10);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: spanSizeOverride, reason: merged with bridge method [inline-methods] */
    public PolicyListModel_ m455spanSizeOverride(@Nullable u.c cVar) {
        super.m455spanSizeOverride(cVar);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    public String toString() {
        return "PolicyListModel_{policyItem=" + this.policyItem + ", isDivider=" + this.isDivider + "}" + super.toString();
    }

    @Override // com.airbnb.epoxy.v, com.airbnb.epoxy.u
    public void unbind(c cVar) {
        super.unbind((PolicyListModel_) cVar);
    }
}
