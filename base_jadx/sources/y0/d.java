package y0;

import android.graphics.Bitmap;
import androidx.annotation.NonNull;

/* loaded from: classes.dex */
public class d implements c {
    @Override // y0.c
    public final void a(int r12) {
    }

    @Override // y0.c
    public final void b() {
    }

    @Override // y0.c
    @NonNull
    public final Bitmap c(int r12, int r22, Bitmap.Config config) {
        return Bitmap.createBitmap(r12, r22, config);
    }

    @Override // y0.c
    public void d(Bitmap bitmap) {
        bitmap.recycle();
    }

    @Override // y0.c
    @NonNull
    public final Bitmap e(int r12, int r22, Bitmap.Config config) {
        return Bitmap.createBitmap(r12, r22, config);
    }
}
