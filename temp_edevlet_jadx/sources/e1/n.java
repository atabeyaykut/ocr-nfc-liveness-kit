package e1;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.util.Log;
import androidx.annotation.Nullable;
import java.util.concurrent.locks.Lock;

/* loaded from: classes.dex */
public final class n {

    /* renamed from: a, reason: collision with root package name */
    public static final a f5062a = new a();

    public class a extends y0.d {
        @Override // y0.d, y0.c
        public final void d(Bitmap bitmap) {
        }
    }

    @Nullable
    public static e a(y0.c cVar, Drawable drawable, int r92, int r10) {
        Bitmap bitmap;
        StringBuilder sb2;
        String str;
        Drawable current = drawable.getCurrent();
        boolean z10 = false;
        if (current instanceof BitmapDrawable) {
            bitmap = ((BitmapDrawable) current).getBitmap();
        } else if (current instanceof Animatable) {
            bitmap = null;
        } else if (r92 == Integer.MIN_VALUE && current.getIntrinsicWidth() <= 0) {
            if (Log.isLoggable("DrawableToBitmap", 5)) {
                sb2 = new StringBuilder("Unable to draw ");
                sb2.append(current);
                str = " to Bitmap with Target.SIZE_ORIGINAL because the Drawable has no intrinsic width";
                sb2.append(str);
                Log.w("DrawableToBitmap", sb2.toString());
            }
            bitmap = null;
            z10 = true;
        } else if (r10 != Integer.MIN_VALUE || current.getIntrinsicHeight() > 0) {
            if (current.getIntrinsicWidth() > 0) {
                r92 = current.getIntrinsicWidth();
            }
            if (current.getIntrinsicHeight() > 0) {
                r10 = current.getIntrinsicHeight();
            }
            Lock lock = y.f5099b;
            lock.lock();
            Bitmap bitmapE = cVar.e(r92, r10, Bitmap.Config.ARGB_8888);
            try {
                Canvas canvas = new Canvas(bitmapE);
                current.setBounds(0, 0, r92, r10);
                current.draw(canvas);
                canvas.setBitmap(null);
                lock.unlock();
                bitmap = bitmapE;
                z10 = true;
            } catch (Throwable th2) {
                lock.unlock();
                throw th2;
            }
        } else {
            if (Log.isLoggable("DrawableToBitmap", 5)) {
                sb2 = new StringBuilder("Unable to draw ");
                sb2.append(current);
                str = " to Bitmap with Target.SIZE_ORIGINAL because the Drawable has no intrinsic height";
                sb2.append(str);
                Log.w("DrawableToBitmap", sb2.toString());
            }
            bitmap = null;
            z10 = true;
        }
        if (!z10) {
            cVar = f5062a;
        }
        return e.b(bitmap, cVar);
    }
}
