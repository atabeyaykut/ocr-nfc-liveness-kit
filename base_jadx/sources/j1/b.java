package j1;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import e1.u;
import v0.h;
import x0.w;

/* loaded from: classes.dex */
public final class b implements e<Bitmap, BitmapDrawable> {

    /* renamed from: a, reason: collision with root package name */
    public final Resources f7969a;

    public b(@NonNull Resources resources) {
        this.f7969a = resources;
    }

    @Override // j1.e
    @Nullable
    public final w<BitmapDrawable> a(@NonNull w<Bitmap> wVar, @NonNull h hVar) {
        if (wVar == null) {
            return null;
        }
        return new u(this.f7969a, wVar);
    }
}
