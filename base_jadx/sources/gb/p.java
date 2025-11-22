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
public final class p extends h.c<p> {
    public static final p w;

    /* renamed from: x, reason: collision with root package name */
    public static final a f6454x = new a();

    /* renamed from: b, reason: collision with root package name */
    public final mb.c f6455b;

    /* renamed from: c, reason: collision with root package name */
    public int f6456c;

    /* renamed from: d, reason: collision with root package name */
    public List<b> f6457d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f6458e;
    public int f;

    /* renamed from: g, reason: collision with root package name */
    public p f6459g;

    /* renamed from: h, reason: collision with root package name */
    public int f6460h;

    /* renamed from: j, reason: collision with root package name */
    public int f6461j;

    /* renamed from: k, reason: collision with root package name */
    public int f6462k;

    /* renamed from: l, reason: collision with root package name */
    public int f6463l;

    /* renamed from: m, reason: collision with root package name */
    public int f6464m;

    /* renamed from: n, reason: collision with root package name */
    public p f6465n;

    /* renamed from: p, reason: collision with root package name */
    public int f6466p;

    /* renamed from: q, reason: collision with root package name */
    public p f6467q;

    /* renamed from: r, reason: collision with root package name */
    public int f6468r;

    /* renamed from: s, reason: collision with root package name */
    public int f6469s;

    /* renamed from: t, reason: collision with root package name */
    public byte f6470t;

    /* renamed from: v, reason: collision with root package name */
    public int f6471v;

    public static class a extends mb.b<p> {
        @Override // mb.r
        public final Object a(mb.d dVar, mb.f fVar) throws mb.j {
            return new p(dVar, fVar);
        }
    }

    public static final class c extends h.b<p, c> {

        /* renamed from: d, reason: collision with root package name */
        public int f6489d;

        /* renamed from: e, reason: collision with root package name */
        public List<b> f6490e = Collections.emptyList();
        public boolean f;

        /* renamed from: g, reason: collision with root package name */
        public int f6491g;

        /* renamed from: h, reason: collision with root package name */
        public p f6492h;

        /* renamed from: j, reason: collision with root package name */
        public int f6493j;

        /* renamed from: k, reason: collision with root package name */
        public int f6494k;

        /* renamed from: l, reason: collision with root package name */
        public int f6495l;

        /* renamed from: m, reason: collision with root package name */
        public int f6496m;

        /* renamed from: n, reason: collision with root package name */
        public int f6497n;

        /* renamed from: p, reason: collision with root package name */
        public p f6498p;

        /* renamed from: q, reason: collision with root package name */
        public int f6499q;

        /* renamed from: r, reason: collision with root package name */
        public p f6500r;

        /* renamed from: s, reason: collision with root package name */
        public int f6501s;

        /* renamed from: t, reason: collision with root package name */
        public int f6502t;

        public c() {
            p pVar = p.w;
            this.f6492h = pVar;
            this.f6498p = pVar;
            this.f6500r = pVar;
        }

        @Override // mb.a.AbstractC0188a, mb.p.a
        public final /* bridge */ /* synthetic */ p.a E(mb.d dVar, mb.f fVar) throws Throwable {
            p(dVar, fVar);
            return this;
        }

        @Override // mb.p.a
        public final mb.p build() {
            p pVarL = l();
            if (pVarL.b()) {
                return pVarL;
            }
            throw new c0.a();
        }

        @Override // mb.h.a
        public final Object clone() throws CloneNotSupportedException {
            c cVar = new c();
            cVar.n(l());
            return cVar;
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
            c cVar = new c();
            cVar.n(l());
            return cVar;
        }

        @Override // mb.h.a
        public final /* bridge */ /* synthetic */ h.a j(mb.h hVar) {
            n((p) hVar);
            return this;
        }

