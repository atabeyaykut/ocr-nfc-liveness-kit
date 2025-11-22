package g1;

import android.graphics.drawable.Drawable;
import androidx.annotation.NonNull;

/* loaded from: classes.dex */
public final class e extends c<Drawable> {
    public e(Drawable drawable) {
        super(drawable);
    }

    @Override // x0.w
    @NonNull
    public final Class<Drawable> a() {
        return this.f5788a.getClass();
    }

    @Override // x0.w
    public final int getSize() {
        T t10 = this.f5788a;
        return Math.max(1, t10.getIntrinsicHeight() * t10.getIntrinsicWidth() * 4);
    }

    @Override // x0.w
    public final void recycle() {
    }
}
