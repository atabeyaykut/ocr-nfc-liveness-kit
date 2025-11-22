package e1;

import android.graphics.Bitmap;
import androidx.annotation.NonNull;
import java.security.MessageDigest;

/* loaded from: classes.dex */
public final class q extends f {

    /* renamed from: b, reason: collision with root package name */
    public static final byte[] f5065b = "com.bumptech.glide.load.resource.bitmap.FitCenter".getBytes(v0.f.f18200a);

    @Override // v0.f
    public final void a(@NonNull MessageDigest messageDigest) {
        messageDigest.update(f5065b);
    }

    @Override // e1.f
    public final Bitmap c(@NonNull y0.c cVar, @NonNull Bitmap bitmap, int r32, int r42) {
        return y.b(cVar, bitmap, r32, r42);
    }

    @Override // v0.f
    public final boolean equals(Object obj) {
        return obj instanceof q;
    }

    @Override // v0.f
    public final int hashCode() {
        return 1572326941;
    }
}
