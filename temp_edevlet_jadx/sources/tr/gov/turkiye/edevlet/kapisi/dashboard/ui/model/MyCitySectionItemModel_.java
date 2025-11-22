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
import xf.w;

/* loaded from: classes3.dex */
public class MyCitySectionItemModel_ extends MyCitySectionItemModel implements y<c>, w {
    private i0<MyCitySectionItemModel_, c> onModelBoundListener_epoxyGeneratedModel;
    private k0<MyCitySectionItemModel_, c> onModelUnboundListener_epoxyGeneratedModel;
    private l0<MyCitySectionItemModel_, c> onModelVisibilityChangedListener_epoxyGeneratedModel;
    private m0<MyCitySectionItemModel_, c> onModelVisibilityStateChangedListener_epoxyGeneratedModel;

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
        if (!(obj instanceof MyCitySectionItemModel_) || !super.equals(obj)) {
            return false;
        }
        MyCitySectionItemModel_ myCitySectionItemModel_ = (MyCitySectionItemModel_) obj;
        myCitySectionItemModel_.getClass();
        String str = this.title;
        String str2 = myCitySectionItemModel_.title;
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
        String str = this.title;
        return r02 + (str != null ? str.hashCode() : 0);
    }

    @Override // com.airbnb.epoxy.u
    public MyCitySectionItemModel_ hide() {
        super.hide();
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id, reason: merged with bridge method [inline-methods] */
    public MyCitySectionItemModel_ m203id(long j10) {
        super.m203id(j10);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id, reason: merged with bridge method [inline-methods] */
    public MyCitySectionItemModel_ m204id(long j10, long j11) {
        super.m204id(j10, j11);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id, reason: merged with bridge method [inline-methods] */
    public MyCitySectionItemModel_ m205id(@Nullable CharSequence charSequence) {
        super.m205id(charSequence);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id, reason: merged with bridge method [inline-methods] */
    public MyCitySectionItemModel_ m206id(@Nullable CharSequence charSequence, long j10) {
        super.m206id(charSequence, j10);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id, reason: merged with bridge method [inline-methods] */
    public MyCitySectionItemModel_ m207id(@Nullable CharSequence charSequence, @Nullable CharSequence... charSequenceArr) {
        super.m207id(charSequence, charSequenceArr);
        return this;
    }

    @Override // xf.w
    /* renamed from: id, reason: merged with bridge method [inline-methods] */
    public MyCitySectionItemModel_ mo208id(@Nullable Number... numberArr) {
        super.mo208id(numberArr);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: layout, reason: merged with bridge method [inline-methods] */
    public MyCitySectionItemModel_ m209layout(@LayoutRes int r12) {
        super.m209layout(r12);
        return this;
    }

    public MyCitySectionItemModel_ onBind(i0<MyCitySectionItemModel_, c> i0Var) {
        onMutation();
        return this;
    }

    /* renamed from: onBind, reason: collision with other method in class */
    public /* bridge */ /* synthetic */ w m210onBind(i0 i0Var) {
        return onBind((i0<MyCitySectionItemModel_, c>) i0Var);
    }

    public MyCitySectionItemModel_ onUnbind(k0<MyCitySectionItemModel_, c> k0Var) {
        onMutation();
        return this;
    }

    /* renamed from: onUnbind, reason: collision with other method in class */
    public /* bridge */ /* synthetic */ w m211onUnbind(k0 k0Var) {
        return onUnbind((k0<MyCitySectionItemModel_, c>) k0Var);
    }

    public MyCitySectionItemModel_ onVisibilityChanged(l0<MyCitySectionItemModel_, c> l0Var) {
        onMutation();
        return this;
    }

    /* renamed from: onVisibilityChanged, reason: collision with other method in class */
    public /* bridge */ /* synthetic */ w m212onVisibilityChanged(l0 l0Var) {
        return onVisibilityChanged((l0<MyCitySectionItemModel_, c>) l0Var);
    }

    @Override // com.airbnb.epoxy.v, com.airbnb.epoxy.u
    public void onVisibilityChanged(float f, float f10, int r32, int r42, c cVar) {
        super.onVisibilityChanged(f, f10, r32, r42, (int) cVar);
    }

    public MyCitySectionItemModel_ onVisibilityStateChanged(m0<MyCitySectionItemModel_, c> m0Var) {
        onMutation();
        return this;
    }

    /* renamed from: onVisibilityStateChanged, reason: collision with other method in class */
    public /* bridge */ /* synthetic */ w m213onVisibilityStateChanged(m0 m0Var) {
        return onVisibilityStateChanged((m0<MyCitySectionItemModel_, c>) m0Var);
    }

    @Override // com.airbnb.epoxy.v, com.airbnb.epoxy.u
    public void onVisibilityStateChanged(int r12, c cVar) {
        super.onVisibilityStateChanged(r12, (int) cVar);
    }

    @Override // com.airbnb.epoxy.u
    public MyCitySectionItemModel_ reset() {
        this.title = null;
        super.reset();
        return this;
    }

    @Override // com.airbnb.epoxy.u
    public MyCitySectionItemModel_ show() {
        super.show();
        return this;
    }

    @Override // com.airbnb.epoxy.u
    public MyCitySectionItemModel_ show(boolean z10) {
        super.show(z10);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: spanSizeOverride, reason: merged with bridge method [inline-methods] */
    public MyCitySectionItemModel_ m214spanSizeOverride(@Nullable u.c cVar) {
        super.m214spanSizeOverride(cVar);
        return this;
    }

    public String title() {
        return this.title;
    }

    @Override // xf.w
    public MyCitySectionItemModel_ title(String str) {
        onMutation();
        this.title = str;
        return this;
    }

    @Override // com.airbnb.epoxy.u
    public String toString() {
        return "MyCitySectionItemModel_{title=" + this.title + "}" + super.toString();
    }

    @Override // com.airbnb.epoxy.v, com.airbnb.epoxy.u
    public void unbind(c cVar) {
        super.unbind((MyCitySectionItemModel_) cVar);
    }
}
