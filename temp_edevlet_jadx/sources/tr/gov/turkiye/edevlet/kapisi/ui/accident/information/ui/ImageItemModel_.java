package tr.gov.turkiye.edevlet.kapisi.ui.accident.information.ui;

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
import hh.i;
import ih.a;
import l9.m;
import x9.l;

/* loaded from: classes3.dex */
public class ImageItemModel_ extends ImageItemModel implements y<c>, a {
    private i0<ImageItemModel_, c> onModelBoundListener_epoxyGeneratedModel;
    private k0<ImageItemModel_, c> onModelUnboundListener_epoxyGeneratedModel;
    private l0<ImageItemModel_, c> onModelVisibilityChangedListener_epoxyGeneratedModel;
    private m0<ImageItemModel_, c> onModelVisibilityStateChangedListener_epoxyGeneratedModel;

    @Override // ih.a
    public /* bridge */ /* synthetic */ a addPhoto(x9.a aVar) {
        return addPhoto((x9.a<m>) aVar);
    }

    @Override // ih.a
    public ImageItemModel_ addPhoto(x9.a<m> aVar) {
        onMutation();
        this.addPhoto = aVar;
        return this;
    }

    public x9.a<m> addPhoto() {
        return this.addPhoto;
    }

    @Override // com.airbnb.epoxy.u
    public void addTo(p pVar) {
        super.addTo(pVar);
        addWithDebugValidation(pVar);
    }

    @Override // ih.a
    public /* bridge */ /* synthetic */ a deletePhoto(l lVar) {
        return deletePhoto((l<? super i, m>) lVar);
    }

    @Override // ih.a
    public ImageItemModel_ deletePhoto(l<? super i, m> lVar) {
        onMutation();
        this.deletePhoto = lVar;
        return this;
    }

    public l<? super i, m> deletePhoto() {
        return this.deletePhoto;
    }

