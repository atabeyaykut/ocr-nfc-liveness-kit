package gb;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import mb.a;
import mb.c;
import mb.h;
import mb.p;

/* loaded from: classes2.dex */
public final class c extends h.c<c> {

    /* renamed from: j, reason: collision with root package name */
    public static final c f6252j;

    /* renamed from: k, reason: collision with root package name */
    public static final a f6253k = new a();

    /* renamed from: b, reason: collision with root package name */
    public final mb.c f6254b;

    /* renamed from: c, reason: collision with root package name */
    public int f6255c;

    /* renamed from: d, reason: collision with root package name */
    public int f6256d;

    /* renamed from: e, reason: collision with root package name */
    public List<t> f6257e;
    public List<Integer> f;

    /* renamed from: g, reason: collision with root package name */
    public byte f6258g;

    /* renamed from: h, reason: collision with root package name */
    public int f6259h;

    public static class a extends mb.b<c> {
        @Override // mb.r
        public final Object a(mb.d dVar, mb.f fVar) throws mb.j {
            return new c(dVar, fVar);
        }
    }

    public static final class b extends h.b<c, b> {

        /* renamed from: d, reason: collision with root package name */
        public int f6260d;

        /* renamed from: e, reason: collision with root package name */
        public int f6261e = 6;
        public List<t> f = Collections.emptyList();

        /* renamed from: g, reason: collision with root package name */
        public List<Integer> f6262g = Collections.emptyList();

        @Override // mb.a.AbstractC0188a, mb.p.a
        public final /* bridge */ /* synthetic */ p.a E(mb.d dVar, mb.f fVar) throws Throwable {
            p(dVar, fVar);
            return this;
        }

        @Override // mb.p.a
        public final mb.p build() {
            c cVarL = l();
            if (cVarL.b()) {
                return cVarL;
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
            n((c) hVar);
            return this;
        }

        public final c l() {
            c cVar = new c(this);
            int r12 = this.f6260d;
            int r32 = (r12 & 1) != 1 ? 0 : 1;
            cVar.f6256d = this.f6261e;
            if ((r12 & 2) == 2) {
                this.f = Collections.unmodifiableList(this.f);
                this.f6260d &= -3;
            }
            cVar.f6257e = this.f;
            if ((this.f6260d & 4) == 4) {
                this.f6262g = Collections.unmodifiableList(this.f6262g);
                this.f6260d &= -5;
            }
            cVar.f = this.f6262g;
            cVar.f6255c = r32;
            return cVar;
        }

        public final void n(c cVar) {
            if (cVar == c.f6252j) {
                return;
            }
            if ((cVar.f6255c & 1) == 1) {
                int r02 = cVar.f6256d;
                this.f6260d = 1 | this.f6260d;
                this.f6261e = r02;
            }
            if (!cVar.f6257e.isEmpty()) {
                if (this.f.isEmpty()) {
                    this.f = cVar.f6257e;
                    this.f6260d &= -3;
                } else {
                    if ((this.f6260d & 2) != 2) {
                        this.f = new ArrayList(this.f);
                        this.f6260d |= 2;
                    }
                    this.f.addAll(cVar.f6257e);
                }
            }
            if (!cVar.f.isEmpty()) {
                if (this.f6262g.isEmpty()) {
                    this.f6262g = cVar.f;
                    this.f6260d &= -5;
                } else {
                    if ((this.f6260d & 4) != 4) {
                        this.f6262g = new ArrayList(this.f6262g);
                        this.f6260d |= 4;
                    }
                    this.f6262g.addAll(cVar.f);
                }
            }
            k(cVar);
            this.f10281a = this.f10281a.l(cVar.f6254b);
        }

        /* JADX WARN: Removed duplicated region for block: B:14:0x0019  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void p(mb.d r2, mb.f r3) throws java.lang.Throwable {
            /*
                r1 = this;
                gb.c$a r0 = gb.c.f6253k     // Catch: java.lang.Throwable -> Lc mb.j -> Le
                java.lang.Object r2 = r0.a(r2, r3)     // Catch: java.lang.Throwable -> Lc mb.j -> Le
                gb.c r2 = (gb.c) r2     // Catch: java.lang.Throwable -> Lc mb.j -> Le
                r1.n(r2)
                return
            Lc:
                r2 = move-exception
                goto L16
            Le:
                r2 = move-exception
                mb.p r3 = r2.f10298a     // Catch: java.lang.Throwable -> Lc
                gb.c r3 = (gb.c) r3     // Catch: java.lang.Throwable -> Lc
                throw r2     // Catch: java.lang.Throwable -> L14
            L14:
                r2 = move-exception
                goto L17
            L16:
                r3 = 0
            L17:
                if (r3 == 0) goto L1c
                r1.n(r3)
            L1c:
                throw r2
            */
            throw new UnsupportedOperationException("Method not decompiled: gb.c.b.p(mb.d, mb.f):void");
        }
    }

    static {
        c cVar = new c(0);
        f6252j = cVar;
        cVar.f6256d = 6;
        cVar.f6257e = Collections.emptyList();
        cVar.f = Collections.emptyList();
    }

    public c() {
        throw null;
    }

