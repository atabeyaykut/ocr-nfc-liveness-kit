package gb;

import gb.p;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import mb.a;
import mb.c;
import mb.h;
import mb.i;
import mb.p;

/* loaded from: classes2.dex */
public final class g extends mb.h implements mb.q {

    /* renamed from: m, reason: collision with root package name */
    public static final g f6301m;

    /* renamed from: n, reason: collision with root package name */
    public static final a f6302n = new a();

    /* renamed from: a, reason: collision with root package name */
    public final mb.c f6303a;

    /* renamed from: b, reason: collision with root package name */
    public int f6304b;

    /* renamed from: c, reason: collision with root package name */
    public int f6305c;

    /* renamed from: d, reason: collision with root package name */
    public int f6306d;

    /* renamed from: e, reason: collision with root package name */
    public c f6307e;
    public p f;

    /* renamed from: g, reason: collision with root package name */
    public int f6308g;

    /* renamed from: h, reason: collision with root package name */
    public List<g> f6309h;

    /* renamed from: j, reason: collision with root package name */
    public List<g> f6310j;

    /* renamed from: k, reason: collision with root package name */
    public byte f6311k;

    /* renamed from: l, reason: collision with root package name */
    public int f6312l;

    public static class a extends mb.b<g> {
        @Override // mb.r
        public final Object a(mb.d dVar, mb.f fVar) throws mb.j {
            return new g(dVar, fVar);
        }
    }

    public static final class b extends h.a<g, b> implements mb.q {

        /* renamed from: b, reason: collision with root package name */
        public int f6313b;

        /* renamed from: c, reason: collision with root package name */
        public int f6314c;

        /* renamed from: d, reason: collision with root package name */
        public int f6315d;

        /* renamed from: g, reason: collision with root package name */
        public int f6317g;

        /* renamed from: e, reason: collision with root package name */
        public c f6316e = c.TRUE;
        public p f = p.w;

        /* renamed from: h, reason: collision with root package name */
        public List<g> f6318h = Collections.emptyList();

        /* renamed from: j, reason: collision with root package name */
        public List<g> f6319j = Collections.emptyList();

        @Override // mb.a.AbstractC0188a, mb.p.a
        public final /* bridge */ /* synthetic */ p.a E(mb.d dVar, mb.f fVar) throws Throwable {
            n(dVar, fVar);
            return this;
        }

        @Override // mb.p.a
        public final mb.p build() {
            g gVarK = k();
            if (gVarK.b()) {
                return gVarK;
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
            l((g) hVar);
            return this;
        }

        public final g k() {
            g gVar = new g(this);
            int r12 = this.f6313b;
            int r32 = (r12 & 1) != 1 ? 0 : 1;
            gVar.f6305c = this.f6314c;
            if ((r12 & 2) == 2) {
                r32 |= 2;
            }
            gVar.f6306d = this.f6315d;
            if ((r12 & 4) == 4) {
                r32 |= 4;
            }
            gVar.f6307e = this.f6316e;
            if ((r12 & 8) == 8) {
                r32 |= 8;
            }
            gVar.f = this.f;
            if ((r12 & 16) == 16) {
                r32 |= 16;
            }
            gVar.f6308g = this.f6317g;
            if ((r12 & 32) == 32) {
                this.f6318h = Collections.unmodifiableList(this.f6318h);
                this.f6313b &= -33;
            }
            gVar.f6309h = this.f6318h;
            if ((this.f6313b & 64) == 64) {
                this.f6319j = Collections.unmodifiableList(this.f6319j);
                this.f6313b &= -65;
            }
            gVar.f6310j = this.f6319j;
            gVar.f6304b = r32;
            return gVar;
        }

        public final void l(g gVar) {
            p pVar;
            if (gVar == g.f6301m) {
                return;
            }
            int r02 = gVar.f6304b;
            if ((r02 & 1) == 1) {
                int r12 = gVar.f6305c;
                this.f6313b |= 1;
                this.f6314c = r12;
            }
            if ((r02 & 2) == 2) {
                int r13 = gVar.f6306d;
                this.f6313b = 2 | this.f6313b;
                this.f6315d = r13;
            }
            if ((r02 & 4) == 4) {
                c cVar = gVar.f6307e;
                cVar.getClass();
                this.f6313b = 4 | this.f6313b;
                this.f6316e = cVar;
            }
            if ((gVar.f6304b & 8) == 8) {
                p pVarL = gVar.f;
                if ((this.f6313b & 8) == 8 && (pVar = this.f) != p.w) {
                    p.c cVarS = p.s(pVar);
                    cVarS.n(pVarL);
                    pVarL = cVarS.l();
                }
                this.f = pVarL;
                this.f6313b |= 8;
            }
            if ((gVar.f6304b & 16) == 16) {
                int r03 = gVar.f6308g;
                this.f6313b = 16 | this.f6313b;
                this.f6317g = r03;
            }
            if (!gVar.f6309h.isEmpty()) {
                if (this.f6318h.isEmpty()) {
                    this.f6318h = gVar.f6309h;
                    this.f6313b &= -33;
                } else {
                    if ((this.f6313b & 32) != 32) {
                        this.f6318h = new ArrayList(this.f6318h);
                        this.f6313b |= 32;
                    }
                    this.f6318h.addAll(gVar.f6309h);
                }
            }
            if (!gVar.f6310j.isEmpty()) {
                if (this.f6319j.isEmpty()) {
                    this.f6319j = gVar.f6310j;
                    this.f6313b &= -65;
                } else {
                    if ((this.f6313b & 64) != 64) {
                        this.f6319j = new ArrayList(this.f6319j);
                        this.f6313b |= 64;
                    }
                    this.f6319j.addAll(gVar.f6310j);
                }
            }
            this.f10281a = this.f10281a.l(gVar.f6303a);
        }

        /* JADX WARN: Removed duplicated region for block: B:15:0x001c  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void n(mb.d r2, mb.f r3) throws java.lang.Throwable {
            /*
                r1 = this;
                gb.g$a r0 = gb.g.f6302n     // Catch: mb.j -> Le java.lang.Throwable -> L10
                r0.getClass()     // Catch: mb.j -> Le java.lang.Throwable -> L10
                gb.g r0 = new gb.g     // Catch: mb.j -> Le java.lang.Throwable -> L10
                r0.<init>(r2, r3)     // Catch: mb.j -> Le java.lang.Throwable -> L10
                r1.l(r0)
                return
            Le:
                r2 = move-exception
                goto L12
            L10:
                r2 = move-exception
                goto L19
            L12:
                mb.p r3 = r2.f10298a     // Catch: java.lang.Throwable -> L10
                gb.g r3 = (gb.g) r3     // Catch: java.lang.Throwable -> L10
                throw r2     // Catch: java.lang.Throwable -> L17
            L17:
                r2 = move-exception
                goto L1a
            L19:
                r3 = 0
            L1a:
                if (r3 == 0) goto L1f
                r1.l(r3)
            L1f:
                throw r2
            */
            throw new UnsupportedOperationException("Method not decompiled: gb.g.b.n(mb.d, mb.f):void");
        }
    }

