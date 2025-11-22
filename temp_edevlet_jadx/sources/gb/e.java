package gb;

import gb.g;
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
public final class e extends mb.h implements mb.q {

    /* renamed from: j, reason: collision with root package name */
    public static final e f6270j;

    /* renamed from: k, reason: collision with root package name */
    public static final a f6271k = new a();

    /* renamed from: a, reason: collision with root package name */
    public final mb.c f6272a;

    /* renamed from: b, reason: collision with root package name */
    public int f6273b;

    /* renamed from: c, reason: collision with root package name */
    public c f6274c;

    /* renamed from: d, reason: collision with root package name */
    public List<g> f6275d;

    /* renamed from: e, reason: collision with root package name */
    public g f6276e;
    public d f;

    /* renamed from: g, reason: collision with root package name */
    public byte f6277g;

    /* renamed from: h, reason: collision with root package name */
    public int f6278h;

    public static class a extends mb.b<e> {
        @Override // mb.r
        public final Object a(mb.d dVar, mb.f fVar) throws mb.j {
            return new e(dVar, fVar);
        }
    }

    public static final class b extends h.a<e, b> implements mb.q {

        /* renamed from: b, reason: collision with root package name */
        public int f6279b;

        /* renamed from: c, reason: collision with root package name */
        public c f6280c = c.RETURNS_CONSTANT;

        /* renamed from: d, reason: collision with root package name */
        public List<g> f6281d = Collections.emptyList();

        /* renamed from: e, reason: collision with root package name */
        public g f6282e = g.f6301m;
        public d f = d.AT_MOST_ONCE;

        @Override // mb.a.AbstractC0188a, mb.p.a
        public final /* bridge */ /* synthetic */ p.a E(mb.d dVar, mb.f fVar) throws Throwable {
            n(dVar, fVar);
            return this;
        }

        @Override // mb.p.a
        public final mb.p build() {
            e eVarK = k();
            if (eVarK.b()) {
                return eVarK;
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
            l((e) hVar);
            return this;
        }

        public final e k() {
            e eVar = new e(this);
            int r12 = this.f6279b;
            int r32 = (r12 & 1) != 1 ? 0 : 1;
            eVar.f6274c = this.f6280c;
            if ((r12 & 2) == 2) {
                this.f6281d = Collections.unmodifiableList(this.f6281d);
                this.f6279b &= -3;
            }
            eVar.f6275d = this.f6281d;
            if ((r12 & 4) == 4) {
                r32 |= 2;
            }
            eVar.f6276e = this.f6282e;
            if ((r12 & 8) == 8) {
                r32 |= 4;
            }
            eVar.f = this.f;
            eVar.f6273b = r32;
            return eVar;
        }

        public final void l(e eVar) {
            g gVar;
            if (eVar == e.f6270j) {
                return;
            }
            if ((eVar.f6273b & 1) == 1) {
                c cVar = eVar.f6274c;
                cVar.getClass();
                this.f6279b |= 1;
                this.f6280c = cVar;
            }
            if (!eVar.f6275d.isEmpty()) {
                if (this.f6281d.isEmpty()) {
                    this.f6281d = eVar.f6275d;
                    this.f6279b &= -3;
                } else {
                    if ((this.f6279b & 2) != 2) {
                        this.f6281d = new ArrayList(this.f6281d);
                        this.f6279b |= 2;
                    }
                    this.f6281d.addAll(eVar.f6275d);
                }
            }
            if ((eVar.f6273b & 2) == 2) {
                g gVarK = eVar.f6276e;
                if ((this.f6279b & 4) == 4 && (gVar = this.f6282e) != g.f6301m) {
                    g.b bVar = new g.b();
                    bVar.l(gVar);
                    bVar.l(gVarK);
                    gVarK = bVar.k();
                }
                this.f6282e = gVarK;
                this.f6279b |= 4;
            }
            if ((eVar.f6273b & 4) == 4) {
                d dVar = eVar.f;
                dVar.getClass();
                this.f6279b |= 8;
                this.f = dVar;
            }
            this.f10281a = this.f10281a.l(eVar.f6272a);
        }

        /* JADX WARN: Removed duplicated region for block: B:15:0x001c  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void n(mb.d r2, mb.f r3) throws java.lang.Throwable {
            /*
                r1 = this;
                gb.e$a r0 = gb.e.f6271k     // Catch: mb.j -> Le java.lang.Throwable -> L10
                r0.getClass()     // Catch: mb.j -> Le java.lang.Throwable -> L10
                gb.e r0 = new gb.e     // Catch: mb.j -> Le java.lang.Throwable -> L10
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
                gb.e r3 = (gb.e) r3     // Catch: java.lang.Throwable -> L10
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
            throw new UnsupportedOperationException("Method not decompiled: gb.e.b.n(mb.d, mb.f):void");
        }
    }

    public enum c implements i.a {
        RETURNS_CONSTANT(0),
        CALLS(1),
        RETURNS_NOT_NULL(2);


        /* renamed from: a, reason: collision with root package name */
        public final int f6287a;

        c(int r32) {
            this.f6287a = r32;
        }

        @Override // mb.i.a
        public final int f() {
            return this.f6287a;
        }
    }

    public enum d implements i.a {
        AT_MOST_ONCE(0),
        EXACTLY_ONCE(1),
        AT_LEAST_ONCE(2);


        /* renamed from: a, reason: collision with root package name */
        public final int f6292a;

        d(int r32) {
            this.f6292a = r32;
        }

        @Override // mb.i.a
        public final int f() {
            return this.f6292a;
        }
    }