        public final p l() {
            p pVar = new p(this);
            int r12 = this.f6489d;
            if ((r12 & 1) == 1) {
                this.f6490e = Collections.unmodifiableList(this.f6490e);
                this.f6489d &= -2;
            }
            pVar.f6457d = this.f6490e;
            int r32 = (r12 & 2) != 2 ? 0 : 1;
            pVar.f6458e = this.f;
            if ((r12 & 4) == 4) {
                r32 |= 2;
            }
            pVar.f = this.f6491g;
            if ((r12 & 8) == 8) {
                r32 |= 4;
            }
            pVar.f6459g = this.f6492h;
            if ((r12 & 16) == 16) {
                r32 |= 8;
            }
            pVar.f6460h = this.f6493j;
            if ((r12 & 32) == 32) {
                r32 |= 16;
            }
            pVar.f6461j = this.f6494k;
            if ((r12 & 64) == 64) {
                r32 |= 32;
            }
            pVar.f6462k = this.f6495l;
            if ((r12 & 128) == 128) {
                r32 |= 64;
            }
            pVar.f6463l = this.f6496m;
            if ((r12 & 256) == 256) {
                r32 |= 128;
            }
            pVar.f6464m = this.f6497n;
            if ((r12 & 512) == 512) {
                r32 |= 256;
            }
            pVar.f6465n = this.f6498p;
            if ((r12 & 1024) == 1024) {
                r32 |= 512;
            }
            pVar.f6466p = this.f6499q;
            if ((r12 & 2048) == 2048) {
                r32 |= 1024;
            }
            pVar.f6467q = this.f6500r;
            if ((r12 & 4096) == 4096) {
                r32 |= 2048;
            }
            pVar.f6468r = this.f6501s;
            if ((r12 & 8192) == 8192) {
                r32 |= 4096;
            }
            pVar.f6469s = this.f6502t;
            pVar.f6456c = r32;
            return pVar;
        }

        public final c n(p pVar) {
            p pVar2;
            p pVar3;
            p pVar4;
            p pVar5 = p.w;
            if (pVar == pVar5) {
                return this;
            }
            if (!pVar.f6457d.isEmpty()) {
                if (this.f6490e.isEmpty()) {
                    this.f6490e = pVar.f6457d;
                    this.f6489d &= -2;
                } else {
                    if ((this.f6489d & 1) != 1) {
                        this.f6490e = new ArrayList(this.f6490e);
                        this.f6489d |= 1;
                    }
                    this.f6490e.addAll(pVar.f6457d);
                }
            }
            int r12 = pVar.f6456c;
            if ((r12 & 1) == 1) {
                boolean z10 = pVar.f6458e;
                this.f6489d |= 2;
                this.f = z10;
            }
            if ((r12 & 2) == 2) {
                int r32 = pVar.f;
                this.f6489d |= 4;
                this.f6491g = r32;
            }
            if ((r12 & 4) == 4) {
                p pVarL = pVar.f6459g;
                if ((this.f6489d & 8) == 8 && (pVar4 = this.f6492h) != pVar5) {
                    c cVarS = p.s(pVar4);
                    cVarS.n(pVarL);
                    pVarL = cVarS.l();
                }
                this.f6492h = pVarL;
                this.f6489d |= 8;
            }
            if ((pVar.f6456c & 8) == 8) {
                int r13 = pVar.f6460h;
                this.f6489d |= 16;
                this.f6493j = r13;
            }
            if (pVar.q()) {
                int r14 = pVar.f6461j;
                this.f6489d |= 32;
                this.f6494k = r14;
            }
            int r15 = pVar.f6456c;
            if ((r15 & 32) == 32) {
                int r33 = pVar.f6462k;
                this.f6489d |= 64;
                this.f6495l = r33;
            }
            if ((r15 & 64) == 64) {
                int r34 = pVar.f6463l;
                this.f6489d |= 128;
                this.f6496m = r34;
            }
            if ((r15 & 128) == 128) {
                int r35 = pVar.f6464m;
                this.f6489d |= 256;
                this.f6497n = r35;
            }
            if ((r15 & 256) == 256) {
                p pVarL2 = pVar.f6465n;
                if ((this.f6489d & 512) == 512 && (pVar3 = this.f6498p) != pVar5) {
                    c cVarS2 = p.s(pVar3);
                    cVarS2.n(pVarL2);
                    pVarL2 = cVarS2.l();
                }
                this.f6498p = pVarL2;
                this.f6489d |= 512;
            }
            int r16 = pVar.f6456c;
            if ((r16 & 512) == 512) {
                int r36 = pVar.f6466p;
                this.f6489d |= 1024;
                this.f6499q = r36;
            }
            if ((r16 & 1024) == 1024) {
                p pVarL3 = pVar.f6467q;
                if ((this.f6489d & 2048) == 2048 && (pVar2 = this.f6500r) != pVar5) {
                    c cVarS3 = p.s(pVar2);
                    cVarS3.n(pVarL3);
                    pVarL3 = cVarS3.l();
                }
                this.f6500r = pVarL3;
                this.f6489d |= 2048;
            }
            int r02 = pVar.f6456c;
            if ((r02 & 2048) == 2048) {
                int r17 = pVar.f6468r;
                this.f6489d |= 4096;
                this.f6501s = r17;
            }
            if ((r02 & 4096) == 4096) {
                int r03 = pVar.f6469s;
                this.f6489d |= 8192;
                this.f6502t = r03;
            }
            k(pVar);
            this.f10281a = this.f10281a.l(pVar.f6455b);
            return this;
        }