    public enum c implements i.a {
        TRUE(0),
        FALSE(1),
        NULL(2);


        /* renamed from: a, reason: collision with root package name */
        public final int f6324a;

        c(int r32) {
            this.f6324a = r32;
        }

        @Override // mb.i.a
        public final int f() {
            return this.f6324a;
        }
    }

    static {
        g gVar = new g();
        f6301m = gVar;
        gVar.f6305c = 0;
        gVar.f6306d = 0;
        gVar.f6307e = c.TRUE;
        gVar.f = p.w;
        gVar.f6308g = 0;
        gVar.f6309h = Collections.emptyList();
        gVar.f6310j = Collections.emptyList();
    }

    public g() {
        this.f6311k = (byte) -1;
        this.f6312l = -1;
        this.f6303a = mb.c.f10255a;
    }

    public g(mb.d dVar, mb.f fVar) throws mb.j {
        List list;
        c cVar;
        this.f6311k = (byte) -1;
        this.f6312l = -1;
        boolean z10 = false;
        this.f6305c = 0;
        this.f6306d = 0;
        c cVar2 = c.TRUE;
        this.f6307e = cVar2;
        this.f = p.w;
        this.f6308g = 0;
        this.f6309h = Collections.emptyList();
        this.f6310j = Collections.emptyList();
        c.b bVar = new c.b();
        mb.e eVarJ = mb.e.j(bVar, 1);
        int r82 = 0;
        while (!z10) {
            try {
                try {
                    try {
                        int r11 = dVar.n();
                        if (r11 != 0) {
                            if (r11 == 8) {
                                this.f6304b |= 1;
                                this.f6305c = dVar.k();
                            } else if (r11 != 16) {
                                p.c cVarS = null;
                                c cVar3 = null;
                                if (r11 == 24) {
                                    int r12 = dVar.k();
                                    if (r12 != 0) {
                                        if (r12 == 1) {
                                            cVar3 = c.FALSE;
                                        } else if (r12 == 2) {
                                            cVar3 = c.NULL;
                                        }
                                        cVar = cVar3;
                                    } else {
                                        cVar = cVar2;
                                    }
                                    if (cVar == null) {
                                        eVarJ.v(r11);
                                        eVarJ.v(r12);
                                    } else {
                                        this.f6304b |= 4;
                                        this.f6307e = cVar;
                                    }
                                } else if (r11 == 34) {
                                    if ((this.f6304b & 8) == 8) {
                                        p pVar = this.f;
                                        pVar.getClass();
                                        cVarS = p.s(pVar);
                                    }
                                    p.c cVar4 = cVarS;
                                    p pVar2 = (p) dVar.g(p.f6454x, fVar);
                                    this.f = pVar2;
                                    if (cVar4 != null) {
                                        cVar4.n(pVar2);
                                        this.f = cVar4.l();
                                    }
                                    this.f6304b |= 8;
                                } else if (r11 != 40) {
                                    a aVar = f6302n;
                                    if (r11 == 50) {
                                        if ((r82 & 32) != 32) {
                                            this.f6309h = new ArrayList();
                                            r82 |= 32;
                                        }
                                        list = this.f6309h;
                                    } else if (r11 == 58) {
                                        if ((r82 & 64) != 64) {
                                            this.f6310j = new ArrayList();
                                            r82 |= 64;
                                        }
                                        list = this.f6310j;
                                    } else if (!dVar.q(r11, eVarJ)) {
                                    }
                                    list.add(dVar.g(aVar, fVar));
                                } else {
                                    this.f6304b |= 16;
                                    this.f6308g = dVar.k();
                                }
                            } else {
                                this.f6304b |= 2;
                                this.f6306d = dVar.k();
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
                if ((r82 & 32) == 32) {
                    this.f6309h = Collections.unmodifiableList(this.f6309h);
                }
                if ((r82 & 64) == 64) {
                    this.f6310j = Collections.unmodifiableList(this.f6310j);
                }
                try {
                    eVarJ.i();
                } catch (IOException unused) {
                } catch (Throwable th3) {
                    this.f6303a = bVar.c();
                    throw th3;
                }
                this.f6303a = bVar.c();
                throw th2;
            }
        }
        if ((r82 & 32) == 32) {
            this.f6309h = Collections.unmodifiableList(this.f6309h);
        }
        if ((r82 & 64) == 64) {
            this.f6310j = Collections.unmodifiableList(this.f6310j);
        }
        try {
            eVarJ.i();
        } catch (IOException unused2) {
        } catch (Throwable th4) {
            this.f6303a = bVar.c();
            throw th4;
        }
        this.f6303a = bVar.c();
    }

    @Override // mb.q
    public final boolean b() {
        byte b10 = this.f6311k;
        if (b10 == 1) {
            return true;
        }
        if (b10 == 0) {
            return false;
        }
        if (((this.f6304b & 8) == 8) && !this.f.b()) {
            this.f6311k = (byte) 0;
            return false;
        }
        for (int r02 = 0; r02 < this.f6309h.size(); r02++) {
            if (!this.f6309h.get(r02).b()) {
                this.f6311k = (byte) 0;
                return false;
            }
        }
        for (int r03 = 0; r03 < this.f6310j.size(); r03++) {
            if (!this.f6310j.get(r03).b()) {
                this.f6311k = (byte) 0;
                return false;
            }
        }
        this.f6311k = (byte) 1;
        return true;
    }

    @Override // mb.p
    public final int c() {
        int r02 = this.f6312l;
        if (r02 != -1) {
            return r02;
        }
        int r03 = (this.f6304b & 1) == 1 ? mb.e.b(1, this.f6305c) + 0 : 0;
        if ((this.f6304b & 2) == 2) {
            r03 += mb.e.b(2, this.f6306d);
        }
        if ((this.f6304b & 4) == 4) {
            r03 += mb.e.a(3, this.f6307e.f6324a);
        }
        if ((this.f6304b & 8) == 8) {
            r03 += mb.e.d(4, this.f);
        }
        if ((this.f6304b & 16) == 16) {
            r03 += mb.e.b(5, this.f6308g);
        }
        for (int r12 = 0; r12 < this.f6309h.size(); r12++) {
            r03 += mb.e.d(6, this.f6309h.get(r12));
        }
        for (int r22 = 0; r22 < this.f6310j.size(); r22++) {
            r03 += mb.e.d(7, this.f6310j.get(r22));
        }
        int size = this.f6303a.size() + r03;
        this.f6312l = size;
        return size;
    }

    @Override // mb.p
    public final void d(mb.e eVar) throws IOException {
        c();
        if ((this.f6304b & 1) == 1) {
            eVar.m(1, this.f6305c);
        }
        if ((this.f6304b & 2) == 2) {
            eVar.m(2, this.f6306d);
        }
        if ((this.f6304b & 4) == 4) {
            eVar.l(3, this.f6307e.f6324a);
        }
        if ((this.f6304b & 8) == 8) {
            eVar.o(4, this.f);
        }
        if ((this.f6304b & 16) == 16) {
            eVar.m(5, this.f6308g);
        }
        for (int r12 = 0; r12 < this.f6309h.size(); r12++) {
            eVar.o(6, this.f6309h.get(r12));
        }
        for (int r02 = 0; r02 < this.f6310j.size(); r02++) {
            eVar.o(7, this.f6310j.get(r02));
        }
        eVar.r(this.f6303a);
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

    public g(h.a aVar) {
        super(0);
        this.f6311k = (byte) -1;
        this.f6312l = -1;
        this.f6303a = aVar.f10281a;
    }
}
