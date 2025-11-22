package tr.gov.turkiye.edevlet.kapisi.ui.accident.approve.ui;

import android.util.Base64;
import android.view.View;
import androidx.appcompat.widget.AppCompatImageView;
import ge.b;
import he.a;
import ke.c;
import kotlin.Metadata;
import kotlin.jvm.internal.h;
import l9.m;
import tr.gov.turkiye.edevlet.kapisi.R;
import tr.gov.turkiye.edevlet.kapisi.ui.accident.databinding.ItemPreviewPhotoBinding;
import x9.l;

@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u0012\n\u0002\b\t\b'\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u001c\u0010\u001dJ\b\u0010\u0004\u001a\u00020\u0003H\u0014J\f\u0010\u0006\u001a\u00020\u0005*\u00020\u0002H\u0016R\"\u0010\b\u001a\u00020\u00078\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\"\u0010\u000f\u001a\u00020\u000e8\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u000f\u0010\u0011\"\u0004\b\u0012\u0010\u0013R0\u0010\u0016\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0015\u0012\u0004\u0012\u00020\u00050\u00148\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001b¨\u0006\u001e"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/ui/PreviewImageItemModel;", "Lhe/a;", "Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/ItemPreviewPhotoBinding;", "", "getDefaultLayout", "Ll9/m;", "bind", "Lzg/a;", "photoItem", "Lzg/a;", "getPhotoItem", "()Lzg/a;", "setPhotoItem", "(Lzg/a;)V", "", "isDefaultVisible", "Z", "()Z", "setDefaultVisible", "(Z)V", "Lkotlin/Function1;", "", "addPhoto", "Lx9/l;", "getAddPhoto", "()Lx9/l;", "setAddPhoto", "(Lx9/l;)V", "<init>", "()V", "ui-mobile-accident_release"}, k = 1, mv = {1, 8, 0})
/* loaded from: classes3.dex */
public abstract class PreviewImageItemModel extends a<ItemPreviewPhotoBinding> {
    public l<? super byte[], m> addPhoto;
    private boolean isDefaultVisible;
    public zg.a photoItem;

    /* JADX INFO: Access modifiers changed from: private */
    public static final void bind$lambda$0(PreviewImageItemModel this$0, View view) {
        h.f(this$0, "this$0");
        this$0.getAddPhoto().invoke(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void bind$lambda$1(PreviewImageItemModel this$0, byte[] bArr, View view) {
        h.f(this$0, "this$0");
        this$0.getAddPhoto().invoke(bArr);
    }

    @Override // he.a
    public void bind(ItemPreviewPhotoBinding itemPreviewPhotoBinding) {
        h.f(itemPreviewPhotoBinding, "<this>");
        String str = getPhotoItem().f20293b;
        boolean z10 = str == null || str.length() == 0;
        AppCompatImageView photoAdded = itemPreviewPhotoBinding.f17225b;
        if (z10) {
            h.e(photoAdded, "photoAdded");
            b.a(photoAdded, R.drawable.mkt_broken_media);
            photoAdded.setOnClickListener(new zd.a(12, this));
        } else {
            byte[] contentArray = Base64.decode(getPhotoItem().f20293b, 2);
            h.e(photoAdded, "photoAdded");
            h.e(contentArray, "contentArray");
            b.b(photoAdded, contentArray);
            photoAdded.setOnClickListener(new c(3, this, contentArray));
        }
    }

    public final l<byte[], m> getAddPhoto() {
        l lVar = this.addPhoto;
        if (lVar != null) {
            return lVar;
        }
        h.n("addPhoto");
        throw null;
    }

    @Override // com.airbnb.epoxy.u
    public int getDefaultLayout() {
        return R.layout.item_preview_photo;
    }

    public final zg.a getPhotoItem() {
        zg.a aVar = this.photoItem;
        if (aVar != null) {
            return aVar;
        }
        h.n("photoItem");
        throw null;
    }

    /* renamed from: isDefaultVisible, reason: from getter */
    public final boolean getIsDefaultVisible() {
        return this.isDefaultVisible;
    }

    public final void setAddPhoto(l<? super byte[], m> lVar) {
        h.f(lVar, "<set-?>");
        this.addPhoto = lVar;
    }

    public final void setDefaultVisible(boolean z10) {
        this.isDefaultVisible = z10;
    }

    public final void setPhotoItem(zg.a aVar) {
        h.f(aVar, "<set-?>");
        this.photoItem = aVar;
    }
}
