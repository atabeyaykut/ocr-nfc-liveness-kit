package g1;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import androidx.annotation.NonNull;
import q1.l;
import x0.s;
import x0.w;

/* loaded from: classes.dex */
public abstract class c<T extends Drawable> implements w<T>, s {

    /* renamed from: a, reason: collision with root package name */
    public final T f5788a;

    public c(T t10) {
        l.b(t10);
        this.f5788a = t10;
    }

    @Override // x0.w
    @NonNull
    public final Object get() {
        T t10 = this.f5788a;
        Drawable.ConstantState constantState = t10.getConstantState();
        return constantState == null ? t10 : constantState.newDrawable();
    }

    @Override // x0.s
    public void initialize() {
        Bitmap bitmap;
        T t10 = this.f5788a;
        if (t10 instanceof BitmapDrawable) {
            bitmap = ((BitmapDrawable) t10).getBitmap();
        } else if (!(t10 instanceof i1.c)) {
            return;
        } else {
            bitmap = ((i1.c) t10).f7243a.f7253a.f7265l;
        }
        bitmap.prepareToDraw();
    }
}
