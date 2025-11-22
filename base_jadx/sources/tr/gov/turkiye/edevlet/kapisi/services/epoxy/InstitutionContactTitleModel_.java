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
import sg.d;

/* loaded from: classes3.dex */
public class InstitutionContactTitleModel_ extends InstitutionContactTitleModel implements y<c>, d {
    private i0<InstitutionContactTitleModel_, c> onModelBoundListener_epoxyGeneratedModel;
    private k0<InstitutionContactTitleModel_, c> onModelUnboundListener_epoxyGeneratedModel;
    private l0<InstitutionContactTitleModel_, c> onModelVisibilityChangedListener_epoxyGeneratedModel;
    private m0<InstitutionContactTitleModel_, c> onModelVisibilityStateChangedListener_epoxyGeneratedModel;

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
        if (!(obj instanceof InstitutionContactTitleModel_) || !super.equals(obj)) {
            return false;
        }
        InstitutionContactTitleModel_ institutionContactTitleModel_ = (InstitutionContactTitleModel_) obj;
        institutionContactTitleModel_.getClass();
        return getInstitutionContactTitleText() == null ? institutionContactTitleModel_.getInstitutionContactTitleText() == null : getInstitutionContactTitleText().equals(institutionContactTitleModel_.getInstitutionContactTitleText());
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
        return b.c(super.hashCode(), 31, 0, 31, 0, 31, 0, 31, 0, 31) + (getInstitutionContactTitleText() != null ? getInstitutionContactTitleText().hashCode() : 0);
    }

    @Override // com.airbnb.epoxy.u
    public InstitutionContactTitleModel_ hide() {
        super.hide();
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id, reason: merged with bridge method [inline-methods] */
    public InstitutionContactTitleModel_ m344id(long j10) {
        super.m344id(j10);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id, reason: merged with bridge method [inline-methods] */
    public InstitutionContactTitleModel_ m345id(long j10, long j11) {
        super.m345id(j10, j11);
        return this;
    }

    @Override // sg.d
    /* renamed from: id, reason: merged with bridge method [inline-methods] */
    public InstitutionContactTitleModel_ mo346id(@Nullable CharSequence charSequence) {
        super.mo346id(charSequence);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id, reason: merged with bridge method [inline-methods] */
    public InstitutionContactTitleModel_ m347id(@Nullable CharSequence charSequence, long j10) {
        super.m347id(charSequence, j10);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id, reason: merged with bridge method [inline-methods] */
    public InstitutionContactTitleModel_ m348id(@Nullable CharSequence charSequence, @Nullable CharSequence... charSequenceArr) {
        super.m348id(charSequence, charSequenceArr);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id, reason: merged with bridge method [inline-methods] */
    public InstitutionContactTitleModel_ m349id(@Nullable Number... numberArr) {
        super.m349id(numberArr);
        return this;
    }

    public String institutionContactTitleText() {
        return super.getInstitutionContactTitleText();
    }

    @Override // sg.d
    public InstitutionContactTitleModel_ institutionContactTitleText(String str) {
        onMutation();
        super.setInstitutionContactTitleText(str);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: layout, reason: merged with bridge method [inline-methods] */
    public InstitutionContactTitleModel_ m350layout(@LayoutRes int r12) {
        super.m350layout(r12);
        return this;
    }

    public /* bridge */ /* synthetic */ d onBind(i0 i0Var) {
        return m351onBind((i0<InstitutionContactTitleModel_, c>) i0Var);
    }

    /* renamed from: onBind, reason: collision with other method in class */
    public InstitutionContactTitleModel_ m351onBind(i0<InstitutionContactTitleModel_, c> i0Var) {
        onMutation();
        return this;
    }

    public /* bridge */ /* synthetic */ d onUnbind(k0 k0Var) {
        return m352onUnbind((k0<InstitutionContactTitleModel_, c>) k0Var);
    }

    /* renamed from: onUnbind, reason: collision with other method in class */
    public InstitutionContactTitleModel_ m352onUnbind(k0<InstitutionContactTitleModel_, c> k0Var) {
        onMutation();
        return this;
    }

    public /* bridge */ /* synthetic */ d onVisibilityChanged(l0 l0Var) {
        return m353onVisibilityChanged((l0<InstitutionContactTitleModel_, c>) l0Var);
    }

    /* renamed from: onVisibilityChanged, reason: collision with other method in class */
    public InstitutionContactTitleModel_ m353onVisibilityChanged(l0<InstitutionContactTitleModel_, c> l0Var) {
        onMutation();
        return this;
    }

    @Override // com.airbnb.epoxy.v, com.airbnb.epoxy.u
    public void onVisibilityChanged(float f, float f10, int r32, int r42, c cVar) {
        super.onVisibilityChanged(f, f10, r32, r42, (int) cVar);
    }

    public /* bridge */ /* synthetic */ d onVisibilityStateChanged(m0 m0Var) {
        return m354onVisibilityStateChanged((m0<InstitutionContactTitleModel_, c>) m0Var);
    }

    /* renamed from: onVisibilityStateChanged, reason: collision with other method in class */
    public InstitutionContactTitleModel_ m354onVisibilityStateChanged(m0<InstitutionContactTitleModel_, c> m0Var) {
        onMutation();
        return this;
    }

    @Override // com.airbnb.epoxy.v, com.airbnb.epoxy.u
    public void onVisibilityStateChanged(int r12, c cVar) {
        super.onVisibilityStateChanged(r12, (int) cVar);
    }

    @Override // com.airbnb.epoxy.u
    public InstitutionContactTitleModel_ reset() {
        super.setInstitutionContactTitleText(null);
        super.reset();
        return this;
    }

    @Override // com.airbnb.epoxy.u
    public InstitutionContactTitleModel_ show() {
        super.show();
        return this;
    }

    @Override // com.airbnb.epoxy.u
    public InstitutionContactTitleModel_ show(boolean z10) {
        super.show(z10);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: spanSizeOverride, reason: merged with bridge method [inline-methods] */
    public InstitutionContactTitleModel_ m355spanSizeOverride(@Nullable u.c cVar) {
        super.m355spanSizeOverride(cVar);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    public String toString() {
        return "InstitutionContactTitleModel_{institutionContactTitleText=" + getInstitutionContactTitleText() + "}" + super.toString();
    }

    @Override // com.airbnb.epoxy.v, com.airbnb.epoxy.u
    public void unbind(c cVar) {
        super.unbind((InstitutionContactTitleModel_) cVar);
    }
}
