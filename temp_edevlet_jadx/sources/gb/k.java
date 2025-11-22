package gb;

import gb.s;
import gb.v;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import mb.a;
import mb.c;
import mb.h;
import mb.p;

/* loaded from: classes2.dex */
public final class k extends h.c<k> {

    /* renamed from: l, reason: collision with root package name */
    public static final k f6362l;

    /* renamed from: m, reason: collision with root package name */
    public static final a f6363m = new a();

    /* renamed from: b, reason: collision with root package name */
    public final mb.c f6364b;

    /* renamed from: c, reason: collision with root package name */
    public int f6365c;

    /* renamed from: d, reason: collision with root package name */
    public List<h> f6366d;

    /* renamed from: e, reason: collision with root package name */
    public List<m> f6367e;
    public List<q> f;

    /* renamed from: g, reason: collision with root package name */
    public s f6368g;

    /* renamed from: h, reason: collision with root package name */
    public v f6369h;

    /* renamed from: j, reason: collision with root package name */
    public byte f6370j;

    /* renamed from: k, reason: collision with root package name */
    public int f6371k;

    public static class a extends mb.b<k> {
        @Override // mb.r
        public final Object a(mb.d dVar, mb.f fVar) throws mb.j {
            return new k(dVar, fVar);
        }
    }

    public static final class b extends h.b<k, b> {

        /* renamed from: d, reason: collision with root package name */
        public int f6372d;

        /* renamed from: e, reason: collision with root package name */
        public List<h> f6373e = Collections.emptyList();
        public List<m> f = Collections.emptyList();

        /* renamed from: g, reason: collision with root package name */
        public List<q> f6374g = Collections.emptyList();

        /* renamed from: h, reason: collision with root package name */
        public s f6375h = s.f6549g;

        /* renamed from: j, reason: collision with root package name */
        public v f6376j = v.f6603e;

        @Override // mb.a.AbstractC0188a, mb.p.a
        public final /* bridge */ /* synthetic */ p.a E(mb.d dVar, mb.f fVar) throws Throwable {
            p(dVar, fVar);
            return this;
        }

