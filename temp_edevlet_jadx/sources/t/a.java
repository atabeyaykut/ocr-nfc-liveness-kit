package t;

import android.graphics.drawable.Drawable;
import p.h;
import p.n;
import t.c;

/* loaded from: classes.dex */
public final class a implements c {

    /* renamed from: a, reason: collision with root package name */
    public final d f15452a;

    /* renamed from: b, reason: collision with root package name */
    public final h f15453b;

    /* renamed from: c, reason: collision with root package name */
    public final int f15454c;

    /* renamed from: d, reason: collision with root package name */
    public final boolean f15455d;

    /* renamed from: t.a$a, reason: collision with other inner class name */
    public static final class C0249a implements c.a {

        /* renamed from: b, reason: collision with root package name */
        public final int f15456b;

        /* renamed from: c, reason: collision with root package name */
        public final boolean f15457c;

        public C0249a() {
            this(0, 3);
        }

        public C0249a(int r22, int r32) {
            r22 = (r32 & 1) != 0 ? 100 : r22;
            this.f15456b = r22;
            this.f15457c = false;
            if (!(r22 > 0)) {
                throw new IllegalArgumentException("durationMillis must be > 0.".toString());
            }
        }

        @Override // t.c.a
        public final c a(d dVar, h hVar) {
            return !(hVar instanceof n) ? new b(dVar, hVar) : ((n) hVar).f12188c == 1 ? new b(dVar, hVar) : new a(dVar, hVar, this.f15456b, this.f15457c);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof C0249a) {
                C0249a c0249a = (C0249a) obj;
                if (this.f15456b == c0249a.f15456b && this.f15457c == c0249a.f15457c) {
                    return true;
                }
            }
            return false;
        }

        public final int hashCode() {
            return (this.f15456b * 31) + (this.f15457c ? 1231 : 1237);
        }
    }

    public a(d dVar, h hVar, int r32, boolean z10) {
        this.f15452a = dVar;
        this.f15453b = hVar;
        this.f15454c = r32;
        this.f15455d = z10;
        if (!(r32 > 0)) {
            throw new IllegalArgumentException("durationMillis must be > 0.".toString());
        }
    }

    @Override // t.c
    public final void a() {
        d dVar = this.f15452a;
        Drawable drawableE = dVar.e();
        h hVar = this.f15453b;
        boolean z10 = hVar instanceof n;
        i.a aVar = new i.a(drawableE, hVar.a(), hVar.b().C, this.f15454c, (z10 && ((n) hVar).f12191g) ? false : true, this.f15455d);
        if (z10) {
            dVar.a(aVar);
        } else if (hVar instanceof p.d) {
            dVar.b(aVar);
        }
    }
}
