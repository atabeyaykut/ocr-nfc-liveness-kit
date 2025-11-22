package o1;

import android.graphics.drawable.Drawable;

/* loaded from: classes.dex */
public final class a implements e<Drawable> {

    /* renamed from: a, reason: collision with root package name */
    public final int f11058a;

    /* renamed from: b, reason: collision with root package name */
    public b f11059b;

    public a(int r12) {
        this.f11058a = r12;
    }

    @Override // o1.e
    public final d a(v0.a aVar) {
        if (aVar == v0.a.MEMORY_CACHE) {
            return c.f11062a;
        }
        if (this.f11059b == null) {
            this.f11059b = new b(this.f11058a, false);
        }
        return this.f11059b;
    }
}
