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
public final class n extends mb.h implements mb.q {

    /* renamed from: e, reason: collision with root package name */
    public static final n f6423e;
    public static final a f = new a();

    /* renamed from: a, reason: collision with root package name */
    public final mb.c f6424a;

    /* renamed from: b, reason: collision with root package name */
    public List<c> f6425b;

    /* renamed from: c, reason: collision with root package name */
    public byte f6426c;

    /* renamed from: d, reason: collision with root package name */
    public int f6427d;

    public static class a extends mb.b<n> {
        @Override // mb.r
        public final Object a(mb.d dVar, mb.f fVar) throws mb.j {
            return new n(dVar, fVar);
        }
    }

    public static final class b extends h.a<n, b> implements mb.q {

        /* renamed from: b, reason: collision with root package name */
        public int f6428b;

        /* renamed from: c, reason: collision with root package name */
        public List<c> f6429c = Collections.emptyList();

        @Override // mb.a.AbstractC0188a, mb.p.a
        public final /* bridge */ /* synthetic */ p.a E(mb.d dVar, mb.f fVar) throws Throwable {
            n(dVar, fVar);
            return this;
        }

        @Override // mb.p.a
        public final mb.p build() {
            n nVarK = k();
            if (nVarK.b()) {
                return nVarK;
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
            l((n) hVar);
            return this;
        }

        public final n k() {
            n nVar = new n(this);
            if ((this.f6428b & 1) == 1) {
                this.f6429c = Collections.unmodifiableList(this.f6429c);
                this.f6428b &= -2;
            }
            nVar.f6425b = this.f6429c;
            return nVar;
        }

        public final void l(n nVar) {
            if (nVar == n.f6423e) {
                return;
            }
            if (!nVar.f6425b.isEmpty()) {
                if (this.f6429c.isEmpty()) {
                    this.f6429c = nVar.f6425b;
                    this.f6428b &= -2;
                } else {
                    if ((this.f6428b & 1) != 1) {
                        this.f6429c = new ArrayList(this.f6429c);
                        this.f6428b |= 1;
                    }
                    this.f6429c.addAll(nVar.f6425b);
                }
            }
            this.f10281a = this.f10281a.l(nVar.f6424a);
        }

        /* JADX WARN: Removed duplicated region for block: B:15:0x001c  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void n(mb.d r2, mb.f r3) throws java.lang.Throwable {
            /*
                r1 = this;
                gb.n$a r0 = gb.n.f     // Catch: mb.j -> Le java.lang.Throwable -> L10
                r0.getClass()     // Catch: mb.j -> Le java.lang.Throwable -> L10
                gb.n r0 = new gb.n     // Catch: mb.j -> Le java.lang.Throwable -> L10
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
                gb.n r3 = (gb.n) r3     // Catch: java.lang.Throwable -> L10
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
            throw new UnsupportedOperationException("Method not decompiled: gb.n.b.n(mb.d, mb.f):void");
        }
    }

    static {
        n nVar = new n();
        f6423e = nVar;
        nVar.f6425b = Collections.emptyList();
    }

    public n() {
        this.f6426c = (byte) -1;
        this.f6427d = -1;
        this.f6424a = mb.c.f10255a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public n(mb.d dVar, mb.f fVar) throws mb.j {
        this.f6426c = (byte) -1;
        this.f6427d = -1;
        this.f6425b = Collections.emptyList();
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
                                this.f6425b = new ArrayList();
                                z11 |= true;
                            }
                            this.f6425b.add(dVar.g(c.f6431j, fVar));
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
                    this.f6425b = Collections.unmodifiableList(this.f6425b);
                }
                try {
                    eVarJ.i();
                } catch (IOException unused) {
                } catch (Throwable th3) {
                    this.f6424a = bVar.c();
                    throw th3;
                }
                this.f6424a = bVar.c();
                throw th2;
            }
        }
        if (z11 & true) {
            this.f6425b = Collections.unmodifiableList(this.f6425b);
        }
        try {
            eVarJ.i();
        } catch (IOException unused2) {
        } catch (Throwable th4) {
            this.f6424a = bVar.c();
            throw th4;
        }
        this.f6424a = bVar.c();
    }

    @Override // mb.q
    public final boolean b() {
        byte b10 = this.f6426c;
        if (b10 == 1) {
            return true;
        }
        if (b10 == 0) {
            return false;
        }
        for (int r02 = 0; r02 < this.f6425b.size(); r02++) {
            if (!this.f6425b.get(r02).b()) {
                this.f6426c = (byte) 0;
                return false;
            }
        }
        this.f6426c = (byte) 1;
        return true;
    }

    @Override // mb.p
    public final int c() {
        int r02 = this.f6427d;
        if (r02 != -1) {
            return r02;
        }
        int r12 = 0;
        for (int r03 = 0; r03 < this.f6425b.size(); r03++) {
            r12 += mb.e.d(1, this.f6425b.get(r03));
        }
        int size = this.f6424a.size() + r12;
        this.f6427d = size;
        return size;
    }

    @Override // mb.p
    public final void d(mb.e eVar) throws IOException {
        c();
        for (int r02 = 0; r02 < this.f6425b.size(); r02++) {
            eVar.o(1, this.f6425b.get(r02));
        }
        eVar.r(this.f6424a);
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

    public n(h.a aVar) {
        super(0);
        this.f6426c = (byte) -1;
        this.f6427d = -1;
        this.f6424a = aVar.f10281a;
    }

    public static final class c extends mb.h implements mb.q {

        /* renamed from: h, reason: collision with root package name */
        public static final c f6430h;

        /* renamed from: j, reason: collision with root package name */
        public static final a f6431j = new a();

        /* renamed from: a, reason: collision with root package name */
        public final mb.c f6432a;

        /* renamed from: b, reason: collision with root package name */
        public int f6433b;

        /* renamed from: c, reason: collision with root package name */
        public int f6434c;

        /* renamed from: d, reason: collision with root package name */
        public int f6435d;

        /* renamed from: e, reason: collision with root package name */
        public EnumC0111c f6436e;
        public byte f;

        /* renamed from: g, reason: collision with root package name */
        public int f6437g;

        public static class a extends mb.b<c> {
            @Override // mb.r
            public final Object a(mb.d dVar, mb.f fVar) throws mb.j {
                return new c(dVar);
            }
        }

        public static final class b extends h.a<c, b> implements mb.q {

            /* renamed from: b, reason: collision with root package name */
            public int f6438b;

            /* renamed from: d, reason: collision with root package name */
            public int f6440d;

            /* renamed from: c, reason: collision with root package name */
            public int f6439c = -1;

            /* renamed from: e, reason: collision with root package name */
            public EnumC0111c f6441e = EnumC0111c.PACKAGE;

            @Override // mb.a.AbstractC0188a, mb.p.a
            public final /* bridge */ /* synthetic */ p.a E(mb.d dVar, mb.f fVar) throws Throwable {
                n(dVar, fVar);
                return this;
            }

            @Override // mb.p.a
            public final mb.p build() {
                c cVarK = k();
                if (cVarK.b()) {
                    return cVarK;
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
                l((c) hVar);
                return this;
            }

            public final c k() {
                c cVar = new c(this);
                int r12 = this.f6438b;
                int r32 = (r12 & 1) != 1 ? 0 : 1;
                cVar.f6434c = this.f6439c;
                if ((r12 & 2) == 2) {
                    r32 |= 2;
                }
                cVar.f6435d = this.f6440d;
                if ((r12 & 4) == 4) {
                    r32 |= 4;
                }
                cVar.f6436e = this.f6441e;
                cVar.f6433b = r32;
                return cVar;
            }

            public final void l(c cVar) {
                if (cVar == c.f6430h) {
                    return;
                }
                int r02 = cVar.f6433b;
                if ((r02 & 1) == 1) {
                    int r12 = cVar.f6434c;
                    this.f6438b |= 1;
                    this.f6439c = r12;
                }
                if ((r02 & 2) == 2) {
                    int r13 = cVar.f6435d;
                    this.f6438b = 2 | this.f6438b;
                    this.f6440d = r13;
                }
                if ((r02 & 4) == 4) {
                    EnumC0111c enumC0111c = cVar.f6436e;
                    enumC0111c.getClass();
                    this.f6438b = 4 | this.f6438b;
                    this.f6441e = enumC0111c;
                }
                this.f10281a = this.f10281a.l(cVar.f6432a);
            }

            /* JADX WARN: Removed duplicated region for block: B:15:0x001c  */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final void n(mb.d r1, mb.f r2) throws java.lang.Throwable {
                /*
                    r0 = this;
                    gb.n$c$a r2 = gb.n.c.f6431j     // Catch: mb.j -> Le java.lang.Throwable -> L10
                    r2.getClass()     // Catch: mb.j -> Le java.lang.Throwable -> L10
                    gb.n$c r2 = new gb.n$c     // Catch: mb.j -> Le java.lang.Throwable -> L10
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
                    gb.n$c r2 = (gb.n.c) r2     // Catch: java.lang.Throwable -> L10
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
                throw new UnsupportedOperationException("Method not decompiled: gb.n.c.b.n(mb.d, mb.f):void");
            }
        }

        /* renamed from: gb.n$c$c, reason: collision with other inner class name */
        public enum EnumC0111c implements i.a {
            CLASS(0),
            PACKAGE(1),
            LOCAL(2);


            /* renamed from: a, reason: collision with root package name */
            public final int f6446a;

            EnumC0111c(int r32) {
                this.f6446a = r32;
            }

            @Override // mb.i.a
            public final int f() {
                return this.f6446a;
            }
        }

        static {
            c cVar = new c();
            f6430h = cVar;
            cVar.f6434c = -1;
            cVar.f6435d = 0;
            cVar.f6436e = EnumC0111c.PACKAGE;
        }

        public c() {
            this.f = (byte) -1;
            this.f6437g = -1;
            this.f6432a = mb.c.f10255a;
        }

        public c(mb.d dVar) throws mb.j {
            this.f = (byte) -1;
            this.f6437g = -1;
            this.f6434c = -1;
            boolean z10 = false;
            this.f6435d = 0;
            EnumC0111c enumC0111c = EnumC0111c.PACKAGE;
            this.f6436e = enumC0111c;
            c.b bVar = new c.b();
            mb.e eVarJ = mb.e.j(bVar, 1);
            while (!z10) {
                try {
                    try {
                        int r52 = dVar.n();
                        if (r52 != 0) {
                            if (r52 == 8) {
                                this.f6433b |= 1;
                                this.f6434c = dVar.k();
                            } else if (r52 == 16) {
                                this.f6433b |= 2;
                                this.f6435d = dVar.k();
                            } else if (r52 == 24) {
                                int r6 = dVar.k();
                                EnumC0111c enumC0111c2 = r6 != 0 ? r6 != 1 ? r6 != 2 ? null : EnumC0111c.LOCAL : enumC0111c : EnumC0111c.CLASS;
                                if (enumC0111c2 == null) {
                                    eVarJ.v(r52);
                                    eVarJ.v(r6);
                                } else {
                                    this.f6433b |= 4;
                                    this.f6436e = enumC0111c2;
                                }
                            } else if (!dVar.q(r52, eVarJ)) {
                            }
                        }
                        z10 = true;
                    } catch (Throwable th2) {
                        try {
                            eVarJ.i();
                        } catch (IOException unused) {
                        } catch (Throwable th3) {
                            this.f6432a = bVar.c();
                            throw th3;
                        }
                        this.f6432a = bVar.c();
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
            try {
                eVarJ.i();
            } catch (IOException unused2) {
            } catch (Throwable th4) {
                this.f6432a = bVar.c();
                throw th4;
            }
            this.f6432a = bVar.c();
        }

        @Override // mb.q
        public final boolean b() {
            byte b10 = this.f;
            if (b10 == 1) {
                return true;
            }
            if (b10 == 0) {
                return false;
            }
            if ((this.f6433b & 2) == 2) {
                this.f = (byte) 1;
                return true;
            }
            this.f = (byte) 0;
            return false;
        }

        @Override // mb.p
        public final int c() {
            int r02 = this.f6437g;
            if (r02 != -1) {
                return r02;
            }
            int r22 = (this.f6433b & 1) == 1 ? 0 + mb.e.b(1, this.f6434c) : 0;
            if ((this.f6433b & 2) == 2) {
                r22 += mb.e.b(2, this.f6435d);
            }
            if ((this.f6433b & 4) == 4) {
                r22 += mb.e.a(3, this.f6436e.f6446a);
            }
            int size = this.f6432a.size() + r22;
            this.f6437g = size;
            return size;
        }

        @Override // mb.p
        public final void d(mb.e eVar) throws IOException {
            c();
            if ((this.f6433b & 1) == 1) {
                eVar.m(1, this.f6434c);
            }
            if ((this.f6433b & 2) == 2) {
                eVar.m(2, this.f6435d);
            }
            if ((this.f6433b & 4) == 4) {
                eVar.l(3, this.f6436e.f6446a);
            }
            eVar.r(this.f6432a);
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

        public c(h.a aVar) {
            super(0);
            this.f = (byte) -1;
            this.f6437g = -1;
            this.f6432a = aVar.f10281a;
        }
    }
}
