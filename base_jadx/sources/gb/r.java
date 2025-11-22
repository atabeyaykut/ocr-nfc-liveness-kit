package gb;

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
public final class r extends h.c<r> {

    /* renamed from: n, reason: collision with root package name */
    public static final r f6526n;

    /* renamed from: p, reason: collision with root package name */
    public static final a f6527p = new a();

    /* renamed from: b, reason: collision with root package name */
    public final mb.c f6528b;

    /* renamed from: c, reason: collision with root package name */
    public int f6529c;

    /* renamed from: d, reason: collision with root package name */
    public int f6530d;

    /* renamed from: e, reason: collision with root package name */
    public int f6531e;
    public boolean f;

    /* renamed from: g, reason: collision with root package name */
    public c f6532g;

    /* renamed from: h, reason: collision with root package name */
    public List<p> f6533h;

    /* renamed from: j, reason: collision with root package name */
    public List<Integer> f6534j;

    /* renamed from: k, reason: collision with root package name */
    public int f6535k;

    /* renamed from: l, reason: collision with root package name */
    public byte f6536l;

    /* renamed from: m, reason: collision with root package name */
    public int f6537m;

    public static class a extends mb.b<r> {
        @Override // mb.r
        public final Object a(mb.d dVar, mb.f fVar) throws mb.j {
            return new r(dVar, fVar);
        }
    }

    public static final class b extends h.b<r, b> {

        /* renamed from: d, reason: collision with root package name */
        public int f6538d;

        /* renamed from: e, reason: collision with root package name */
        public int f6539e;
        public int f;

        /* renamed from: g, reason: collision with root package name */
        public boolean f6540g;

        /* renamed from: h, reason: collision with root package name */
        public c f6541h = c.INV;

        /* renamed from: j, reason: collision with root package name */
        public List<p> f6542j = Collections.emptyList();

        /* renamed from: k, reason: collision with root package name */
        public List<Integer> f6543k = Collections.emptyList();

        @Override // mb.a.AbstractC0188a, mb.p.a
        public final /* bridge */ /* synthetic */ p.a E(mb.d dVar, mb.f fVar) throws Throwable {
            p(dVar, fVar);
            return this;
        }

        @Override // mb.p.a
        public final mb.p build() {
            r rVarL = l();
            if (rVarL.b()) {
                return rVarL;
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
            n((r) hVar);
            return this;
        }

        public final r l() {
            r rVar = new r(this);
            int r12 = this.f6538d;
            int r32 = (r12 & 1) != 1 ? 0 : 1;
            rVar.f6530d = this.f6539e;
            if ((r12 & 2) == 2) {
                r32 |= 2;
            }
            rVar.f6531e = this.f;
            if ((r12 & 4) == 4) {
                r32 |= 4;
            }
            rVar.f = this.f6540g;
            if ((r12 & 8) == 8) {
                r32 |= 8;
            }
            rVar.f6532g = this.f6541h;
            if ((r12 & 16) == 16) {
                this.f6542j = Collections.unmodifiableList(this.f6542j);
                this.f6538d &= -17;
            }
            rVar.f6533h = this.f6542j;
            if ((this.f6538d & 32) == 32) {
                this.f6543k = Collections.unmodifiableList(this.f6543k);
                this.f6538d &= -33;
            }
            rVar.f6534j = this.f6543k;
            rVar.f6529c = r32;
            return rVar;
        }

        public final void n(r rVar) {
            if (rVar == r.f6526n) {
                return;
            }
            int r02 = rVar.f6529c;
            if ((r02 & 1) == 1) {
                int r12 = rVar.f6530d;
                this.f6538d |= 1;
                this.f6539e = r12;
            }
            if ((r02 & 2) == 2) {
                int r13 = rVar.f6531e;
                this.f6538d = 2 | this.f6538d;
                this.f = r13;
            }
            if ((r02 & 4) == 4) {
                boolean z10 = rVar.f;
                this.f6538d = 4 | this.f6538d;
                this.f6540g = z10;
            }
            if ((r02 & 8) == 8) {
                c cVar = rVar.f6532g;
                cVar.getClass();
                this.f6538d = 8 | this.f6538d;
                this.f6541h = cVar;
            }
            if (!rVar.f6533h.isEmpty()) {
                if (this.f6542j.isEmpty()) {
                    this.f6542j = rVar.f6533h;
                    this.f6538d &= -17;
                } else {
                    if ((this.f6538d & 16) != 16) {
                        this.f6542j = new ArrayList(this.f6542j);
                        this.f6538d |= 16;
                    }
                    this.f6542j.addAll(rVar.f6533h);
                }
            }
            if (!rVar.f6534j.isEmpty()) {
                if (this.f6543k.isEmpty()) {
                    this.f6543k = rVar.f6534j;
                    this.f6538d &= -33;
                } else {
                    if ((this.f6538d & 32) != 32) {
                        this.f6543k = new ArrayList(this.f6543k);
                        this.f6538d |= 32;
                    }
                    this.f6543k.addAll(rVar.f6534j);
                }
            }
            k(rVar);
            this.f10281a = this.f10281a.l(rVar.f6528b);
        }

        /* JADX WARN: Removed duplicated region for block: B:15:0x001c  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void p(mb.d r2, mb.f r3) throws java.lang.Throwable {
            /*
                r1 = this;
                gb.r$a r0 = gb.r.f6527p     // Catch: mb.j -> Le java.lang.Throwable -> L10
                r0.getClass()     // Catch: mb.j -> Le java.lang.Throwable -> L10
                gb.r r0 = new gb.r     // Catch: mb.j -> Le java.lang.Throwable -> L10
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
                gb.r r3 = (gb.r) r3     // Catch: java.lang.Throwable -> L10
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
            throw new UnsupportedOperationException("Method not decompiled: gb.r.b.p(mb.d, mb.f):void");
        }
    }

    public enum c implements i.a {
        IN(0),
        OUT(1),
        INV(2);


        /* renamed from: a, reason: collision with root package name */
        public final int f6548a;

        c(int r32) {
            this.f6548a = r32;
        }

        @Override // mb.i.a
        public final int f() {
            return this.f6548a;
        }
    }