        /* JADX WARN: Removed duplicated region for block: B:15:0x001c  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void p(mb.d r2, mb.f r3) throws java.lang.Throwable {
            /*
                r1 = this;
                gb.p$a r0 = gb.p.f6454x     // Catch: mb.j -> Le java.lang.Throwable -> L10
                r0.getClass()     // Catch: mb.j -> Le java.lang.Throwable -> L10
                gb.p r0 = new gb.p     // Catch: mb.j -> Le java.lang.Throwable -> L10
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
                gb.p r3 = (gb.p) r3     // Catch: java.lang.Throwable -> L10
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
            throw new UnsupportedOperationException("Method not decompiled: gb.p.c.p(mb.d, mb.f):void");
        }
    }

    static {
        p pVar = new p(0);
        w = pVar;
        pVar.r();
    }

    public p() {
        throw null;
    }

    public p(int r12) {
        this.f6470t = (byte) -1;
        this.f6471v = -1;
        this.f6455b = mb.c.f10255a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public p(mb.d dVar, mb.f fVar) throws mb.j {
        int r92;
        this.f6470t = (byte) -1;
        this.f6471v = -1;
        r();
        c.b bVar = new c.b();
        mb.e eVarJ = mb.e.j(bVar, 1);
        boolean z10 = false;
        boolean z11 = false;
        while (!z10) {
            try {
                try {
                    try {
                        int r6 = dVar.n();
                        a aVar = f6454x;
                        c cVarS = null;
                        switch (r6) {
                            case 0:
                                z10 = true;
                                break;
                            case 8:
                                this.f6456c |= 4096;
                                this.f6469s = dVar.k();
                                break;
                            case 18:
                                if (!(z11 & true)) {
                                    this.f6457d = new ArrayList();
                                    z11 |= true;
                                }
                                this.f6457d.add(dVar.g(b.f6473j, fVar));
                                break;
                            case 24:
                                this.f6456c |= 1;
                                this.f6458e = dVar.l() != 0;
                                break;
                            case 32:
                                this.f6456c |= 2;
                                this.f = dVar.k();
                                break;
                            case 42:
                                r92 = 4;
                                if ((this.f6456c & 4) == 4) {
                                    p pVar = this.f6459g;
                                    pVar.getClass();
                                    cVarS = s(pVar);
                                }
                                p pVar2 = (p) dVar.g(aVar, fVar);
                                this.f6459g = pVar2;
                                if (cVarS != null) {
                                    cVarS.n(pVar2);
                                    this.f6459g = cVarS.l();
                                }
                                this.f6456c |= r92;
                                break;
                            case 48:
                                this.f6456c |= 16;
                                this.f6461j = dVar.k();
                                break;
                            case 56:
                                this.f6456c |= 32;
                                this.f6462k = dVar.k();
                                break;
                            case 64:
                                this.f6456c |= 8;
                                this.f6460h = dVar.k();
                                break;
                            case 72:
                                this.f6456c |= 64;
                                this.f6463l = dVar.k();
                                break;
                            case 82:
                                r92 = 256;
                                if ((this.f6456c & 256) == 256) {
                                    p pVar3 = this.f6465n;
                                    pVar3.getClass();
                                    cVarS = s(pVar3);
                                }
                                p pVar4 = (p) dVar.g(aVar, fVar);
                                this.f6465n = pVar4;
                                if (cVarS != null) {
                                    cVarS.n(pVar4);
                                    this.f6465n = cVarS.l();
                                }
                                this.f6456c |= r92;
                                break;
                            case 88:
                                this.f6456c |= 512;
                                this.f6466p = dVar.k();
                                break;
                            case 96:
                                this.f6456c |= 128;
                                this.f6464m = dVar.k();
                                break;
                            case 106:
                                r92 = 1024;
                                if ((this.f6456c & 1024) == 1024) {
                                    p pVar5 = this.f6467q;
                                    pVar5.getClass();
                                    cVarS = s(pVar5);
                                }
                                p pVar6 = (p) dVar.g(aVar, fVar);
                                this.f6467q = pVar6;
                                if (cVarS != null) {
                                    cVarS.n(pVar6);
                                    this.f6467q = cVarS.l();
                                }
                                this.f6456c |= r92;
                                break;
                            case 112:
                                this.f6456c |= 2048;
                                this.f6468r = dVar.k();
                                break;
                            default:
                                if (!o(dVar, eVarJ, fVar, r6)) {
                                    z10 = true;
                                    break;
                                } else {
                                    break;
                                }
                        }
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
                if (z11 & true) {
                    this.f6457d = Collections.unmodifiableList(this.f6457d);
                }
                try {
                    eVarJ.i();
                } catch (IOException unused) {
                } catch (Throwable th3) {
                    this.f6455b = bVar.c();
                    throw th3;
                }
                this.f6455b = bVar.c();
                m();
                throw th2;
            }
        }
        if (z11 & true) {
            this.f6457d = Collections.unmodifiableList(this.f6457d);
        }
        try {
            eVarJ.i();
        } catch (IOException unused2) {
        } catch (Throwable th4) {
            this.f6455b = bVar.c();
            throw th4;
        }
        this.f6455b = bVar.c();
        m();
    }

    public static c s(p pVar) {
        c cVar = new c();
        cVar.n(pVar);
        return cVar;
    }

    @Override // mb.q
    public final boolean b() {
        byte b10 = this.f6470t;
        if (b10 == 1) {
            return true;
        }
        if (b10 == 0) {
            return false;
        }
        for (int r02 = 0; r02 < this.f6457d.size(); r02++) {
            if (!this.f6457d.get(r02).b()) {
                this.f6470t = (byte) 0;
                return false;
            }
        }
        if (((this.f6456c & 4) == 4) && !this.f6459g.b()) {
            this.f6470t = (byte) 0;
            return false;
        }
        if (((this.f6456c & 256) == 256) && !this.f6465n.b()) {
            this.f6470t = (byte) 0;
            return false;
        }
        if (((this.f6456c & 1024) == 1024) && !this.f6467q.b()) {
            this.f6470t = (byte) 0;
            return false;
        }
        if (i()) {
            this.f6470t = (byte) 1;
            return true;
        }
        this.f6470t = (byte) 0;
        return false;
    }

    @Override // mb.p
    public final int c() {
        int r02 = this.f6471v;
        if (r02 != -1) {
            return r02;
        }
        int r03 = (this.f6456c & 4096) == 4096 ? mb.e.b(1, this.f6469s) + 0 : 0;
        for (int r22 = 0; r22 < this.f6457d.size(); r22++) {
            r03 += mb.e.d(2, this.f6457d.get(r22));
        }
        if ((this.f6456c & 1) == 1) {
            r03 += mb.e.h(3) + 1;
        }
        if ((this.f6456c & 2) == 2) {
            r03 += mb.e.b(4, this.f);
        }
        if ((this.f6456c & 4) == 4) {
            r03 += mb.e.d(5, this.f6459g);
        }
        if ((this.f6456c & 16) == 16) {
            r03 += mb.e.b(6, this.f6461j);
        }
        if ((this.f6456c & 32) == 32) {
            r03 += mb.e.b(7, this.f6462k);
        }
        if ((this.f6456c & 8) == 8) {
            r03 += mb.e.b(8, this.f6460h);
        }
        if ((this.f6456c & 64) == 64) {
            r03 += mb.e.b(9, this.f6463l);
        }
        if ((this.f6456c & 256) == 256) {
            r03 += mb.e.d(10, this.f6465n);
        }
        if ((this.f6456c & 512) == 512) {
            r03 += mb.e.b(11, this.f6466p);
        }
        if ((this.f6456c & 128) == 128) {
            r03 += mb.e.b(12, this.f6464m);
        }
        if ((this.f6456c & 1024) == 1024) {
            r03 += mb.e.d(13, this.f6467q);
        }
        if ((this.f6456c & 2048) == 2048) {
            r03 += mb.e.b(14, this.f6468r);
        }
        int size = this.f6455b.size() + j() + r03;
        this.f6471v = size;
        return size;
    }

    @Override // mb.p
    public final void d(mb.e eVar) throws IOException {
        c();
        h.c.a aVar = new h.c.a(this);
        if ((this.f6456c & 4096) == 4096) {
            eVar.m(1, this.f6469s);
        }
        for (int r22 = 0; r22 < this.f6457d.size(); r22++) {
            eVar.o(2, this.f6457d.get(r22));
        }
        if ((this.f6456c & 1) == 1) {
            boolean z10 = this.f6458e;
            eVar.x(3, 0);
            eVar.q(z10 ? 1 : 0);
        }
        if ((this.f6456c & 2) == 2) {
            eVar.m(4, this.f);
        }
        if ((this.f6456c & 4) == 4) {
            eVar.o(5, this.f6459g);
        }
        if ((this.f6456c & 16) == 16) {
            eVar.m(6, this.f6461j);
        }
        if ((this.f6456c & 32) == 32) {
            eVar.m(7, this.f6462k);
        }
        if ((this.f6456c & 8) == 8) {
            eVar.m(8, this.f6460h);
        }
        if ((this.f6456c & 64) == 64) {
            eVar.m(9, this.f6463l);
        }
        if ((this.f6456c & 256) == 256) {
            eVar.o(10, this.f6465n);
        }
        if ((this.f6456c & 512) == 512) {
            eVar.m(11, this.f6466p);
        }
        if ((this.f6456c & 128) == 128) {
            eVar.m(12, this.f6464m);
        }
        if ((this.f6456c & 1024) == 1024) {
            eVar.o(13, this.f6467q);
        }
        if ((this.f6456c & 2048) == 2048) {
            eVar.m(14, this.f6468r);
        }
        aVar.a(200, eVar);
        eVar.r(this.f6455b);
    }

    @Override // mb.q
    public final mb.p e() {
        return w;
    }

    @Override // mb.p
    public final p.a f() {
        return s(this);
    }

    @Override // mb.p
    public final p.a g() {
        return new c();
    }

    public final boolean q() {
        return (this.f6456c & 16) == 16;
    }

    public final void r() {
        this.f6457d = Collections.emptyList();
        this.f6458e = false;
        this.f = 0;
        p pVar = w;
        this.f6459g = pVar;
        this.f6460h = 0;
        this.f6461j = 0;
        this.f6462k = 0;
        this.f6463l = 0;
        this.f6464m = 0;
        this.f6465n = pVar;
        this.f6466p = 0;
        this.f6467q = pVar;
        this.f6468r = 0;
        this.f6469s = 0;
    }

    public final c t() {
        return s(this);
    }

    public static final class b extends mb.h implements mb.q {

        /* renamed from: h, reason: collision with root package name */
        public static final b f6472h;