    public c(int r12) {
        this.f6258g = (byte) -1;
        this.f6259h = -1;
        this.f6254b = mb.c.f10255a;
    }

    public c(mb.d dVar, mb.f fVar) throws mb.j {
        List list;
        Object objG;
        this.f6258g = (byte) -1;
        this.f6259h = -1;
        this.f6256d = 6;
        this.f6257e = Collections.emptyList();
        this.f = Collections.emptyList();
        c.b bVar = new c.b();
        mb.e eVarJ = mb.e.j(bVar, 1);
        boolean z10 = false;
        int r42 = 0;
        while (!z10) {
            try {
                try {
                    int r72 = dVar.n();
                    if (r72 != 0) {
                        if (r72 != 8) {
                            if (r72 == 18) {
                                if ((r42 & 2) != 2) {
                                    this.f6257e = new ArrayList();
                                    r42 |= 2;
                                }
                                list = this.f6257e;
                                objG = dVar.g(t.f6560n, fVar);
                            } else if (r72 == 248) {
                                if ((r42 & 4) != 4) {
                                    this.f = new ArrayList();
                                    r42 |= 4;
                                }
                                list = this.f;
                                objG = Integer.valueOf(dVar.k());
                            } else if (r72 == 250) {
                                int r73 = dVar.d(dVar.k());
                                if ((r42 & 4) != 4 && dVar.b() > 0) {
                                    this.f = new ArrayList();
                                    r42 |= 4;
                                }
                                while (dVar.b() > 0) {
                                    this.f.add(Integer.valueOf(dVar.k()));
                                }
                                dVar.c(r73);
                            } else if (!o(dVar, eVarJ, fVar, r72)) {
                            }
                            list.add(objG);
                        } else {
                            this.f6255c |= 1;
                            this.f6256d = dVar.k();
                        }
                    }
                    z10 = true;
                } catch (mb.j e10) {
                    e10.f10298a = this;
                    throw e10;
                } catch (IOException e11) {
                    mb.j jVar = new mb.j(e11.getMessage());
                    jVar.f10298a = this;
                    throw jVar;
                }
            } catch (Throwable th2) {
                if ((r42 & 2) == 2) {
                    this.f6257e = Collections.unmodifiableList(this.f6257e);
                }
                if ((r42 & 4) == 4) {
                    this.f = Collections.unmodifiableList(this.f);
                }
                try {
                    eVarJ.i();
                } catch (IOException unused) {
                } catch (Throwable th3) {
                    this.f6254b = bVar.c();
                    throw th3;
                }
                this.f6254b = bVar.c();
                m();
                throw th2;
            }
        }
        if ((r42 & 2) == 2) {
            this.f6257e = Collections.unmodifiableList(this.f6257e);
        }
        if ((r42 & 4) == 4) {
            this.f = Collections.unmodifiableList(this.f);
        }
        try {
            eVarJ.i();
        } catch (IOException unused2) {
        } catch (Throwable th4) {
            this.f6254b = bVar.c();
            throw th4;
        }
        this.f6254b = bVar.c();
        m();
    }

    @Override // mb.q
    public final boolean b() {
        byte b10 = this.f6258g;
        if (b10 == 1) {
            return true;
        }
        if (b10 == 0) {
            return false;
        }
        for (int r02 = 0; r02 < this.f6257e.size(); r02++) {
            if (!this.f6257e.get(r02).b()) {
                this.f6258g = (byte) 0;
                return false;
            }
        }
        if (i()) {
            this.f6258g = (byte) 1;
            return true;
        }
        this.f6258g = (byte) 0;
        return false;
    }

    @Override // mb.p
    public final int c() {
        int r02 = this.f6259h;
        if (r02 != -1) {
            return r02;
        }
        int r03 = (this.f6255c & 1) == 1 ? mb.e.b(1, this.f6256d) + 0 : 0;
        for (int r12 = 0; r12 < this.f6257e.size(); r12++) {
            r03 += mb.e.d(2, this.f6257e.get(r12));
        }
        int r13 = 0;
        for (int r22 = 0; r22 < this.f.size(); r22++) {
            r13 += mb.e.c(this.f.get(r22).intValue());
        }
        int size = this.f6254b.size() + j() + (this.f.size() * 2) + r03 + r13;
        this.f6259h = size;
        return size;
    }

    @Override // mb.p
    public final void d(mb.e eVar) throws IOException {
        c();
        h.c.a aVar = new h.c.a(this);
        if ((this.f6255c & 1) == 1) {
            eVar.m(1, this.f6256d);
        }
        for (int r22 = 0; r22 < this.f6257e.size(); r22++) {
            eVar.o(2, this.f6257e.get(r22));
        }
        for (int r12 = 0; r12 < this.f.size(); r12++) {
            eVar.m(31, this.f.get(r12).intValue());
        }
        aVar.a(19000, eVar);
        eVar.r(this.f6254b);
    }

    @Override // mb.q
    public final mb.p e() {
        return f6252j;
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

    public c(h.b bVar) {
        super(bVar);
        this.f6258g = (byte) -1;
        this.f6259h = -1;
        this.f6254b = bVar.f10281a;
    }
}