    static {
        r rVar = new r(0);
        f6526n = rVar;
        rVar.f6530d = 0;
        rVar.f6531e = 0;
        rVar.f = false;
        rVar.f6532g = c.INV;
        rVar.f6533h = Collections.emptyList();
        rVar.f6534j = Collections.emptyList();
    }

    public r() {
        throw null;
    }

    public r(int r12) {
        this.f6535k = -1;
        this.f6536l = (byte) -1;
        this.f6537m = -1;
        this.f6528b = mb.c.f10255a;
    }

    public r(mb.d dVar, mb.f fVar) throws mb.j {
        List list;
        Object objG;
        this.f6535k = -1;
        this.f6536l = (byte) -1;
        this.f6537m = -1;
        this.f6530d = 0;
        this.f6531e = 0;
        this.f = false;
        c cVar = c.INV;
        this.f6532g = cVar;
        this.f6533h = Collections.emptyList();
        this.f6534j = Collections.emptyList();
        c.b bVar = new c.b();
        mb.e eVarJ = mb.e.j(bVar, 1);
        boolean z10 = false;
        int r92 = 0;
        while (!z10) {
            try {
                try {
                    int r12 = dVar.n();
                    if (r12 != 0) {
                        if (r12 == 8) {
                            this.f6529c |= 1;
                            this.f6530d = dVar.k();
                        } else if (r12 == 16) {
                            this.f6529c |= 2;
                            this.f6531e = dVar.k();
                        } else if (r12 == 24) {
                            this.f6529c |= 4;
                            this.f = dVar.l() != 0;
                        } else if (r12 != 32) {
                            if (r12 == 42) {
                                if ((r92 & 16) != 16) {
                                    this.f6533h = new ArrayList();
                                    r92 |= 16;
                                }
                                list = this.f6533h;
                                objG = dVar.g(p.f6454x, fVar);
                            } else if (r12 == 48) {
                                if ((r92 & 32) != 32) {
                                    this.f6534j = new ArrayList();
                                    r92 |= 32;
                                }
                                list = this.f6534j;
                                objG = Integer.valueOf(dVar.k());
                            } else if (r12 == 50) {
                                int r122 = dVar.d(dVar.k());
                                if ((r92 & 32) != 32 && dVar.b() > 0) {
                                    this.f6534j = new ArrayList();
                                    r92 |= 32;
                                }
                                while (dVar.b() > 0) {
                                    this.f6534j.add(Integer.valueOf(dVar.k()));
                                }
                                dVar.c(r122);
                            } else if (!o(dVar, eVarJ, fVar, r12)) {
                            }
                            list.add(objG);
                        } else {
                            int r15 = dVar.k();
                            c cVar2 = r15 != 0 ? r15 != 1 ? r15 != 2 ? null : cVar : c.OUT : c.IN;
                            if (cVar2 == null) {
                                eVarJ.v(r12);
                                eVarJ.v(r15);
                            } else {
                                this.f6529c |= 8;
                                this.f6532g = cVar2;
                            }
                        }
                    }
                    z10 = true;
                } catch (Throwable th2) {
                    if ((r92 & 16) == 16) {
                        this.f6533h = Collections.unmodifiableList(this.f6533h);
                    }
                    if ((r92 & 32) == 32) {
                        this.f6534j = Collections.unmodifiableList(this.f6534j);
                    }
                    try {
                        eVarJ.i();
                    } catch (IOException unused) {
                    } catch (Throwable th3) {
                        this.f6528b = bVar.c();
                        throw th3;
                    }
                    this.f6528b = bVar.c();
                    m();
                    throw th2;
                }
            } catch (mb.j e10) {
                e10.f10298a = this;
                throw e10;
            } catch (IOException e11) {
                mb.j jVar = new mb.j(e11.getMessage());
                jVar.f10298a = this;
                throw jVar;
            }
        }
        if ((r92 & 16) == 16) {
            this.f6533h = Collections.unmodifiableList(this.f6533h);
        }
        if ((r92 & 32) == 32) {
            this.f6534j = Collections.unmodifiableList(this.f6534j);
        }
        try {
            eVarJ.i();
        } catch (IOException unused2) {
        } catch (Throwable th4) {
            this.f6528b = bVar.c();
            throw th4;
        }
        this.f6528b = bVar.c();
        m();
    }

