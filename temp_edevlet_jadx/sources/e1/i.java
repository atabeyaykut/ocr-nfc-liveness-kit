package e1;

import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.graphics.Paint;
import androidx.annotation.NonNull;
import java.security.MessageDigest;

/* loaded from: classes.dex */
public final class i extends f {

    /* renamed from: b, reason: collision with root package name */
    public static final byte[] f5038b = "com.bumptech.glide.load.resource.bitmap.CenterCrop".getBytes(v0.f.f18200a);

    @Override // v0.f
    public final void a(@NonNull MessageDigest messageDigest) {
        messageDigest.update(f5038b);
    }

    @Override // e1.f
    public final Bitmap c(@NonNull y0.c cVar, @NonNull Bitmap bitmap, int r92, int r10) {
        float width;
        float height;
        Paint paint = y.f5098a;
        if (bitmap.getWidth() == r92 && bitmap.getHeight() == r10) {
            return bitmap;
        }
        Matrix matrix = new Matrix();
        float width2 = 0.0f;
        if (bitmap.getWidth() * r10 > bitmap.getHeight() * r92) {
            width = r10 / bitmap.getHeight();
            width2 = (r92 - (bitmap.getWidth() * width)) * 0.5f;
            height = 0.0f;
        } else {
            width = r92 / bitmap.getWidth();
            height = (r10 - (bitmap.getHeight() * width)) * 0.5f;
        }
        matrix.setScale(width, width);
        matrix.postTranslate((int) (width2 + 0.5f), (int) (height + 0.5f));
        Bitmap bitmapE = cVar.e(r92, r10, bitmap.getConfig() != null ? bitmap.getConfig() : Bitmap.Config.ARGB_8888);
        bitmapE.setHasAlpha(bitmap.hasAlpha());
        y.a(bitmap, bitmapE, matrix);
        return bitmapE;
    }

    @Override // v0.f
    public final boolean equals(Object obj) {
        return obj instanceof i;
    }

    @Override // v0.f
    public final int hashCode() {
        return -599754482;
    }
}
