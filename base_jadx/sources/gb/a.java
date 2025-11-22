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
public final class a extends mb.h implements mb.q {

    /* renamed from: g, reason: collision with root package name */
    public static final a f6147g;

    /* renamed from: h, reason: collision with root package name */
    public static final C0104a f6148h = new C0104a();

    /* renamed from: a, reason: collision with root package name */
    public final mb.c f6149a;

    /* renamed from: b, reason: collision with root package name */
    public int f6150b;

    /* renamed from: c, reason: collision with root package name */
    public int f6151c;

    /* renamed from: d, reason: collision with root package name */
    public List<b> f6152d;

    /* renamed from: e, reason: collision with root package name */
    public byte f6153e;
    public int f;

    /* renamed from: gb.a$a, reason: collision with other inner class name */
    public static class C0104a extends mb.b<a> {
        @Override // mb.r
        public final Object a(mb.d dVar, mb.f fVar) throws mb.j {
            return new a(dVar, fVar);
        }
    }

    public static final class c extends h.a<a, c> implements mb.q {

        /* renamed from: b, reason: collision with root package name */
        public int f6205b;

        /* renamed from: c, reason: collision with root package name */
        public int f6206c;

        /* renamed from: d, reason: collision with root package name */
        public List<b> f6207d = Collections.emptyList();

        @Override // mb.a.AbstractC0188a, mb.p.a
        public final /* bridge */ /* synthetic */ p.a E(mb.d dVar, mb.f fVar) throws Throwable {
            n(dVar, fVar);
            return this;
        }

        @Override // mb.p.a
        public final mb.p build() {
            a aVarK = k();
            if (aVarK.b()) {
                return aVarK;
            }
            throw new c0.a();
        }

        @Override // mb.h.a
        public final Object clone() throws CloneNotSupportedException {
            c cVar = new c();
            cVar.l(k());
            return cVar;
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
            c cVar = new c();
            cVar.l(k());
            return cVar;
        }

        @Override // mb.h.a
        public final /* bridge */ /* synthetic */ h.a j(mb.h hVar) {
            l((a) hVar);
            return this;
        }

        public final a k() {
            a aVar = new a(this);
            int r12 = this.f6205b;
            int r32 = (r12 & 1) != 1 ? 0 : 1;
            aVar.f6151c = this.f6206c;
            if ((r12 & 2) == 2) {
                this.f6207d = Collections.unmodifiableList(this.f6207d);
                this.f6205b &= -3;
            }
            aVar.f6152d = this.f6207d;
            aVar.f6150b = r32;
            return aVar;
        }

        public final void l(a aVar) {
            if (aVar == a.f6147g) {
                return;
            }
            if ((aVar.f6150b & 1) == 1) {
                int r02 = aVar.f6151c;
                this.f6205b = 1 | this.f6205b;
                this.f6206c = r02;
            }
            if (!aVar.f6152d.isEmpty()) {
                if (this.f6207d.isEmpty()) {
                    this.f6207d = aVar.f6152d;
                    this.f6205b &= -3;
                } else {
                    if ((this.f6205b & 2) != 2) {
                        this.f6207d = new ArrayList(this.f6207d);
                        this.f6205b |= 2;
                    }
                    this.f6207d.addAll(aVar.f6152d);
                }
            }
            this.f10281a = this.f10281a.l(aVar.f6149a);
        }