    @Override // mb.q
    public final boolean b() {
        byte b10 = this.f6536l;
        if (b10 == 1) {
            return true;
        }
        if (b10 == 0) {
            return false;
        }
        int r02 = this.f6529c;
        if (!((r02 & 1) == 1)) {
            this.f6536l = (byte) 0;
            return false;
        }
        if (!((r02 & 2) == 2)) {
            this.f6536l = (byte) 0;
            return false;
        }
        for (int r03 = 0; r03 < this.f6533h.size(); r03++) {
            if (!this.f6533h.get(r03).b()) {
                this.f6536l = (byte) 0;
                return false;
            }
        }
        if (i()) {
            this.f6536l = (byte) 1;
            return true;
        }
        this.f6536l = (byte) 0;
        return false;
    }

    @Override // mb.p
    public final int c() {
        int r02 = this.f6537m;
        if (r02 != -1) {
            return r02;
        }
        int r03 = (this.f6529c & 1) == 1 ? mb.e.b(1, this.f6530d) + 0 : 0;
        if ((this.f6529c & 2) == 2) {
            r03 += mb.e.b(2, this.f6531e);
        }
        if ((this.f6529c & 4) == 4) {
            r03 += mb.e.h(3) + 1;
        }
        if ((this.f6529c & 8) == 8) {
            r03 += mb.e.a(4, this.f6532g.f6548a);
        }
        for (int r12 = 0; r12 < this.f6533h.size(); r12++) {
            r03 += mb.e.d(5, this.f6533h.get(r12));
        }
        int r13 = 0;
        for (int r22 = 0; r22 < this.f6534j.size(); r22++) {
            r13 += mb.e.c(this.f6534j.get(r22).intValue());
        }
        int r04 = r03 + r13;
        if (!this.f6534j.isEmpty()) {
            r04 = r04 + 1 + mb.e.c(r13);
        }
        this.f6535k = r13;
        int size = this.f6528b.size() + j() + r04;
        this.f6537m = size;
        return size;
    }

    @Override // mb.p
    public final void d(mb.e eVar) throws IOException {
        c();
        h.c.a aVar = new h.c.a(this);
        if ((this.f6529c & 1) == 1) {
            eVar.m(1, this.f6530d);
        }
        if ((this.f6529c & 2) == 2) {
            eVar.m(2, this.f6531e);
        }
        if ((this.f6529c & 4) == 4) {
            boolean z10 = this.f;
            eVar.x(3, 0);
            eVar.q(z10 ? 1 : 0);
        }
        if ((this.f6529c & 8) == 8) {
            eVar.l(4, this.f6532g.f6548a);
        }
        for (int r12 = 0; r12 < this.f6533h.size(); r12++) {
            eVar.o(5, this.f6533h.get(r12));
        }
        if (this.f6534j.size() > 0) {
            eVar.v(50);
            eVar.v(this.f6535k);
        }
        for (int r32 = 0; r32 < this.f6534j.size(); r32++) {
            eVar.n(this.f6534j.get(r32).intValue());
        }
        aVar.a(1000, eVar);
        eVar.r(this.f6528b);
    }

    @Override // mb.q
    public final mb.p e() {
        return f6526n;
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

    public r(h.b bVar) {
        super(bVar);
        this.f6535k = -1;
        this.f6536l = (byte) -1;
        this.f6537m = -1;
        this.f6528b = bVar.f10281a;
    }
}
