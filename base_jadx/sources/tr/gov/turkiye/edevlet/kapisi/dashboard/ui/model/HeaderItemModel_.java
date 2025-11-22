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
import xf.t;

/* loaded from: classes3.dex */
public class HeaderItemModel_ extends HeaderItemModel implements y<c>, t {
    private i0<HeaderItemModel_, c> onModelBoundListener_epoxyGeneratedModel;
    private k0<HeaderItemModel_, c> onModelUnboundListener_epoxyGeneratedModel;
    private l0<HeaderItemModel_, c> onModelVisibilityChangedListener_epoxyGeneratedModel;
    private m0<HeaderItemModel_, c> onModelVisibilityStateChangedListener_epoxyGeneratedModel;

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
        if (!(obj instanceof HeaderItemModel_) || !super.equals(obj)) {
            return false;
        }
        HeaderItemModel_ headerItemModel_ = (HeaderItemModel_) obj;
        headerItemModel_.getClass();
        return getTitle() == headerItemModel_.getTitle();
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
        return getTitle() + b.c(super.hashCode(), 31, 0, 31, 0, 31, 0, 31, 0, 31);
    }

    @Override // com.airbnb.epoxy.u
    public HeaderItemModel_ hide() {
        super.hide();
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id, reason: merged with bridge method [inline-methods] */
    public HeaderItemModel_ m166id(long j10) {
        super.m166id(j10);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id, reason: merged with bridge method [inline-methods] */
    public HeaderItemModel_ m167id(long j10, long j11) {
        super.m167id(j10, j11);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id, reason: merged with bridge method [inline-methods] */
    public HeaderItemModel_ m168id(@Nullable CharSequence charSequence) {
        super.m168id(charSequence);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id, reason: merged with bridge method [inline-methods] */
    public HeaderItemModel_ m169id(@Nullable CharSequence charSequence, long j10) {
        super.m169id(charSequence, j10);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id, reason: merged with bridge method [inline-methods] */
    public HeaderItemModel_ m170id(@Nullable CharSequence charSequence, @Nullable CharSequence... charSequenceArr) {
        super.m170id(charSequence, charSequenceArr);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id, reason: merged with bridge method [inline-methods] */
    public HeaderItemModel_ m171id(@Nullable Number... numberArr) {
        super.m171id(numberArr);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: layout, reason: merged with bridge method [inline-methods] */
    public HeaderItemModel_ m172layout(@LayoutRes int r12) {
        super.m172layout(r12);
        return this;
    }

    public HeaderItemModel_ onBind(i0<HeaderItemModel_, c> i0Var) {
        onMutation();
        return this;
    }

    /* renamed from: onBind, reason: collision with other method in class */
    public /* bridge */ /* synthetic */ t m173onBind(i0 i0Var) {
        return onBind((i0<HeaderItemModel_, c>) i0Var);
    }

    public HeaderItemModel_ onUnbind(k0<HeaderItemModel_, c> k0Var) {
        onMutation();
        return this;
    }

    /* renamed from: onUnbind, reason: collision with other method in class */
    public /* bridge */ /* synthetic */ t m174onUnbind(k0 k0Var) {
        return onUnbind((k0<HeaderItemModel_, c>) k0Var);
    }

    public HeaderItemModel_ onVisibilityChanged(l0<HeaderItemModel_, c> l0Var) {
        onMutation();
        return this;
    }

    /* renamed from: onVisibilityChanged, reason: collision with other method in class */
    public /* bridge */ /* synthetic */ t m175onVisibilityChanged(l0 l0Var) {
        return onVisibilityChanged((l0<HeaderItemModel_, c>) l0Var);
    }

    @Override // com.airbnb.epoxy.v, com.airbnb.epoxy.u
    public void onVisibilityChanged(float f, float f10, int r32, int r42, c cVar) {
        super.onVisibilityChanged(f, f10, r32, r42, (int) cVar);
    }

    public HeaderItemModel_ onVisibilityStateChanged(m0<HeaderItemModel_, c> m0Var) {
        onMutation();
        return this;
    }

    /* renamed from: onVisibilityStateChanged, reason: collision with other method in class */
    public /* bridge */ /* synthetic */ t m176onVisibilityStateChanged(m0 m0Var) {
        return onVisibilityStateChanged((m0<HeaderItemModel_, c>) m0Var);
    }

    @Override // com.airbnb.epoxy.v, com.airbnb.epoxy.u
    public void onVisibilityStateChanged(int r12, c cVar) {
        super.onVisibilityStateChanged(r12, (int) cVar);
    }

    @Override // com.airbnb.epoxy.u
    public HeaderItemModel_ reset() {
        super.setTitle(0);
        super.reset();
        return this;
    }

    @Override // com.airbnb.epoxy.u
    public HeaderItemModel_ show() {
        super.show();
        return this;
    }

    @Override // com.airbnb.epoxy.u
    public HeaderItemModel_ show(boolean z10) {
        super.show(z10);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: spanSizeOverride, reason: merged with bridge method [inline-methods] */
    public HeaderItemModel_ m177spanSizeOverride(@Nullable u.c cVar) {
        super.m177spanSizeOverride(cVar);
        return this;
    }

    public int title() {
        return super.getTitle();
    }

    /* renamed from: title, reason: merged with bridge method [inline-methods] */
    public HeaderItemModel_ m178title(int r12) {
        onMutation();
        super.setTitle(r12);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    public String toString() {
        return "HeaderItemModel_{title=" + getTitle() + "}" + super.toString();
    }

    @Override // com.airbnb.epoxy.v, com.airbnb.epoxy.u
    public void unbind(c cVar) {
        super.unbind((HeaderItemModel_) cVar);
    }
}
