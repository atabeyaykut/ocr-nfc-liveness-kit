package gb;

import gb.p;
import java.io.IOException;
import mb.a;
import mb.c;
import mb.h;
import mb.p;

/* loaded from: classes2.dex */
public final class t extends h.c<t> {

    /* renamed from: m, reason: collision with root package name */
    public static final t f6559m;

    /* renamed from: n, reason: collision with root package name */
    public static final a f6560n = new a();

    /* renamed from: b, reason: collision with root package name */
    public final mb.c f6561b;

    /* renamed from: c, reason: collision with root package name */
    public int f6562c;

    /* renamed from: d, reason: collision with root package name */
    public int f6563d;

    /* renamed from: e, reason: collision with root package name */
    public int f6564e;
    public p f;

    /* renamed from: g, reason: collision with root package name */
    public int f6565g;

    /* renamed from: h, reason: collision with root package name */
    public p f6566h;

    /* renamed from: j, reason: collision with root package name */
    public int f6567j;

    /* renamed from: k, reason: collision with root package name */
    public byte f6568k;

    /* renamed from: l, reason: collision with root package name */
    public int f6569l;

    public static class a extends mb.b<t> {
        @Override // mb.r
        public final Object a(mb.d dVar, mb.f fVar) throws mb.j {
            return new t(dVar, fVar);
        }
    }

    public static final class b extends h.b<t, b> {

        /* renamed from: d, reason: collision with root package name */
        public int f6570d;

        /* renamed from: e, reason: collision with root package name */
        public int f6571e;
        public int f;

        /* renamed from: g, reason: collision with root package name */
        public p f6572g;

        /* renamed from: h, reason: collision with root package name */
        public int f6573h;

        /* renamed from: j, reason: collision with root package name */
        public p f6574j;

        /* renamed from: k, reason: collision with root package name */
        public int f6575k;

        public b() {
            p pVar = p.w;
            this.f6572g = pVar;
            this.f6574j = pVar;
        }

        @Override // mb.a.AbstractC0188a, mb.p.a
        public final /* bridge */ /* synthetic */ p.a E(mb.d dVar, mb.f fVar) throws Throwable {
            p(dVar, fVar);
            return this;
        }

        @Override // mb.p.a
        public final mb.p build() {
            t tVarL = l();
            if (tVarL.b()) {
                return tVarL;
            }
            throw new c0.a();
        }

        @Override // mb.h.a
        public final Object clone() throws CloneNotSupportedException {
            b bVar = new b();
            bVar.n(l());
            return bVar;
        }

        @Override // mb.a.AbstractC0188a
        /* renamed from: h */
        public final /* bridge */ /* synthetic */ a.AbstractC0188a E(mb.d dVar, mb.f fVar) throws Throwable {
            p(dVar, fVar);
            return this;
        }

        @Override // mb.h.a
        /* renamed from: i */
        public final h.a clone() {
            b bVar = new b();
            bVar.n(l());
            return bVar;
        }

        @Override // mb.h.a
        public final /* bridge */ /* synthetic */ h.a j(mb.h hVar) {
            n((t) hVar);
            return this;
        }

        public final t l() {
            t tVar = new t(this);
            int r12 = this.f6570d;
            int r32 = (r12 & 1) != 1 ? 0 : 1;
            tVar.f6563d = this.f6571e;
            if ((r12 & 2) == 2) {
                r32 |= 2;
            }
            tVar.f6564e = this.f;
            if ((r12 & 4) == 4) {
                r32 |= 4;
            }
            tVar.f = this.f6572g;
            if ((r12 & 8) == 8) {
                r32 |= 8;
            }
            tVar.f6565g = this.f6573h;
            if ((r12 & 16) == 16) {
                r32 |= 16;
            }
            tVar.f6566h = this.f6574j;
            if ((r12 & 32) == 32) {
                r32 |= 32;
            }
            tVar.f6567j = this.f6575k;
            tVar.f6562c = r32;
            return tVar;
        }