    static {
        e eVar = new e();
        f6270j = eVar;
        eVar.f6274c = c.RETURNS_CONSTANT;
        eVar.f6275d = Collections.emptyList();
        eVar.f6276e = g.f6301m;
        eVar.f = d.AT_MOST_ONCE;
    }

    public e() {
        this.f6277g = (byte) -1;
        this.f6278h = -1;
        this.f6272a = mb.c.f10255a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public e(mb.d dVar, mb.f fVar) throws mb.j {
        int r92;
        this.f6277g = (byte) -1;
        this.f6278h = -1;
        c cVar = c.RETURNS_CONSTANT;
        this.f6274c = cVar;
        this.f6275d = Collections.emptyList();
        this.f6276e = g.f6301m;
        d dVar2 = d.AT_MOST_ONCE;
        this.f = dVar2;
        c.b bVar = new c.b();
        mb.e eVarJ = mb.e.j(bVar, 1);
        boolean z10 = false;
        int r6 = 0;
        while (!z10) {
            try {
                try {
                    int r82 = dVar.n();
                    if (r82 != 0) {
                        d dVar3 = null;
                        c cVar2 = null;
                        g.b bVar2 = null;
                        if (r82 == 8) {
                            r92 = dVar.k();
                            if (r92 == 0) {
                                cVar2 = cVar;
                            } else if (r92 == 1) {
                                cVar2 = c.CALLS;
                            } else if (r92 == 2) {
                                cVar2 = c.RETURNS_NOT_NULL;
                            }
                            if (cVar2 == null) {
                                eVarJ.v(r82);
                                eVarJ.v(r92);
                            } else {
                                this.f6273b |= 1;
                                this.f6274c = cVar2;
                            }
                        } else if (r82 == 18) {
                            if ((r6 & 2) != 2) {
                                this.f6275d = new ArrayList();
                                r6 |= 2;
                            }
                            this.f6275d.add(dVar.g(g.f6302n, fVar));
                        } else if (r82 == 26) {
                            if ((this.f6273b & 2) == 2) {
                                g gVar = this.f6276e;
                                gVar.getClass();
                                bVar2 = new g.b();
                                bVar2.l(gVar);
                            }
                            g gVar2 = (g) dVar.g(g.f6302n, fVar);
                            this.f6276e = gVar2;
                            if (bVar2 != null) {
                                bVar2.l(gVar2);
                                this.f6276e = bVar2.k();
                            }
                            this.f6273b |= 2;
                        } else if (r82 == 32) {
                            r92 = dVar.k();
                            if (r92 == 0) {
                                dVar3 = dVar2;
                            } else if (r92 == 1) {
                                dVar3 = d.EXACTLY_ONCE;
                            } else if (r92 == 2) {
                                dVar3 = d.AT_LEAST_ONCE;
                            }
                            if (dVar3 == null) {
                                eVarJ.v(r82);
                                eVarJ.v(r92);
                            } else {
                                this.f6273b |= 4;
                                this.f = dVar3;
                            }
                        } else if (!dVar.q(r82, eVarJ)) {
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
                if ((r6 & 2) == 2) {
                    this.f6275d = Collections.unmodifiableList(this.f6275d);
                }
                try {
                    eVarJ.i();
                } catch (IOException unused) {
                } catch (Throwable th3) {
                    this.f6272a = bVar.c();
                    throw th3;
                }
                this.f6272a = bVar.c();
                throw th2;
            }
        }
        if ((r6 & 2) == 2) {
            this.f6275d = Collections.unmodifiableList(this.f6275d);
        }
        try {
            eVarJ.i();
        } catch (IOException unused2) {
        } catch (Throwable th4) {
            this.f6272a = bVar.c();
            throw th4;
        }
        this.f6272a = bVar.c();
    }

    @Override // mb.q
    public final boolean b() {
        byte b10 = this.f6277g;
        if (b10 == 1) {
            return true;
        }
        if (b10 == 0) {
            return false;
        }
        for (int r02 = 0; r02 < this.f6275d.size(); r02++) {
            if (!this.f6275d.get(r02).b()) {
                this.f6277g = (byte) 0;
                return false;
            }
        }
        if (!((this.f6273b & 2) == 2) || this.f6276e.b()) {
            this.f6277g = (byte) 1;
            return true;
        }
        this.f6277g = (byte) 0;
        return false;
    }

    @Override // mb.p
    public final int c() {
        int r02 = this.f6278h;
        if (r02 != -1) {
            return r02;
        }
        int r03 = (this.f6273b & 1) == 1 ? mb.e.a(1, this.f6274c.f6287a) + 0 : 0;
        for (int r22 = 0; r22 < this.f6275d.size(); r22++) {
            r03 += mb.e.d(2, this.f6275d.get(r22));
        }
        if ((this.f6273b & 2) == 2) {
            r03 += mb.e.d(3, this.f6276e);
        }
        if ((this.f6273b & 4) == 4) {
            r03 += mb.e.a(4, this.f.f6292a);
        }
        int size = this.f6272a.size() + r03;
        this.f6278h = size;
        return size;
    }

    @Override // mb.p
    public final void d(mb.e eVar) throws IOException {
        c();
        if ((this.f6273b & 1) == 1) {
            eVar.l(1, this.f6274c.f6287a);
        }
        for (int r02 = 0; r02 < this.f6275d.size(); r02++) {
            eVar.o(2, this.f6275d.get(r02));
        }
        if ((this.f6273b & 2) == 2) {
            eVar.o(3, this.f6276e);
        }
        if ((this.f6273b & 4) == 4) {
            eVar.l(4, this.f.f6292a);
        }
        eVar.r(this.f6272a);
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

    public e(h.a aVar) {
        super(0);
        this.f6277g = (byte) -1;
        this.f6278h = -1;
        this.f6272a = aVar.f10281a;
    }
}
