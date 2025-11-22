package e1;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import androidx.annotation.NonNull;

/* loaded from: classes.dex */
public final class u implements x0.w<BitmapDrawable>, x0.s {

    /* renamed from: a, reason: collision with root package name */
    public final Resources f5086a;

    /* renamed from: b, reason: collision with root package name */
    public final x0.w<Bitmap> f5087b;

    public u(@NonNull Resources resources, @NonNull x0.w<Bitmap> wVar) {
        q1.l.b(resources);
        this.f5086a = resources;
        q1.l.b(wVar);
        this.f5087b = wVar;
    }

    @Override // x0.w
    @NonNull
    public final Class<BitmapDrawable> a() {
        return BitmapDrawable.class;
    }

    @Override // x0.w
    @NonNull
    public final BitmapDrawable get() {
        return new BitmapDrawable(this.f5086a, this.f5087b.get());
    }

    @Override // x0.w
    public final int getSize() {
        return this.f5087b.getSize();
    }

    @Override // x0.s
    public final void initialize() {
        x0.w<Bitmap> wVar = this.f5087b;
        if (wVar instanceof x0.s) {
            ((x0.s) wVar).initialize();
        }
    }

    @Override // x0.w
    public final void recycle() {
        this.f5087b.recycle();
    }
}
