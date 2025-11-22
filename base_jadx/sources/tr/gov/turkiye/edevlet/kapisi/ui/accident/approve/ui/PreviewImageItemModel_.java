package tr.gov.turkiye.edevlet.kapisi.ui.accident.approve.ui;

import ah.a;
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
import x9.l;

/* loaded from: classes3.dex */
public class PreviewImageItemModel_ extends PreviewImageItemModel implements y<c>, a {
    private i0<PreviewImageItemModel_, c> onModelBoundListener_epoxyGeneratedModel;
    private k0<PreviewImageItemModel_, c> onModelUnboundListener_epoxyGeneratedModel;
    private l0<PreviewImageItemModel_, c> onModelVisibilityChangedListener_epoxyGeneratedModel;
    private m0<PreviewImageItemModel_, c> onModelVisibilityStateChangedListener_epoxyGeneratedModel;

    @Override // ah.a
    public /* bridge */ /* synthetic */ a addPhoto(l lVar) {
        return addPhoto((l<? super byte[], m>) lVar);
    }

    @Override // ah.a
    public PreviewImageItemModel_ addPhoto(l<? super byte[], m> lVar) {
        onMutation();
        this.addPhoto = lVar;
        return this;
    }

    public l<? super byte[], m> addPhoto() {
        return this.addPhoto;
    }

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
        if (!(obj instanceof PreviewImageItemModel_) || !super.equals(obj)) {
            return false;
        }
        PreviewImageItemModel_ previewImageItemModel_ = (PreviewImageItemModel_) obj;
        previewImageItemModel_.getClass();
        zg.a aVar = this.photoItem;
        if (aVar == null ? previewImageItemModel_.photoItem != null : !aVar.equals(previewImageItemModel_.photoItem)) {
            return false;
        }
        if (getIsDefaultVisible() != previewImageItemModel_.getIsDefaultVisible()) {
            return false;
        }
        l<? super byte[], m> lVar = this.addPhoto;
        l<? super byte[], m> lVar2 = previewImageItemModel_.addPhoto;
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
        zg.a aVar = this.photoItem;
        int r12 = ((getIsDefaultVisible() ? 1 : 0) + ((r02 + (aVar != null ? aVar.hashCode() : 0)) * 31)) * 31;
        l<? super byte[], m> lVar = this.addPhoto;
        return r12 + (lVar != null ? lVar.hashCode() : 0);
    }

    @Override // com.airbnb.epoxy.u
    public PreviewImageItemModel_ hide() {
        super.hide();
        return this;
    }

    @Override // com.airbnb.epoxy.u
    public PreviewImageItemModel_ id(long j10) {
        super.id(j10);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    public PreviewImageItemModel_ id(long j10, long j11) {
        super.id(j10, j11);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    public PreviewImageItemModel_ id(@Nullable CharSequence charSequence) {
        super.id(charSequence);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    public PreviewImageItemModel_ id(@Nullable CharSequence charSequence, long j10) {
        super.id(charSequence, j10);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    public PreviewImageItemModel_ id(@Nullable CharSequence charSequence, @Nullable CharSequence... charSequenceArr) {
        super.id(charSequence, charSequenceArr);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    public PreviewImageItemModel_ id(@Nullable Number... numberArr) {
        super.id(numberArr);
        return this;
    }

    @Override // ah.a
    public PreviewImageItemModel_ isDefaultVisible(boolean z10) {
        onMutation();
        super.setDefaultVisible(z10);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    public PreviewImageItemModel_ layout(@LayoutRes int r12) {
        super.layout(r12);
        return this;
    }

    public /* bridge */ /* synthetic */ a onBind(i0 i0Var) {
        return m392onBind((i0<PreviewImageItemModel_, c>) i0Var);
    }

    /* renamed from: onBind, reason: collision with other method in class */
    public PreviewImageItemModel_ m392onBind(i0<PreviewImageItemModel_, c> i0Var) {
        onMutation();
        return this;
    }

    public /* bridge */ /* synthetic */ a onUnbind(k0 k0Var) {
        return m393onUnbind((k0<PreviewImageItemModel_, c>) k0Var);
    }

    /* renamed from: onUnbind, reason: collision with other method in class */
    public PreviewImageItemModel_ m393onUnbind(k0<PreviewImageItemModel_, c> k0Var) {
        onMutation();
        return this;
    }

    public /* bridge */ /* synthetic */ a onVisibilityChanged(l0 l0Var) {
        return m394onVisibilityChanged((l0<PreviewImageItemModel_, c>) l0Var);
    }

    /* renamed from: onVisibilityChanged, reason: collision with other method in class */
    public PreviewImageItemModel_ m394onVisibilityChanged(l0<PreviewImageItemModel_, c> l0Var) {
        onMutation();
        return this;
    }

    @Override // com.airbnb.epoxy.v, com.airbnb.epoxy.u
    public void onVisibilityChanged(float f, float f10, int r32, int r42, c cVar) {
        super.onVisibilityChanged(f, f10, r32, r42, (int) cVar);
    }

    public /* bridge */ /* synthetic */ a onVisibilityStateChanged(m0 m0Var) {
        return m395onVisibilityStateChanged((m0<PreviewImageItemModel_, c>) m0Var);
    }

    /* renamed from: onVisibilityStateChanged, reason: collision with other method in class */
    public PreviewImageItemModel_ m395onVisibilityStateChanged(m0<PreviewImageItemModel_, c> m0Var) {
        onMutation();
        return this;
    }

    @Override // com.airbnb.epoxy.v, com.airbnb.epoxy.u
    public void onVisibilityStateChanged(int r12, c cVar) {
        super.onVisibilityStateChanged(r12, (int) cVar);
    }

    @Override // ah.a
    public PreviewImageItemModel_ photoItem(zg.a aVar) {
        onMutation();
        this.photoItem = aVar;
        return this;
    }

    public zg.a photoItem() {
        return this.photoItem;
    }

    @Override // com.airbnb.epoxy.u
    public PreviewImageItemModel_ reset() {
        this.photoItem = null;
        super.setDefaultVisible(false);
        this.addPhoto = null;
        super.reset();
        return this;
    }

    @Override // com.airbnb.epoxy.u
    public PreviewImageItemModel_ show() {
        super.show();
        return this;
    }

    @Override // com.airbnb.epoxy.u
    public PreviewImageItemModel_ show(boolean z10) {
        super.show(z10);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    public PreviewImageItemModel_ spanSizeOverride(@Nullable u.c cVar) {
        super.spanSizeOverride(cVar);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    public String toString() {
        return "PreviewImageItemModel_{photoItem=" + this.photoItem + ", isDefaultVisible=" + getIsDefaultVisible() + "}" + super.toString();
    }

    @Override // com.airbnb.epoxy.v, com.airbnb.epoxy.u
    public void unbind(c cVar) {
        super.unbind((PreviewImageItemModel_) cVar);
    }
}