        /* renamed from: j, reason: collision with root package name */
        public static final a f6473j = new a();

        /* renamed from: a, reason: collision with root package name */
        public final mb.c f6474a;

        /* renamed from: b, reason: collision with root package name */
        public int f6475b;

        /* renamed from: c, reason: collision with root package name */
        public c f6476c;

        /* renamed from: d, reason: collision with root package name */
        public p f6477d;

        /* renamed from: e, reason: collision with root package name */
        public int f6478e;
        public byte f;

        /* renamed from: g, reason: collision with root package name */
        public int f6479g;

        public static class a extends mb.b<b> {
            @Override // mb.r
            public final Object a(mb.d dVar, mb.f fVar) throws mb.j {
                return new b(dVar, fVar);
            }
        }

        /* renamed from: gb.p$b$b, reason: collision with other inner class name */
        public static final class C0112b extends h.a<b, C0112b> implements mb.q {

            /* renamed from: b, reason: collision with root package name */
            public int f6480b;

            /* renamed from: c, reason: collision with root package name */
            public c f6481c = c.INV;

            /* renamed from: d, reason: collision with root package name */
            public p f6482d = p.w;

            /* renamed from: e, reason: collision with root package name */
            public int f6483e;

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
                C0112b c0112b = new C0112b();
                c0112b.l(k());
                return c0112b;
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
                C0112b c0112b = new C0112b();
                c0112b.l(k());
                return c0112b;
            }

