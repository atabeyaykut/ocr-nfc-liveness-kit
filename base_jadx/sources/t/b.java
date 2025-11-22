package t;

import p.h;
import p.n;
import t.c;

/* loaded from: classes.dex */
public final class b implements c {

    /* renamed from: a, reason: collision with root package name */
    public final d f15458a;

    /* renamed from: b, reason: collision with root package name */
    public final h f15459b;

    public static final class a implements c.a {
        @Override // t.c.a
        public final c a(d dVar, h hVar) {
            return new b(dVar, hVar);
        }

        public final boolean equals(Object obj) {
            return obj instanceof a;
        }

        public final int hashCode() {
            return a.class.hashCode();
        }
    }

    public b(d dVar, h hVar) {
        this.f15458a = dVar;
        this.f15459b = hVar;
    }

    @Override // t.c
    public final void a() {
        h hVar = this.f15459b;
        boolean z10 = hVar instanceof n;
        d dVar = this.f15458a;
        if (z10) {
            dVar.a(((n) hVar).f12186a);
        } else if (hVar instanceof p.d) {
            dVar.b(hVar.a());
        }
    }
}
