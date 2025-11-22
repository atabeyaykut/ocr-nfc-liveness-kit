package jb;

import gb.k;
import gb.m;
import gb.p;
import gb.r;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import mb.a;
import mb.c;
import mb.e;
import mb.f;
import mb.h;
import mb.i;
import mb.j;
import mb.o;
import mb.p;
import mb.q;
import mb.w;

/* loaded from: classes2.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public static final h.e<gb.c, b> f8410a;

    /* renamed from: b, reason: collision with root package name */
    public static final h.e<gb.h, b> f8411b;

    /* renamed from: c, reason: collision with root package name */
    public static final h.e<gb.h, Integer> f8412c;

    /* renamed from: d, reason: collision with root package name */
    public static final h.e<m, c> f8413d;

    /* renamed from: e, reason: collision with root package name */
    public static final h.e<m, Integer> f8414e;
    public static final h.e<p, List<gb.a>> f;

    /* renamed from: g, reason: collision with root package name */
    public static final h.e<p, Boolean> f8415g;

    /* renamed from: h, reason: collision with root package name */
    public static final h.e<r, List<gb.a>> f8416h;

    /* renamed from: i, reason: collision with root package name */
    public static final h.e<gb.b, Integer> f8417i;

    /* renamed from: j, reason: collision with root package name */
    public static final h.e<gb.b, List<m>> f8418j;

    /* renamed from: k, reason: collision with root package name */
    public static final h.e<gb.b, Integer> f8419k;

    /* renamed from: l, reason: collision with root package name */
    public static final h.e<gb.b, Integer> f8420l;

    /* renamed from: m, reason: collision with root package name */
    public static final h.e<k, Integer> f8421m;

    /* renamed from: n, reason: collision with root package name */
    public static final h.e<k, List<m>> f8422n;

    static {
        gb.c cVar = gb.c.f6252j;
        b bVar = b.f8433g;
        w.c cVar2 = w.f;
        f8410a = h.h(cVar, bVar, bVar, 100, cVar2, b.class);
        gb.h hVar = gb.h.f6325x;
        f8411b = h.h(hVar, bVar, bVar, 100, cVar2, b.class);
        w wVar = w.f10340c;
        f8412c = h.h(hVar, 0, null, 101, wVar, Integer.class);
        m mVar = m.f6390x;
        c cVar3 = c.f8443k;
        f8413d = h.h(mVar, cVar3, cVar3, 100, cVar2, c.class);
        f8414e = h.h(mVar, 0, null, 101, wVar, Integer.class);
        p pVar = p.w;
        gb.a aVar = gb.a.f6147g;
        f = h.a(pVar, aVar, 100, cVar2, gb.a.class);
        f8415g = h.h(pVar, Boolean.FALSE, null, 101, w.f10341d, Boolean.class);
        f8416h = h.a(r.f6526n, aVar, 100, cVar2, gb.a.class);
        gb.b bVar2 = gb.b.N;
        f8417i = h.h(bVar2, 0, null, 101, wVar, Integer.class);
        f8418j = h.a(bVar2, mVar, 102, cVar2, m.class);
        f8419k = h.h(bVar2, 0, null, 103, wVar, Integer.class);
        f8420l = h.h(bVar2, 0, null, 104, wVar, Integer.class);
        k kVar = k.f6362l;
        f8421m = h.h(kVar, 0, null, 101, wVar, Integer.class);
        f8422n = h.a(kVar, mVar, 102, cVar2, m.class);
    }

    /* renamed from: jb.a$a, reason: collision with other inner class name */
    public static final class C0150a extends h implements q {

        /* renamed from: g, reason: collision with root package name */
        public static final C0150a f8423g;

        /* renamed from: h, reason: collision with root package name */
        public static final C0151a f8424h = new C0151a();

        /* renamed from: a, reason: collision with root package name */
        public final mb.c f8425a;

        /* renamed from: b, reason: collision with root package name */
        public int f8426b;

        /* renamed from: c, reason: collision with root package name */
        public int f8427c;

        /* renamed from: d, reason: collision with root package name */
        public int f8428d;

        /* renamed from: e, reason: collision with root package name */
        public byte f8429e;
        public int f;

        /* renamed from: jb.a$a$a, reason: collision with other inner class name */
        public static class C0151a extends mb.b<C0150a> {
            @Override // mb.r
            public final Object a(mb.d dVar, f fVar) throws j {
                return new C0150a(dVar);
            }
        }

        /* renamed from: jb.a$a$b */
        public static final class b extends h.a<C0150a, b> implements q {

            /* renamed from: b, reason: collision with root package name */
            public int f8430b;

            /* renamed from: c, reason: collision with root package name */
            public int f8431c;

            /* renamed from: d, reason: collision with root package name */
            public int f8432d;

            @Override // mb.a.AbstractC0188a, mb.p.a
            public final /* bridge */ /* synthetic */ p.a E(mb.d dVar, f fVar) throws Throwable {
                n(dVar, fVar);
                return this;
            }

            @Override // mb.p.a
            public final mb.p build() {
                C0150a c0150aK = k();
                if (c0150aK.b()) {
                    return c0150aK;
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
            public final /* bridge */ /* synthetic */ a.AbstractC0188a E(mb.d dVar, f fVar) throws Throwable {
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
            public final /* bridge */ /* synthetic */ h.a j(h hVar) {
                l((C0150a) hVar);
                return this;
            }

            public final C0150a k() {
                C0150a c0150a = new C0150a(this);
                int r12 = this.f8430b;
                int r32 = (r12 & 1) != 1 ? 0 : 1;
                c0150a.f8427c = this.f8431c;
                if ((r12 & 2) == 2) {
                    r32 |= 2;
                }
                c0150a.f8428d = this.f8432d;
                c0150a.f8426b = r32;
                return c0150a;
            }

            public final void l(C0150a c0150a) {
                if (c0150a == C0150a.f8423g) {
                    return;
                }
                int r02 = c0150a.f8426b;
                if ((r02 & 1) == 1) {
                    int r12 = c0150a.f8427c;
                    this.f8430b |= 1;
                    this.f8431c = r12;
                }
                if ((r02 & 2) == 2) {
                    int r03 = c0150a.f8428d;
                    this.f8430b = 2 | this.f8430b;
                    this.f8432d = r03;
                }
                this.f10281a = this.f10281a.l(c0150a.f8425a);
            }

            /* JADX WARN: Removed duplicated region for block: B:15:0x001c  */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final void n(mb.d r1, mb.f r2) throws java.lang.Throwable {
                /*
                    r0 = this;
                    jb.a$a$a r2 = jb.a.C0150a.f8424h     // Catch: mb.j -> Le java.lang.Throwable -> L10
                    r2.getClass()     // Catch: mb.j -> Le java.lang.Throwable -> L10
                    jb.a$a r2 = new jb.a$a     // Catch: mb.j -> Le java.lang.Throwable -> L10
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
                    jb.a$a r2 = (jb.a.C0150a) r2     // Catch: java.lang.Throwable -> L10
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
                throw new UnsupportedOperationException("Method not decompiled: jb.a.C0150a.b.n(mb.d, mb.f):void");
            }
        }

        static {
            C0150a c0150a = new C0150a();
            f8423g = c0150a;
            c0150a.f8427c = 0;
            c0150a.f8428d = 0;
        }

        public C0150a() {
            this.f8429e = (byte) -1;
            this.f = -1;
            this.f8425a = mb.c.f10255a;
        }

        public C0150a(mb.d dVar) throws j {
            this.f8429e = (byte) -1;
            this.f = -1;
            boolean z10 = false;
            this.f8427c = 0;
            this.f8428d = 0;
            c.b bVar = new c.b();
            e eVarJ = e.j(bVar, 1);
            while (!z10) {
                try {
                    try {
                        int r42 = dVar.n();
                        if (r42 != 0) {
                            if (r42 == 8) {
                                this.f8426b |= 1;
                                this.f8427c = dVar.k();
                            } else if (r42 == 16) {
                                this.f8426b |= 2;
                                this.f8428d = dVar.k();
                            } else if (!dVar.q(r42, eVarJ)) {
                            }
                        }
                        z10 = true;
                    } catch (Throwable th2) {
                        try {
                            eVarJ.i();
                        } catch (IOException unused) {
                        } catch (Throwable th3) {
                            this.f8425a = bVar.c();
                            throw th3;
                        }
                        this.f8425a = bVar.c();
                        throw th2;
                    }
                } catch (j e10) {
                    e10.f10298a = this;
                    throw e10;
                } catch (IOException e11) {
                    j jVar = new j(e11.getMessage());
                    jVar.f10298a = this;
                    throw jVar;
                }
            }
            try {
                eVarJ.i();
            } catch (IOException unused2) {
            } catch (Throwable th4) {
                this.f8425a = bVar.c();
                throw th4;
            }
            this.f8425a = bVar.c();
        }

        @Override // mb.q
        public final boolean b() {
            byte b10 = this.f8429e;
            if (b10 == 1) {
                return true;
            }
            if (b10 == 0) {
                return false;
            }
            this.f8429e = (byte) 1;
            return true;
        }

        @Override // mb.p
        public final int c() {
            int r02 = this.f;
            if (r02 != -1) {
                return r02;
            }
            int r22 = (this.f8426b & 1) == 1 ? 0 + e.b(1, this.f8427c) : 0;
            if ((this.f8426b & 2) == 2) {
                r22 += e.b(2, this.f8428d);
            }
            int size = this.f8425a.size() + r22;
            this.f = size;
            return size;
        }

        @Override // mb.p
        public final void d(e eVar) throws IOException {
            c();
            if ((this.f8426b & 1) == 1) {
                eVar.m(1, this.f8427c);
            }
            if ((this.f8426b & 2) == 2) {
                eVar.m(2, this.f8428d);
            }
            eVar.r(this.f8425a);
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

        public C0150a(h.a aVar) {
            super(0);
            this.f8429e = (byte) -1;
            this.f = -1;
            this.f8425a = aVar.f10281a;
        }
    }

    public static final class b extends h implements q {

        /* renamed from: g, reason: collision with root package name */
        public static final b f8433g;

        /* renamed from: h, reason: collision with root package name */
        public static final C0152a f8434h = new C0152a();

        /* renamed from: a, reason: collision with root package name */
        public final mb.c f8435a;

        /* renamed from: b, reason: collision with root package name */
        public int f8436b;

        /* renamed from: c, reason: collision with root package name */
        public int f8437c;

        /* renamed from: d, reason: collision with root package name */
        public int f8438d;

        /* renamed from: e, reason: collision with root package name */
        public byte f8439e;
        public int f;

        /* renamed from: jb.a$b$a, reason: collision with other inner class name */
        public static class C0152a extends mb.b<b> {
            @Override // mb.r
            public final Object a(mb.d dVar, f fVar) throws j {
                return new b(dVar);
            }
        }

        /* renamed from: jb.a$b$b, reason: collision with other inner class name */
        public static final class C0153b extends h.a<b, C0153b> implements q {

            /* renamed from: b, reason: collision with root package name */
            public int f8440b;

            /* renamed from: c, reason: collision with root package name */
            public int f8441c;

            /* renamed from: d, reason: collision with root package name */
            public int f8442d;

            @Override // mb.a.AbstractC0188a, mb.p.a
            public final /* bridge */ /* synthetic */ p.a E(mb.d dVar, f fVar) throws Throwable {
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
                C0153b c0153b = new C0153b();
                c0153b.l(k());
                return c0153b;
            }

            @Override // mb.a.AbstractC0188a
            /* renamed from: h */
            public final /* bridge */ /* synthetic */ a.AbstractC0188a E(mb.d dVar, f fVar) throws Throwable {
                n(dVar, fVar);
                return this;
            }

            @Override // mb.h.a
            /* renamed from: i */
            public final h.a clone() {
                C0153b c0153b = new C0153b();
                c0153b.l(k());
                return c0153b;
            }

            @Override // mb.h.a
            public final /* bridge */ /* synthetic */ h.a j(h hVar) {
                l((b) hVar);
                return this;
            }

            public final b k() {
                b bVar = new b(this);
                int r12 = this.f8440b;
                int r32 = (r12 & 1) != 1 ? 0 : 1;
                bVar.f8437c = this.f8441c;
                if ((r12 & 2) == 2) {
                    r32 |= 2;
                }
                bVar.f8438d = this.f8442d;
                bVar.f8436b = r32;
                return bVar;
            }

            public final void l(b bVar) {
                if (bVar == b.f8433g) {
                    return;
                }
                int r02 = bVar.f8436b;
                if ((r02 & 1) == 1) {
                    int r12 = bVar.f8437c;
                    this.f8440b |= 1;
                    this.f8441c = r12;
                }
                if ((r02 & 2) == 2) {
                    int r03 = bVar.f8438d;
                    this.f8440b = 2 | this.f8440b;
                    this.f8442d = r03;
                }
                this.f10281a = this.f10281a.l(bVar.f8435a);
            }

            /* JADX WARN: Removed duplicated region for block: B:15:0x001c  */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final void n(mb.d r1, mb.f r2) throws java.lang.Throwable {
                /*
                    r0 = this;
                    jb.a$b$a r2 = jb.a.b.f8434h     // Catch: mb.j -> Le java.lang.Throwable -> L10
                    r2.getClass()     // Catch: mb.j -> Le java.lang.Throwable -> L10
                    jb.a$b r2 = new jb.a$b     // Catch: mb.j -> Le java.lang.Throwable -> L10
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
                    jb.a$b r2 = (jb.a.b) r2     // Catch: java.lang.Throwable -> L10
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
                throw new UnsupportedOperationException("Method not decompiled: jb.a.b.C0153b.n(mb.d, mb.f):void");
            }
        }

        static {
            b bVar = new b();
            f8433g = bVar;
            bVar.f8437c = 0;
            bVar.f8438d = 0;
        }

        public b() {
            this.f8439e = (byte) -1;
            this.f = -1;
            this.f8435a = mb.c.f10255a;
        }

        public b(mb.d dVar) throws j {
            this.f8439e = (byte) -1;
            this.f = -1;
            boolean z10 = false;
            this.f8437c = 0;
            this.f8438d = 0;
            c.b bVar = new c.b();
            e eVarJ = e.j(bVar, 1);
            while (!z10) {
                try {
                    try {
                        int r42 = dVar.n();
                        if (r42 != 0) {
                            if (r42 == 8) {
                                this.f8436b |= 1;
                                this.f8437c = dVar.k();
                            } else if (r42 == 16) {
                                this.f8436b |= 2;
                                this.f8438d = dVar.k();
                            } else if (!dVar.q(r42, eVarJ)) {
                            }
                        }
                        z10 = true;
                    } catch (Throwable th2) {
                        try {
                            eVarJ.i();
                        } catch (IOException unused) {
                        } catch (Throwable th3) {
                            this.f8435a = bVar.c();
                            throw th3;
                        }
                        this.f8435a = bVar.c();
                        throw th2;
                    }
                } catch (j e10) {
                    e10.f10298a = this;
                    throw e10;
                } catch (IOException e11) {
                    j jVar = new j(e11.getMessage());
                    jVar.f10298a = this;
                    throw jVar;
                }
            }
            try {
                eVarJ.i();
            } catch (IOException unused2) {
            } catch (Throwable th4) {
                this.f8435a = bVar.c();
                throw th4;
            }
            this.f8435a = bVar.c();
        }

        public static C0153b i(b bVar) {
            C0153b c0153b = new C0153b();
            c0153b.l(bVar);
            return c0153b;
        }

        @Override // mb.q
        public final boolean b() {
            byte b10 = this.f8439e;
            if (b10 == 1) {
                return true;
            }
            if (b10 == 0) {
                return false;
            }
            this.f8439e = (byte) 1;
            return true;
        }

        @Override // mb.p
        public final int c() {
            int r02 = this.f;
            if (r02 != -1) {
                return r02;
            }
            int r22 = (this.f8436b & 1) == 1 ? 0 + e.b(1, this.f8437c) : 0;
            if ((this.f8436b & 2) == 2) {
                r22 += e.b(2, this.f8438d);
            }
            int size = this.f8435a.size() + r22;
            this.f = size;
            return size;
        }

        @Override // mb.p
        public final void d(e eVar) throws IOException {
            c();
            if ((this.f8436b & 1) == 1) {
                eVar.m(1, this.f8437c);
            }
            if ((this.f8436b & 2) == 2) {
                eVar.m(2, this.f8438d);
            }
            eVar.r(this.f8435a);
        }

        @Override // mb.p
        public final p.a f() {
            return i(this);
        }

        @Override // mb.p
        public final p.a g() {
            return new C0153b();
        }

        public b(h.a aVar) {
            super(0);
            this.f8439e = (byte) -1;
            this.f = -1;
            this.f8435a = aVar.f10281a;
        }
    }

    public static final class d extends h implements q {

        /* renamed from: g, reason: collision with root package name */
        public static final d f8458g;

        /* renamed from: h, reason: collision with root package name */
        public static final C0155a f8459h = new C0155a();

        /* renamed from: a, reason: collision with root package name */
        public final mb.c f8460a;

        /* renamed from: b, reason: collision with root package name */
        public List<c> f8461b;

        /* renamed from: c, reason: collision with root package name */
        public List<Integer> f8462c;

        /* renamed from: d, reason: collision with root package name */
        public int f8463d;

        /* renamed from: e, reason: collision with root package name */
        public byte f8464e;
        public int f;

        /* renamed from: jb.a$d$a, reason: collision with other inner class name */
        public static class C0155a extends mb.b<d> {
            @Override // mb.r
            public final Object a(mb.d dVar, f fVar) throws j {
                return new d(dVar, fVar);
            }
        }

        public static final class b extends h.a<d, b> implements q {

            /* renamed from: b, reason: collision with root package name */
            public int f8465b;

            /* renamed from: c, reason: collision with root package name */
            public List<c> f8466c = Collections.emptyList();

            /* renamed from: d, reason: collision with root package name */
            public List<Integer> f8467d = Collections.emptyList();

            @Override // mb.a.AbstractC0188a, mb.p.a
            public final /* bridge */ /* synthetic */ p.a E(mb.d dVar, f fVar) throws Throwable {
                n(dVar, fVar);
                return this;
            }

            @Override // mb.p.a
            public final mb.p build() {
                d dVarK = k();
                if (dVarK.b()) {
                    return dVarK;
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
            public final /* bridge */ /* synthetic */ a.AbstractC0188a E(mb.d dVar, f fVar) throws Throwable {
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
            public final /* bridge */ /* synthetic */ h.a j(h hVar) {
                l((d) hVar);
                return this;
            }

            public final d k() {
                d dVar = new d(this);
                if ((this.f8465b & 1) == 1) {
                    this.f8466c = Collections.unmodifiableList(this.f8466c);
                    this.f8465b &= -2;
                }
                dVar.f8461b = this.f8466c;
                if ((this.f8465b & 2) == 2) {
                    this.f8467d = Collections.unmodifiableList(this.f8467d);
                    this.f8465b &= -3;
                }
                dVar.f8462c = this.f8467d;
                return dVar;
            }

            public final void l(d dVar) {
                if (dVar == d.f8458g) {
                    return;
                }
                if (!dVar.f8461b.isEmpty()) {
                    if (this.f8466c.isEmpty()) {
                        this.f8466c = dVar.f8461b;
                        this.f8465b &= -2;
                    } else {
                        if ((this.f8465b & 1) != 1) {
                            this.f8466c = new ArrayList(this.f8466c);
                            this.f8465b |= 1;
                        }
                        this.f8466c.addAll(dVar.f8461b);
                    }
                }
                if (!dVar.f8462c.isEmpty()) {
                    if (this.f8467d.isEmpty()) {
                        this.f8467d = dVar.f8462c;
                        this.f8465b &= -3;
                    } else {
                        if ((this.f8465b & 2) != 2) {
                            this.f8467d = new ArrayList(this.f8467d);
                            this.f8465b |= 2;
                        }
                        this.f8467d.addAll(dVar.f8462c);
                    }
                }
                this.f10281a = this.f10281a.l(dVar.f8460a);
            }

            /* JADX WARN: Removed duplicated region for block: B:15:0x001c  */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final void n(mb.d r2, mb.f r3) throws java.lang.Throwable {
                /*
                    r1 = this;
                    jb.a$d$a r0 = jb.a.d.f8459h     // Catch: mb.j -> Le java.lang.Throwable -> L10
                    r0.getClass()     // Catch: mb.j -> Le java.lang.Throwable -> L10
                    jb.a$d r0 = new jb.a$d     // Catch: mb.j -> Le java.lang.Throwable -> L10
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
                    jb.a$d r3 = (jb.a.d) r3     // Catch: java.lang.Throwable -> L10
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
                throw new UnsupportedOperationException("Method not decompiled: jb.a.d.b.n(mb.d, mb.f):void");
            }
        }

        static {
            d dVar = new d();
            f8458g = dVar;
            dVar.f8461b = Collections.emptyList();
            dVar.f8462c = Collections.emptyList();
        }

        public d() {
            this.f8463d = -1;
            this.f8464e = (byte) -1;
            this.f = -1;
            this.f8460a = mb.c.f10255a;
        }

        public d(mb.d dVar, f fVar) throws j {
            List list;
            Object objG;
            this.f8463d = -1;
            this.f8464e = (byte) -1;
            this.f = -1;
            this.f8461b = Collections.emptyList();
            this.f8462c = Collections.emptyList();
            c.b bVar = new c.b();
            e eVarJ = e.j(bVar, 1);
            boolean z10 = false;
            int r42 = 0;
            while (!z10) {
                try {
                    try {
                        try {
                            int r6 = dVar.n();
                            if (r6 != 0) {
                                if (r6 == 10) {
                                    if ((r42 & 1) != 1) {
                                        this.f8461b = new ArrayList();
                                        r42 |= 1;
                                    }
                                    list = this.f8461b;
                                    objG = dVar.g(c.f8469p, fVar);
                                } else if (r6 == 40) {
                                    if ((r42 & 2) != 2) {
                                        this.f8462c = new ArrayList();
                                        r42 |= 2;
                                    }
                                    list = this.f8462c;
                                    objG = Integer.valueOf(dVar.k());
                                } else if (r6 == 42) {
                                    int r62 = dVar.d(dVar.k());
                                    if ((r42 & 2) != 2 && dVar.b() > 0) {
                                        this.f8462c = new ArrayList();
                                        r42 |= 2;
                                    }
                                    while (dVar.b() > 0) {
                                        this.f8462c.add(Integer.valueOf(dVar.k()));
                                    }
                                    dVar.c(r62);
                                } else if (!dVar.q(r6, eVarJ)) {
                                }
                                list.add(objG);
                            }
                            z10 = true;
                        } catch (IOException e10) {
                            j jVar = new j(e10.getMessage());
                            jVar.f10298a = this;
                            throw jVar;
                        }
                    } catch (j e11) {
                        e11.f10298a = this;
                        throw e11;
                    }
                } catch (Throwable th2) {
                    if ((r42 & 1) == 1) {
                        this.f8461b = Collections.unmodifiableList(this.f8461b);
                    }
                    if ((r42 & 2) == 2) {
                        this.f8462c = Collections.unmodifiableList(this.f8462c);
                    }
                    try {
                        eVarJ.i();
                    } catch (IOException unused) {
                    } catch (Throwable th3) {
                        this.f8460a = bVar.c();
                        throw th3;
                    }
                    this.f8460a = bVar.c();
                    throw th2;
                }
            }
            if ((r42 & 1) == 1) {
                this.f8461b = Collections.unmodifiableList(this.f8461b);
            }
            if ((r42 & 2) == 2) {
                this.f8462c = Collections.unmodifiableList(this.f8462c);
            }
            try {
                eVarJ.i();
            } catch (IOException unused2) {
            } catch (Throwable th4) {
                this.f8460a = bVar.c();
                throw th4;
            }
            this.f8460a = bVar.c();
        }

        @Override // mb.q
        public final boolean b() {
            byte b10 = this.f8464e;
            if (b10 == 1) {
                return true;
            }
            if (b10 == 0) {
                return false;
            }
            this.f8464e = (byte) 1;
            return true;
        }

        @Override // mb.p
        public final int c() {
            int r02 = this.f;
            if (r02 != -1) {
                return r02;
            }
            int r22 = 0;
            for (int r12 = 0; r12 < this.f8461b.size(); r12++) {
                r22 += e.d(1, this.f8461b.get(r12));
            }
            int r13 = 0;
            for (int r03 = 0; r03 < this.f8462c.size(); r03++) {
                r13 += e.c(this.f8462c.get(r03).intValue());
            }
            int r23 = r22 + r13;
            if (!this.f8462c.isEmpty()) {
                r23 = r23 + 1 + e.c(r13);
            }
            this.f8463d = r13;
            int size = this.f8460a.size() + r23;
            this.f = size;
            return size;
        }

        @Override // mb.p
        public final void d(e eVar) throws IOException {
            c();
            for (int r12 = 0; r12 < this.f8461b.size(); r12++) {
                eVar.o(1, this.f8461b.get(r12));
            }
            if (this.f8462c.size() > 0) {
                eVar.v(42);
                eVar.v(this.f8463d);
            }
            for (int r02 = 0; r02 < this.f8462c.size(); r02++) {
                eVar.n(this.f8462c.get(r02).intValue());
            }
            eVar.r(this.f8460a);
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

        public d(h.a aVar) {
            super(0);
            this.f8463d = -1;
            this.f8464e = (byte) -1;
            this.f = -1;
            this.f8460a = aVar.f10281a;
        }

        public static final class c extends h implements q {

            /* renamed from: n, reason: collision with root package name */
            public static final c f8468n;

            /* renamed from: p, reason: collision with root package name */
            public static final C0156a f8469p = new C0156a();

            /* renamed from: a, reason: collision with root package name */
            public final mb.c f8470a;

            /* renamed from: b, reason: collision with root package name */
            public int f8471b;

            /* renamed from: c, reason: collision with root package name */
            public int f8472c;

            /* renamed from: d, reason: collision with root package name */
            public int f8473d;

            /* renamed from: e, reason: collision with root package name */
            public Object f8474e;
            public EnumC0157c f;

            /* renamed from: g, reason: collision with root package name */
            public List<Integer> f8475g;

            /* renamed from: h, reason: collision with root package name */
            public int f8476h;

            /* renamed from: j, reason: collision with root package name */
            public List<Integer> f8477j;

            /* renamed from: k, reason: collision with root package name */
            public int f8478k;

            /* renamed from: l, reason: collision with root package name */
            public byte f8479l;

            /* renamed from: m, reason: collision with root package name */
            public int f8480m;

            /* renamed from: jb.a$d$c$a, reason: collision with other inner class name */
            public static class C0156a extends mb.b<c> {
                @Override // mb.r
                public final Object a(mb.d dVar, f fVar) throws j {
                    return new c(dVar);
                }
            }

            public static final class b extends h.a<c, b> implements q {

                /* renamed from: b, reason: collision with root package name */
                public int f8481b;

                /* renamed from: d, reason: collision with root package name */
                public int f8483d;

                /* renamed from: c, reason: collision with root package name */
                public int f8482c = 1;

                /* renamed from: e, reason: collision with root package name */
                public Object f8484e = "";
                public EnumC0157c f = EnumC0157c.NONE;

                /* renamed from: g, reason: collision with root package name */
                public List<Integer> f8485g = Collections.emptyList();

                /* renamed from: h, reason: collision with root package name */
                public List<Integer> f8486h = Collections.emptyList();

                @Override // mb.a.AbstractC0188a, mb.p.a
                public final /* bridge */ /* synthetic */ p.a E(mb.d dVar, f fVar) throws Throwable {
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
                public final /* bridge */ /* synthetic */ a.AbstractC0188a E(mb.d dVar, f fVar) throws Throwable {
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
                public final /* bridge */ /* synthetic */ h.a j(h hVar) {
                    l((c) hVar);
                    return this;
                }

                public final c k() {
                    c cVar = new c(this);
                    int r12 = this.f8481b;
                    int r32 = (r12 & 1) != 1 ? 0 : 1;
                    cVar.f8472c = this.f8482c;
                    if ((r12 & 2) == 2) {
                        r32 |= 2;
                    }
                    cVar.f8473d = this.f8483d;
                    if ((r12 & 4) == 4) {
                        r32 |= 4;
                    }
                    cVar.f8474e = this.f8484e;
                    if ((r12 & 8) == 8) {
                        r32 |= 8;
                    }
                    cVar.f = this.f;
                    if ((r12 & 16) == 16) {
                        this.f8485g = Collections.unmodifiableList(this.f8485g);
                        this.f8481b &= -17;
                    }
                    cVar.f8475g = this.f8485g;
                    if ((this.f8481b & 32) == 32) {
                        this.f8486h = Collections.unmodifiableList(this.f8486h);
                        this.f8481b &= -33;
                    }
                    cVar.f8477j = this.f8486h;
                    cVar.f8471b = r32;
                    return cVar;
                }

                public final void l(c cVar) {
                    if (cVar == c.f8468n) {
                        return;
                    }
                    int r02 = cVar.f8471b;
                    if ((r02 & 1) == 1) {
                        int r12 = cVar.f8472c;
                        this.f8481b |= 1;
                        this.f8482c = r12;
                    }
                    if ((r02 & 2) == 2) {
                        int r13 = cVar.f8473d;
                        this.f8481b = 2 | this.f8481b;
                        this.f8483d = r13;
                    }
                    if ((r02 & 4) == 4) {
                        this.f8481b |= 4;
                        this.f8484e = cVar.f8474e;
                    }
                    if ((r02 & 8) == 8) {
                        EnumC0157c enumC0157c = cVar.f;
                        enumC0157c.getClass();
                        this.f8481b = 8 | this.f8481b;
                        this.f = enumC0157c;
                    }
                    if (!cVar.f8475g.isEmpty()) {
                        if (this.f8485g.isEmpty()) {
                            this.f8485g = cVar.f8475g;
                            this.f8481b &= -17;
                        } else {
                            if ((this.f8481b & 16) != 16) {
                                this.f8485g = new ArrayList(this.f8485g);
                                this.f8481b |= 16;
                            }
                            this.f8485g.addAll(cVar.f8475g);
                        }
                    }
                    if (!cVar.f8477j.isEmpty()) {
                        if (this.f8486h.isEmpty()) {
                            this.f8486h = cVar.f8477j;
                            this.f8481b &= -33;
                        } else {
                            if ((this.f8481b & 32) != 32) {
                                this.f8486h = new ArrayList(this.f8486h);
                                this.f8481b |= 32;
                            }
                            this.f8486h.addAll(cVar.f8477j);
                        }
                    }
                    this.f10281a = this.f10281a.l(cVar.f8470a);
                }

                /* JADX WARN: Removed duplicated region for block: B:15:0x001c  */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public final void n(mb.d r1, mb.f r2) throws java.lang.Throwable {
                    /*
                        r0 = this;
                        jb.a$d$c$a r2 = jb.a.d.c.f8469p     // Catch: mb.j -> Le java.lang.Throwable -> L10
                        r2.getClass()     // Catch: mb.j -> Le java.lang.Throwable -> L10
                        jb.a$d$c r2 = new jb.a$d$c     // Catch: mb.j -> Le java.lang.Throwable -> L10
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
                        jb.a$d$c r2 = (jb.a.d.c) r2     // Catch: java.lang.Throwable -> L10
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
                    throw new UnsupportedOperationException("Method not decompiled: jb.a.d.c.b.n(mb.d, mb.f):void");
                }
            }

            /* renamed from: jb.a$d$c$c, reason: collision with other inner class name */
            public enum EnumC0157c implements i.a {
                NONE(0),
                INTERNAL_TO_CLASS_ID(1),
                DESC_TO_CLASS_ID(2);


                /* renamed from: a, reason: collision with root package name */
                public final int f8491a;

                EnumC0157c(int r32) {
                    this.f8491a = r32;
                }

                @Override // mb.i.a
                public final int f() {
                    return this.f8491a;
                }
            }

            static {
                c cVar = new c();
                f8468n = cVar;
                cVar.f8472c = 1;
                cVar.f8473d = 0;
                cVar.f8474e = "";
                cVar.f = EnumC0157c.NONE;
                cVar.f8475g = Collections.emptyList();
                cVar.f8477j = Collections.emptyList();
            }

            public c() {
                this.f8476h = -1;
                this.f8478k = -1;
                this.f8479l = (byte) -1;
                this.f8480m = -1;
                this.f8470a = mb.c.f10255a;
            }

            public c(mb.d dVar) throws j {
                List<Integer> list;
                int r82;
                this.f8476h = -1;
                this.f8478k = -1;
                this.f8479l = (byte) -1;
                this.f8480m = -1;
                this.f8472c = 1;
                boolean z10 = false;
                this.f8473d = 0;
                this.f8474e = "";
                EnumC0157c enumC0157c = EnumC0157c.NONE;
                this.f = enumC0157c;
                this.f8475g = Collections.emptyList();
                this.f8477j = Collections.emptyList();
                c.b bVar = new c.b();
                e eVarJ = e.j(bVar, 1);
                int r52 = 0;
                while (!z10) {
                    try {
                        try {
                            int r83 = dVar.n();
                            if (r83 != 0) {
                                if (r83 == 8) {
                                    this.f8471b |= 1;
                                    this.f8472c = dVar.k();
                                } else if (r83 == 16) {
                                    this.f8471b |= 2;
                                    this.f8473d = dVar.k();
                                } else if (r83 != 24) {
                                    if (r83 != 32) {
                                        if (r83 == 34) {
                                            r82 = dVar.d(dVar.k());
                                            if ((r52 & 16) != 16 && dVar.b() > 0) {
                                                this.f8475g = new ArrayList();
                                                r52 |= 16;
                                            }
                                            while (dVar.b() > 0) {
                                                this.f8475g.add(Integer.valueOf(dVar.k()));
                                            }
                                        } else if (r83 == 40) {
                                            if ((r52 & 32) != 32) {
                                                this.f8477j = new ArrayList();
                                                r52 |= 32;
                                            }
                                            list = this.f8477j;
                                        } else if (r83 == 42) {
                                            r82 = dVar.d(dVar.k());
                                            if ((r52 & 32) != 32 && dVar.b() > 0) {
                                                this.f8477j = new ArrayList();
                                                r52 |= 32;
                                            }
                                            while (dVar.b() > 0) {
                                                this.f8477j.add(Integer.valueOf(dVar.k()));
                                            }
                                        } else if (r83 == 50) {
                                            o oVarE = dVar.e();
                                            this.f8471b |= 4;
                                            this.f8474e = oVarE;
                                        } else if (!dVar.q(r83, eVarJ)) {
                                        }
                                        dVar.c(r82);
                                    } else {
                                        if ((r52 & 16) != 16) {
                                            this.f8475g = new ArrayList();
                                            r52 |= 16;
                                        }
                                        list = this.f8475g;
                                    }
                                    list.add(Integer.valueOf(dVar.k()));
                                } else {
                                    int r11 = dVar.k();
                                    EnumC0157c enumC0157c2 = r11 != 0 ? r11 != 1 ? r11 != 2 ? null : EnumC0157c.DESC_TO_CLASS_ID : EnumC0157c.INTERNAL_TO_CLASS_ID : enumC0157c;
                                    if (enumC0157c2 == null) {
                                        eVarJ.v(r83);
                                        eVarJ.v(r11);
                                    } else {
                                        this.f8471b |= 8;
                                        this.f = enumC0157c2;
                                    }
                                }
                            }
                            z10 = true;
                        } catch (Throwable th2) {
                            if ((r52 & 16) == 16) {
                                this.f8475g = Collections.unmodifiableList(this.f8475g);
                            }
                            if ((r52 & 32) == 32) {
                                this.f8477j = Collections.unmodifiableList(this.f8477j);
                            }
                            try {
                                eVarJ.i();
                            } catch (IOException unused) {
                            } catch (Throwable th3) {
                                this.f8470a = bVar.c();
                                throw th3;
                            }
                            this.f8470a = bVar.c();
                            throw th2;
                        }
                    } catch (j e10) {
                        e10.f10298a = this;
                        throw e10;
                    } catch (IOException e11) {
                        j jVar = new j(e11.getMessage());
                        jVar.f10298a = this;
                        throw jVar;
                    }
                }
                if ((r52 & 16) == 16) {
                    this.f8475g = Collections.unmodifiableList(this.f8475g);
                }
                if ((r52 & 32) == 32) {
                    this.f8477j = Collections.unmodifiableList(this.f8477j);
                }
                try {
                    eVarJ.i();
                } catch (IOException unused2) {
                } catch (Throwable th4) {
                    this.f8470a = bVar.c();
                    throw th4;
                }
                this.f8470a = bVar.c();
            }

            @Override // mb.q
            public final boolean b() {
                byte b10 = this.f8479l;
                if (b10 == 1) {
                    return true;
                }
                if (b10 == 0) {
                    return false;
                }
                this.f8479l = (byte) 1;
                return true;
            }

            @Override // mb.p
            public final int c() {
                mb.c oVar;
                int r02 = this.f8480m;
                if (r02 != -1) {
                    return r02;
                }
                int r03 = (this.f8471b & 1) == 1 ? e.b(1, this.f8472c) + 0 : 0;
                if ((this.f8471b & 2) == 2) {
                    r03 += e.b(2, this.f8473d);
                }
                if ((this.f8471b & 8) == 8) {
                    r03 += e.a(3, this.f.f8491a);
                }
                int r32 = 0;
                for (int r12 = 0; r12 < this.f8475g.size(); r12++) {
                    r32 += e.c(this.f8475g.get(r12).intValue());
                }
                int r04 = r03 + r32;
                if (!this.f8475g.isEmpty()) {
                    r04 = r04 + 1 + e.c(r32);
                }
                this.f8476h = r32;
                int r13 = 0;
                for (int r22 = 0; r22 < this.f8477j.size(); r22++) {
                    r13 += e.c(this.f8477j.get(r22).intValue());
                }
                int size = r04 + r13;
                if (!this.f8477j.isEmpty()) {
                    size = size + 1 + e.c(r13);
                }
                this.f8478k = r13;
                if ((this.f8471b & 4) == 4) {
                    Object obj = this.f8474e;
                    if (obj instanceof String) {
                        try {
                            oVar = new o(((String) obj).getBytes("UTF-8"));
                            this.f8474e = oVar;
                        } catch (UnsupportedEncodingException e10) {
                            throw new RuntimeException("UTF-8 not supported?", e10);
                        }
                    } else {
                        oVar = (mb.c) obj;
                    }
                    size += oVar.size() + e.f(oVar.size()) + e.h(6);
                }
                int size2 = this.f8470a.size() + size;
                this.f8480m = size2;
                return size2;
            }

            @Override // mb.p
            public final void d(e eVar) throws IOException {
                mb.c oVar;
                c();
                if ((this.f8471b & 1) == 1) {
                    eVar.m(1, this.f8472c);
                }
                if ((this.f8471b & 2) == 2) {
                    eVar.m(2, this.f8473d);
                }
                if ((this.f8471b & 8) == 8) {
                    eVar.l(3, this.f.f8491a);
                }
                if (this.f8475g.size() > 0) {
                    eVar.v(34);
                    eVar.v(this.f8476h);
                }
                for (int r22 = 0; r22 < this.f8475g.size(); r22++) {
                    eVar.n(this.f8475g.get(r22).intValue());
                }
                if (this.f8477j.size() > 0) {
                    eVar.v(42);
                    eVar.v(this.f8478k);
                }
                for (int r02 = 0; r02 < this.f8477j.size(); r02++) {
                    eVar.n(this.f8477j.get(r02).intValue());
                }
                if ((this.f8471b & 4) == 4) {
                    Object obj = this.f8474e;
                    if (obj instanceof String) {
                        try {
                            oVar = new o(((String) obj).getBytes("UTF-8"));
                            this.f8474e = oVar;
                        } catch (UnsupportedEncodingException e10) {
                            throw new RuntimeException("UTF-8 not supported?", e10);
                        }
                    } else {
                        oVar = (mb.c) obj;
                    }
                    eVar.x(6, 2);
                    eVar.v(oVar.size());
                    eVar.r(oVar);
                }
                eVar.r(this.f8470a);
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
                this.f8476h = -1;
                this.f8478k = -1;
                this.f8479l = (byte) -1;
                this.f8480m = -1;
                this.f8470a = aVar.f10281a;
            }
        }
    }

    public static final class c extends h implements q {

        /* renamed from: k, reason: collision with root package name */
        public static final c f8443k;

        /* renamed from: l, reason: collision with root package name */
        public static final C0154a f8444l = new C0154a();

        /* renamed from: a, reason: collision with root package name */
        public final mb.c f8445a;

        /* renamed from: b, reason: collision with root package name */
        public int f8446b;

        /* renamed from: c, reason: collision with root package name */
        public C0150a f8447c;

        /* renamed from: d, reason: collision with root package name */
        public b f8448d;

        /* renamed from: e, reason: collision with root package name */
        public b f8449e;
        public b f;

        /* renamed from: g, reason: collision with root package name */
        public b f8450g;

        /* renamed from: h, reason: collision with root package name */
        public byte f8451h;

        /* renamed from: j, reason: collision with root package name */
        public int f8452j;

        /* renamed from: jb.a$c$a, reason: collision with other inner class name */
        public static class C0154a extends mb.b<c> {
            @Override // mb.r
            public final Object a(mb.d dVar, f fVar) throws j {
                return new c(dVar, fVar);
            }
        }

        public static final class b extends h.a<c, b> implements q {

            /* renamed from: b, reason: collision with root package name */
            public int f8453b;

            /* renamed from: c, reason: collision with root package name */
            public C0150a f8454c = C0150a.f8423g;

            /* renamed from: d, reason: collision with root package name */
            public b f8455d;

            /* renamed from: e, reason: collision with root package name */
            public b f8456e;
            public b f;

            /* renamed from: g, reason: collision with root package name */
            public b f8457g;

            public b() {
                b bVar = b.f8433g;
                this.f8455d = bVar;
                this.f8456e = bVar;
                this.f = bVar;
                this.f8457g = bVar;
            }

            @Override // mb.a.AbstractC0188a, mb.p.a
            public final /* bridge */ /* synthetic */ p.a E(mb.d dVar, f fVar) throws Throwable {
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
            public final /* bridge */ /* synthetic */ a.AbstractC0188a E(mb.d dVar, f fVar) throws Throwable {
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
            public final /* bridge */ /* synthetic */ h.a j(h hVar) {
                l((c) hVar);
                return this;
            }

            public final c k() {
                c cVar = new c(this);
                int r12 = this.f8453b;
                int r32 = (r12 & 1) != 1 ? 0 : 1;
                cVar.f8447c = this.f8454c;
                if ((r12 & 2) == 2) {
                    r32 |= 2;
                }
                cVar.f8448d = this.f8455d;
                if ((r12 & 4) == 4) {
                    r32 |= 4;
                }
                cVar.f8449e = this.f8456e;
                if ((r12 & 8) == 8) {
                    r32 |= 8;
                }
                cVar.f = this.f;
                if ((r12 & 16) == 16) {
                    r32 |= 16;
                }
                cVar.f8450g = this.f8457g;
                cVar.f8446b = r32;
                return cVar;
            }

            public final void l(c cVar) {
                b bVar;
                b bVar2;
                b bVar3;
                b bVar4;
                C0150a c0150a;
                if (cVar == c.f8443k) {
                    return;
                }
                if ((cVar.f8446b & 1) == 1) {
                    C0150a c0150aK = cVar.f8447c;
                    if ((this.f8453b & 1) == 1 && (c0150a = this.f8454c) != C0150a.f8423g) {
                        C0150a.b bVar5 = new C0150a.b();
                        bVar5.l(c0150a);
                        bVar5.l(c0150aK);
                        c0150aK = bVar5.k();
                    }
                    this.f8454c = c0150aK;
                    this.f8453b |= 1;
                }
                if ((cVar.f8446b & 2) == 2) {
                    b bVarK = cVar.f8448d;
                    if ((this.f8453b & 2) == 2 && (bVar4 = this.f8455d) != b.f8433g) {
                        b.C0153b c0153bI = b.i(bVar4);
                        c0153bI.l(bVarK);
                        bVarK = c0153bI.k();
                    }
                    this.f8455d = bVarK;
                    this.f8453b |= 2;
                }
                if ((cVar.f8446b & 4) == 4) {
                    b bVarK2 = cVar.f8449e;
                    if ((this.f8453b & 4) == 4 && (bVar3 = this.f8456e) != b.f8433g) {
                        b.C0153b c0153bI2 = b.i(bVar3);
                        c0153bI2.l(bVarK2);
                        bVarK2 = c0153bI2.k();
                    }
                    this.f8456e = bVarK2;
                    this.f8453b |= 4;
                }
                if ((cVar.f8446b & 8) == 8) {
                    b bVarK3 = cVar.f;
                    if ((this.f8453b & 8) == 8 && (bVar2 = this.f) != b.f8433g) {
                        b.C0153b c0153bI3 = b.i(bVar2);
                        c0153bI3.l(bVarK3);
                        bVarK3 = c0153bI3.k();
                    }
                    this.f = bVarK3;
                    this.f8453b |= 8;
                }
                if ((cVar.f8446b & 16) == 16) {
                    b bVarK4 = cVar.f8450g;
                    if ((this.f8453b & 16) == 16 && (bVar = this.f8457g) != b.f8433g) {
                        b.C0153b c0153bI4 = b.i(bVar);
                        c0153bI4.l(bVarK4);
                        bVarK4 = c0153bI4.k();
                    }
                    this.f8457g = bVarK4;
                    this.f8453b |= 16;
                }
                this.f10281a = this.f10281a.l(cVar.f8445a);
            }

            /* JADX WARN: Removed duplicated region for block: B:15:0x001c  */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final void n(mb.d r2, mb.f r3) throws java.lang.Throwable {
                /*
                    r1 = this;
                    jb.a$c$a r0 = jb.a.c.f8444l     // Catch: mb.j -> Le java.lang.Throwable -> L10
                    r0.getClass()     // Catch: mb.j -> Le java.lang.Throwable -> L10
                    jb.a$c r0 = new jb.a$c     // Catch: mb.j -> Le java.lang.Throwable -> L10
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
                    jb.a$c r3 = (jb.a.c) r3     // Catch: java.lang.Throwable -> L10
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
                throw new UnsupportedOperationException("Method not decompiled: jb.a.c.b.n(mb.d, mb.f):void");
            }
        }

        static {
            c cVar = new c();
            f8443k = cVar;
            cVar.f8447c = C0150a.f8423g;
            b bVar = b.f8433g;
            cVar.f8448d = bVar;
            cVar.f8449e = bVar;
            cVar.f = bVar;
            cVar.f8450g = bVar;
        }

        public c() {
            this.f8451h = (byte) -1;
            this.f8452j = -1;
            this.f8445a = mb.c.f10255a;
        }

        public c(mb.d dVar, f fVar) throws j {
            int r52;
            this.f8451h = (byte) -1;
            this.f8452j = -1;
            this.f8447c = C0150a.f8423g;
            b bVar = b.f8433g;
            this.f8448d = bVar;
            this.f8449e = bVar;
            this.f = bVar;
            this.f8450g = bVar;
            c.b bVar2 = new c.b();
            e eVarJ = e.j(bVar2, 1);
            boolean z10 = false;
            while (!z10) {
                try {
                    try {
                        int r42 = dVar.n();
                        if (r42 != 0) {
                            b.C0153b c0153bI = null;
                            C0150a.b bVar3 = null;
                            b.C0153b c0153bI2 = null;
                            b.C0153b c0153bI3 = null;
                            b.C0153b c0153bI4 = null;
                            if (r42 != 10) {
                                if (r42 == 18) {
                                    r52 = 2;
                                    if ((this.f8446b & 2) == 2) {
                                        b bVar4 = this.f8448d;
                                        bVar4.getClass();
                                        c0153bI = b.i(bVar4);
                                    }
                                    b bVar5 = (b) dVar.g(b.f8434h, fVar);
                                    this.f8448d = bVar5;
                                    if (c0153bI != null) {
                                        c0153bI.l(bVar5);
                                        this.f8448d = c0153bI.k();
                                    }
                                } else if (r42 == 26) {
                                    r52 = 4;
                                    if ((this.f8446b & 4) == 4) {
                                        b bVar6 = this.f8449e;
                                        bVar6.getClass();
                                        c0153bI4 = b.i(bVar6);
                                    }
                                    b bVar7 = (b) dVar.g(b.f8434h, fVar);
                                    this.f8449e = bVar7;
                                    if (c0153bI4 != null) {
                                        c0153bI4.l(bVar7);
                                        this.f8449e = c0153bI4.k();
                                    }
                                } else if (r42 == 34) {
                                    r52 = 8;
                                    if ((this.f8446b & 8) == 8) {
                                        b bVar8 = this.f;
                                        bVar8.getClass();
                                        c0153bI3 = b.i(bVar8);
                                    }
                                    b bVar9 = (b) dVar.g(b.f8434h, fVar);
                                    this.f = bVar9;
                                    if (c0153bI3 != null) {
                                        c0153bI3.l(bVar9);
                                        this.f = c0153bI3.k();
                                    }
                                } else if (r42 == 42) {
                                    r52 = 16;
                                    if ((this.f8446b & 16) == 16) {
                                        b bVar10 = this.f8450g;
                                        bVar10.getClass();
                                        c0153bI2 = b.i(bVar10);
                                    }
                                    b bVar11 = (b) dVar.g(b.f8434h, fVar);
                                    this.f8450g = bVar11;
                                    if (c0153bI2 != null) {
                                        c0153bI2.l(bVar11);
                                        this.f8450g = c0153bI2.k();
                                    }
                                } else if (!dVar.q(r42, eVarJ)) {
                                }
                                this.f8446b |= r52;
                            } else {
                                if ((this.f8446b & 1) == 1) {
                                    C0150a c0150a = this.f8447c;
                                    c0150a.getClass();
                                    bVar3 = new C0150a.b();
                                    bVar3.l(c0150a);
                                }
                                C0150a c0150a2 = (C0150a) dVar.g(C0150a.f8424h, fVar);
                                this.f8447c = c0150a2;
                                if (bVar3 != null) {
                                    bVar3.l(c0150a2);
                                    this.f8447c = bVar3.k();
                                }
                                this.f8446b |= 1;
                            }
                        }
                        z10 = true;
                    } catch (Throwable th2) {
                        try {
                            eVarJ.i();
                        } catch (IOException unused) {
                        } catch (Throwable th3) {
                            this.f8445a = bVar2.c();
                            throw th3;
                        }
                        this.f8445a = bVar2.c();
                        throw th2;
                    }
                } catch (j e10) {
                    e10.f10298a = this;
                    throw e10;
                } catch (IOException e11) {
                    j jVar = new j(e11.getMessage());
                    jVar.f10298a = this;
                    throw jVar;
                }
            }
            try {
                eVarJ.i();
            } catch (IOException unused2) {
            } catch (Throwable th4) {
                this.f8445a = bVar2.c();
                throw th4;
            }
            this.f8445a = bVar2.c();
        }

        @Override // mb.q
        public final boolean b() {
            byte b10 = this.f8451h;
            if (b10 == 1) {
                return true;
            }
            if (b10 == 0) {
                return false;
            }
            this.f8451h = (byte) 1;
            return true;
        }

        @Override // mb.p
        public final int c() {
            int r02 = this.f8452j;
            if (r02 != -1) {
                return r02;
            }
            int r22 = (this.f8446b & 1) == 1 ? 0 + e.d(1, this.f8447c) : 0;
            if ((this.f8446b & 2) == 2) {
                r22 += e.d(2, this.f8448d);
            }
            if ((this.f8446b & 4) == 4) {
                r22 += e.d(3, this.f8449e);
            }
            if ((this.f8446b & 8) == 8) {
                r22 += e.d(4, this.f);
            }
            if ((this.f8446b & 16) == 16) {
                r22 += e.d(5, this.f8450g);
            }
            int size = this.f8445a.size() + r22;
            this.f8452j = size;
            return size;
        }

        @Override // mb.p
        public final void d(e eVar) throws IOException {
            c();
            if ((this.f8446b & 1) == 1) {
                eVar.o(1, this.f8447c);
            }
            if ((this.f8446b & 2) == 2) {
                eVar.o(2, this.f8448d);
            }
            if ((this.f8446b & 4) == 4) {
                eVar.o(3, this.f8449e);
            }
            if ((this.f8446b & 8) == 8) {
                eVar.o(4, this.f);
            }
            if ((this.f8446b & 16) == 16) {
                eVar.o(5, this.f8450g);
            }
            eVar.r(this.f8445a);
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
            this.f8451h = (byte) -1;
            this.f8452j = -1;
            this.f8445a = aVar.f10281a;
        }
    }
}