        @Override // mb.p.a
        public final mb.p build() {
            k kVarL = l();
            if (kVarL.b()) {
                return kVarL;
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
            n((k) hVar);
            return this;
        }

        public final k l() {
            k kVar = new k(this);
            int r12 = this.f6372d;
            if ((r12 & 1) == 1) {
                this.f6373e = Collections.unmodifiableList(this.f6373e);
                this.f6372d &= -2;
            }
            kVar.f6366d = this.f6373e;
            if ((this.f6372d & 2) == 2) {
                this.f = Collections.unmodifiableList(this.f);
                this.f6372d &= -3;
            }
            kVar.f6367e = this.f;
            if ((this.f6372d & 4) == 4) {
                this.f6374g = Collections.unmodifiableList(this.f6374g);
                this.f6372d &= -5;
            }
            kVar.f = this.f6374g;
            int r32 = (r12 & 8) != 8 ? 0 : 1;
            kVar.f6368g = this.f6375h;
            if ((r12 & 16) == 16) {
                r32 |= 2;
            }
            kVar.f6369h = this.f6376j;
            kVar.f6365c = r32;
            return kVar;
        }

        public final void n(k kVar) {
            v vVar;
            s sVar;
            if (kVar == k.f6362l) {
                return;
            }
            if (!kVar.f6366d.isEmpty()) {
                if (this.f6373e.isEmpty()) {
                    this.f6373e = kVar.f6366d;
                    this.f6372d &= -2;
                } else {
                    if ((this.f6372d & 1) != 1) {
                        this.f6373e = new ArrayList(this.f6373e);
                        this.f6372d |= 1;
                    }
                    this.f6373e.addAll(kVar.f6366d);
                }
            }
            if (!kVar.f6367e.isEmpty()) {
                if (this.f.isEmpty()) {
                    this.f = kVar.f6367e;
                    this.f6372d &= -3;
                } else {
                    if ((this.f6372d & 2) != 2) {
                        this.f = new ArrayList(this.f);
                        this.f6372d |= 2;
                    }
                    this.f.addAll(kVar.f6367e);
                }
            }
            if (!kVar.f.isEmpty()) {
                if (this.f6374g.isEmpty()) {
                    this.f6374g = kVar.f;
                    this.f6372d &= -5;
                } else {
                    if ((this.f6372d & 4) != 4) {
                        this.f6374g = new ArrayList(this.f6374g);
                        this.f6372d |= 4;
                    }
                    this.f6374g.addAll(kVar.f);
                }
            }
            if ((kVar.f6365c & 1) == 1) {
                s sVarK = kVar.f6368g;
                if ((this.f6372d & 8) == 8 && (sVar = this.f6375h) != s.f6549g) {
                    s.b bVarI = s.i(sVar);
                    bVarI.l(sVarK);
                    sVarK = bVarI.k();
                }
                this.f6375h = sVarK;
                this.f6372d |= 8;
            }
            if ((kVar.f6365c & 2) == 2) {
                v vVarK = kVar.f6369h;
                if ((this.f6372d & 16) == 16 && (vVar = this.f6376j) != v.f6603e) {
                    v.b bVar = new v.b();
                    bVar.l(vVar);
                    bVar.l(vVarK);
                    vVarK = bVar.k();
                }
                this.f6376j = vVarK;
                this.f6372d |= 16;
            }
            k(kVar);
            this.f10281a = this.f10281a.l(kVar.f6364b);
        }

        /* JADX WARN: Removed duplicated region for block: B:15:0x001c  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void p(mb.d r2, mb.f r3) throws java.lang.Throwable {
            /*
                r1 = this;
                gb.k$a r0 = gb.k.f6363m     // Catch: mb.j -> Le java.lang.Throwable -> L10
                r0.getClass()     // Catch: mb.j -> Le java.lang.Throwable -> L10
                gb.k r0 = new gb.k     // Catch: mb.j -> Le java.lang.Throwable -> L10
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
                gb.k r3 = (gb.k) r3     // Catch: java.lang.Throwable -> L10
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
            throw new UnsupportedOperationException("Method not decompiled: gb.k.b.p(mb.d, mb.f):void");
        }
    }

    static {
        k kVar = new k(0);
        f6362l = kVar;
        kVar.f6366d = Collections.emptyList();
        kVar.f6367e = Collections.emptyList();
        kVar.f = Collections.emptyList();
        kVar.f6368g = s.f6549g;
        kVar.f6369h = v.f6603e;
    }

    public k() {
        throw null;
    }

    public k(int r12) {
        this.f6370j = (byte) -1;
        this.f6371k = -1;
        this.f6364b = mb.c.f10255a;
    }

    public k(mb.d dVar, mb.f fVar) throws mb.j {
        List list;
        mb.b bVar;
        this.f6370j = (byte) -1;
        this.f6371k = -1;
        this.f6366d = Collections.emptyList();
        this.f6367e = Collections.emptyList();
        this.f = Collections.emptyList();
        this.f6368g = s.f6549g;
        this.f6369h = v.f6603e;
        c.b bVar2 = new c.b();
        mb.e eVarJ = mb.e.j(bVar2, 1);
        boolean z10 = false;
        int r42 = 0;
        while (!z10) {
            try {
                try {
                    try {
                        int r72 = dVar.n();
                        if (r72 != 0) {
                            if (r72 == 26) {
                                if ((r42 & 1) != 1) {
                                    this.f6366d = new ArrayList();
                                    r42 |= 1;
                                }
                                list = this.f6366d;
                                bVar = h.f6326y;
                            } else if (r72 == 34) {
                                if ((r42 & 2) != 2) {
                                    this.f6367e = new ArrayList();
                                    r42 |= 2;
                                }
                                list = this.f6367e;
                                bVar = m.f6391y;
                            } else if (r72 != 42) {
                                v.b bVar3 = null;
                                s.b bVarI = null;
                                if (r72 == 242) {
                                    if ((this.f6365c & 1) == 1) {
                                        s sVar = this.f6368g;
                                        sVar.getClass();
                                        bVarI = s.i(sVar);
                                    }
                                    s sVar2 = (s) dVar.g(s.f6550h, fVar);
                                    this.f6368g = sVar2;
                                    if (bVarI != null) {
                                        bVarI.l(sVar2);
                                        this.f6368g = bVarI.k();
                                    }
                                    this.f6365c |= 1;
                                } else if (r72 == 258) {
                                    if ((this.f6365c & 2) == 2) {
                                        v vVar = this.f6369h;
                                        vVar.getClass();
                                        bVar3 = new v.b();
                                        bVar3.l(vVar);
                                    }
                                    v vVar2 = (v) dVar.g(v.f, fVar);
                                    this.f6369h = vVar2;
                                    if (bVar3 != null) {
                                        bVar3.l(vVar2);
                                        this.f6369h = bVar3.k();
                                    }
                                    this.f6365c |= 2;
                                } else if (!o(dVar, eVarJ, fVar, r72)) {
                                }
                            } else {
                                if ((r42 & 4) != 4) {
                                    this.f = new ArrayList();
                                    r42 |= 4;
                                }
                                list = this.f;
                                bVar = q.f6504r;
                            }
                            list.add(dVar.g(bVar, fVar));
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
                if ((r42 & 1) == 1) {
                    this.f6366d = Collections.unmodifiableList(this.f6366d);
                }
                if ((r42 & 2) == 2) {
                    this.f6367e = Collections.unmodifiableList(this.f6367e);
                }
                if ((r42 & 4) == 4) {
                    this.f = Collections.unmodifiableList(this.f);
                }
                try {
                    eVarJ.i();
                } catch (IOException unused) {
                } catch (Throwable th3) {
                    this.f6364b = bVar2.c();
                    throw th3;
                }
                this.f6364b = bVar2.c();
                m();
                throw th2;
            }
        }
        if ((r42 & 1) == 1) {
            this.f6366d = Collections.unmodifiableList(this.f6366d);
        }
        if ((r42 & 2) == 2) {
            this.f6367e = Collections.unmodifiableList(this.f6367e);
        }
        if ((r42 & 4) == 4) {
            this.f = Collections.unmodifiableList(this.f);
        }
        try {
            eVarJ.i();
        } catch (IOException unused2) {
        } catch (Throwable th4) {
            this.f6364b = bVar2.c();
            throw th4;
        }
        this.f6364b = bVar2.c();
        m();
    }

    @Override // mb.q
    public final boolean b() {
        byte b10 = this.f6370j;
        if (b10 == 1) {
            return true;
        }
        if (b10 == 0) {
            return false;
        }
        for (int r02 = 0; r02 < this.f6366d.size(); r02++) {
            if (!this.f6366d.get(r02).b()) {
                this.f6370j = (byte) 0;
                return false;
            }
        }
        for (int r03 = 0; r03 < this.f6367e.size(); r03++) {
            if (!this.f6367e.get(r03).b()) {
                this.f6370j = (byte) 0;
                return false;
            }
        }
        for (int r04 = 0; r04 < this.f.size(); r04++) {
            if (!this.f.get(r04).b()) {
                this.f6370j = (byte) 0;
                return false;
            }
        }
        if (((this.f6365c & 1) == 1) && !this.f6368g.b()) {
            this.f6370j = (byte) 0;
            return false;
        }
        if (i()) {
            this.f6370j = (byte) 1;
            return true;
        }
        this.f6370j = (byte) 0;
        return false;
    }

    @Override // mb.p
    public final int c() {
        int r02 = this.f6371k;
        if (r02 != -1) {
            return r02;
        }
        int r22 = 0;
        for (int r12 = 0; r12 < this.f6366d.size(); r12++) {
            r22 += mb.e.d(3, this.f6366d.get(r12));
        }
        for (int r13 = 0; r13 < this.f6367e.size(); r13++) {
            r22 += mb.e.d(4, this.f6367e.get(r13));
        }
        for (int r03 = 0; r03 < this.f.size(); r03++) {
            r22 += mb.e.d(5, this.f.get(r03));
        }
        if ((this.f6365c & 1) == 1) {
            r22 += mb.e.d(30, this.f6368g);
        }
        if ((this.f6365c & 2) == 2) {
            r22 += mb.e.d(32, this.f6369h);
        }
        int size = this.f6364b.size() + j() + r22;
        this.f6371k = size;
        return size;
    }

    @Override // mb.p
    public final void d(mb.e eVar) throws IOException {
        c();
        h.c.a aVar = new h.c.a(this);
        for (int r22 = 0; r22 < this.f6366d.size(); r22++) {
            eVar.o(3, this.f6366d.get(r22));
        }
        for (int r23 = 0; r23 < this.f6367e.size(); r23++) {
            eVar.o(4, this.f6367e.get(r23));
        }
        for (int r12 = 0; r12 < this.f.size(); r12++) {
            eVar.o(5, this.f.get(r12));
        }
        if ((this.f6365c & 1) == 1) {
            eVar.o(30, this.f6368g);
        }
        if ((this.f6365c & 2) == 2) {
            eVar.o(32, this.f6369h);
        }
        aVar.a(200, eVar);
        eVar.r(this.f6364b);
    }

    @Override // mb.q
    public final mb.p e() {
        return f6362l;
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

    public k(h.b bVar) {
        super(bVar);
        this.f6370j = (byte) -1;
        this.f6371k = -1;
        this.f6364b = bVar.f10281a;
    }
}