            @Override // mb.h.a
            public final /* bridge */ /* synthetic */ h.a j(mb.h hVar) {
                l((b) hVar);
                return this;
            }

            public final b k() {
                b bVar = new b(this);
                int r12 = this.f6480b;
                int r32 = (r12 & 1) != 1 ? 0 : 1;
                bVar.f6476c = this.f6481c;
                if ((r12 & 2) == 2) {
                    r32 |= 2;
                }
                bVar.f6477d = this.f6482d;
                if ((r12 & 4) == 4) {
                    r32 |= 4;
                }
                bVar.f6478e = this.f6483e;
                bVar.f6475b = r32;
                return bVar;
            }

            public final void l(b bVar) {
                p pVar;
                if (bVar == b.f6472h) {
                    return;
                }
                if ((bVar.f6475b & 1) == 1) {
                    c cVar = bVar.f6476c;
                    cVar.getClass();
                    this.f6480b |= 1;
                    this.f6481c = cVar;
                }
                if ((bVar.f6475b & 2) == 2) {
                    p pVarL = bVar.f6477d;
                    if ((this.f6480b & 2) == 2 && (pVar = this.f6482d) != p.w) {
                        c cVarS = p.s(pVar);
                        cVarS.n(pVarL);
                        pVarL = cVarS.l();
                    }
                    this.f6482d = pVarL;
                    this.f6480b |= 2;
                }
                if ((bVar.f6475b & 4) == 4) {
                    int r02 = bVar.f6478e;
                    this.f6480b |= 4;
                    this.f6483e = r02;
                }
                this.f10281a = this.f10281a.l(bVar.f6474a);
            }