        public final void n(t tVar) {
            p pVar;
            p pVar2;
            if (tVar == t.f6559m) {
                return;
            }
            int r02 = tVar.f6562c;
            if ((r02 & 1) == 1) {
                int r12 = tVar.f6563d;
                this.f6570d |= 1;
                this.f6571e = r12;
            }
            if ((r02 & 2) == 2) {
                int r13 = tVar.f6564e;
                this.f6570d = 2 | this.f6570d;
                this.f = r13;
            }
            if ((r02 & 4) == 4) {
                p pVarL = tVar.f;
                if ((this.f6570d & 4) == 4 && (pVar2 = this.f6572g) != p.w) {
                    p.c cVarS = p.s(pVar2);
                    cVarS.n(pVarL);
                    pVarL = cVarS.l();
                }
                this.f6572g = pVarL;
                this.f6570d |= 4;
            }
            int r03 = tVar.f6562c;
            if ((r03 & 8) == 8) {
                int r14 = tVar.f6565g;
                this.f6570d = 8 | this.f6570d;
                this.f6573h = r14;
            }
            if ((r03 & 16) == 16) {
                p pVarL2 = tVar.f6566h;
                if ((this.f6570d & 16) == 16 && (pVar = this.f6574j) != p.w) {
                    p.c cVarS2 = p.s(pVar);
                    cVarS2.n(pVarL2);
                    pVarL2 = cVarS2.l();
                }
                this.f6574j = pVarL2;
                this.f6570d |= 16;
            }
            if ((tVar.f6562c & 32) == 32) {
                int r04 = tVar.f6567j;
                this.f6570d = 32 | this.f6570d;
                this.f6575k = r04;
            }
            k(tVar);
            this.f10281a = this.f10281a.l(tVar.f6561b);
        }

