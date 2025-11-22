package e1;

import android.graphics.Bitmap;
import android.graphics.Paint;
import android.util.Log;
import androidx.annotation.NonNull;
import java.security.MessageDigest;

/* loaded from: classes.dex */
public final class j extends f {

    /* renamed from: b, reason: collision with root package name */
    public static final byte[] f5039b = "com.bumptech.glide.load.resource.bitmap.CenterInside".getBytes(v0.f.f18200a);

    @Override // v0.f
    public final void a(@NonNull MessageDigest messageDigest) {
        messageDigest.update(f5039b);
    }

    @Override // e1.f
    public final Bitmap c(@NonNull y0.c cVar, @NonNull Bitmap bitmap, int r6, int r72) {
        Paint paint = y.f5098a;
        if (bitmap.getWidth() > r6 || bitmap.getHeight() > r72) {
            if (Log.isLoggable("TransformationUtils", 2)) {
                Log.v("TransformationUtils", "requested target size too big for input, fit centering instead");
            }
            return y.b(cVar, bitmap, r6, r72);
        }
        if (!Log.isLoggable("TransformationUtils", 2)) {
            return bitmap;
        }
        Log.v("TransformationUtils", "requested target size larger or equal to input, returning input");
        return bitmap;
    }

    @Override // v0.f
    public final boolean equals(Object obj) {
        return obj instanceof j;
    }

    @Override // v0.f
    public final int hashCode() {
        return -670243078;
    }
}
