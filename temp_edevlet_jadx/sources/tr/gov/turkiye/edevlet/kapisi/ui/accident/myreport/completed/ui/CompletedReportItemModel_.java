package tr.gov.turkiye.edevlet.kapisi.ui.accident.myreport.completed.ui;

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
import sh.a;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.CompletedReportItem;
import x9.l;

/* loaded from: classes3.dex */
public class CompletedReportItemModel_ extends CompletedReportItemModel implements y<c>, a {
    private i0<CompletedReportItemModel_, c> onModelBoundListener_epoxyGeneratedModel;
    private k0<CompletedReportItemModel_, c> onModelUnboundListener_epoxyGeneratedModel;
    private l0<CompletedReportItemModel_, c> onModelVisibilityChangedListener_epoxyGeneratedModel;
    private m0<CompletedReportItemModel_, c> onModelVisibilityStateChangedListener_epoxyGeneratedModel;

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
        if (!(obj instanceof CompletedReportItemModel_) || !super.equals(obj)) {
            return false;
        }
        CompletedReportItemModel_ completedReportItemModel_ = (CompletedReportItemModel_) obj;
        completedReportItemModel_.getClass();
        CompletedReportItem completedReportItem = this.reportItem;
        if (completedReportItem == null ? completedReportItemModel_.reportItem != null : !completedReportItem.equals(completedReportItemModel_.reportItem)) {
            return false;
        }
        l<? super CompletedReportItem, m> lVar = this.selectReport;
        l<? super CompletedReportItem, m> lVar2 = completedReportItemModel_.selectReport;
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
        CompletedReportItem completedReportItem = this.reportItem;
        int r03 = (r02 + (completedReportItem != null ? completedReportItem.hashCode() : 0)) * 31;
        l<? super CompletedReportItem, m> lVar = this.selectReport;
        return r03 + (lVar != null ? lVar.hashCode() : 0);
    }

    @Override // com.airbnb.epoxy.u
    public CompletedReportItemModel_ hide() {
        super.hide();
        return this;
    }

    @Override // sh.a
    /* renamed from: id, reason: merged with bridge method [inline-methods] */
    public CompletedReportItemModel_ mo420id(long j10) {
        super.mo420id(j10);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id, reason: merged with bridge method [inline-methods] */
    public CompletedReportItemModel_ m421id(long j10, long j11) {
        super.m421id(j10, j11);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id, reason: merged with bridge method [inline-methods] */
    public CompletedReportItemModel_ m422id(@Nullable CharSequence charSequence) {
        super.m422id(charSequence);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id, reason: merged with bridge method [inline-methods] */
    public CompletedReportItemModel_ m423id(@Nullable CharSequence charSequence, long j10) {
        super.m423id(charSequence, j10);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id, reason: merged with bridge method [inline-methods] */
    public CompletedReportItemModel_ m424id(@Nullable CharSequence charSequence, @Nullable CharSequence... charSequenceArr) {
        super.m424id(charSequence, charSequenceArr);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id, reason: merged with bridge method [inline-methods] */
    public CompletedReportItemModel_ m425id(@Nullable Number... numberArr) {
        super.m425id(numberArr);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: layout, reason: merged with bridge method [inline-methods] */
    public CompletedReportItemModel_ m426layout(@LayoutRes int r12) {
        super.m426layout(r12);
        return this;
    }

    public /* bridge */ /* synthetic */ a onBind(i0 i0Var) {
        return m427onBind((i0<CompletedReportItemModel_, c>) i0Var);
    }

    /* renamed from: onBind, reason: collision with other method in class */
    public CompletedReportItemModel_ m427onBind(i0<CompletedReportItemModel_, c> i0Var) {
        onMutation();
        return this;
    }

    public /* bridge */ /* synthetic */ a onUnbind(k0 k0Var) {
        return m428onUnbind((k0<CompletedReportItemModel_, c>) k0Var);
    }

    /* renamed from: onUnbind, reason: collision with other method in class */
    public CompletedReportItemModel_ m428onUnbind(k0<CompletedReportItemModel_, c> k0Var) {
        onMutation();
        return this;
    }

    public /* bridge */ /* synthetic */ a onVisibilityChanged(l0 l0Var) {
        return m429onVisibilityChanged((l0<CompletedReportItemModel_, c>) l0Var);
    }

    /* renamed from: onVisibilityChanged, reason: collision with other method in class */
    public CompletedReportItemModel_ m429onVisibilityChanged(l0<CompletedReportItemModel_, c> l0Var) {
        onMutation();
        return this;
    }

    @Override // com.airbnb.epoxy.v, com.airbnb.epoxy.u
    public void onVisibilityChanged(float f, float f10, int r32, int r42, c cVar) {
        super.onVisibilityChanged(f, f10, r32, r42, (int) cVar);
    }

    public /* bridge */ /* synthetic */ a onVisibilityStateChanged(m0 m0Var) {
        return m430onVisibilityStateChanged((m0<CompletedReportItemModel_, c>) m0Var);
    }

    /* renamed from: onVisibilityStateChanged, reason: collision with other method in class */
    public CompletedReportItemModel_ m430onVisibilityStateChanged(m0<CompletedReportItemModel_, c> m0Var) {
        onMutation();
        return this;
    }

    @Override // com.airbnb.epoxy.v, com.airbnb.epoxy.u
    public void onVisibilityStateChanged(int r12, c cVar) {
        super.onVisibilityStateChanged(r12, (int) cVar);
    }

    public CompletedReportItem reportItem() {
        return this.reportItem;
    }

    @Override // sh.a
    public CompletedReportItemModel_ reportItem(CompletedReportItem completedReportItem) {
        onMutation();
        this.reportItem = completedReportItem;
        return this;
    }

    @Override // com.airbnb.epoxy.u
    public CompletedReportItemModel_ reset() {
        this.reportItem = null;
        this.selectReport = null;
        super.reset();
        return this;
    }

    @Override // sh.a
    public /* bridge */ /* synthetic */ a selectReport(l lVar) {
        return selectReport((l<? super CompletedReportItem, m>) lVar);
    }

    @Override // sh.a
    public CompletedReportItemModel_ selectReport(l<? super CompletedReportItem, m> lVar) {
        onMutation();
        this.selectReport = lVar;
        return this;
    }

    public l<? super CompletedReportItem, m> selectReport() {
        return this.selectReport;
    }

    @Override // com.airbnb.epoxy.u
    public CompletedReportItemModel_ show() {
        super.show();
        return this;
    }

    @Override // com.airbnb.epoxy.u
    public CompletedReportItemModel_ show(boolean z10) {
        super.show(z10);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: spanSizeOverride, reason: merged with bridge method [inline-methods] */
    public CompletedReportItemModel_ m431spanSizeOverride(@Nullable u.c cVar) {
        super.m431spanSizeOverride(cVar);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    public String toString() {
        return "CompletedReportItemModel_{reportItem=" + this.reportItem + "}" + super.toString();
    }

    @Override // com.airbnb.epoxy.v, com.airbnb.epoxy.u
    public void unbind(c cVar) {
        super.unbind((CompletedReportItemModel_) cVar);
    }
}
