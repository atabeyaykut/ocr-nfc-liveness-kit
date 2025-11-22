package tr.gov.turkiye.edevlet.kapisi.ui.accident.myreport.completed.ui;

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
import sh.b;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.InProgressReportItem;
import x9.l;

/* loaded from: classes3.dex */
public class InProgressReportItemModel_ extends InProgressReportItemModel implements y<c>, b {
    private i0<InProgressReportItemModel_, c> onModelBoundListener_epoxyGeneratedModel;
    private k0<InProgressReportItemModel_, c> onModelUnboundListener_epoxyGeneratedModel;
    private l0<InProgressReportItemModel_, c> onModelVisibilityChangedListener_epoxyGeneratedModel;
    private m0<InProgressReportItemModel_, c> onModelVisibilityStateChangedListener_epoxyGeneratedModel;

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
        if (!(obj instanceof InProgressReportItemModel_) || !super.equals(obj)) {
            return false;
        }
        InProgressReportItemModel_ inProgressReportItemModel_ = (InProgressReportItemModel_) obj;
        inProgressReportItemModel_.getClass();
        InProgressReportItem inProgressReportItem = this.reportItem;
        if (inProgressReportItem == null ? inProgressReportItemModel_.reportItem != null : !inProgressReportItem.equals(inProgressReportItemModel_.reportItem)) {
            return false;
        }
        l<? super InProgressReportItem, m> lVar = this.selectReport;
        l<? super InProgressReportItem, m> lVar2 = inProgressReportItemModel_.selectReport;
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
        InProgressReportItem inProgressReportItem = this.reportItem;
        int r03 = (r02 + (inProgressReportItem != null ? inProgressReportItem.hashCode() : 0)) * 31;
        l<? super InProgressReportItem, m> lVar = this.selectReport;
        return r03 + (lVar != null ? lVar.hashCode() : 0);
    }

    @Override // com.airbnb.epoxy.u
    public InProgressReportItemModel_ hide() {
        super.hide();
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id, reason: merged with bridge method [inline-methods] */
    public InProgressReportItemModel_ m432id(long j10) {
        super.m142id(j10);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id, reason: merged with bridge method [inline-methods] */
    public InProgressReportItemModel_ m433id(long j10, long j11) {
        super.m143id(j10, j11);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id, reason: merged with bridge method [inline-methods] */
    public InProgressReportItemModel_ m434id(@Nullable CharSequence charSequence) {
        super.m144id(charSequence);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id, reason: merged with bridge method [inline-methods] */
    public InProgressReportItemModel_ m435id(@Nullable CharSequence charSequence, long j10) {
        super.m145id(charSequence, j10);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id, reason: merged with bridge method [inline-methods] */
    public InProgressReportItemModel_ m436id(@Nullable CharSequence charSequence, @Nullable CharSequence... charSequenceArr) {
        super.m146id(charSequence, charSequenceArr);
        return this;
    }

    @Override // sh.b
    /* renamed from: id, reason: merged with bridge method [inline-methods] */
    public InProgressReportItemModel_ mo437id(@Nullable Number... numberArr) {
        super.mo147id(numberArr);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: layout, reason: merged with bridge method [inline-methods] */
    public InProgressReportItemModel_ m438layout(@LayoutRes int r12) {
        super.m148layout(r12);
        return this;
    }

    public /* bridge */ /* synthetic */ b onBind(i0 i0Var) {
        return m439onBind((i0<InProgressReportItemModel_, c>) i0Var);
    }

    /* renamed from: onBind, reason: collision with other method in class */
    public InProgressReportItemModel_ m439onBind(i0<InProgressReportItemModel_, c> i0Var) {
        onMutation();
        return this;
    }

    public /* bridge */ /* synthetic */ b onUnbind(k0 k0Var) {
        return m440onUnbind((k0<InProgressReportItemModel_, c>) k0Var);
    }

    /* renamed from: onUnbind, reason: collision with other method in class */
    public InProgressReportItemModel_ m440onUnbind(k0<InProgressReportItemModel_, c> k0Var) {
        onMutation();
        return this;
    }

    public /* bridge */ /* synthetic */ b onVisibilityChanged(l0 l0Var) {
        return m441onVisibilityChanged((l0<InProgressReportItemModel_, c>) l0Var);
    }

    /* renamed from: onVisibilityChanged, reason: collision with other method in class */
    public InProgressReportItemModel_ m441onVisibilityChanged(l0<InProgressReportItemModel_, c> l0Var) {
        onMutation();
        return this;
    }

    @Override // com.airbnb.epoxy.v, com.airbnb.epoxy.u
    public void onVisibilityChanged(float f, float f10, int r32, int r42, c cVar) {
        super.onVisibilityChanged(f, f10, r32, r42, (int) cVar);
    }

    public /* bridge */ /* synthetic */ b onVisibilityStateChanged(m0 m0Var) {
        return m442onVisibilityStateChanged((m0<InProgressReportItemModel_, c>) m0Var);
    }

    /* renamed from: onVisibilityStateChanged, reason: collision with other method in class */
    public InProgressReportItemModel_ m442onVisibilityStateChanged(m0<InProgressReportItemModel_, c> m0Var) {
        onMutation();
        return this;
    }

    @Override // com.airbnb.epoxy.v, com.airbnb.epoxy.u
    public void onVisibilityStateChanged(int r12, c cVar) {
        super.onVisibilityStateChanged(r12, (int) cVar);
    }

    public InProgressReportItem reportItem() {
        return this.reportItem;
    }

    @Override // sh.b
    public InProgressReportItemModel_ reportItem(InProgressReportItem inProgressReportItem) {
        onMutation();
        this.reportItem = inProgressReportItem;
        return this;
    }

    @Override // com.airbnb.epoxy.u
    public InProgressReportItemModel_ reset() {
        this.reportItem = null;
        this.selectReport = null;
        super.reset();
        return this;
    }

    @Override // sh.b
    public /* bridge */ /* synthetic */ b selectReport(l lVar) {
        return selectReport((l<? super InProgressReportItem, m>) lVar);
    }

    @Override // sh.b
    public InProgressReportItemModel_ selectReport(l<? super InProgressReportItem, m> lVar) {
        onMutation();
        this.selectReport = lVar;
        return this;
    }

    public l<? super InProgressReportItem, m> selectReport() {
        return this.selectReport;
    }

    @Override // com.airbnb.epoxy.u
    public InProgressReportItemModel_ show() {
        super.show();
        return this;
    }

    @Override // com.airbnb.epoxy.u
    public InProgressReportItemModel_ show(boolean z10) {
        super.show(z10);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: spanSizeOverride, reason: merged with bridge method [inline-methods] */
    public InProgressReportItemModel_ m443spanSizeOverride(@Nullable u.c cVar) {
        super.m153spanSizeOverride(cVar);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    public String toString() {
        return "InProgressReportItemModel_{reportItem=" + this.reportItem + "}" + super.toString();
    }

    @Override // com.airbnb.epoxy.v, com.airbnb.epoxy.u
    public void unbind(c cVar) {
        super.unbind((InProgressReportItemModel_) cVar);
    }
}
