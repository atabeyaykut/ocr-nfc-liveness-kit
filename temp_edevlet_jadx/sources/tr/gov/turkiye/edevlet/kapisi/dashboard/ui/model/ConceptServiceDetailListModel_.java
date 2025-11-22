package tr.gov.turkiye.edevlet.kapisi.dashboard.ui.model;

import androidx.annotation.LayoutRes;
import androidx.annotation.Nullable;
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
import tr.gov.turkiye.edevlet.kapisi.data.service.ConceptServiceModelRealm;
import x9.l;
import xf.b;

/* loaded from: classes3.dex */
public class ConceptServiceDetailListModel_ extends ConceptServiceDetailListModel implements y<c>, b {
    private i0<ConceptServiceDetailListModel_, c> onModelBoundListener_epoxyGeneratedModel;
    private k0<ConceptServiceDetailListModel_, c> onModelUnboundListener_epoxyGeneratedModel;
    private l0<ConceptServiceDetailListModel_, c> onModelVisibilityChangedListener_epoxyGeneratedModel;
    private m0<ConceptServiceDetailListModel_, c> onModelVisibilityStateChangedListener_epoxyGeneratedModel;

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
        if (!(obj instanceof ConceptServiceDetailListModel_) || !super.equals(obj)) {
            return false;
        }
        ConceptServiceDetailListModel_ conceptServiceDetailListModel_ = (ConceptServiceDetailListModel_) obj;
        conceptServiceDetailListModel_.getClass();
        ConceptServiceModelRealm conceptServiceModelRealm = this.service;
        if (conceptServiceModelRealm == null ? conceptServiceDetailListModel_.service != null : !conceptServiceModelRealm.equals(conceptServiceDetailListModel_.service)) {
            return false;
        }
        l<? super ConceptServiceModelRealm, m> lVar = this.listener;
        l<? super ConceptServiceModelRealm, m> lVar2 = conceptServiceDetailListModel_.listener;
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
        int r02 = androidx.browser.browseractions.b.c(super.hashCode(), 31, 0, 31, 0, 31, 0, 31, 0, 31);
        ConceptServiceModelRealm conceptServiceModelRealm = this.service;
        int r03 = (r02 + (conceptServiceModelRealm != null ? conceptServiceModelRealm.hashCode() : 0)) * 31;
        l<? super ConceptServiceModelRealm, m> lVar = this.listener;
        return r03 + (lVar != null ? lVar.hashCode() : 0);
    }

    @Override // com.airbnb.epoxy.u
    public ConceptServiceDetailListModel_ hide() {
        super.hide();
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id, reason: merged with bridge method [inline-methods] */
    public ConceptServiceDetailListModel_ m50id(long j10) {
        super.m130id(j10);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id, reason: merged with bridge method [inline-methods] */
    public ConceptServiceDetailListModel_ m51id(long j10, long j11) {
        super.m131id(j10, j11);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id, reason: merged with bridge method [inline-methods] */
    public ConceptServiceDetailListModel_ m52id(@Nullable CharSequence charSequence) {
        super.m132id(charSequence);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id, reason: merged with bridge method [inline-methods] */
    public ConceptServiceDetailListModel_ m53id(@Nullable CharSequence charSequence, long j10) {
        super.m133id(charSequence, j10);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id, reason: merged with bridge method [inline-methods] */
    public ConceptServiceDetailListModel_ m54id(@Nullable CharSequence charSequence, @Nullable CharSequence... charSequenceArr) {
        super.m134id(charSequence, charSequenceArr);
        return this;
    }

    @Override // xf.b
    /* renamed from: id, reason: merged with bridge method [inline-methods] */
    public ConceptServiceDetailListModel_ mo55id(@Nullable Number... numberArr) {
        super.mo135id(numberArr);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: layout, reason: merged with bridge method [inline-methods] */
    public ConceptServiceDetailListModel_ m56layout(@LayoutRes int r12) {
        super.m136layout(r12);
        return this;
    }

    @Override // xf.b
    public ConceptServiceDetailListModel_ listener(l<? super ConceptServiceModelRealm, m> lVar) {
        onMutation();
        this.listener = lVar;
        return this;
    }

    public l<? super ConceptServiceModelRealm, m> listener() {
        return this.listener;
    }

    @Override // xf.b
    public /* bridge */ /* synthetic */ b listener(l lVar) {
        return listener((l<? super ConceptServiceModelRealm, m>) lVar);
    }

    public ConceptServiceDetailListModel_ onBind(i0<ConceptServiceDetailListModel_, c> i0Var) {
        onMutation();
        return this;
    }

    /* renamed from: onBind, reason: collision with other method in class */
    public /* bridge */ /* synthetic */ b m57onBind(i0 i0Var) {
        return onBind((i0<ConceptServiceDetailListModel_, c>) i0Var);
    }

    public ConceptServiceDetailListModel_ onUnbind(k0<ConceptServiceDetailListModel_, c> k0Var) {
        onMutation();
        return this;
    }

    /* renamed from: onUnbind, reason: collision with other method in class */
    public /* bridge */ /* synthetic */ b m58onUnbind(k0 k0Var) {
        return onUnbind((k0<ConceptServiceDetailListModel_, c>) k0Var);
    }

    public ConceptServiceDetailListModel_ onVisibilityChanged(l0<ConceptServiceDetailListModel_, c> l0Var) {
        onMutation();
        return this;
    }

    /* renamed from: onVisibilityChanged, reason: collision with other method in class */
    public /* bridge */ /* synthetic */ b m59onVisibilityChanged(l0 l0Var) {
        return onVisibilityChanged((l0<ConceptServiceDetailListModel_, c>) l0Var);
    }

    @Override // com.airbnb.epoxy.v, com.airbnb.epoxy.u
    public void onVisibilityChanged(float f, float f10, int r32, int r42, c cVar) {
        super.onVisibilityChanged(f, f10, r32, r42, (int) cVar);
    }

    public ConceptServiceDetailListModel_ onVisibilityStateChanged(m0<ConceptServiceDetailListModel_, c> m0Var) {
        onMutation();
        return this;
    }

    /* renamed from: onVisibilityStateChanged, reason: collision with other method in class */
    public /* bridge */ /* synthetic */ b m60onVisibilityStateChanged(m0 m0Var) {
        return onVisibilityStateChanged((m0<ConceptServiceDetailListModel_, c>) m0Var);
    }

    @Override // com.airbnb.epoxy.v, com.airbnb.epoxy.u
    public void onVisibilityStateChanged(int r12, c cVar) {
        super.onVisibilityStateChanged(r12, (int) cVar);
    }

    @Override // com.airbnb.epoxy.u
    public ConceptServiceDetailListModel_ reset() {
        this.service = null;
        this.listener = null;
        super.reset();
        return this;
    }

    @Override // xf.b
    public ConceptServiceDetailListModel_ service(ConceptServiceModelRealm conceptServiceModelRealm) {
        onMutation();
        this.service = conceptServiceModelRealm;
        return this;
    }

    public ConceptServiceModelRealm service() {
        return this.service;
    }

    @Override // com.airbnb.epoxy.u
    public ConceptServiceDetailListModel_ show() {
        super.show();
        return this;
    }

    @Override // com.airbnb.epoxy.u
    public ConceptServiceDetailListModel_ show(boolean z10) {
        super.show(z10);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: spanSizeOverride, reason: merged with bridge method [inline-methods] */
    public ConceptServiceDetailListModel_ m61spanSizeOverride(@Nullable u.c cVar) {
        super.m141spanSizeOverride(cVar);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    public String toString() {
        return "ConceptServiceDetailListModel_{service=" + this.service + "}" + super.toString();
    }

    @Override // com.airbnb.epoxy.v, com.airbnb.epoxy.u
    public void unbind(c cVar) {
        super.unbind((ConceptServiceDetailListModel_) cVar);
    }
}
