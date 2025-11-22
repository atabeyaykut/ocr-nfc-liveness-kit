package tr.gov.turkiye.edevlet.kapisi.ui.accident.information.ui;

import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Build;
import android.view.View;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.cardview.widget.CardView;
import e.f;
import he.a;
import hh.i;
import kotlin.Metadata;
import kotlin.jvm.internal.h;
import l9.m;
import p.g;
import tr.gov.turkiye.edevlet.kapisi.R;
import tr.gov.turkiye.edevlet.kapisi.ui.accident.databinding.ItemPhotoBinding;
import x9.l;
import zd.d;

@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\t\b'\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\"\u0010#J\b\u0010\u0004\u001a\u00020\u0003H\u0014J\f\u0010\u0006\u001a\u00020\u0005*\u00020\u0002H\u0016R\"\u0010\b\u001a\u00020\u00078\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\"\u0010\u000f\u001a\u00020\u000e8\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u000f\u0010\u0011\"\u0004\b\u0012\u0010\u0013R(\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00050\u00148\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR.\u0010\u001c\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00050\u001b8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u001c\u0010\u001d\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!¨\u0006$"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/ui/ImageItemModel;", "Lhe/a;", "Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/ItemPhotoBinding;", "", "getDefaultLayout", "Ll9/m;", "bind", "Lhh/i;", "photoItem", "Lhh/i;", "getPhotoItem", "()Lhh/i;", "setPhotoItem", "(Lhh/i;)V", "", "isDefaultVisible", "Z", "()Z", "setDefaultVisible", "(Z)V", "Lkotlin/Function0;", "addPhoto", "Lx9/a;", "getAddPhoto", "()Lx9/a;", "setAddPhoto", "(Lx9/a;)V", "Lkotlin/Function1;", "deletePhoto", "Lx9/l;", "getDeletePhoto", "()Lx9/l;", "setDeletePhoto", "(Lx9/l;)V", "<init>", "()V", "ui-mobile-accident_release"}, k = 1, mv = {1, 8, 0})
/* loaded from: classes3.dex */
public abstract class ImageItemModel extends a<ItemPhotoBinding> {
    public x9.a<m> addPhoto;
    public l<? super i, m> deletePhoto;
    private boolean isDefaultVisible;
    public i photoItem;

    /* JADX INFO: Access modifiers changed from: private */
    public static final void bind$lambda$0(ImageItemModel this$0, View view) {
        h.f(this$0, "this$0");
        this$0.getAddPhoto().invoke();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void bind$lambda$1(ImageItemModel this$0, View view) {
        h.f(this$0, "this$0");
        this$0.getDeletePhoto().invoke(this$0.getPhotoItem());
    }

    @Override // he.a
    public void bind(ItemPhotoBinding itemPhotoBinding) {
        View.OnClickListener dVar;
        AppCompatImageView appCompatImageView;
        h.f(itemPhotoBinding, "<this>");
        boolean z10 = getPhotoItem().f7191e;
        CardView cardView = itemPhotoBinding.f17215b;
        CardView cardView2 = itemPhotoBinding.f17216c;
        if (z10) {
            cardView.setVisibility(8);
            cardView2.setVisibility(0);
            dVar = new zd.a(15, this);
            appCompatImageView = itemPhotoBinding.f17217d;
        } else {
            cardView2.setVisibility(8);
            cardView.setVisibility(0);
            AppCompatImageView photoAdded = itemPhotoBinding.f17218e;
            h.e(photoAdded, "photoAdded");
            Uri uri = getPhotoItem().f7188b;
            int r22 = Build.VERSION.SDK_INT;
            if (r22 == 26 || r22 == 27) {
                photoAdded.setLayerType(1, null);
            }
            f fVarL = x5.a.l(photoAdded.getContext());
            g.a aVar = new g.a(photoAdded.getContext());
            aVar.f12143c = uri;
            aVar.e(photoAdded);
            aVar.b();
            aVar.f12157r = Boolean.FALSE;
            aVar.f12147h = Bitmap.Config.ARGB_8888;
            aVar.d(R.drawable.img_placeholder);
            aVar.c(R.drawable.img_placeholder);
            fVarL.a(aVar.a());
            dVar = new d(16, this);
            appCompatImageView = itemPhotoBinding.f;
        }
        appCompatImageView.setOnClickListener(dVar);
    }

    public final x9.a<m> getAddPhoto() {
        x9.a<m> aVar = this.addPhoto;
        if (aVar != null) {
            return aVar;
        }
        h.n("addPhoto");
        throw null;
    }

    @Override // com.airbnb.epoxy.u
    public int getDefaultLayout() {
        return R.layout.item_photo;
    }

    public final l<i, m> getDeletePhoto() {
        l lVar = this.deletePhoto;
        if (lVar != null) {
            return lVar;
        }
        h.n("deletePhoto");
        throw null;
    }

    public final i getPhotoItem() {
        i iVar = this.photoItem;
        if (iVar != null) {
            return iVar;
        }
        h.n("photoItem");
        throw null;
    }

    /* renamed from: isDefaultVisible, reason: from getter */
    public final boolean getIsDefaultVisible() {
        return this.isDefaultVisible;
    }

    public final void setAddPhoto(x9.a<m> aVar) {
        h.f(aVar, "<set-?>");
        this.addPhoto = aVar;
    }

    public final void setDefaultVisible(boolean z10) {
        this.isDefaultVisible = z10;
    }

    public final void setDeletePhoto(l<? super i, m> lVar) {
        h.f(lVar, "<set-?>");
        this.deletePhoto = lVar;
    }

    public final void setPhotoItem(i iVar) {
        h.f(iVar, "<set-?>");
        this.photoItem = iVar;
    }
}