            /* JADX WARN: Removed duplicated region for block: B:15:0x001c  */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final void n(mb.d r2, mb.f r3) throws java.lang.Throwable {
                /*
                    r1 = this;
                    gb.p$b$a r0 = gb.p.b.f6473j     // Catch: mb.j -> Le java.lang.Throwable -> L10
                    r0.getClass()     // Catch: mb.j -> Le java.lang.Throwable -> L10
                    gb.p$b r0 = new gb.p$b     // Catch: mb.j -> Le java.lang.Throwable -> L10
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
                    gb.p$b r3 = (gb.p.b) r3     // Catch: java.lang.Throwable -> L10
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
                throw new UnsupportedOperationException("Method not decompiled: gb.p.b.C0112b.n(mb.d, mb.f):void");
            }
        }

        public enum c implements i.a {
            IN(0),
            OUT(1),
            INV(2),
            STAR(3);


            /* renamed from: a, reason: collision with root package name */
            public final int f6488a;

            c(int r32) {
                this.f6488a = r32;
            }

            @Override // mb.i.a
            public final int f() {
                return this.f6488a;
            }
        }

        static {
            b bVar = new b();
            f6472h = bVar;
            bVar.f6476c = c.INV;
            bVar.f6477d = p.w;
            bVar.f6478e = 0;
        }