        /* JADX WARN: Removed duplicated region for block: B:14:0x0019  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void n(mb.d r2, mb.f r3) throws java.lang.Throwable {
            /*
                r1 = this;
                gb.a$a r0 = gb.a.f6148h     // Catch: java.lang.Throwable -> Lc mb.j -> Le
                java.lang.Object r2 = r0.a(r2, r3)     // Catch: java.lang.Throwable -> Lc mb.j -> Le
                gb.a r2 = (gb.a) r2     // Catch: java.lang.Throwable -> Lc mb.j -> Le
                r1.l(r2)
                return
            Lc:
                r2 = move-exception
                goto L16
            Le:
                r2 = move-exception
                mb.p r3 = r2.f10298a     // Catch: java.lang.Throwable -> Lc
                gb.a r3 = (gb.a) r3     // Catch: java.lang.Throwable -> Lc
                throw r2     // Catch: java.lang.Throwable -> L14
            L14:
                r2 = move-exception
                goto L17
            L16:
                r3 = 0
            L17:
                if (r3 == 0) goto L1c
                r1.l(r3)
            L1c:
                throw r2
            */
            throw new UnsupportedOperationException("Method not decompiled: gb.a.c.n(mb.d, mb.f):void");
        }
    }

    static {
        a aVar = new a();
        f6147g = aVar;
        aVar.f6151c = 0;
        aVar.f6152d = Collections.emptyList();
    }

    public a() {
        this.f6153e = (byte) -1;
        this.f = -1;
        this.f6149a = mb.c.f10255a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public a(mb.d dVar, mb.f fVar) throws mb.j {
        this.f6153e = (byte) -1;
        this.f = -1;
        boolean z10 = false;
        this.f6151c = 0;
        this.f6152d = Collections.emptyList();
        c.b bVar = new c.b();
        mb.e eVarJ = mb.e.j(bVar, 1);
        int r42 = 0;
        while (!z10) {
            try {
                try {
                    int r6 = dVar.n();
                    if (r6 != 0) {
                        if (r6 == 8) {
                            this.f6150b |= 1;
                            this.f6151c = dVar.k();
                        } else if (r6 == 18) {
                            if ((r42 & 2) != 2) {
                                this.f6152d = new ArrayList();
                                r42 |= 2;
                            }
                            this.f6152d.add(dVar.g(b.f6155h, fVar));
                        } else if (!dVar.q(r6, eVarJ)) {
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
                    this.f6152d = Collections.unmodifiableList(this.f6152d);
                }
                try {
                    eVarJ.i();
                } catch (IOException unused) {
                } catch (Throwable th3) {
                    this.f6149a = bVar.c();
                    throw th3;
                }
                this.f6149a = bVar.c();
                throw th2;
            }
        }
        if ((r42 & 2) == 2) {
            this.f6152d = Collections.unmodifiableList(this.f6152d);
        }
        try {
            eVarJ.i();
        } catch (IOException unused2) {
        } catch (Throwable th4) {
            this.f6149a = bVar.c();
            throw th4;
        }
        this.f6149a = bVar.c();
    }

    @Override // mb.q
    public final boolean b() {
        byte b10 = this.f6153e;
        if (b10 == 1) {
            return true;
        }
        if (b10 == 0) {
            return false;
        }
        if (!((this.f6150b & 1) == 1)) {
            this.f6153e = (byte) 0;
            return false;
        }
        for (int r02 = 0; r02 < this.f6152d.size(); r02++) {
            if (!this.f6152d.get(r02).b()) {
                this.f6153e = (byte) 0;
                return false;
            }
        }
        this.f6153e = (byte) 1;
        return true;
    }

    @Override // mb.p
    public final int c() {
        int r02 = this.f;
        if (r02 != -1) {
            return r02;
        }
        int r03 = (this.f6150b & 1) == 1 ? mb.e.b(1, this.f6151c) + 0 : 0;
        for (int r22 = 0; r22 < this.f6152d.size(); r22++) {
            r03 += mb.e.d(2, this.f6152d.get(r22));
        }
        int size = this.f6149a.size() + r03;
        this.f = size;
        return size;
    }

    @Override // mb.p
    public final void d(mb.e eVar) throws IOException {
        c();
        if ((this.f6150b & 1) == 1) {
            eVar.m(1, this.f6151c);
        }
        for (int r02 = 0; r02 < this.f6152d.size(); r02++) {
            eVar.o(2, this.f6152d.get(r02));
        }
        eVar.r(this.f6149a);
    }

    @Override // mb.p
    public final p.a f() {
        c cVar = new c();
        cVar.l(this);
        return cVar;
    }

    @Override // mb.p
    public final p.a g() {
        return new c();
    }

    public a(h.a aVar) {
        super(0);
        this.f6153e = (byte) -1;
        this.f = -1;
        this.f6149a = aVar.f10281a;
    }

    public static final class b extends mb.h implements mb.q {

        /* renamed from: g, reason: collision with root package name */
        public static final b f6154g;

        /* renamed from: h, reason: collision with root package name */
        public static final C0105a f6155h = new C0105a();

        /* renamed from: a, reason: collision with root package name */
        public final mb.c f6156a;

        /* renamed from: b, reason: collision with root package name */
        public int f6157b;

        /* renamed from: c, reason: collision with root package name */
        public int f6158c;

        /* renamed from: d, reason: collision with root package name */
        public c f6159d;

        /* renamed from: e, reason: collision with root package name */
        public byte f6160e;
        public int f;

        /* renamed from: gb.a$b$a, reason: collision with other inner class name */
        public static class C0105a extends mb.b<b> {
            @Override // mb.r
            public final Object a(mb.d dVar, mb.f fVar) throws mb.j {
                return new b(dVar, fVar);
            }
        }

        /* renamed from: gb.a$b$b, reason: collision with other inner class name */
        public static final class C0106b extends h.a<b, C0106b> implements mb.q {

            /* renamed from: b, reason: collision with root package name */
            public int f6161b;

            /* renamed from: c, reason: collision with root package name */
            public int f6162c;

            /* renamed from: d, reason: collision with root package name */
            public c f6163d = c.f6164r;

            @Override // mb.a.AbstractC0188a, mb.p.a
            public final /* bridge */ /* synthetic */ p.a E(mb.d dVar, mb.f fVar) throws Throwable {
                n(dVar, fVar);
                return this;
            }

            @Override // mb.p.a
            public final mb.p build() {
                b bVarK = k();
                if (bVarK.b()) {
                    return bVarK;
                }
                throw new c0.a();
            }

            @Override // mb.h.a
            public final Object clone() throws CloneNotSupportedException {
                C0106b c0106b = new C0106b();
                c0106b.l(k());
                return c0106b;
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
                C0106b c0106b = new C0106b();
                c0106b.l(k());
                return c0106b;
            }

            @Override // mb.h.a
            public final /* bridge */ /* synthetic */ h.a j(mb.h hVar) {
                l((b) hVar);
                return this;
            }

            public final b k() {
                b bVar = new b(this);
                int r12 = this.f6161b;
                int r32 = (r12 & 1) != 1 ? 0 : 1;
                bVar.f6158c = this.f6162c;
                if ((r12 & 2) == 2) {
                    r32 |= 2;
                }
                bVar.f6159d = this.f6163d;
                bVar.f6157b = r32;
                return bVar;
            }

            public final void l(b bVar) {
                c cVar;
                if (bVar == b.f6154g) {
                    return;
                }
                int r02 = bVar.f6157b;
                if ((r02 & 1) == 1) {
                    int r12 = bVar.f6158c;
                    this.f6161b |= 1;
                    this.f6162c = r12;
                }
                if ((r02 & 2) == 2) {
                    c cVarK = bVar.f6159d;
                    if ((this.f6161b & 2) == 2 && (cVar = this.f6163d) != c.f6164r) {
                        c.C0108b c0108b = new c.C0108b();
                        c0108b.l(cVar);
                        c0108b.l(cVarK);
                        cVarK = c0108b.k();
                    }
                    this.f6163d = cVarK;
                    this.f6161b |= 2;
                }
                this.f10281a = this.f10281a.l(bVar.f6156a);
            }

            /* JADX WARN: Removed duplicated region for block: B:15:0x001c  */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final void n(mb.d r2, mb.f r3) throws java.lang.Throwable {
                /*
                    r1 = this;
                    gb.a$b$a r0 = gb.a.b.f6155h     // Catch: mb.j -> Le java.lang.Throwable -> L10
                    r0.getClass()     // Catch: mb.j -> Le java.lang.Throwable -> L10
                    gb.a$b r0 = new gb.a$b     // Catch: mb.j -> Le java.lang.Throwable -> L10
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
                    gb.a$b r3 = (gb.a.b) r3     // Catch: java.lang.Throwable -> L10
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
                throw new UnsupportedOperationException("Method not decompiled: gb.a.b.C0106b.n(mb.d, mb.f):void");
            }
        }

        static {
            b bVar = new b();
            f6154g = bVar;
            bVar.f6158c = 0;
            bVar.f6159d = c.f6164r;
        }

        public b() {
            this.f6160e = (byte) -1;
            this.f = -1;
            this.f6156a = mb.c.f10255a;
        }

        public b(mb.d dVar, mb.f fVar) throws mb.j {
            c.C0108b c0108b;
            this.f6160e = (byte) -1;
            this.f = -1;
            boolean z10 = false;
            this.f6158c = 0;
            this.f6159d = c.f6164r;
            c.b bVar = new c.b();
            mb.e eVarJ = mb.e.j(bVar, 1);
            while (!z10) {
                try {
                    try {
                        int r42 = dVar.n();
                        if (r42 != 0) {
                            if (r42 == 8) {
                                this.f6157b |= 1;
                                this.f6158c = dVar.k();
                            } else if (r42 == 18) {
                                if ((this.f6157b & 2) == 2) {
                                    c cVar = this.f6159d;
                                    cVar.getClass();
                                    c0108b = new c.C0108b();
                                    c0108b.l(cVar);
                                } else {
                                    c0108b = null;
                                }
                                c cVar2 = (c) dVar.g(c.f6165s, fVar);
                                this.f6159d = cVar2;
                                if (c0108b != null) {
                                    c0108b.l(cVar2);
                                    this.f6159d = c0108b.k();
                                }
                                this.f6157b |= 2;
                            } else if (!dVar.q(r42, eVarJ)) {
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
                    try {
                        eVarJ.i();
                    } catch (IOException unused) {
                    } catch (Throwable th3) {
                        this.f6156a = bVar.c();
                        throw th3;
                    }
                    this.f6156a = bVar.c();
                    throw th2;
                }
            }
            try {
                eVarJ.i();
            } catch (IOException unused2) {
            } catch (Throwable th4) {
                this.f6156a = bVar.c();
                throw th4;
            }
            this.f6156a = bVar.c();
        }

        @Override // mb.q
        public final boolean b() {
            byte b10 = this.f6160e;
            if (b10 == 1) {
                return true;
            }
            if (b10 == 0) {
                return false;
            }
            int r02 = this.f6157b;
            if (!((r02 & 1) == 1)) {
                this.f6160e = (byte) 0;
                return false;
            }
            if (!((r02 & 2) == 2)) {
                this.f6160e = (byte) 0;
                return false;
            }
            if (this.f6159d.b()) {
                this.f6160e = (byte) 1;
                return true;
            }
            this.f6160e = (byte) 0;
            return false;
        }

        @Override // mb.p
        public final int c() {
            int r02 = this.f;
            if (r02 != -1) {
                return r02;
            }
            int r22 = (this.f6157b & 1) == 1 ? 0 + mb.e.b(1, this.f6158c) : 0;
            if ((this.f6157b & 2) == 2) {
                r22 += mb.e.d(2, this.f6159d);
            }
            int size = this.f6156a.size() + r22;
            this.f = size;
            return size;
        }

        @Override // mb.p
        public final void d(mb.e eVar) throws IOException {
            c();
            if ((this.f6157b & 1) == 1) {
                eVar.m(1, this.f6158c);
            }
            if ((this.f6157b & 2) == 2) {
                eVar.o(2, this.f6159d);
            }
            eVar.r(this.f6156a);
        }

        @Override // mb.p
        public final p.a f() {
            C0106b c0106b = new C0106b();
            c0106b.l(this);
            return c0106b;
        }

        @Override // mb.p
        public final p.a g() {
            return new C0106b();
        }

        public b(h.a aVar) {
            super(0);
            this.f6160e = (byte) -1;
            this.f = -1;
            this.f6156a = aVar.f10281a;
        }

        public static final class c extends mb.h implements mb.q {

            /* renamed from: r, reason: collision with root package name */
            public static final c f6164r;

            /* renamed from: s, reason: collision with root package name */
            public static final C0107a f6165s = new C0107a();

            /* renamed from: a, reason: collision with root package name */
            public final mb.c f6166a;

            /* renamed from: b, reason: collision with root package name */
            public int f6167b;

            /* renamed from: c, reason: collision with root package name */
            public EnumC0109c f6168c;

            /* renamed from: d, reason: collision with root package name */
            public long f6169d;

            /* renamed from: e, reason: collision with root package name */
            public float f6170e;
            public double f;

            /* renamed from: g, reason: collision with root package name */
            public int f6171g;

            /* renamed from: h, reason: collision with root package name */
            public int f6172h;

            /* renamed from: j, reason: collision with root package name */
            public int f6173j;

            /* renamed from: k, reason: collision with root package name */
            public a f6174k;

            /* renamed from: l, reason: collision with root package name */
            public List<c> f6175l;

            /* renamed from: m, reason: collision with root package name */
            public int f6176m;

            /* renamed from: n, reason: collision with root package name */
            public int f6177n;

            /* renamed from: p, reason: collision with root package name */
            public byte f6178p;

            /* renamed from: q, reason: collision with root package name */
            public int f6179q;

            /* renamed from: gb.a$b$c$a, reason: collision with other inner class name */
            public static class C0107a extends mb.b<c> {
                @Override // mb.r
                public final Object a(mb.d dVar, mb.f fVar) throws mb.j {
                    return new c(dVar, fVar);
                }
            }

            /* renamed from: gb.a$b$c$b, reason: collision with other inner class name */
            public static final class C0108b extends h.a<c, C0108b> implements mb.q {

                /* renamed from: b, reason: collision with root package name */
                public int f6180b;

                /* renamed from: d, reason: collision with root package name */
                public long f6182d;

                /* renamed from: e, reason: collision with root package name */
                public float f6183e;
                public double f;

                /* renamed from: g, reason: collision with root package name */
                public int f6184g;

                /* renamed from: h, reason: collision with root package name */
                public int f6185h;

                /* renamed from: j, reason: collision with root package name */
                public int f6186j;

                /* renamed from: m, reason: collision with root package name */
                public int f6189m;

                /* renamed from: n, reason: collision with root package name */
                public int f6190n;

                /* renamed from: c, reason: collision with root package name */
                public EnumC0109c f6181c = EnumC0109c.BYTE;

                /* renamed from: k, reason: collision with root package name */
                public a f6187k = a.f6147g;

                /* renamed from: l, reason: collision with root package name */
                public List<c> f6188l = Collections.emptyList();

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
                    C0108b c0108b = new C0108b();
                    c0108b.l(k());
                    return c0108b;
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
                    C0108b c0108b = new C0108b();
                    c0108b.l(k());
                    return c0108b;
                }

                @Override // mb.h.a
                public final /* bridge */ /* synthetic */ h.a j(mb.h hVar) {
                    l((c) hVar);
                    return this;
                }

                public final c k() {
                    c cVar = new c(this);
                    int r12 = this.f6180b;
                    int r32 = (r12 & 1) != 1 ? 0 : 1;
                    cVar.f6168c = this.f6181c;
                    if ((r12 & 2) == 2) {
                        r32 |= 2;
                    }
                    cVar.f6169d = this.f6182d;
                    if ((r12 & 4) == 4) {
                        r32 |= 4;
                    }
                    cVar.f6170e = this.f6183e;
                    if ((r12 & 8) == 8) {
                        r32 |= 8;
                    }
                    cVar.f = this.f;
                    if ((r12 & 16) == 16) {
                        r32 |= 16;
                    }
                    cVar.f6171g = this.f6184g;
                    if ((r12 & 32) == 32) {
                        r32 |= 32;
                    }
                    cVar.f6172h = this.f6185h;
                    if ((r12 & 64) == 64) {
                        r32 |= 64;
                    }
                    cVar.f6173j = this.f6186j;
                    if ((r12 & 128) == 128) {
                        r32 |= 128;
                    }
                    cVar.f6174k = this.f6187k;
                    if ((r12 & 256) == 256) {
                        this.f6188l = Collections.unmodifiableList(this.f6188l);
                        this.f6180b &= -257;
                    }
                    cVar.f6175l = this.f6188l;
                    if ((r12 & 512) == 512) {
                        r32 |= 256;
                    }
                    cVar.f6176m = this.f6189m;
                    if ((r12 & 1024) == 1024) {
                        r32 |= 512;
                    }
                    cVar.f6177n = this.f6190n;
                    cVar.f6167b = r32;
                    return cVar;
                }

                public final void l(c cVar) {
                    a aVar;
                    if (cVar == c.f6164r) {
                        return;
                    }
                    if ((cVar.f6167b & 1) == 1) {
                        EnumC0109c enumC0109c = cVar.f6168c;
                        enumC0109c.getClass();
                        this.f6180b |= 1;
                        this.f6181c = enumC0109c;
                    }
                    int r02 = cVar.f6167b;
                    if ((r02 & 2) == 2) {
                        long j10 = cVar.f6169d;
                        this.f6180b |= 2;
                        this.f6182d = j10;
                    }
                    if ((r02 & 4) == 4) {
                        float f = cVar.f6170e;
                        this.f6180b = 4 | this.f6180b;
                        this.f6183e = f;
                    }
                    if ((r02 & 8) == 8) {
                        double d10 = cVar.f;
                        this.f6180b |= 8;
                        this.f = d10;
                    }
                    if ((r02 & 16) == 16) {
                        int r32 = cVar.f6171g;
                        this.f6180b = 16 | this.f6180b;
                        this.f6184g = r32;
                    }
                    if ((r02 & 32) == 32) {
                        int r33 = cVar.f6172h;
                        this.f6180b = 32 | this.f6180b;
                        this.f6185h = r33;
                    }
                    if ((r02 & 64) == 64) {
                        int r34 = cVar.f6173j;
                        this.f6180b = 64 | this.f6180b;
                        this.f6186j = r34;
                    }
                    if ((r02 & 128) == 128) {
                        a aVarK = cVar.f6174k;
                        if ((this.f6180b & 128) == 128 && (aVar = this.f6187k) != a.f6147g) {
                            c cVar2 = new c();
                            cVar2.l(aVar);
                            cVar2.l(aVarK);
                            aVarK = cVar2.k();
                        }
                        this.f6187k = aVarK;
                        this.f6180b |= 128;
                    }
                    if (!cVar.f6175l.isEmpty()) {
                        if (this.f6188l.isEmpty()) {
                            this.f6188l = cVar.f6175l;
                            this.f6180b &= -257;
                        } else {
                            if ((this.f6180b & 256) != 256) {
                                this.f6188l = new ArrayList(this.f6188l);
                                this.f6180b |= 256;
                            }
                            this.f6188l.addAll(cVar.f6175l);
                        }
                    }
                    int r03 = cVar.f6167b;
                    if ((r03 & 256) == 256) {
                        int r35 = cVar.f6176m;
                        this.f6180b |= 512;
                        this.f6189m = r35;
                    }
                    if ((r03 & 512) == 512) {
                        int r04 = cVar.f6177n;
                        this.f6180b |= 1024;
                        this.f6190n = r04;
                    }
                    this.f10281a = this.f10281a.l(cVar.f6166a);
                }

                /* JADX WARN: Removed duplicated region for block: B:15:0x001c  */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public final void n(mb.d r2, mb.f r3) throws java.lang.Throwable {
                    /*
                        r1 = this;
                        gb.a$b$c$a r0 = gb.a.b.c.f6165s     // Catch: mb.j -> Le java.lang.Throwable -> L10
                        r0.getClass()     // Catch: mb.j -> Le java.lang.Throwable -> L10
                        gb.a$b$c r0 = new gb.a$b$c     // Catch: mb.j -> Le java.lang.Throwable -> L10
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
                        gb.a$b$c r3 = (gb.a.b.c) r3     // Catch: java.lang.Throwable -> L10
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
                    throw new UnsupportedOperationException("Method not decompiled: gb.a.b.c.C0108b.n(mb.d, mb.f):void");
                }
            }

            /* renamed from: gb.a$b$c$c, reason: collision with other inner class name */
            public enum EnumC0109c implements i.a {
                BYTE(0),
                CHAR(1),
                SHORT(2),
                INT(3),
                LONG(4),
                FLOAT(5),
                DOUBLE(6),
                BOOLEAN(7),
                STRING(8),
                CLASS(9),
                ENUM(10),
                ANNOTATION(11),
                ARRAY(12);


                /* renamed from: a, reason: collision with root package name */
                public final int f6204a;

                EnumC0109c(int r32) {
                    this.f6204a = r32;
                }

                public static EnumC0109c n(int r02) {
                    switch (r02) {
                        case 0:
                            return BYTE;
                        case 1:
                            return CHAR;
                        case 2:
                            return SHORT;
                        case 3:
                            return INT;
                        case 4:
                            return LONG;
                        case 5:
                            return FLOAT;
                        case 6:
                            return DOUBLE;
                        case 7:
                            return BOOLEAN;
                        case 8:
                            return STRING;
                        case 9:
                            return CLASS;
                        case 10:
                            return ENUM;
                        case 11:
                            return ANNOTATION;
                        case 12:
                            return ARRAY;
                        default:
                            return null;
                    }
                }

                @Override // mb.i.a
                public final int f() {
                    return this.f6204a;
                }
            }

            static {
                c cVar = new c();
                f6164r = cVar;
                cVar.i();
            }

            public c() {
                this.f6178p = (byte) -1;
                this.f6179q = -1;
                this.f6166a = mb.c.f10255a;
            }

            /* JADX WARN: Multi-variable type inference failed */
            public c(mb.d dVar, mb.f fVar) throws mb.j {
                c cVar;
                this.f6178p = (byte) -1;
                this.f6179q = -1;
                i();
                c.b bVar = new c.b();
                mb.e eVarJ = mb.e.j(bVar, 1);
                boolean z10 = false;
                int r42 = 0;
                while (!z10) {
                    try {
                        try {
                            int r6 = dVar.n();
                            switch (r6) {
                                case 0:
                                    z10 = true;
                                case 8:
                                    int r72 = dVar.k();
                                    EnumC0109c enumC0109cN = EnumC0109c.n(r72);
                                    if (enumC0109cN == null) {
                                        eVarJ.v(r6);
                                        eVarJ.v(r72);
                                    } else {
                                        this.f6167b |= 1;
                                        this.f6168c = enumC0109cN;
                                    }
                                case 16:
                                    this.f6167b |= 2;
                                    long jL = dVar.l();
                                    this.f6169d = (-(jL & 1)) ^ (jL >>> 1);
                                case 29:
                                    this.f6167b |= 4;
                                    this.f6170e = Float.intBitsToFloat(dVar.i());
                                case 33:
                                    this.f6167b |= 8;
                                    this.f = Double.longBitsToDouble(dVar.j());
                                case 40:
                                    this.f6167b |= 16;
                                    this.f6171g = dVar.k();
                                case 48:
                                    this.f6167b |= 32;
                                    this.f6172h = dVar.k();
                                case 56:
                                    this.f6167b |= 64;
                                    this.f6173j = dVar.k();
                                case 66:
                                    if ((this.f6167b & 128) == 128) {
                                        a aVar = this.f6174k;
                                        aVar.getClass();
                                        cVar = new c();
                                        cVar.l(aVar);
                                    } else {
                                        cVar = null;
                                    }
                                    a aVar2 = (a) dVar.g(a.f6148h, fVar);
                                    this.f6174k = aVar2;
                                    if (cVar != null) {
                                        cVar.l(aVar2);
                                        this.f6174k = cVar.k();
                                    }
                                    this.f6167b |= 128;
                                case 74:
                                    if ((r42 & 256) != 256) {
                                        this.f6175l = new ArrayList();
                                        r42 |= 256;
                                    }
                                    this.f6175l.add(dVar.g(f6165s, fVar));
                                case 80:
                                    this.f6167b |= 512;
                                    this.f6177n = dVar.k();
                                case 88:
                                    this.f6167b |= 256;
                                    this.f6176m = dVar.k();
                                default:
                                    if (!dVar.q(r6, eVarJ)) {
                                        z10 = true;
                                    }
                            }
                        } catch (mb.j e10) {
                            e10.f10298a = this;
                            throw e10;
                        } catch (IOException e11) {
                            mb.j jVar = new mb.j(e11.getMessage());
                            jVar.f10298a = this;
                            throw jVar;
                        }
                    } catch (Throwable th2) {
                        if ((r42 & 256) == 256) {
                            this.f6175l = Collections.unmodifiableList(this.f6175l);
                        }
                        try {
                            eVarJ.i();
                        } catch (IOException unused) {
                        } catch (Throwable th3) {
                            this.f6166a = bVar.c();
                            throw th3;
                        }
                        this.f6166a = bVar.c();
                        throw th2;
                    }
                }
                if ((r42 & 256) == 256) {
                    this.f6175l = Collections.unmodifiableList(this.f6175l);
                }
                try {
                    eVarJ.i();
                } catch (IOException unused2) {
                } catch (Throwable th4) {
                    this.f6166a = bVar.c();
                    throw th4;
                }
                this.f6166a = bVar.c();
            }

            @Override // mb.q
            public final boolean b() {
                byte b10 = this.f6178p;
                if (b10 == 1) {
                    return true;
                }
                if (b10 == 0) {
                    return false;
                }
                if (((this.f6167b & 128) == 128) && !this.f6174k.b()) {
                    this.f6178p = (byte) 0;
                    return false;
                }
                for (int r02 = 0; r02 < this.f6175l.size(); r02++) {
                    if (!this.f6175l.get(r02).b()) {
                        this.f6178p = (byte) 0;
                        return false;
                    }
                }
                this.f6178p = (byte) 1;
                return true;
            }

            @Override // mb.p
            public final int c() {
                int r02 = this.f6179q;
                if (r02 != -1) {
                    return r02;
                }
                int r03 = (this.f6167b & 1) == 1 ? mb.e.a(1, this.f6168c.f6204a) + 0 : 0;
                if ((this.f6167b & 2) == 2) {
                    long j10 = this.f6169d;
                    r03 += mb.e.g((j10 >> 63) ^ (j10 << 1)) + mb.e.h(2);
                }
                if ((this.f6167b & 4) == 4) {
                    r03 += mb.e.h(3) + 4;
                }
                if ((this.f6167b & 8) == 8) {
                    r03 += mb.e.h(4) + 8;
                }
                if ((this.f6167b & 16) == 16) {
                    r03 += mb.e.b(5, this.f6171g);
                }
                if ((this.f6167b & 32) == 32) {
                    r03 += mb.e.b(6, this.f6172h);
                }
                if ((this.f6167b & 64) == 64) {
                    r03 += mb.e.b(7, this.f6173j);
                }
                if ((this.f6167b & 128) == 128) {
                    r03 += mb.e.d(8, this.f6174k);
                }
                for (int r22 = 0; r22 < this.f6175l.size(); r22++) {
                    r03 += mb.e.d(9, this.f6175l.get(r22));
                }
                if ((this.f6167b & 512) == 512) {
                    r03 += mb.e.b(10, this.f6177n);
                }
                if ((this.f6167b & 256) == 256) {
                    r03 += mb.e.b(11, this.f6176m);
                }
                int size = this.f6166a.size() + r03;
                this.f6179q = size;
                return size;
            }

            @Override // mb.p
            public final void d(mb.e eVar) throws IOException {
                c();
                if ((this.f6167b & 1) == 1) {
                    eVar.l(1, this.f6168c.f6204a);
                }
                if ((this.f6167b & 2) == 2) {
                    long j10 = this.f6169d;
                    eVar.x(2, 0);
                    eVar.w((j10 >> 63) ^ (j10 << 1));
                }
                if ((this.f6167b & 4) == 4) {
                    float f = this.f6170e;
                    eVar.x(3, 5);
                    eVar.t(Float.floatToRawIntBits(f));
                }
                if ((this.f6167b & 8) == 8) {
                    double d10 = this.f;
                    eVar.x(4, 1);
                    eVar.u(Double.doubleToRawLongBits(d10));
                }
                if ((this.f6167b & 16) == 16) {
                    eVar.m(5, this.f6171g);
                }
                if ((this.f6167b & 32) == 32) {
                    eVar.m(6, this.f6172h);
                }
                if ((this.f6167b & 64) == 64) {
                    eVar.m(7, this.f6173j);
                }
                if ((this.f6167b & 128) == 128) {
                    eVar.o(8, this.f6174k);
                }
                for (int r32 = 0; r32 < this.f6175l.size(); r32++) {
                    eVar.o(9, this.f6175l.get(r32));
                }
                if ((this.f6167b & 512) == 512) {
                    eVar.m(10, this.f6177n);
                }
                if ((this.f6167b & 256) == 256) {
                    eVar.m(11, this.f6176m);
                }
                eVar.r(this.f6166a);
            }

            @Override // mb.p
            public final p.a f() {
                C0108b c0108b = new C0108b();
                c0108b.l(this);
                return c0108b;
            }

            @Override // mb.p
            public final p.a g() {
                return new C0108b();
            }

            public final void i() {
                this.f6168c = EnumC0109c.BYTE;
                this.f6169d = 0L;
                this.f6170e = 0.0f;
                this.f = 0.0d;
                this.f6171g = 0;
                this.f6172h = 0;
                this.f6173j = 0;
                this.f6174k = a.f6147g;
                this.f6175l = Collections.emptyList();
                this.f6176m = 0;
                this.f6177n = 0;
            }

            public c(h.a aVar) {
                super(0);
                this.f6178p = (byte) -1;
                this.f6179q = -1;
                this.f6166a = aVar.f10281a;
            }
        }
    }
}
