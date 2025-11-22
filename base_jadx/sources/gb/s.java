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
public final class s extends mb.h implements mb.q {

    /* renamed from: g, reason: collision with root package name */
    public static final s f6549g;

    /* renamed from: h, reason: collision with root package name */
    public static final a f6550h = new a();

    /* renamed from: a, reason: collision with root package name */
    public final mb.c f6551a;

    /* renamed from: b, reason: collision with root package name */
    public int f6552b;

    /* renamed from: c, reason: collision with root package name */
    public List<p> f6553c;

    /* renamed from: d, reason: collision with root package name */
    public int f6554d;

    /* renamed from: e, reason: collision with root package name */
    public byte f6555e;
    public int f;

    public static class a extends mb.b<s> {
        @Override // mb.r
        public final Object a(mb.d dVar, mb.f fVar) throws mb.j {
            return new s(dVar, fVar);
        }
    }

    public static final class b extends h.a<s, b> implements mb.q {

        /* renamed from: b, reason: collision with root package name */
        public int f6556b;

        /* renamed from: c, reason: collision with root package name */
        public List<p> f6557c = Collections.emptyList();

        /* renamed from: d, reason: collision with root package name */
        public int f6558d = -1;

        @Override // mb.a.AbstractC0188a, mb.p.a
        public final /* bridge */ /* synthetic */ p.a E(mb.d dVar, mb.f fVar) throws Throwable {
            n(dVar, fVar);
            return this;
        }

        @Override // mb.p.a
        public final mb.p build() {
            s sVarK = k();
            if (sVarK.b()) {
                return sVarK;
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
            l((s) hVar);
            return this;
        }

        public final s k() {
            s sVar = new s(this);
            int r12 = this.f6556b;
            if ((r12 & 1) == 1) {
                this.f6557c = Collections.unmodifiableList(this.f6557c);
                this.f6556b &= -2;
            }
            sVar.f6553c = this.f6557c;
            int r32 = (r12 & 2) != 2 ? 0 : 1;
            sVar.f6554d = this.f6558d;
            sVar.f6552b = r32;
            return sVar;
        }

        public final void l(s sVar) {
            if (sVar == s.f6549g) {
                return;
            }
            if (!sVar.f6553c.isEmpty()) {
                if (this.f6557c.isEmpty()) {
                    this.f6557c = sVar.f6553c;
                    this.f6556b &= -2;
                } else {
                    if ((this.f6556b & 1) != 1) {
                        this.f6557c = new ArrayList(this.f6557c);
                        this.f6556b |= 1;
                    }
                    this.f6557c.addAll(sVar.f6553c);
                }
            }
            if ((sVar.f6552b & 1) == 1) {
                int r02 = sVar.f6554d;
                this.f6556b |= 2;
                this.f6558d = r02;
            }
            this.f10281a = this.f10281a.l(sVar.f6551a);
        }

        /* JADX WARN: Removed duplicated region for block: B:15:0x001c  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void n(mb.d r2, mb.f r3) throws java.lang.Throwable {
            /*
                r1 = this;
                gb.s$a r0 = gb.s.f6550h     // Catch: mb.j -> Le java.lang.Throwable -> L10
                r0.getClass()     // Catch: mb.j -> Le java.lang.Throwable -> L10
                gb.s r0 = new gb.s     // Catch: mb.j -> Le java.lang.Throwable -> L10
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
                gb.s r3 = (gb.s) r3     // Catch: java.lang.Throwable -> L10
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
            throw new UnsupportedOperationException("Method not decompiled: gb.s.b.n(mb.d, mb.f):void");
        }
    }

    static {
        s sVar = new s();
        f6549g = sVar;
        sVar.f6553c = Collections.emptyList();
        sVar.f6554d = -1;
    }

    public s() {
        this.f6555e = (byte) -1;
        this.f = -1;
        this.f6551a = mb.c.f10255a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public s(mb.d dVar, mb.f fVar) throws mb.j {
        this.f6555e = (byte) -1;
        this.f = -1;
        this.f6553c = Collections.emptyList();
        this.f6554d = -1;
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
                                this.f6553c = new ArrayList();
                                z11 |= true;
                            }
                            this.f6553c.add(dVar.g(p.f6454x, fVar));
                        } else if (r52 == 16) {
                            this.f6552b |= 1;
                            this.f6554d = dVar.k();
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
                    this.f6553c = Collections.unmodifiableList(this.f6553c);
                }
                try {
                    eVarJ.i();
                } catch (IOException unused) {
                } catch (Throwable th3) {
                    this.f6551a = bVar.c();
                    throw th3;
                }
                this.f6551a = bVar.c();
                throw th2;
            }
        }
        if (z11 & true) {
            this.f6553c = Collections.unmodifiableList(this.f6553c);
        }
        try {
            eVarJ.i();
        } catch (IOException unused2) {
        } catch (Throwable th4) {
            this.f6551a = bVar.c();
            throw th4;
        }
        this.f6551a = bVar.c();
    }

    public static b i(s sVar) {
        b bVar = new b();
        bVar.l(sVar);
        return bVar;
    }

    @Override // mb.q
    public final boolean b() {
        byte b10 = this.f6555e;
        if (b10 == 1) {
            return true;
        }
        if (b10 == 0) {
            return false;
        }
        for (int r02 = 0; r02 < this.f6553c.size(); r02++) {
            if (!this.f6553c.get(r02).b()) {
                this.f6555e = (byte) 0;
                return false;
            }
        }
        this.f6555e = (byte) 1;
        return true;
    }

    @Override // mb.p
    public final int c() {
        int r02 = this.f;
        if (r02 != -1) {
            return r02;
        }
        int r12 = 0;
        for (int r03 = 0; r03 < this.f6553c.size(); r03++) {
            r12 += mb.e.d(1, this.f6553c.get(r03));
        }
        if ((this.f6552b & 1) == 1) {
            r12 += mb.e.b(2, this.f6554d);
        }
        int size = this.f6551a.size() + r12;
        this.f = size;
        return size;
    }

    @Override // mb.p
    public final void d(mb.e eVar) throws IOException {
        c();
        for (int r02 = 0; r02 < this.f6553c.size(); r02++) {
            eVar.o(1, this.f6553c.get(r02));
        }
        if ((this.f6552b & 1) == 1) {
            eVar.m(2, this.f6554d);
        }
        eVar.r(this.f6551a);
    }

    @Override // mb.p
    public final p.a f() {
        return i(this);
    }

    @Override // mb.p
    public final p.a g() {
        return new b();
    }

    public final b j() {
        return i(this);
    }

    public s(h.a aVar) {
        super(0);
        this.f6555e = (byte) -1;
        this.f = -1;
        this.f6551a = aVar.f10281a;
    }
}