        public b() {
            this.f = (byte) -1;
            this.f6479g = -1;
            this.f6474a = mb.c.f10255a;
        }

        public b(mb.d dVar, mb.f fVar) throws mb.j {
            this.f = (byte) -1;
            this.f6479g = -1;
            c cVar = c.INV;
            this.f6476c = cVar;
            this.f6477d = p.w;
            boolean z10 = false;
            this.f6478e = 0;
            c.b bVar = new c.b();
            mb.e eVarJ = mb.e.j(bVar, 1);
            while (!z10) {
                try {
                    try {
                        int r52 = dVar.n();
                        if (r52 != 0) {
                            c cVarS = null;
                            c cVar2 = null;
                            if (r52 == 8) {
                                int r6 = dVar.k();
                                if (r6 == 0) {
                                    cVar2 = c.IN;
                                } else if (r6 == 1) {
                                    cVar2 = c.OUT;
                                } else if (r6 == 2) {
                                    cVar2 = cVar;
                                } else if (r6 == 3) {
                                    cVar2 = c.STAR;
                                }
                                if (cVar2 == null) {
                                    eVarJ.v(r52);
                                    eVarJ.v(r6);
                                } else {
                                    this.f6475b |= 1;
                                    this.f6476c = cVar2;
                                }
                            } else if (r52 == 18) {
                                if ((this.f6475b & 2) == 2) {
                                    p pVar = this.f6477d;
                                    pVar.getClass();
                                    cVarS = p.s(pVar);
                                }
                                p pVar2 = (p) dVar.g(p.f6454x, fVar);
                                this.f6477d = pVar2;
                                if (cVarS != null) {
                                    cVarS.n(pVar2);
                                    this.f6477d = cVarS.l();
                                }
                                this.f6475b |= 2;
                            } else if (r52 == 24) {
                                this.f6475b |= 4;
                                this.f6478e = dVar.k();
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
                    try {
                        eVarJ.i();
                    } catch (IOException unused) {
                    } catch (Throwable th3) {
                        this.f6474a = bVar.c();
                        throw th3;
                    }
                    this.f6474a = bVar.c();
                    throw th2;
                }
            }
            try {
                eVarJ.i();
            } catch (IOException unused2) {
            } catch (Throwable th4) {
                this.f6474a = bVar.c();
                throw th4;
            }
            this.f6474a = bVar.c();
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
            if (!((this.f6475b & 2) == 2) || this.f6477d.b()) {
                this.f = (byte) 1;
                return true;
            }
            this.f = (byte) 0;
            return false;
        }

        @Override // mb.p
        public final int c() {
            int r02 = this.f6479g;
            if (r02 != -1) {
                return r02;
            }
            int r22 = (this.f6475b & 1) == 1 ? 0 + mb.e.a(1, this.f6476c.f6488a) : 0;
            if ((this.f6475b & 2) == 2) {
                r22 += mb.e.d(2, this.f6477d);
            }
            if ((this.f6475b & 4) == 4) {
                r22 += mb.e.b(3, this.f6478e);
            }
            int size = this.f6474a.size() + r22;
            this.f6479g = size;
            return size;
        }

        @Override // mb.p
        public final void d(mb.e eVar) throws IOException {
            c();
            if ((this.f6475b & 1) == 1) {
                eVar.l(1, this.f6476c.f6488a);
            }
            if ((this.f6475b & 2) == 2) {
                eVar.o(2, this.f6477d);
            }
            if ((this.f6475b & 4) == 4) {
                eVar.m(3, this.f6478e);
            }
            eVar.r(this.f6474a);
        }

        @Override // mb.p
        public final p.a f() {
            C0112b c0112b = new C0112b();
            c0112b.l(this);
            return c0112b;
        }

        @Override // mb.p
        public final p.a g() {
            return new C0112b();
        }

        public b(h.a aVar) {
            super(0);
            this.f = (byte) -1;
            this.f6479g = -1;
            this.f6474a = aVar.f10281a;
        }
    }

    public p(h.b bVar) {
        super(bVar);
        this.f6470t = (byte) -1;
        this.f6471v = -1;
        this.f6455b = bVar.f10281a;
    }
}
