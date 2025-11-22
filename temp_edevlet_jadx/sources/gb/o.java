package gb;

import java.io.IOException;
import mb.a;
import mb.c;
import mb.h;
import mb.p;

/* loaded from: classes2.dex */
public final class o extends mb.h implements mb.q {

    /* renamed from: e, reason: collision with root package name */
    public static final o f6447e;
    public static final a f = new a();

    /* renamed from: a, reason: collision with root package name */
    public final mb.c f6448a;

    /* renamed from: b, reason: collision with root package name */
    public mb.n f6449b;

    /* renamed from: c, reason: collision with root package name */
    public byte f6450c;

    /* renamed from: d, reason: collision with root package name */
    public int f6451d;

    public static class a extends mb.b<o> {
        @Override // mb.r
        public final Object a(mb.d dVar, mb.f fVar) throws mb.j {
            return new o(dVar);
        }
    }

    public static final class b extends h.a<o, b> implements mb.q {

        /* renamed from: b, reason: collision with root package name */
        public int f6452b;

        /* renamed from: c, reason: collision with root package name */
        public mb.n f6453c = mb.m.f10303b;

        @Override // mb.a.AbstractC0188a, mb.p.a
        public final /* bridge */ /* synthetic */ p.a E(mb.d dVar, mb.f fVar) throws Throwable {
            n(dVar, fVar);
            return this;
        }

        @Override // mb.p.a
        public final mb.p build() {
            o oVarK = k();
            if (oVarK.b()) {
                return oVarK;
            }
            throw new c0.a();
        }

        @Override // mb.h.a
        public final Object clone() throws CloneNotSupportedException {
            b bVar = new b();
            bVar.l(k());
            return bVar;
        }

        @Override // mb.a.AbstractC0188a
        /* renamed from: h */
        public final /* bridge */ /* synthetic */ a.AbstractC0188a E(mb.d dVar, mb.f fVar) throws Throwable {
            n(dVar, fVar);
            return this;
        }

        @Override // mb.h.a
        /* renamed from: i */
        public final h.a clone() {
            b bVar = new b();
            bVar.l(k());
            return bVar;
        }

        @Override // mb.h.a
        public final /* bridge */ /* synthetic */ h.a j(mb.h hVar) {
            l((o) hVar);
            return this;
        }

        public final o k() {
            o oVar = new o(this);
            if ((this.f6452b & 1) == 1) {
                this.f6453c = this.f6453c.p();
                this.f6452b &= -2;
            }
            oVar.f6449b = this.f6453c;
            return oVar;
        }

        public final void l(o oVar) {
            if (oVar == o.f6447e) {
                return;
            }
            if (!oVar.f6449b.isEmpty()) {
                if (this.f6453c.isEmpty()) {
                    this.f6453c = oVar.f6449b;
                    this.f6452b &= -2;
                } else {
                    if ((this.f6452b & 1) != 1) {
                        this.f6453c = new mb.m(this.f6453c);
                        this.f6452b |= 1;
                    }
                    this.f6453c.addAll(oVar.f6449b);
                }
            }
            this.f10281a = this.f10281a.l(oVar.f6448a);
        }

