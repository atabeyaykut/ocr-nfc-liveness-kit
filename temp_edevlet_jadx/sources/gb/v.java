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
public final class v extends mb.h implements mb.q {

    /* renamed from: e, reason: collision with root package name */
    public static final v f6603e;
    public static final a f = new a();

    /* renamed from: a, reason: collision with root package name */
    public final mb.c f6604a;

    /* renamed from: b, reason: collision with root package name */
    public List<u> f6605b;

    /* renamed from: c, reason: collision with root package name */
    public byte f6606c;

    /* renamed from: d, reason: collision with root package name */
    public int f6607d;

    public static class a extends mb.b<v> {
        @Override // mb.r
        public final Object a(mb.d dVar, mb.f fVar) throws mb.j {
            return new v(dVar, fVar);
        }
    }

    public static final class b extends h.a<v, b> implements mb.q {

        /* renamed from: b, reason: collision with root package name */
        public int f6608b;

        /* renamed from: c, reason: collision with root package name */
        public List<u> f6609c = Collections.emptyList();

        @Override // mb.a.AbstractC0188a, mb.p.a
        public final /* bridge */ /* synthetic */ p.a E(mb.d dVar, mb.f fVar) throws Throwable {
            n(dVar, fVar);
            return this;
        }

        @Override // mb.p.a
        public final mb.p build() {
            v vVarK = k();
            if (vVarK.b()) {
                return vVarK;
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
            l((v) hVar);
            return this;
        }

        public final v k() {
            v vVar = new v(this);
            if ((this.f6608b & 1) == 1) {
                this.f6609c = Collections.unmodifiableList(this.f6609c);
                this.f6608b &= -2;
            }
            vVar.f6605b = this.f6609c;
            return vVar;
        }

        public final void l(v vVar) {
            if (vVar == v.f6603e) {
                return;
            }
            if (!vVar.f6605b.isEmpty()) {
                if (this.f6609c.isEmpty()) {
                    this.f6609c = vVar.f6605b;
                    this.f6608b &= -2;
                } else {
                    if ((this.f6608b & 1) != 1) {
                        this.f6609c = new ArrayList(this.f6609c);
                        this.f6608b |= 1;
                    }
                    this.f6609c.addAll(vVar.f6605b);
                }
            }
            this.f10281a = this.f10281a.l(vVar.f6604a);
        }

        /* JADX WARN: Removed duplicated region for block: B:15:0x001c  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void n(mb.d r2, mb.f r3) throws java.lang.Throwable {
            /*
                r1 = this;
                gb.v$a r0 = gb.v.f     // Catch: mb.j -> Le java.lang.Throwable -> L10
                r0.getClass()     // Catch: mb.j -> Le java.lang.Throwable -> L10
                gb.v r0 = new gb.v     // Catch: mb.j -> Le java.lang.Throwable -> L10
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
                gb.v r3 = (gb.v) r3     // Catch: java.lang.Throwable -> L10
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
            throw new UnsupportedOperationException("Method not decompiled: gb.v.b.n(mb.d, mb.f):void");
        }
    }

    static {
        v vVar = new v();
        f6603e = vVar;
        vVar.f6605b = Collections.emptyList();
    }

    public v() {
        this.f6606c = (byte) -1;
        this.f6607d = -1;
        this.f6604a = mb.c.f10255a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public v(mb.d dVar, mb.f fVar) throws mb.j {
        this.f6606c = (byte) -1;
        this.f6607d = -1;
        this.f6605b = Collections.emptyList();
        c.b bVar = new c.b();
        mb.e eVarJ = mb.e.j(bVar, 1);
        boolean z10 = false;
        boolean z11 = false;
        while (!z10) {
            try {
                try {
                    int r52 = dVar.n();
                    if (r52 != 0) {
                        if (r52 == 10) {
                            if (!(z11 & true)) {
                                this.f6605b = new ArrayList();
                                z11 |= true;
                            }
                            this.f6605b.add(dVar.g(u.f6577m, fVar));
                        } else if (!dVar.q(r52, eVarJ)) {
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
                if (z11 & true) {
                    this.f6605b = Collections.unmodifiableList(this.f6605b);
                }
                try {
                    eVarJ.i();
                } catch (IOException unused) {
                } catch (Throwable th3) {
                    this.f6604a = bVar.c();
                    throw th3;
                }
                this.f6604a = bVar.c();
                throw th2;
            }
        }
        if (z11 & true) {
            this.f6605b = Collections.unmodifiableList(this.f6605b);
        }
        try {
            eVarJ.i();
        } catch (IOException unused2) {
        } catch (Throwable th4) {
            this.f6604a = bVar.c();
            throw th4;
        }
        this.f6604a = bVar.c();
    }

    @Override // mb.q
    public final boolean b() {
        byte b10 = this.f6606c;
        if (b10 == 1) {
            return true;
        }
        if (b10 == 0) {
            return false;
        }
        this.f6606c = (byte) 1;
        return true;
    }

    @Override // mb.p
    public final int c() {
        int r02 = this.f6607d;
        if (r02 != -1) {
            return r02;
        }
        int r12 = 0;
        for (int r03 = 0; r03 < this.f6605b.size(); r03++) {
            r12 += mb.e.d(1, this.f6605b.get(r03));
        }
        int size = this.f6604a.size() + r12;
        this.f6607d = size;
        return size;
    }

    @Override // mb.p
    public final void d(mb.e eVar) throws IOException {
        c();
        for (int r02 = 0; r02 < this.f6605b.size(); r02++) {
            eVar.o(1, this.f6605b.get(r02));
        }
        eVar.r(this.f6604a);
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

    public v(h.a aVar) {
        super(0);
        this.f6606c = (byte) -1;
        this.f6607d = -1;
        this.f6604a = aVar.f10281a;
    }
}
