package j;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import j.h;

/* loaded from: classes.dex */
public final class b implements h {

    /* renamed from: a, reason: collision with root package name */
    public final Bitmap f7916a;

    /* renamed from: b, reason: collision with root package name */
    public final p.k f7917b;

    public static final class a implements h.a<Bitmap> {
        @Override // j.h.a
        public final h a(Object obj, p.k kVar) {
            return new b((Bitmap) obj, kVar);
        }
    }

    public b(Bitmap bitmap, p.k kVar) {
        this.f7916a = bitmap;
        this.f7917b = kVar;
    }

    @Override // j.h
    public final Object a(p9.d<? super g> dVar) {
        return new f(new BitmapDrawable(this.f7917b.f12166a.getResources(), this.f7916a), false, 2);
    }
}