        /* JADX WARN: Removed duplicated region for block: B:15:0x001c  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void n(mb.d r1, mb.f r2) throws java.lang.Throwable {
            /*
                r0 = this;
                gb.o$a r2 = gb.o.f     // Catch: mb.j -> Le java.lang.Throwable -> L10
                r2.getClass()     // Catch: mb.j -> Le java.lang.Throwable -> L10
                gb.o r2 = new gb.o     // Catch: mb.j -> Le java.lang.Throwable -> L10
                r2.<init>(r1)     // Catch: mb.j -> Le java.lang.Throwable -> L10
                r0.l(r2)
                return
            Le:
                r1 = move-exception
                goto L12
            L10:
                r1 = move-exception
                goto L19
            L12:
                mb.p r2 = r1.f10298a     // Catch: java.lang.Throwable -> L10
                gb.o r2 = (gb.o) r2     // Catch: java.lang.Throwable -> L10
                throw r1     // Catch: java.lang.Throwable -> L17
            L17:
                r1 = move-exception
                goto L1a
            L19:
                r2 = 0
            L1a:
                if (r2 == 0) goto L1f
                r0.l(r2)
            L1f:
                throw r1
            */
            throw new UnsupportedOperationException("Method not decompiled: gb.o.b.n(mb.d, mb.f):void");
        }
    }

    static {
        o oVar = new o();
        f6447e = oVar;
        oVar.f6449b = mb.m.f10303b;
    }

    public o() {
        this.f6450c = (byte) -1;
        this.f6451d = -1;
        this.f6448a = mb.c.f10255a;
    }

    public o(mb.d dVar) throws mb.j {
        this.f6450c = (byte) -1;
        this.f6451d = -1;
        this.f6449b = mb.m.f10303b;
        c.b bVar = new c.b();
        mb.e eVarJ = mb.e.j(bVar, 1);
        boolean z10 = false;
        boolean z11 = false;
        while (!z10) {
            try {
                try {
                    try {
                        int r52 = dVar.n();
                        if (r52 != 0) {
                            if (r52 == 10) {
                                mb.o oVarE = dVar.e();
                                if (!(z11 & true)) {
                                    this.f6449b = new mb.m();
                                    z11 |= true;
                                }
                                this.f6449b.O(oVarE);
                            } else if (!dVar.q(r52, eVarJ)) {
                            }
                        }
                        z10 = true;
                    } catch (IOException e10) {
                        mb.j jVar = new mb.j(e10.getMessage());
                        jVar.f10298a = this;
                        throw jVar;
                    }
                } catch (mb.j e11) {
                    e11.f10298a = this;
                    throw e11;
                }
            } catch (Throwable th2) {
                if (z11 & true) {
                    this.f6449b = this.f6449b.p();
                }
                try {
                    eVarJ.i();
                } catch (IOException unused) {
                } catch (Throwable th3) {
                    this.f6448a = bVar.c();
                    throw th3;
                }
                this.f6448a = bVar.c();
                throw th2;
            }
        }
        if (z11 & true) {
            this.f6449b = this.f6449b.p();
        }
        try {
            eVarJ.i();
        } catch (IOException unused2) {
        } catch (Throwable th4) {
            this.f6448a = bVar.c();
            throw th4;
        }
        this.f6448a = bVar.c();
    }

    @Override // mb.q
    public final boolean b() {
        byte b10 = this.f6450c;
        if (b10 == 1) {
            return true;
        }
        if (b10 == 0) {
            return false;
        }
        this.f6450c = (byte) 1;
        return true;
    }

    @Override // mb.p
    public final int c() {
        int r02 = this.f6451d;
        if (r02 != -1) {
            return r02;
        }
        int size = 0;
        for (int r12 = 0; r12 < this.f6449b.size(); r12++) {
            mb.c cVarC0 = this.f6449b.c0(r12);
            size += cVarC0.size() + mb.e.f(cVarC0.size());
        }
        int size2 = this.f6448a.size() + (this.f6449b.size() * 1) + 0 + size;
        this.f6451d = size2;
        return size2;
    }

    @Override // mb.p
    public final void d(mb.e eVar) throws IOException {
        c();
        for (int r02 = 0; r02 < this.f6449b.size(); r02++) {
            mb.c cVarC0 = this.f6449b.c0(r02);
            eVar.x(1, 2);
            eVar.v(cVarC0.size());
            eVar.r(cVarC0);
        }
        eVar.r(this.f6448a);
    }

    @Override // mb.p
    public final p.a f() {
        b bVar = new b();
        bVar.l(this);
        return bVar;
    }

    @Override // mb.p
    public final p.a g() {
        return new b();
    }

    public o(h.a aVar) {
        super(0);
        this.f6450c = (byte) -1;
        this.f6451d = -1;
        this.f6448a = aVar.f10281a;
    }
}
