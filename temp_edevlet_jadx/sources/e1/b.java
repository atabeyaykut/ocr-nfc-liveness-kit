package e1;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import androidx.annotation.NonNull;
import java.io.File;

/* loaded from: classes.dex */
public final class b implements v0.k<BitmapDrawable> {

    /* renamed from: a, reason: collision with root package name */
    public final y0.c f5019a;

    /* renamed from: b, reason: collision with root package name */
    public final v0.k<Bitmap> f5020b;

    public b(y0.c cVar, c cVar2) {
        this.f5019a = cVar;
        this.f5020b = cVar2;
    }

    @Override // v0.k
    @NonNull
    public final v0.c a(@NonNull v0.h hVar) {
        return this.f5020b.a(hVar);
    }

    @Override // v0.d
    public final boolean b(@NonNull Object obj, @NonNull File file, @NonNull v0.h hVar) {
        return this.f5020b.b(new e(((BitmapDrawable) ((x0.w) obj).get()).getBitmap(), this.f5019a), file, hVar);
    }
}