    @Override // com.airbnb.epoxy.u
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ImageItemModel_) || !super.equals(obj)) {
            return false;
        }
        ImageItemModel_ imageItemModel_ = (ImageItemModel_) obj;
        imageItemModel_.getClass();
        i iVar = this.photoItem;
        if (iVar == null ? imageItemModel_.photoItem != null : !iVar.equals(imageItemModel_.photoItem)) {
            return false;
        }
        if (getIsDefaultVisible() != imageItemModel_.getIsDefaultVisible()) {
            return false;
        }
        x9.a<m> aVar = this.addPhoto;
        if (aVar == null ? imageItemModel_.addPhoto != null : !aVar.equals(imageItemModel_.addPhoto)) {
            return false;
        }
        l<? super i, m> lVar = this.deletePhoto;
        l<? super i, m> lVar2 = imageItemModel_.deletePhoto;
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
        i iVar = this.photoItem;
        int r12 = ((getIsDefaultVisible() ? 1 : 0) + ((r02 + (iVar != null ? iVar.hashCode() : 0)) * 31)) * 31;
        x9.a<m> aVar = this.addPhoto;
        int r13 = (r12 + (aVar != null ? aVar.hashCode() : 0)) * 31;
        l<? super i, m> lVar = this.deletePhoto;
        return r13 + (lVar != null ? lVar.hashCode() : 0);
    }

    @Override // com.airbnb.epoxy.u
    public ImageItemModel_ hide() {
        super.hide();
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id, reason: merged with bridge method [inline-methods] */
    public ImageItemModel_ m408id(long j10) {
        super.m408id(j10);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id, reason: merged with bridge method [inline-methods] */
    public ImageItemModel_ m409id(long j10, long j11) {
        super.m409id(j10, j11);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id, reason: merged with bridge method [inline-methods] */
    public ImageItemModel_ m410id(@Nullable CharSequence charSequence) {
        super.m410id(charSequence);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id, reason: merged with bridge method [inline-methods] */
    public ImageItemModel_ m411id(@Nullable CharSequence charSequence, long j10) {
        super.m411id(charSequence, j10);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: id, reason: merged with bridge method [inline-methods] */
    public ImageItemModel_ m412id(@Nullable CharSequence charSequence, @Nullable CharSequence... charSequenceArr) {
        super.m412id(charSequence, charSequenceArr);
        return this;
    }

    @Override // ih.a
    /* renamed from: id, reason: merged with bridge method [inline-methods] */
    public ImageItemModel_ mo413id(@Nullable Number... numberArr) {
        super.mo413id(numberArr);
        return this;
    }

    @Override // ih.a
    public ImageItemModel_ isDefaultVisible(boolean z10) {
        onMutation();
        super.setDefaultVisible(z10);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: layout, reason: merged with bridge method [inline-methods] */
    public ImageItemModel_ m414layout(@LayoutRes int r12) {
        super.m414layout(r12);
        return this;
    }

    public /* bridge */ /* synthetic */ a onBind(i0 i0Var) {
        return m415onBind((i0<ImageItemModel_, c>) i0Var);
    }

    /* renamed from: onBind, reason: collision with other method in class */
    public ImageItemModel_ m415onBind(i0<ImageItemModel_, c> i0Var) {
        onMutation();
        return this;
    }

    public /* bridge */ /* synthetic */ a onUnbind(k0 k0Var) {
        return m416onUnbind((k0<ImageItemModel_, c>) k0Var);
    }

    /* renamed from: onUnbind, reason: collision with other method in class */
    public ImageItemModel_ m416onUnbind(k0<ImageItemModel_, c> k0Var) {
        onMutation();
        return this;
    }

    public /* bridge */ /* synthetic */ a onVisibilityChanged(l0 l0Var) {
        return m417onVisibilityChanged((l0<ImageItemModel_, c>) l0Var);
    }

    /* renamed from: onVisibilityChanged, reason: collision with other method in class */
    public ImageItemModel_ m417onVisibilityChanged(l0<ImageItemModel_, c> l0Var) {
        onMutation();
        return this;
    }

    @Override // com.airbnb.epoxy.v, com.airbnb.epoxy.u
    public void onVisibilityChanged(float f, float f10, int r32, int r42, c cVar) {
        super.onVisibilityChanged(f, f10, r32, r42, (int) cVar);
    }

    public /* bridge */ /* synthetic */ a onVisibilityStateChanged(m0 m0Var) {
        return m418onVisibilityStateChanged((m0<ImageItemModel_, c>) m0Var);
    }

    /* renamed from: onVisibilityStateChanged, reason: collision with other method in class */
    public ImageItemModel_ m418onVisibilityStateChanged(m0<ImageItemModel_, c> m0Var) {
        onMutation();
        return this;
    }

    @Override // com.airbnb.epoxy.v, com.airbnb.epoxy.u
    public void onVisibilityStateChanged(int r12, c cVar) {
        super.onVisibilityStateChanged(r12, (int) cVar);
    }

    public i photoItem() {
        return this.photoItem;
    }

    @Override // ih.a
    public ImageItemModel_ photoItem(i iVar) {
        onMutation();
        this.photoItem = iVar;
        return this;
    }

    @Override // com.airbnb.epoxy.u
    public ImageItemModel_ reset() {
        this.photoItem = null;
        super.setDefaultVisible(false);
        this.addPhoto = null;
        this.deletePhoto = null;
        super.reset();
        return this;
    }

    @Override // com.airbnb.epoxy.u
    public ImageItemModel_ show() {
        super.show();
        return this;
    }

    @Override // com.airbnb.epoxy.u
    public ImageItemModel_ show(boolean z10) {
        super.show(z10);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    /* renamed from: spanSizeOverride, reason: merged with bridge method [inline-methods] */
    public ImageItemModel_ m419spanSizeOverride(@Nullable u.c cVar) {
        super.m419spanSizeOverride(cVar);
        return this;
    }

    @Override // com.airbnb.epoxy.u
    public String toString() {
        return "ImageItemModel_{photoItem=" + this.photoItem + ", isDefaultVisible=" + getIsDefaultVisible() + "}" + super.toString();
    }

    @Override // com.airbnb.epoxy.v, com.airbnb.epoxy.u
    public void unbind(c cVar) {
        super.unbind((ImageItemModel_) cVar);
    }
}
