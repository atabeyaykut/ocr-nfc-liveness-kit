package e1;

import android.graphics.Bitmap;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* loaded from: classes.dex */
public final class e implements x0.w<Bitmap>, x0.s {

    /* renamed from: a, reason: collision with root package name */
    public final Bitmap f5034a;

    /* renamed from: b, reason: collision with root package name */
    public final y0.c f5035b;

    public e(@NonNull Bitmap bitmap, @NonNull y0.c cVar) {
        if (bitmap == null) {
            throw new NullPointerException("Bitmap must not be null");
        }
        this.f5034a = bitmap;
        if (cVar == null) {
            throw new NullPointerException("BitmapPool must not be null");
        }
        this.f5035b = cVar;
    }

    @Nullable
    public static e b(@Nullable Bitmap bitmap, @NonNull y0.c cVar) {
        if (bitmap == null) {
            return null;
        }
        return new e(bitmap, cVar);
    }

    @Override // x0.w
    @NonNull
    public final Class<Bitmap> a() {
        return Bitmap.class;
    }

    @Override // x0.w
    @NonNull
    public final Bitmap get() {
        return this.f5034a;
    }

    @Override // x0.w
    public final int getSize() {
        return q1.m.c(this.f5034a);
    }

    @Override // x0.s
    public final void initialize() {
        this.f5034a.prepareToDraw();
    }

    @Override // x0.w
    public final void recycle() {
        this.f5035b.d(this.f5034a);
    }
}
