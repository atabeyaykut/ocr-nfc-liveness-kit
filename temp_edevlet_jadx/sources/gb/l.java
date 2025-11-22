package gb;

import gb.k;
import gb.n;
import gb.o;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import mb.a;
import mb.c;
import mb.h;
import mb.p;

/* loaded from: classes2.dex */
public final class l extends h.c<l> {

    /* renamed from: k, reason: collision with root package name */
    public static final l f6377k;

    /* renamed from: l, reason: collision with root package name */
    public static final a f6378l = new a();

    /* renamed from: b, reason: collision with root package name */
    public final mb.c f6379b;

    /* renamed from: c, reason: collision with root package name */
    public int f6380c;

    /* renamed from: d, reason: collision with root package name */
    public o f6381d;

    /* renamed from: e, reason: collision with root package name */
    public n f6382e;
    public k f;

    /* renamed from: g, reason: collision with root package name */
    public List<gb.b> f6383g;

    /* renamed from: h, reason: collision with root package name */
    public byte f6384h;

    /* renamed from: j, reason: collision with root package name */
    public int f6385j;

    public static class a extends mb.b<l> {
        @Override // mb.r
        public final Object a(mb.d dVar, mb.f fVar) throws mb.j {
            return new l(dVar, fVar);
        }
    }

    public static final class b extends h.b<l, b> {

        /* renamed from: d, reason: collision with root package name */
        public int f6386d;

        /* renamed from: e, reason: collision with root package name */
        public o f6387e = o.f6447e;
        public n f = n.f6423e;

        /* renamed from: g, reason: collision with root package name */
        public k f6388g = k.f6362l;

        /* renamed from: h, reason: collision with root package name */
        public List<gb.b> f6389h = Collections.emptyList();

        @Override // mb.a.AbstractC0188a, mb.p.a
        public final /* bridge */ /* synthetic */ p.a E(mb.d dVar, mb.f fVar) throws Throwable {
            p(dVar, fVar);
            return this;
        }

