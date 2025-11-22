package j1;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import v0.h;
import x0.w;

/* loaded from: classes.dex */
public final class c implements e<Drawable, byte[]> {

    /* renamed from: a, reason: collision with root package name */
    public final y0.c f7970a;

    /* renamed from: b, reason: collision with root package name */
    public final e<Bitmap, byte[]> f7971b;

    /* renamed from: c, reason: collision with root package name */
    public final e<i1.c, byte[]> f7972c;

    public c(@NonNull y0.c cVar, @NonNull a aVar, @NonNull d dVar) {
        this.f7970a = cVar;
        this.f7971b = aVar;
        this.f7972c = dVar;
    }

    @Override // j1.e
    @Nullable
    public final w<byte[]> a(@NonNull w<Drawable> wVar, @NonNull h hVar) {
        e eVar;
        Drawable drawable = wVar.get();
        if (drawable instanceof BitmapDrawable) {
            wVar = e1.e.b(((BitmapDrawable) drawable).getBitmap(), this.f7970a);
            eVar = this.f7971b;
        } else {
            if (!(drawable instanceof i1.c)) {
                return null;
            }
            eVar = this.f7972c;
        }
        return eVar.a(wVar, hVar);
    }
}
