package p;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import nc.j0;
import nc.k1;
import nc.y;
import t.b;
import t.c;

/* loaded from: classes.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public final y f12084a;

    /* renamed from: b, reason: collision with root package name */
    public final y f12085b;

    /* renamed from: c, reason: collision with root package name */
    public final y f12086c;

    /* renamed from: d, reason: collision with root package name */
    public final y f12087d;

    /* renamed from: e, reason: collision with root package name */
    public final c.a f12088e;
    public final int f;

    /* renamed from: g, reason: collision with root package name */
    public final Bitmap.Config f12089g;

    /* renamed from: h, reason: collision with root package name */
    public final boolean f12090h;

    /* renamed from: i, reason: collision with root package name */
    public final boolean f12091i;

    /* renamed from: j, reason: collision with root package name */
    public final Drawable f12092j;

    /* renamed from: k, reason: collision with root package name */
    public final Drawable f12093k;

    /* renamed from: l, reason: collision with root package name */
    public final Drawable f12094l;

    /* renamed from: m, reason: collision with root package name */
    public final int f12095m;

    /* renamed from: n, reason: collision with root package name */
    public final int f12096n;

    /* renamed from: o, reason: collision with root package name */
    public final int f12097o;

    public a() {
        this(0);
    }

    public a(int r42) {
        kotlinx.coroutines.scheduling.c cVar = j0.f10808a;
        k1 k1VarD = kotlinx.coroutines.internal.m.f9167a.d();
        kotlinx.coroutines.scheduling.b bVar = j0.f10809b;
        b.a aVar = c.a.f15460a;
        Bitmap.Config config = u.c.f17727b;
        this.f12084a = k1VarD;
        this.f12085b = bVar;
        this.f12086c = bVar;
        this.f12087d = bVar;
        this.f12088e = aVar;
        this.f = 3;
        this.f12089g = config;
        this.f12090h = true;
        this.f12091i = false;
        this.f12092j = null;
        this.f12093k = null;
        this.f12094l = null;
        this.f12095m = 1;
        this.f12096n = 1;
        this.f12097o = 1;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof a) {
            a aVar = (a) obj;
            if (kotlin.jvm.internal.h.a(this.f12084a, aVar.f12084a) && kotlin.jvm.internal.h.a(this.f12085b, aVar.f12085b) && kotlin.jvm.internal.h.a(this.f12086c, aVar.f12086c) && kotlin.jvm.internal.h.a(this.f12087d, aVar.f12087d) && kotlin.jvm.internal.h.a(this.f12088e, aVar.f12088e) && this.f == aVar.f && this.f12089g == aVar.f12089g && this.f12090h == aVar.f12090h && this.f12091i == aVar.f12091i && kotlin.jvm.internal.h.a(this.f12092j, aVar.f12092j) && kotlin.jvm.internal.h.a(this.f12093k, aVar.f12093k) && kotlin.jvm.internal.h.a(this.f12094l, aVar.f12094l) && this.f12095m == aVar.f12095m && this.f12096n == aVar.f12096n && this.f12097o == aVar.f12097o) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int r02 = (((((this.f12089g.hashCode() + ((g.d.c(this.f) + ((this.f12088e.hashCode() + ((this.f12087d.hashCode() + ((this.f12086c.hashCode() + ((this.f12085b.hashCode() + (this.f12084a.hashCode() * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31) + (this.f12090h ? 1231 : 1237)) * 31) + (this.f12091i ? 1231 : 1237)) * 31;
        Drawable drawable = this.f12092j;
        int r03 = (r02 + (drawable == null ? 0 : drawable.hashCode())) * 31;
        Drawable drawable2 = this.f12093k;
        int r04 = (r03 + (drawable2 == null ? 0 : drawable2.hashCode())) * 31;
        Drawable drawable3 = this.f12094l;
        return g.d.c(this.f12097o) + ((g.d.c(this.f12096n) + ((g.d.c(this.f12095m) + ((r04 + (drawable3 != null ? drawable3.hashCode() : 0)) * 31)) * 31)) * 31);
    }
}