        @Override // mb.p.a
        public final mb.p build() {
            l lVarL = l();
            if (lVarL.b()) {
                return lVarL;
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
            n((l) hVar);
            return this;
        }

        public final l l() {
            l lVar = new l(this);
            int r12 = this.f6386d;
            int r32 = (r12 & 1) != 1 ? 0 : 1;
            lVar.f6381d = this.f6387e;
            if ((r12 & 2) == 2) {
                r32 |= 2;
            }
            lVar.f6382e = this.f;
            if ((r12 & 4) == 4) {
                r32 |= 4;
            }
            lVar.f = this.f6388g;
            if ((r12 & 8) == 8) {
                this.f6389h = Collections.unmodifiableList(this.f6389h);
                this.f6386d &= -9;
            }
            lVar.f6383g = this.f6389h;
            lVar.f6380c = r32;
            return lVar;
        }

        public final void n(l lVar) {
            k kVar;
            n nVar;
            o oVar;
            if (lVar == l.f6377k) {
                return;
            }
            if ((lVar.f6380c & 1) == 1) {
                o oVarK = lVar.f6381d;
                if ((this.f6386d & 1) == 1 && (oVar = this.f6387e) != o.f6447e) {
                    o.b bVar = new o.b();
                    bVar.l(oVar);
                    bVar.l(oVarK);
                    oVarK = bVar.k();
                }
                this.f6387e = oVarK;
                this.f6386d |= 1;
            }
            if ((lVar.f6380c & 2) == 2) {
                n nVarK = lVar.f6382e;
                if ((this.f6386d & 2) == 2 && (nVar = this.f) != n.f6423e) {
                    n.b bVar2 = new n.b();
                    bVar2.l(nVar);
                    bVar2.l(nVarK);
                    nVarK = bVar2.k();
                }
                this.f = nVarK;
                this.f6386d |= 2;
            }
            if ((lVar.f6380c & 4) == 4) {
                k kVarL = lVar.f;
                if ((this.f6386d & 4) == 4 && (kVar = this.f6388g) != k.f6362l) {
                    k.b bVar3 = new k.b();
                    bVar3.n(kVar);
                    bVar3.n(kVarL);
                    kVarL = bVar3.l();
                }
                this.f6388g = kVarL;
                this.f6386d |= 4;
            }
            if (!lVar.f6383g.isEmpty()) {
                if (this.f6389h.isEmpty()) {
                    this.f6389h = lVar.f6383g;
                    this.f6386d &= -9;
                } else {
                    if ((this.f6386d & 8) != 8) {
                        this.f6389h = new ArrayList(this.f6389h);
                        this.f6386d |= 8;
                    }
                    this.f6389h.addAll(lVar.f6383g);
                }
            }
            k(lVar);
            this.f10281a = this.f10281a.l(lVar.f6379b);
        }

        /* JADX WARN: Removed duplicated region for block: B:15:0x001c  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void p(mb.d r2, mb.f r3) throws java.lang.Throwable {
            /*
                r1 = this;
                gb.l$a r0 = gb.l.f6378l     // Catch: mb.j -> Le java.lang.Throwable -> L10
                r0.getClass()     // Catch: mb.j -> Le java.lang.Throwable -> L10
                gb.l r0 = new gb.l     // Catch: mb.j -> Le java.lang.Throwable -> L10
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
                gb.l r3 = (gb.l) r3     // Catch: java.lang.Throwable -> L10
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
            throw new UnsupportedOperationException("Method not decompiled: gb.l.b.p(mb.d, mb.f):void");
        }
    }

    static {
        l lVar = new l(0);
        f6377k = lVar;
        lVar.f6381d = o.f6447e;
        lVar.f6382e = n.f6423e;
        lVar.f = k.f6362l;
        lVar.f6383g = Collections.emptyList();
    }

    public l() {
        throw null;
    }

    public l(int r12) {
        this.f6384h = (byte) -1;
        this.f6385j = -1;
        this.f6379b = mb.c.f10255a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public l(mb.d dVar, mb.f fVar) throws mb.j {
        int r72;
        this.f6384h = (byte) -1;
        this.f6385j = -1;
        this.f6381d = o.f6447e;
        this.f6382e = n.f6423e;
        this.f = k.f6362l;
        this.f6383g = Collections.emptyList();
        c.b bVar = new c.b();
        mb.e eVarJ = mb.e.j(bVar, 1);
        boolean z10 = false;
        int r42 = 0;
        while (!z10) {
            try {
                try {
                    try {
                        int r6 = dVar.n();
                        if (r6 != 0) {
                            n.b bVar2 = null;
                            o.b bVar3 = null;
                            k.b bVar4 = null;
                            if (r6 != 10) {
                                if (r6 == 18) {
                                    r72 = 2;
                                    if ((this.f6380c & 2) == 2) {
                                        n nVar = this.f6382e;
                                        nVar.getClass();
                                        bVar2 = new n.b();
                                        bVar2.l(nVar);
                                    }
                                    n nVar2 = (n) dVar.g(n.f, fVar);
                                    this.f6382e = nVar2;
                                    if (bVar2 != null) {
                                        bVar2.l(nVar2);
                                        this.f6382e = bVar2.k();
                                    }
                                } else if (r6 == 26) {
                                    r72 = 4;
                                    if ((this.f6380c & 4) == 4) {
                                        k kVar = this.f;
                                        kVar.getClass();
                                        bVar4 = new k.b();
                                        bVar4.n(kVar);
                                    }
                                    k kVar2 = (k) dVar.g(k.f6363m, fVar);
                                    this.f = kVar2;
                                    if (bVar4 != null) {
                                        bVar4.n(kVar2);
                                        this.f = bVar4.l();
                                    }
                                } else if (r6 == 34) {
                                    if ((r42 & 8) != 8) {
                                        this.f6383g = new ArrayList();
                                        r42 |= 8;
                                    }
                                    this.f6383g.add(dVar.g(gb.b.O, fVar));
                                } else if (!o(dVar, eVarJ, fVar, r6)) {
                                }
                                this.f6380c |= r72;
                            } else {
                                if ((this.f6380c & 1) == 1) {
                                    o oVar = this.f6381d;
                                    oVar.getClass();
                                    bVar3 = new o.b();
                                    bVar3.l(oVar);
                                }
                                o oVar2 = (o) dVar.g(o.f, fVar);
                                this.f6381d = oVar2;
                                if (bVar3 != null) {
                                    bVar3.l(oVar2);
                                    this.f6381d = bVar3.k();
                                }
                                this.f6380c |= 1;
                            }
                        }
                        z10 = true;
                    } catch (mb.j e10) {
                        e10.f10298a = this;
                        throw e10;
                    }
                } catch (IOException e11) {
                    mb.j jVar = new mb.j(e11.getMessage());
                    jVar.f10298a = this;
                    throw jVar;
                }
            } catch (Throwable th2) {
                if ((r42 & 8) == 8) {
                    this.f6383g = Collections.unmodifiableList(this.f6383g);
                }
                try {
                    eVarJ.i();
                } catch (IOException unused) {
                } catch (Throwable th3) {
                    this.f6379b = bVar.c();
                    throw th3;
                }
                this.f6379b = bVar.c();
                m();
                throw th2;
            }
        }
        if ((r42 & 8) == 8) {
            this.f6383g = Collections.unmodifiableList(this.f6383g);
        }
        try {
            eVarJ.i();
        } catch (IOException unused2) {
        } catch (Throwable th4) {
            this.f6379b = bVar.c();
            throw th4;
        }
        this.f6379b = bVar.c();
        m();
    }

    @Override // mb.q
    public final boolean b() {
        byte b10 = this.f6384h;
        if (b10 == 1) {
            return true;
        }
        if (b10 == 0) {
            return false;
        }
        if (((this.f6380c & 2) == 2) && !this.f6382e.b()) {
            this.f6384h = (byte) 0;
            return false;
        }
        if (((this.f6380c & 4) == 4) && !this.f.b()) {
            this.f6384h = (byte) 0;
            return false;
        }
        for (int r02 = 0; r02 < this.f6383g.size(); r02++) {
            if (!this.f6383g.get(r02).b()) {
                this.f6384h = (byte) 0;
                return false;
            }
        }
        if (i()) {
            this.f6384h = (byte) 1;
            return true;
        }
        this.f6384h = (byte) 0;
        return false;
    }

    @Override // mb.p
    public final int c() {
        int r02 = this.f6385j;
        if (r02 != -1) {
            return r02;
        }
        int r03 = (this.f6380c & 1) == 1 ? mb.e.d(1, this.f6381d) + 0 : 0;
        if ((this.f6380c & 2) == 2) {
            r03 += mb.e.d(2, this.f6382e);
        }
        if ((this.f6380c & 4) == 4) {
            r03 += mb.e.d(3, this.f);
        }
        for (int r22 = 0; r22 < this.f6383g.size(); r22++) {
            r03 += mb.e.d(4, this.f6383g.get(r22));
        }
        int size = this.f6379b.size() + j() + r03;
        this.f6385j = size;
        return size;
    }

    @Override // mb.p
    public final void d(mb.e eVar) throws IOException {
        c();
        h.c.a aVar = new h.c.a(this);
        if ((this.f6380c & 1) == 1) {
            eVar.o(1, this.f6381d);
        }
        if ((this.f6380c & 2) == 2) {
            eVar.o(2, this.f6382e);
        }
        if ((this.f6380c & 4) == 4) {
            eVar.o(3, this.f);
        }
        for (int r12 = 0; r12 < this.f6383g.size(); r12++) {
            eVar.o(4, this.f6383g.get(r12));
        }
        aVar.a(200, eVar);
        eVar.r(this.f6379b);
    }

    @Override // mb.q
    public final mb.p e() {
        return f6377k;
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

    public l(h.b bVar) {
        super(bVar);
        this.f6384h = (byte) -1;
        this.f6385j = -1;
        this.f6379b = bVar.f10281a;
    }
}
