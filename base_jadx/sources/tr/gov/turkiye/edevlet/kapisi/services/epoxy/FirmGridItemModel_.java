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
import sg.a;
import x9.l;

/* loaded from: classes3.dex */
public class FirmGridItemModel_ extends FirmGridItemModel implements y<c>, a {
    private i0<FirmGridItemModel_, c> onModelBoundListener_epoxyGeneratedModel;
    private k0<FirmGridItemModel_, c> onModelUnboundListener_epoxyGeneratedModel;
    private l0<FirmGridItemModel_, c> onModelVisibilityChangedListener_epoxyGeneratedModel;
    private m0<FirmGridItemModel_, c> onModelVisibilityStateChangedListener_epoxyGeneratedModel;

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
        if (!(obj instanceof FirmGridItemModel_) || !super.equals(obj)) {
            return false;
        }
        FirmGridItemModel_ firmGridItemModel_ = (FirmGridItemModel_) obj;
        firmGridItemModel_.getClass();
        tg.c cVar = this.firmCategoryItem;
        if (cVar == null ? firmGridItemModel_.firmCategoryItem != null : !cVar.equals(firmGridItemModel_.firmCategoryItem)) {
            return false;
        }
        l<? super tg.c, m> lVar = this.listener;
        l<? super tg.c, m> lVar2 = firmGridItemModel_.listener;
        return lVar == null ? lVar2 == null : lVar.equals(lVar2);
    }

    public tg.c firmCategoryItem() {
        return this.firmCategoryItem;
    }

    @Override // sg.a
    public FirmGridItemModel_ firmCategoryItem(tg.c cVar) {
        onMutation();
        this.firmCategoryItem = cVar;
        return this;
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
        tg.c cVar = this.firmCategoryItem;
        int r03 = (r02 + (cVar != null ? cVar.hashCode() : 0)) * 31;
        l<? super tg.c, m> lVar = this.listener;
        return r03 + (lVar != null ? lVar.hashCode() : 0);
    }

    @Override // com.airbnb.epoxy.u
    public FirmGridItemModel_ hide() {
        super.hide();
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id, reason: merged with bridge method [inline-methods] */
    public FirmGridItemModel_ m320id(long j10) {
        super.m320id(j10);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id, reason: merged with bridge method [inline-methods] */
    public FirmGridItemModel_ m321id(long j10, long j11) {
        super.m321id(j10, j11);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id, reason: merged with bridge method [inline-methods] */
    public FirmGridItemModel_ m322id(@Nullable CharSequence charSequence) {
        super.m322id(charSequence);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id, reason: merged with bridge method [inline-methods] */
    public FirmGridItemModel_ m323id(@Nullable CharSequence charSequence, long j10) {
        super.m323id(charSequence, j10);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id, reason: merged with bridge method [inline-methods] */
    public FirmGridItemModel_ m324id(@Nullable CharSequence charSequence, @Nullable CharSequence... charSequenceArr) {
        super.m324id(charSequence, charSequenceArr);
        return this;
    }

    @Override // sg.a
    /* renamed from: id, reason: merged with bridge method [inline-methods] */
    public FirmGridItemModel_ mo325id(@Nullable Number... numberArr) {
        super.mo325id(numberArr);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: layout, reason: merged with bridge method [inline-methods] */
    public FirmGridItemModel_ m326layout(@LayoutRes int r12) {
        super.m326layout(r12);
        return this;
    }

    @Override // sg.a
    public /* bridge */ /* synthetic */ a listener(l lVar) {
        return listener((l<? super tg.c, m>) lVar);
    }

    @Override // sg.a
    public FirmGridItemModel_ listener(l<? super tg.c, m> lVar) {
        onMutation();
        this.listener = lVar;
        return this;
    }

    public l<? super tg.c, m> listener() {
        return this.listener;
    }

    public /* bridge */ /* synthetic */ a onBind(i0 i0Var) {
        return m327onBind((i0<FirmGridItemModel_, c>) i0Var);
    }

    /* renamed from: onBind, reason: collision with other method in class */
    public FirmGridItemModel_ m327onBind(i0<FirmGridItemModel_, c> i0Var) {
        onMutation();
        return this;
    }

    public /* bridge */ /* synthetic */ a onUnbind(k0 k0Var) {
        return m328onUnbind((k0<FirmGridItemModel_, c>) k0Var);
    }

    /* renamed from: onUnbind, reason: collision with other method in class */
    public FirmGridItemModel_ m328onUnbind(k0<FirmGridItemModel_, c> k0Var) {
        onMutation();
        return this;
    }

    public /* bridge */ /* synthetic */ a onVisibilityChanged(l0 l0Var) {
        return m329onVisibilityChanged((l0<FirmGridItemModel_, c>) l0Var);
    }

    /* renamed from: onVisibilityChanged, reason: collision with other method in class */
    public FirmGridItemModel_ m329onVisibilityChanged(l0<FirmGridItemModel_, c> l0Var) {
        onMutation();
        return this;
    }

    @Override // com.airbnb.epoxy.v, com.airbnb.epoxy.u
    public void onVisibilityChanged(float f, float f10, int r32, int r42, c cVar) {
        super.onVisibilityChanged(f, f10, r32, r42, (int) cVar);
    }

    public /* bridge */ /* synthetic */ a onVisibilityStateChanged(m0 m0Var) {
        return m330onVisibilityStateChanged((m0<FirmGridItemModel_, c>) m0Var);
    }

    /* renamed from: onVisibilityStateChanged, reason: collision with other method in class */
    public FirmGridItemModel_ m330onVisibilityStateChanged(m0<FirmGridItemModel_, c> m0Var) {
        onMutation();
        return this;
    }

    @Override // com.airbnb.epoxy.v, com.airbnb.epoxy.u
    public void onVisibilityStateChanged(int r12, c cVar) {
        super.onVisibilityStateChanged(r12, (int) cVar);
    }

    @Override // com.airbnb.epoxy.u
    public FirmGridItemModel_ reset() {
        this.firmCategoryItem = null;
        this.listener = null;
        super.reset();
        return this;
    }

    @Override // com.airbnb.epoxy.u
    public FirmGridItemModel_ show() {
        super.show();
        return this;
    }

    @Override // com.airbnb.epoxy.u
    public FirmGridItemModel_ show(boolean z10) {
        super.show(z10);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: spanSizeOverride, reason: merged with bridge method [inline-methods] */
    public FirmGridItemModel_ m331spanSizeOverride(@Nullable u.c cVar) {
        super.m331spanSizeOverride(cVar);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    public String toString() {
        return "FirmGridItemModel_{firmCategoryItem=" + this.firmCategoryItem + "}" + super.toString();
    }

    @Override // com.airbnb.epoxy.v, com.airbnb.epoxy.u
    public void unbind(c cVar) {
        super.unbind((FirmGridItemModel_) cVar);
    }
}
