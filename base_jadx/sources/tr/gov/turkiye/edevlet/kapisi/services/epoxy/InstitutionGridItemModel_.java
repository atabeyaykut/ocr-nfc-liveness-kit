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
import sg.e;
import x9.l;

/* loaded from: classes3.dex */
public class InstitutionGridItemModel_ extends InstitutionGridItemModel implements y<c>, e {
    private i0<InstitutionGridItemModel_, c> onModelBoundListener_epoxyGeneratedModel;
    private k0<InstitutionGridItemModel_, c> onModelUnboundListener_epoxyGeneratedModel;
    private l0<InstitutionGridItemModel_, c> onModelVisibilityChangedListener_epoxyGeneratedModel;
    private m0<InstitutionGridItemModel_, c> onModelVisibilityStateChangedListener_epoxyGeneratedModel;

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
        if (!(obj instanceof InstitutionGridItemModel_) || !super.equals(obj)) {
            return false;
        }
        InstitutionGridItemModel_ institutionGridItemModel_ = (InstitutionGridItemModel_) obj;
        institutionGridItemModel_.getClass();
        ug.c cVar = this.institution;
        if (cVar == null ? institutionGridItemModel_.institution != null : !cVar.equals(institutionGridItemModel_.institution)) {
            return false;
        }
        l<? super ug.c, m> lVar = this.listener;
        l<? super ug.c, m> lVar2 = institutionGridItemModel_.listener;
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
        ug.c cVar = this.institution;
        int r03 = (r02 + (cVar != null ? cVar.hashCode() : 0)) * 31;
        l<? super ug.c, m> lVar = this.listener;
        return r03 + (lVar != null ? lVar.hashCode() : 0);
    }

    @Override // com.airbnb.epoxy.u
    public InstitutionGridItemModel_ hide() {
        super.hide();
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id, reason: merged with bridge method [inline-methods] */
    public InstitutionGridItemModel_ m356id(long j10) {
        super.m356id(j10);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id, reason: merged with bridge method [inline-methods] */
    public InstitutionGridItemModel_ m357id(long j10, long j11) {
        super.m357id(j10, j11);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id, reason: merged with bridge method [inline-methods] */
    public InstitutionGridItemModel_ m358id(@Nullable CharSequence charSequence) {
        super.m358id(charSequence);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id, reason: merged with bridge method [inline-methods] */
    public InstitutionGridItemModel_ m359id(@Nullable CharSequence charSequence, long j10) {
        super.m359id(charSequence, j10);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id, reason: merged with bridge method [inline-methods] */
    public InstitutionGridItemModel_ m360id(@Nullable CharSequence charSequence, @Nullable CharSequence... charSequenceArr) {
        super.m360id(charSequence, charSequenceArr);
        return this;
    }

    @Override // sg.e
    /* renamed from: id, reason: merged with bridge method [inline-methods] */
    public InstitutionGridItemModel_ mo361id(@Nullable Number... numberArr) {
        super.mo361id(numberArr);
        return this;
    }

    @Override // sg.e
    public InstitutionGridItemModel_ institution(ug.c cVar) {
        onMutation();
        this.institution = cVar;
        return this;
    }

    public ug.c institution() {
        return this.institution;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: layout, reason: merged with bridge method [inline-methods] */
    public InstitutionGridItemModel_ m362layout(@LayoutRes int r12) {
        super.m362layout(r12);
        return this;
    }

    @Override // sg.e
    public /* bridge */ /* synthetic */ e listener(l lVar) {
        return listener((l<? super ug.c, m>) lVar);
    }

    @Override // sg.e
    public InstitutionGridItemModel_ listener(l<? super ug.c, m> lVar) {
        onMutation();
        this.listener = lVar;
        return this;
    }

    public l<? super ug.c, m> listener() {
        return this.listener;
    }

    public /* bridge */ /* synthetic */ e onBind(i0 i0Var) {
        return m363onBind((i0<InstitutionGridItemModel_, c>) i0Var);
    }

    /* renamed from: onBind, reason: collision with other method in class */
    public InstitutionGridItemModel_ m363onBind(i0<InstitutionGridItemModel_, c> i0Var) {
        onMutation();
        return this;
    }

    public /* bridge */ /* synthetic */ e onUnbind(k0 k0Var) {
        return m364onUnbind((k0<InstitutionGridItemModel_, c>) k0Var);
    }

    /* renamed from: onUnbind, reason: collision with other method in class */
    public InstitutionGridItemModel_ m364onUnbind(k0<InstitutionGridItemModel_, c> k0Var) {
        onMutation();
        return this;
    }

    public /* bridge */ /* synthetic */ e onVisibilityChanged(l0 l0Var) {
        return m365onVisibilityChanged((l0<InstitutionGridItemModel_, c>) l0Var);
    }

    /* renamed from: onVisibilityChanged, reason: collision with other method in class */
    public InstitutionGridItemModel_ m365onVisibilityChanged(l0<InstitutionGridItemModel_, c> l0Var) {
        onMutation();
        return this;
    }

    @Override // com.airbnb.epoxy.v, com.airbnb.epoxy.u
    public void onVisibilityChanged(float f, float f10, int r32, int r42, c cVar) {
        super.onVisibilityChanged(f, f10, r32, r42, (int) cVar);
    }

    public /* bridge */ /* synthetic */ e onVisibilityStateChanged(m0 m0Var) {
        return m366onVisibilityStateChanged((m0<InstitutionGridItemModel_, c>) m0Var);
    }

    /* renamed from: onVisibilityStateChanged, reason: collision with other method in class */
    public InstitutionGridItemModel_ m366onVisibilityStateChanged(m0<InstitutionGridItemModel_, c> m0Var) {
        onMutation();
        return this;
    }

    @Override // com.airbnb.epoxy.v, com.airbnb.epoxy.u
    public void onVisibilityStateChanged(int r12, c cVar) {
        super.onVisibilityStateChanged(r12, (int) cVar);
    }

    @Override // com.airbnb.epoxy.u
    public InstitutionGridItemModel_ reset() {
        this.institution = null;
        this.listener = null;
        super.reset();
        return this;
    }

    @Override // com.airbnb.epoxy.u
    public InstitutionGridItemModel_ show() {
        super.show();
        return this;
    }

    @Override // com.airbnb.epoxy.u
    public InstitutionGridItemModel_ show(boolean z10) {
        super.show(z10);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: spanSizeOverride, reason: merged with bridge method [inline-methods] */
    public InstitutionGridItemModel_ m367spanSizeOverride(@Nullable u.c cVar) {
        super.m367spanSizeOverride(cVar);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    public String toString() {
        return "InstitutionGridItemModel_{institution=" + this.institution + "}" + super.toString();
    }

    @Override // com.airbnb.epoxy.v, com.airbnb.epoxy.u
    public void unbind(c cVar) {
        super.unbind((InstitutionGridItemModel_) cVar);
    }
}