        /* JADX WARN: Removed duplicated region for block: B:15:0x001c  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void p(mb.d r2, mb.f r3) throws java.lang.Throwable {
            /*
                r1 = this;
                gb.t$a r0 = gb.t.f6560n     // Catch: mb.j -> Le java.lang.Throwable -> L10
                r0.getClass()     // Catch: mb.j -> Le java.lang.Throwable -> L10
                gb.t r0 = new gb.t     // Catch: mb.j -> Le java.lang.Throwable -> L10
                r0.<init>(r2, r3)     // Catch: mb.j -> Le java.lang.Throwable -> L10
                r1.n(r0)
                return
            Le:
                r2 = move-exception
                goto L12
            L10:
                r2 = move-exception
                goto L19
            L12:
                mb.p r3 = r2.f10298a     // Catch: java.lang.Throwable -> L10
                gb.t r3 = (gb.t) r3     // Catch: java.lang.Throwable -> L10
                throw r2     // Catch: java.lang.Throwable -> L17
            L17:
                r2 = move-exception
                goto L1a
            L19:
                r3 = 0
            L1a:
                if (r3 == 0) goto L1f
                r1.n(r3)
            L1f:
                throw r2
            */
            throw new UnsupportedOperationException("Method not decompiled: gb.t.b.p(mb.d, mb.f):void");
        }
    }

    static {
        t tVar = new t(0);
        f6559m = tVar;
        tVar.f6563d = 0;
        tVar.f6564e = 0;
        p pVar = p.w;
        tVar.f = pVar;
        tVar.f6565g = 0;
        tVar.f6566h = pVar;
        tVar.f6567j = 0;
    }

    public t() {
        throw null;
    }

    public t(int r12) {
        this.f6568k = (byte) -1;
        this.f6569l = -1;
        this.f6561b = mb.c.f10255a;
    }

    public t(mb.d dVar, mb.f fVar) throws mb.j {
        this.f6568k = (byte) -1;
        this.f6569l = -1;
        boolean z10 = false;
        this.f6563d = 0;
        this.f6564e = 0;
        p pVar = p.w;
        this.f = pVar;
        this.f6565g = 0;
        this.f6566h = pVar;
        this.f6567j = 0;
        c.b bVar = new c.b();
        mb.e eVarJ = mb.e.j(bVar, 1);
        while (!z10) {
            try {
                try {
                    try {
                        int r42 = dVar.n();
                        if (r42 != 0) {
                            if (r42 == 8) {
                                this.f6562c |= 1;
                                this.f6563d = dVar.k();
                            } else if (r42 != 16) {
                                p.c cVarS = null;
                                if (r42 == 26) {
                                    if ((this.f6562c & 4) == 4) {
                                        p pVar2 = this.f;
                                        pVar2.getClass();
                                        cVarS = p.s(pVar2);
                                    }
                                    p pVar3 = (p) dVar.g(p.f6454x, fVar);
                                    this.f = pVar3;
                                    if (cVarS != null) {
                                        cVarS.n(pVar3);
                                        this.f = cVarS.l();
                                    }
                                    this.f6562c |= 4;
                                } else if (r42 == 34) {
                                    if ((this.f6562c & 16) == 16) {
                                        p pVar4 = this.f6566h;
                                        pVar4.getClass();
                                        cVarS = p.s(pVar4);
                                    }
                                    p pVar5 = (p) dVar.g(p.f6454x, fVar);
                                    this.f6566h = pVar5;
                                    if (cVarS != null) {
                                        cVarS.n(pVar5);
                                        this.f6566h = cVarS.l();
                                    }
                                    this.f6562c |= 16;
                                } else if (r42 == 40) {
                                    this.f6562c |= 8;
                                    this.f6565g = dVar.k();
                                } else if (r42 == 48) {
                                    this.f6562c |= 32;
                                    this.f6567j = dVar.k();
                                } else if (!o(dVar, eVarJ, fVar, r42)) {
                                }
                            } else {
                                this.f6562c |= 2;
                                this.f6564e = dVar.k();
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
                try {
                    eVarJ.i();
                } catch (IOException unused) {
                } catch (Throwable th3) {
                    this.f6561b = bVar.c();
                    throw th3;
                }
                this.f6561b = bVar.c();
                m();
                throw th2;
            }
        }
        try {
            eVarJ.i();
        } catch (IOException unused2) {
        } catch (Throwable th4) {
            this.f6561b = bVar.c();
            throw th4;
        }
        this.f6561b = bVar.c();
        m();
    }

    @Override // mb.q
    public final boolean b() {
        byte b10 = this.f6568k;
        if (b10 == 1) {
            return true;
        }
        if (b10 == 0) {
            return false;
        }
        int r02 = this.f6562c;
        if (!((r02 & 2) == 2)) {
            this.f6568k = (byte) 0;
            return false;
        }
        if (((r02 & 4) == 4) && !this.f.b()) {
            this.f6568k = (byte) 0;
            return false;
        }
        if (((this.f6562c & 16) == 16) && !this.f6566h.b()) {
            this.f6568k = (byte) 0;
            return false;
        }
        if (i()) {
            this.f6568k = (byte) 1;
            return true;
        }
        this.f6568k = (byte) 0;
        return false;
    }

    @Override // mb.p
    public final int c() {
        int r02 = this.f6569l;
        if (r02 != -1) {
            return r02;
        }
        int r22 = (this.f6562c & 1) == 1 ? 0 + mb.e.b(1, this.f6563d) : 0;
        if ((this.f6562c & 2) == 2) {
            r22 += mb.e.b(2, this.f6564e);
        }
        if ((this.f6562c & 4) == 4) {
            r22 += mb.e.d(3, this.f);
        }
        if ((this.f6562c & 16) == 16) {
            r22 += mb.e.d(4, this.f6566h);
        }
        if ((this.f6562c & 8) == 8) {
            r22 += mb.e.b(5, this.f6565g);
        }
        if ((this.f6562c & 32) == 32) {
            r22 += mb.e.b(6, this.f6567j);
        }
        int size = this.f6561b.size() + j() + r22;
        this.f6569l = size;
        return size;
    }

    @Override // mb.p
    public final void d(mb.e eVar) throws IOException {
        c();
        h.c.a aVar = new h.c.a(this);
        if ((this.f6562c & 1) == 1) {
            eVar.m(1, this.f6563d);
        }
        if ((this.f6562c & 2) == 2) {
            eVar.m(2, this.f6564e);
        }
        if ((this.f6562c & 4) == 4) {
            eVar.o(3, this.f);
        }
        if ((this.f6562c & 16) == 16) {
            eVar.o(4, this.f6566h);
        }
        if ((this.f6562c & 8) == 8) {
            eVar.m(5, this.f6565g);
        }
        if ((this.f6562c & 32) == 32) {
            eVar.m(6, this.f6567j);
        }
        aVar.a(200, eVar);
        eVar.r(this.f6561b);
    }

    @Override // mb.q
    public final mb.p e() {
        return f6559m;
    }

    @Override // mb.p
    public final p.a f() {
        b bVar = new b();
        bVar.n(this);
        return bVar;
    }

    @Override // mb.p
    public final p.a g() {
        return new b();
    }

    public t(h.b bVar) {
        super(bVar);
        this.f6568k = (byte) -1;
        this.f6569l = -1;
        this.f6561b = bVar.f10281a;
    }
}
