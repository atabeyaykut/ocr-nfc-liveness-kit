package j;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.VectorDrawable;
import androidx.vectordrawable.graphics.drawable.VectorDrawableCompat;
import j.h;

/* loaded from: classes.dex */
public final class e implements h {

    /* renamed from: a, reason: collision with root package name */
    public final Drawable f7922a;

    /* renamed from: b, reason: collision with root package name */
    public final p.k f7923b;

    public static final class a implements h.a<Drawable> {
        @Override // j.h.a
        public final h a(Object obj, p.k kVar) {
            return new e((Drawable) obj, kVar);
        }
    }

    public e(Drawable drawable, p.k kVar) {
        this.f7922a = drawable;
        this.f7923b = kVar;
    }

    @Override // j.h
    public final Object a(p9.d<? super g> dVar) {
        Bitmap.Config[] configArr = u.c.f17726a;
        Drawable bitmapDrawable = this.f7922a;
        boolean z10 = (bitmapDrawable instanceof VectorDrawable) || (bitmapDrawable instanceof VectorDrawableCompat);
        if (z10) {
            p.k kVar = this.f7923b;
            bitmapDrawable = new BitmapDrawable(kVar.f12166a.getResources(), u.e.a(bitmapDrawable, kVar.f12167b, kVar.f12169d, kVar.f12170e, kVar.f));
        }
        return new f(bitmapDrawable, z10, 2);
    }
}
