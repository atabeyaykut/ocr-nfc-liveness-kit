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
import xf.u;

/* loaded from: classes3.dex */
public class MyCityChipModel_ extends MyCityChipModel implements y<c>, u {
    private i0<MyCityChipModel_, c> onModelBoundListener_epoxyGeneratedModel;
    private k0<MyCityChipModel_, c> onModelUnboundListener_epoxyGeneratedModel;
    private l0<MyCityChipModel_, c> onModelVisibilityChangedListener_epoxyGeneratedModel;
    private m0<MyCityChipModel_, c> onModelVisibilityStateChangedListener_epoxyGeneratedModel;

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
        if (!(obj instanceof MyCityChipModel_) || !super.equals(obj)) {
            return false;
        }
        ((MyCityChipModel_) obj).getClass();
        return true;
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
        return (((((((super.hashCode() * 31) + 0) * 31) + 0) * 31) + 0) * 31) + 0;
    }

    @Override // com.airbnb.epoxy.u
    public MyCityChipModel_ hide() {
        super.hide();
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id, reason: merged with bridge method [inline-methods] */
    public MyCityChipModel_ m179id(long j10) {
        super.m179id(j10);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id, reason: merged with bridge method [inline-methods] */
    public MyCityChipModel_ m180id(long j10, long j11) {
        super.m180id(j10, j11);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id, reason: merged with bridge method [inline-methods] */
    public MyCityChipModel_ m181id(@Nullable CharSequence charSequence) {
        super.m181id(charSequence);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id, reason: merged with bridge method [inline-methods] */
    public MyCityChipModel_ m182id(@Nullable CharSequence charSequence, long j10) {
        super.m182id(charSequence, j10);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id, reason: merged with bridge method [inline-methods] */
    public MyCityChipModel_ m183id(@Nullable CharSequence charSequence, @Nullable CharSequence... charSequenceArr) {
        super.m183id(charSequence, charSequenceArr);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id, reason: merged with bridge method [inline-methods] */
    public MyCityChipModel_ m184id(@Nullable Number... numberArr) {
        super.m184id(numberArr);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: layout, reason: merged with bridge method [inline-methods] */
    public MyCityChipModel_ m185layout(@LayoutRes int r12) {
        super.m185layout(r12);
        return this;
    }

    public MyCityChipModel_ onBind(i0<MyCityChipModel_, c> i0Var) {
        onMutation();
        return this;
    }

    /* renamed from: onBind, reason: collision with other method in class */
    public /* bridge */ /* synthetic */ u m186onBind(i0 i0Var) {
        return onBind((i0<MyCityChipModel_, c>) i0Var);
    }

    public MyCityChipModel_ onUnbind(k0<MyCityChipModel_, c> k0Var) {
        onMutation();
        return this;
    }

    /* renamed from: onUnbind, reason: collision with other method in class */
    public /* bridge */ /* synthetic */ u m187onUnbind(k0 k0Var) {
        return onUnbind((k0<MyCityChipModel_, c>) k0Var);
    }

    public MyCityChipModel_ onVisibilityChanged(l0<MyCityChipModel_, c> l0Var) {
        onMutation();
        return this;
    }

    /* renamed from: onVisibilityChanged, reason: collision with other method in class */
    public /* bridge */ /* synthetic */ u m188onVisibilityChanged(l0 l0Var) {
        return onVisibilityChanged((l0<MyCityChipModel_, c>) l0Var);
    }

    @Override // com.airbnb.epoxy.v, com.airbnb.epoxy.u
    public void onVisibilityChanged(float f, float f10, int r32, int r42, c cVar) {
        super.onVisibilityChanged(f, f10, r32, r42, (int) cVar);
    }

    public MyCityChipModel_ onVisibilityStateChanged(m0<MyCityChipModel_, c> m0Var) {
        onMutation();
        return this;
    }

    /* renamed from: onVisibilityStateChanged, reason: collision with other method in class */
    public /* bridge */ /* synthetic */ u m189onVisibilityStateChanged(m0 m0Var) {
        return onVisibilityStateChanged((m0<MyCityChipModel_, c>) m0Var);
    }

    @Override // com.airbnb.epoxy.v, com.airbnb.epoxy.u
    public void onVisibilityStateChanged(int r12, c cVar) {
        super.onVisibilityStateChanged(r12, (int) cVar);
    }

    @Override // com.airbnb.epoxy.u
    public MyCityChipModel_ reset() {
        super.reset();
        return this;
    }

    @Override // com.airbnb.epoxy.u
    public MyCityChipModel_ show() {
        super.show();
        return this;
    }

    @Override // com.airbnb.epoxy.u
    public MyCityChipModel_ show(boolean z10) {
        super.show(z10);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: spanSizeOverride, reason: merged with bridge method [inline-methods] */
    public MyCityChipModel_ m190spanSizeOverride(@Nullable u.c cVar) {
        super.m190spanSizeOverride(cVar);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    public String toString() {
        return "MyCityChipModel_{}" + super.toString();
    }

    @Override // com.airbnb.epoxy.v, com.airbnb.epoxy.u
    public void unbind(c cVar) {
        super.unbind((MyCityChipModel_) cVar);
    }
}
