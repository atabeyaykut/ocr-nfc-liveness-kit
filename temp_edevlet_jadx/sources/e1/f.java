package e1;

import android.graphics.Bitmap;
import androidx.annotation.NonNull;

/* loaded from: classes.dex */
public abstract class f implements v0.l<Bitmap> {
    @Override // v0.l
    @NonNull
    public final x0.w b(@NonNull com.bumptech.glide.h hVar, @NonNull x0.w wVar, int r52, int r6) {
        if (!q1.m.h(r52, r6)) {
            throw new IllegalArgumentException("Cannot apply transformation on width: " + r52 + " or height: " + r6 + " less than or equal to zero and not Target.SIZE_ORIGINAL");
        }
        y0.c cVar = com.bumptech.glide.b.b(hVar).f2706a;
        Bitmap bitmap = (Bitmap) wVar.get();
        if (r52 == Integer.MIN_VALUE) {
            r52 = bitmap.getWidth();
        }
        if (r6 == Integer.MIN_VALUE) {
            r6 = bitmap.getHeight();
        }
        Bitmap bitmapC = c(cVar, bitmap, r52, r6);
        return bitmap.equals(bitmapC) ? wVar : e.b(bitmapC, cVar);
    }

    public abstract Bitmap c(@NonNull y0.c cVar, @NonNull Bitmap bitmap, int r32, int r42);
}
