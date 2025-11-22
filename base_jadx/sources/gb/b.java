package gb;

import androidx.recyclerview.widget.ItemTouchHelper;
import gb.p;
import gb.s;
import gb.v;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import mb.a;
import mb.c;
import mb.h;
import mb.i;
import mb.p;
import org.jmrtd.cbeff.ISO781611;

/* loaded from: classes2.dex */
public final class b extends h.c<b> {
    public static final b N;
    public static final a O = new a();
    public p A;
    public int B;
    public List<Integer> C;
    public int D;
    public List<p> E;
    public List<Integer> F;
    public int G;
    public s H;
    public List<Integer> I;
    public v K;
    public byte L;
    public int M;

    /* renamed from: b, reason: collision with root package name */
    public final mb.c f6208b;

    /* renamed from: c, reason: collision with root package name */
    public int f6209c;

    /* renamed from: d, reason: collision with root package name */
    public int f6210d;

    /* renamed from: e, reason: collision with root package name */
    public int f6211e;
    public int f;

    /* renamed from: g, reason: collision with root package name */
    public List<r> f6212g;

    /* renamed from: h, reason: collision with root package name */
    public List<p> f6213h;

    /* renamed from: j, reason: collision with root package name */
    public List<Integer> f6214j;

    /* renamed from: k, reason: collision with root package name */
    public int f6215k;

    /* renamed from: l, reason: collision with root package name */
    public List<Integer> f6216l;

    /* renamed from: m, reason: collision with root package name */
    public int f6217m;

    /* renamed from: n, reason: collision with root package name */
    public List<p> f6218n;

    /* renamed from: p, reason: collision with root package name */
    public List<Integer> f6219p;

    /* renamed from: q, reason: collision with root package name */
    public int f6220q;

    /* renamed from: r, reason: collision with root package name */
    public List<gb.c> f6221r;

    /* renamed from: s, reason: collision with root package name */
    public List<h> f6222s;

    /* renamed from: t, reason: collision with root package name */
    public List<m> f6223t;

    /* renamed from: v, reason: collision with root package name */
    public List<q> f6224v;
    public List<f> w;

    /* renamed from: x, reason: collision with root package name */
    public List<Integer> f6225x;

    /* renamed from: y, reason: collision with root package name */
    public int f6226y;

    /* renamed from: z, reason: collision with root package name */
    public int f6227z;

    public static class a extends mb.b<b> {
        @Override // mb.r
        public final Object a(mb.d dVar, mb.f fVar) throws mb.j {
            return new b(dVar, fVar);
        }
    }

    /* renamed from: gb.b$b, reason: collision with other inner class name */
    public static final class C0110b extends h.b<b, C0110b> {

        /* renamed from: d, reason: collision with root package name */
        public int f6228d;
        public int f;

        /* renamed from: g, reason: collision with root package name */
        public int f6230g;
        public int w;

        /* renamed from: y, reason: collision with root package name */
        public int f6244y;

        /* renamed from: e, reason: collision with root package name */
        public int f6229e = 6;

        /* renamed from: h, reason: collision with root package name */
        public List<r> f6231h = Collections.emptyList();

        /* renamed from: j, reason: collision with root package name */
        public List<p> f6232j = Collections.emptyList();

        /* renamed from: k, reason: collision with root package name */
        public List<Integer> f6233k = Collections.emptyList();

        /* renamed from: l, reason: collision with root package name */
        public List<Integer> f6234l = Collections.emptyList();

        /* renamed from: m, reason: collision with root package name */
        public List<p> f6235m = Collections.emptyList();

        /* renamed from: n, reason: collision with root package name */
        public List<Integer> f6236n = Collections.emptyList();

        /* renamed from: p, reason: collision with root package name */
        public List<gb.c> f6237p = Collections.emptyList();

        /* renamed from: q, reason: collision with root package name */
        public List<h> f6238q = Collections.emptyList();

        /* renamed from: r, reason: collision with root package name */
        public List<m> f6239r = Collections.emptyList();

        /* renamed from: s, reason: collision with root package name */
        public List<q> f6240s = Collections.emptyList();

        /* renamed from: t, reason: collision with root package name */
        public List<f> f6241t = Collections.emptyList();

        /* renamed from: v, reason: collision with root package name */
        public List<Integer> f6242v = Collections.emptyList();

        /* renamed from: x, reason: collision with root package name */
        public p f6243x = p.w;

        /* renamed from: z, reason: collision with root package name */
        public List<Integer> f6245z = Collections.emptyList();
        public List<p> A = Collections.emptyList();
        public List<Integer> B = Collections.emptyList();
        public s C = s.f6549g;
        public List<Integer> D = Collections.emptyList();
        public v E = v.f6603e;

        @Override // mb.a.AbstractC0188a, mb.p.a
        public final /* bridge */ /* synthetic */ p.a E(mb.d dVar, mb.f fVar) throws Throwable {
            p(dVar, fVar);
            return this;
        }

        @Override // mb.p.a
        public final mb.p build() {
            b bVarL = l();
            if (bVarL.b()) {
                return bVarL;
            }
            throw new c0.a();
        }

        @Override // mb.h.a
        public final Object clone() throws CloneNotSupportedException {
            C0110b c0110b = new C0110b();
            c0110b.n(l());
            return c0110b;
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
            C0110b c0110b = new C0110b();
            c0110b.n(l());
            return c0110b;
        }

        @Override // mb.h.a
        public final /* bridge */ /* synthetic */ h.a j(mb.h hVar) {
            n((b) hVar);
            return this;
        }

        public final b l() {
            b bVar = new b(this);
            int r12 = this.f6228d;
            int r32 = (r12 & 1) != 1 ? 0 : 1;
            bVar.f6210d = this.f6229e;
            if ((r12 & 2) == 2) {
                r32 |= 2;
            }
            bVar.f6211e = this.f;
            if ((r12 & 4) == 4) {
                r32 |= 4;
            }
            bVar.f = this.f6230g;
            if ((r12 & 8) == 8) {
                this.f6231h = Collections.unmodifiableList(this.f6231h);
                this.f6228d &= -9;
            }
            bVar.f6212g = this.f6231h;
            if ((this.f6228d & 16) == 16) {
                this.f6232j = Collections.unmodifiableList(this.f6232j);
                this.f6228d &= -17;
            }
            bVar.f6213h = this.f6232j;
            if ((this.f6228d & 32) == 32) {
                this.f6233k = Collections.unmodifiableList(this.f6233k);
                this.f6228d &= -33;
            }
            bVar.f6214j = this.f6233k;
            if ((this.f6228d & 64) == 64) {
                this.f6234l = Collections.unmodifiableList(this.f6234l);
                this.f6228d &= -65;
            }
            bVar.f6216l = this.f6234l;
            if ((this.f6228d & 128) == 128) {
                this.f6235m = Collections.unmodifiableList(this.f6235m);
                this.f6228d &= -129;
            }
            bVar.f6218n = this.f6235m;
            if ((this.f6228d & 256) == 256) {
                this.f6236n = Collections.unmodifiableList(this.f6236n);
                this.f6228d &= -257;
            }
            bVar.f6219p = this.f6236n;
            if ((this.f6228d & 512) == 512) {
                this.f6237p = Collections.unmodifiableList(this.f6237p);
                this.f6228d &= -513;
            }
            bVar.f6221r = this.f6237p;
            if ((this.f6228d & 1024) == 1024) {
                this.f6238q = Collections.unmodifiableList(this.f6238q);
                this.f6228d &= -1025;
            }
            bVar.f6222s = this.f6238q;
            if ((this.f6228d & 2048) == 2048) {
                this.f6239r = Collections.unmodifiableList(this.f6239r);
                this.f6228d &= -2049;
            }
            bVar.f6223t = this.f6239r;
            if ((this.f6228d & 4096) == 4096) {
                this.f6240s = Collections.unmodifiableList(this.f6240s);
                this.f6228d &= -4097;
            }
            bVar.f6224v = this.f6240s;
            if ((this.f6228d & 8192) == 8192) {
                this.f6241t = Collections.unmodifiableList(this.f6241t);
                this.f6228d &= -8193;
            }
            bVar.w = this.f6241t;
            if ((this.f6228d & 16384) == 16384) {
                this.f6242v = Collections.unmodifiableList(this.f6242v);
                this.f6228d &= -16385;
            }
            bVar.f6225x = this.f6242v;
            if ((r12 & 32768) == 32768) {
                r32 |= 8;
            }
            bVar.f6227z = this.w;
            if ((r12 & 65536) == 65536) {
                r32 |= 16;
            }
            bVar.A = this.f6243x;
            if ((r12 & 131072) == 131072) {
                r32 |= 32;
            }
            bVar.B = this.f6244y;
            if ((this.f6228d & 262144) == 262144) {
                this.f6245z = Collections.unmodifiableList(this.f6245z);
                this.f6228d &= -262145;
            }
            bVar.C = this.f6245z;
            if ((this.f6228d & 524288) == 524288) {
                this.A = Collections.unmodifiableList(this.A);
                this.f6228d &= -524289;
            }
            bVar.E = this.A;
            if ((this.f6228d & 1048576) == 1048576) {
                this.B = Collections.unmodifiableList(this.B);
                this.f6228d &= -1048577;
            }
            bVar.F = this.B;
            if ((r12 & 2097152) == 2097152) {
                r32 |= 64;
            }
            bVar.H = this.C;
            if ((this.f6228d & 4194304) == 4194304) {
                this.D = Collections.unmodifiableList(this.D);
                this.f6228d &= -4194305;
            }
            bVar.I = this.D;
            if ((r12 & 8388608) == 8388608) {
                r32 |= 128;
            }
            bVar.K = this.E;
            bVar.f6209c = r32;
            return bVar;
        }

        public final void n(b bVar) {
            v vVar;
            s sVar;
            p pVar;
            if (bVar == b.N) {
                return;
            }
            int r02 = bVar.f6209c;
            if ((r02 & 1) == 1) {
                int r12 = bVar.f6210d;
                this.f6228d |= 1;
                this.f6229e = r12;
            }
            if ((r02 & 2) == 2) {
                int r13 = bVar.f6211e;
                this.f6228d = 2 | this.f6228d;
                this.f = r13;
            }
            if ((r02 & 4) == 4) {
                int r03 = bVar.f;
                this.f6228d = 4 | this.f6228d;
                this.f6230g = r03;
            }
            if (!bVar.f6212g.isEmpty()) {
                if (this.f6231h.isEmpty()) {
                    this.f6231h = bVar.f6212g;
                    this.f6228d &= -9;
                } else {
                    if ((this.f6228d & 8) != 8) {
                        this.f6231h = new ArrayList(this.f6231h);
                        this.f6228d |= 8;
                    }
                    this.f6231h.addAll(bVar.f6212g);
                }
            }
            if (!bVar.f6213h.isEmpty()) {
                if (this.f6232j.isEmpty()) {
                    this.f6232j = bVar.f6213h;
                    this.f6228d &= -17;
                } else {
                    if ((this.f6228d & 16) != 16) {
                        this.f6232j = new ArrayList(this.f6232j);
                        this.f6228d |= 16;
                    }
                    this.f6232j.addAll(bVar.f6213h);
                }
            }
            if (!bVar.f6214j.isEmpty()) {
                if (this.f6233k.isEmpty()) {
                    this.f6233k = bVar.f6214j;
                    this.f6228d &= -33;
                } else {
                    if ((this.f6228d & 32) != 32) {
                        this.f6233k = new ArrayList(this.f6233k);
                        this.f6228d |= 32;
                    }
                    this.f6233k.addAll(bVar.f6214j);
                }
            }
            if (!bVar.f6216l.isEmpty()) {
                if (this.f6234l.isEmpty()) {
                    this.f6234l = bVar.f6216l;
                    this.f6228d &= -65;
                } else {
                    if ((this.f6228d & 64) != 64) {
                        this.f6234l = new ArrayList(this.f6234l);
                        this.f6228d |= 64;
                    }
                    this.f6234l.addAll(bVar.f6216l);
                }
            }
            if (!bVar.f6218n.isEmpty()) {
                if (this.f6235m.isEmpty()) {
                    this.f6235m = bVar.f6218n;
                    this.f6228d &= -129;
                } else {
                    if ((this.f6228d & 128) != 128) {
                        this.f6235m = new ArrayList(this.f6235m);
                        this.f6228d |= 128;
                    }
                    this.f6235m.addAll(bVar.f6218n);
                }
            }
            if (!bVar.f6219p.isEmpty()) {
                if (this.f6236n.isEmpty()) {
                    this.f6236n = bVar.f6219p;
                    this.f6228d &= -257;
                } else {
                    if ((this.f6228d & 256) != 256) {
                        this.f6236n = new ArrayList(this.f6236n);
                        this.f6228d |= 256;
                    }
                    this.f6236n.addAll(bVar.f6219p);
                }
            }
            if (!bVar.f6221r.isEmpty()) {
                if (this.f6237p.isEmpty()) {
                    this.f6237p = bVar.f6221r;
                    this.f6228d &= -513;
                } else {
                    if ((this.f6228d & 512) != 512) {
                        this.f6237p = new ArrayList(this.f6237p);
                        this.f6228d |= 512;
                    }
                    this.f6237p.addAll(bVar.f6221r);
                }
            }
            if (!bVar.f6222s.isEmpty()) {
                if (this.f6238q.isEmpty()) {
                    this.f6238q = bVar.f6222s;
                    this.f6228d &= -1025;
                } else {
                    if ((this.f6228d & 1024) != 1024) {
                        this.f6238q = new ArrayList(this.f6238q);
                        this.f6228d |= 1024;
                    }
                    this.f6238q.addAll(bVar.f6222s);
                }
            }
            if (!bVar.f6223t.isEmpty()) {
                if (this.f6239r.isEmpty()) {
                    this.f6239r = bVar.f6223t;
                    this.f6228d &= -2049;
                } else {
                    if ((this.f6228d & 2048) != 2048) {
                        this.f6239r = new ArrayList(this.f6239r);
                        this.f6228d |= 2048;
                    }
                    this.f6239r.addAll(bVar.f6223t);
                }
            }
            if (!bVar.f6224v.isEmpty()) {
                if (this.f6240s.isEmpty()) {
                    this.f6240s = bVar.f6224v;
                    this.f6228d &= -4097;
                } else {
                    if ((this.f6228d & 4096) != 4096) {
                        this.f6240s = new ArrayList(this.f6240s);
                        this.f6228d |= 4096;
                    }
                    this.f6240s.addAll(bVar.f6224v);
                }
            }
            if (!bVar.w.isEmpty()) {
                if (this.f6241t.isEmpty()) {
                    this.f6241t = bVar.w;
                    this.f6228d &= -8193;
                } else {
                    if ((this.f6228d & 8192) != 8192) {
                        this.f6241t = new ArrayList(this.f6241t);
                        this.f6228d |= 8192;
                    }
                    this.f6241t.addAll(bVar.w);
                }
            }
            if (!bVar.f6225x.isEmpty()) {
                if (this.f6242v.isEmpty()) {
                    this.f6242v = bVar.f6225x;
                    this.f6228d &= -16385;
                } else {
                    if ((this.f6228d & 16384) != 16384) {
                        this.f6242v = new ArrayList(this.f6242v);
                        this.f6228d |= 16384;
                    }
                    this.f6242v.addAll(bVar.f6225x);
                }
            }
            int r04 = bVar.f6209c;
            if ((r04 & 8) == 8) {
                int r14 = bVar.f6227z;
                this.f6228d |= 32768;
                this.w = r14;
            }
            if ((r04 & 16) == 16) {
                p pVarL = bVar.A;
                if ((this.f6228d & 65536) == 65536 && (pVar = this.f6243x) != p.w) {
                    p.c cVarS = p.s(pVar);
                    cVarS.n(pVarL);
                    pVarL = cVarS.l();
                }
                this.f6243x = pVarL;
                this.f6228d |= 65536;
            }
            if ((bVar.f6209c & 32) == 32) {
                int r05 = bVar.B;
                this.f6228d |= 131072;
                this.f6244y = r05;
            }
            if (!bVar.C.isEmpty()) {
                if (this.f6245z.isEmpty()) {
                    this.f6245z = bVar.C;
                    this.f6228d &= -262145;
                } else {
                    if ((this.f6228d & 262144) != 262144) {
                        this.f6245z = new ArrayList(this.f6245z);
                        this.f6228d |= 262144;
                    }
                    this.f6245z.addAll(bVar.C);
                }
            }
            if (!bVar.E.isEmpty()) {
                if (this.A.isEmpty()) {
                    this.A = bVar.E;
                    this.f6228d &= -524289;
                } else {
                    if ((this.f6228d & 524288) != 524288) {
                        this.A = new ArrayList(this.A);
                        this.f6228d |= 524288;
                    }
                    this.A.addAll(bVar.E);
                }
            }
            if (!bVar.F.isEmpty()) {
                if (this.B.isEmpty()) {
                    this.B = bVar.F;
                    this.f6228d &= -1048577;
                } else {
                    if ((this.f6228d & 1048576) != 1048576) {
                        this.B = new ArrayList(this.B);
                        this.f6228d |= 1048576;
                    }
                    this.B.addAll(bVar.F);
                }
            }
            if ((bVar.f6209c & 64) == 64) {
                s sVarK = bVar.H;
                if ((this.f6228d & 2097152) == 2097152 && (sVar = this.C) != s.f6549g) {
                    s.b bVarI = s.i(sVar);
                    bVarI.l(sVarK);
                    sVarK = bVarI.k();
                }
                this.C = sVarK;
                this.f6228d |= 2097152;
            }
            if (!bVar.I.isEmpty()) {
                if (this.D.isEmpty()) {
                    this.D = bVar.I;
                    this.f6228d &= -4194305;
                } else {
                    if ((this.f6228d & 4194304) != 4194304) {
                        this.D = new ArrayList(this.D);
                        this.f6228d |= 4194304;
                    }
                    this.D.addAll(bVar.I);
                }
            }
            if ((bVar.f6209c & 128) == 128) {
                v vVarK = bVar.K;
                if ((this.f6228d & 8388608) == 8388608 && (vVar = this.E) != v.f6603e) {
                    v.b bVar2 = new v.b();
                    bVar2.l(vVar);
                    bVar2.l(vVarK);
                    vVarK = bVar2.k();
                }
                this.E = vVarK;
                this.f6228d |= 8388608;
            }
            k(bVar);
            this.f10281a = this.f10281a.l(bVar.f6208b);
        }

        /* JADX WARN: Removed duplicated region for block: B:14:0x001b  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void p(mb.d r2, mb.f r3) throws java.lang.Throwable {
            /*
                r1 = this;
                gb.b$a r0 = gb.b.O     // Catch: java.lang.Throwable -> Le mb.j -> L10
                r0.getClass()     // Catch: java.lang.Throwable -> Le mb.j -> L10
                gb.b r0 = new gb.b     // Catch: java.lang.Throwable -> Le mb.j -> L10
                r0.<init>(r2, r3)     // Catch: java.lang.Throwable -> Le mb.j -> L10
                r1.n(r0)
                return
            Le:
                r2 = move-exception
                goto L18
            L10:
                r2 = move-exception
                mb.p r3 = r2.f10298a     // Catch: java.lang.Throwable -> Le
                gb.b r3 = (gb.b) r3     // Catch: java.lang.Throwable -> Le
                throw r2     // Catch: java.lang.Throwable -> L16
            L16:
                r2 = move-exception
                goto L19
            L18:
                r3 = 0
            L19:
                if (r3 == 0) goto L1e
                r1.n(r3)
            L1e:
                throw r2
            */
            throw new UnsupportedOperationException("Method not decompiled: gb.b.C0110b.p(mb.d, mb.f):void");
        }
    }

    public enum c implements i.a {
        CLASS(0),
        INTERFACE(1),
        ENUM_CLASS(2),
        /* JADX INFO: Fake field, exist only in values array */
        ENUM_ENTRY(3),
        ANNOTATION_CLASS(4),
        /* JADX INFO: Fake field, exist only in values array */
        OBJECT(5),
        COMPANION_OBJECT(6);


        /* renamed from: a, reason: collision with root package name */
        public final int f6251a;

        c(int r32) {
            this.f6251a = r32;
        }

        @Override // mb.i.a
        public final int f() {
            return this.f6251a;
        }
    }

    static {
        b bVar = new b(0);
        N = bVar;
        bVar.q();
    }

    public b() {
        throw null;
    }

    public b(int r12) {
        this.f6215k = -1;
        this.f6217m = -1;
        this.f6220q = -1;
        this.f6226y = -1;
        this.D = -1;
        this.G = -1;
        this.L = (byte) -1;
        this.M = -1;
        this.f6208b = mb.c.f10255a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v78, types: [java.lang.Integer] */
    public b(mb.d dVar, mb.f fVar) throws mb.j {
        List list;
        int r10;
        int r52;
        mb.p pVarG;
        v.b bVar;
        this.f6215k = -1;
        this.f6217m = -1;
        this.f6220q = -1;
        this.f6226y = -1;
        this.D = -1;
        this.G = -1;
        this.L = (byte) -1;
        this.M = -1;
        q();
        c.b bVarZ = mb.c.z();
        mb.e eVarJ = mb.e.j(bVarZ, 1);
        boolean z10 = false;
        int r82 = 0;
        while (!z10) {
            try {
                try {
                    int r102 = dVar.n();
                    switch (r102) {
                        case 0:
                            z10 = true;
                        case 8:
                            this.f6209c |= 1;
                            this.f6210d = dVar.f();
                        case 16:
                            if ((r82 & 32) != 32) {
                                this.f6214j = new ArrayList();
                                r82 |= 32;
                            }
                            list = this.f6214j;
                            r10 = dVar.f();
                            pVarG = Integer.valueOf(r10);
                            list.add(pVarG);
                        case 18:
                            r52 = dVar.d(dVar.k());
                            if ((r82 & 32) != 32 && dVar.b() > 0) {
                                this.f6214j = new ArrayList();
                                r82 |= 32;
                            }
                            while (dVar.b() > 0) {
                                this.f6214j.add(Integer.valueOf(dVar.f()));
                            }
                            dVar.c(r52);
                            break;
                        case 24:
                            this.f6209c |= 2;
                            this.f6211e = dVar.f();
                        case 32:
                            this.f6209c |= 4;
                            this.f = dVar.f();
                        case 42:
                            if ((r82 & 8) != 8) {
                                this.f6212g = new ArrayList();
                                r82 |= 8;
                            }
                            list = this.f6212g;
                            pVarG = dVar.g(r.f6527p, fVar);
                            list.add(pVarG);
                        case 50:
                            if ((r82 & 16) != 16) {
                                this.f6213h = new ArrayList();
                                r82 |= 16;
                            }
                            list = this.f6213h;
                            pVarG = dVar.g(p.f6454x, fVar);
                            list.add(pVarG);
                        case 56:
                            if ((r82 & 64) != 64) {
                                this.f6216l = new ArrayList();
                                r82 |= 64;
                            }
                            list = this.f6216l;
                            r10 = dVar.f();
                            pVarG = Integer.valueOf(r10);
                            list.add(pVarG);
                        case 58:
                            r52 = dVar.d(dVar.k());
                            if ((r82 & 64) != 64 && dVar.b() > 0) {
                                this.f6216l = new ArrayList();
                                r82 |= 64;
                            }
                            while (dVar.b() > 0) {
                                this.f6216l.add(Integer.valueOf(dVar.f()));
                            }
                            dVar.c(r52);
                            break;
                        case 66:
                            if ((r82 & 512) != 512) {
                                this.f6221r = new ArrayList();
                                r82 |= 512;
                            }
                            list = this.f6221r;
                            pVarG = dVar.g(gb.c.f6253k, fVar);
                            list.add(pVarG);
                        case 74:
                            if ((r82 & 1024) != 1024) {
                                this.f6222s = new ArrayList();
                                r82 |= 1024;
                            }
                            list = this.f6222s;
                            pVarG = dVar.g(h.f6326y, fVar);
                            list.add(pVarG);
                        case 82:
                            if ((r82 & 2048) != 2048) {
                                this.f6223t = new ArrayList();
                                r82 |= 2048;
                            }
                            list = this.f6223t;
                            pVarG = dVar.g(m.f6391y, fVar);
                            list.add(pVarG);
                        case 90:
                            if ((r82 & 4096) != 4096) {
                                this.f6224v = new ArrayList();
                                r82 |= 4096;
                            }
                            list = this.f6224v;
                            pVarG = dVar.g(q.f6504r, fVar);
                            list.add(pVarG);
                        case 106:
                            if ((r82 & 8192) != 8192) {
                                this.w = new ArrayList();
                                r82 |= 8192;
                            }
                            list = this.w;
                            pVarG = dVar.g(f.f6294h, fVar);
                            list.add(pVarG);
                        case 128:
                            if ((r82 & 16384) != 16384) {
                                this.f6225x = new ArrayList();
                                r82 |= 16384;
                            }
                            list = this.f6225x;
                            r10 = dVar.f();
                            pVarG = Integer.valueOf(r10);
                            list.add(pVarG);
                        case ISO781611.BIOMETRIC_SUBTYPE_TAG /* 130 */:
                            r52 = dVar.d(dVar.k());
                            if ((r82 & 16384) != 16384 && dVar.b() > 0) {
                                this.f6225x = new ArrayList();
                                r82 |= 16384;
                            }
                            while (dVar.b() > 0) {
                                this.f6225x.add(Integer.valueOf(dVar.f()));
                            }
                            dVar.c(r52);
                            break;
                        case ISO781611.FORMAT_TYPE_TAG /* 136 */:
                            this.f6209c |= 8;
                            this.f6227z = dVar.f();
                        case 146:
                            p.c cVarT = (this.f6209c & 16) == 16 ? this.A.t() : null;
                            p pVar = (p) dVar.g(p.f6454x, fVar);
                            this.A = pVar;
                            if (cVarT != null) {
                                cVarT.n(pVar);
                                this.A = cVarT.l();
                            }
                            this.f6209c |= 16;
                        case 152:
                            this.f6209c |= 32;
                            this.B = dVar.f();
                        case 162:
                            if ((r82 & 128) != 128) {
                                this.f6218n = new ArrayList();
                                r82 |= 128;
                            }
                            list = this.f6218n;
                            pVarG = dVar.g(p.f6454x, fVar);
                            list.add(pVarG);
                        case 168:
                            if ((r82 & 256) != 256) {
                                this.f6219p = new ArrayList();
                                r82 |= 256;
                            }
                            list = this.f6219p;
                            r10 = dVar.f();
                            pVarG = Integer.valueOf(r10);
                            list.add(pVarG);
                        case 170:
                            r52 = dVar.d(dVar.k());
                            if ((r82 & 256) != 256 && dVar.b() > 0) {
                                this.f6219p = new ArrayList();
                                r82 |= 256;
                            }
                            while (dVar.b() > 0) {
                                this.f6219p.add(Integer.valueOf(dVar.f()));
                            }
                            dVar.c(r52);
                            break;
                        case 176:
                            if ((r82 & 262144) != 262144) {
                                this.C = new ArrayList();
                                r82 |= 262144;
                            }
                            list = this.C;
                            r10 = dVar.f();
                            pVarG = Integer.valueOf(r10);
                            list.add(pVarG);
                        case 178:
                            r52 = dVar.d(dVar.k());
                            if ((r82 & 262144) != 262144 && dVar.b() > 0) {
                                this.C = new ArrayList();
                                r82 |= 262144;
                            }
                            while (dVar.b() > 0) {
                                this.C.add(Integer.valueOf(dVar.f()));
                            }
                            dVar.c(r52);
                            break;
                        case 186:
                            if ((r82 & 524288) != 524288) {
                                this.E = new ArrayList();
                                r82 |= 524288;
                            }
                            list = this.E;
                            pVarG = dVar.g(p.f6454x, fVar);
                            list.add(pVarG);
                        case 192:
                            if ((r82 & 1048576) != 1048576) {
                                this.F = new ArrayList();
                                r82 |= 1048576;
                            }
                            list = this.F;
                            r10 = dVar.f();
                            pVarG = Integer.valueOf(r10);
                            list.add(pVarG);
                        case 194:
                            r52 = dVar.d(dVar.k());
                            if ((r82 & 1048576) != 1048576 && dVar.b() > 0) {
                                this.F = new ArrayList();
                                r82 |= 1048576;
                            }
                            while (dVar.b() > 0) {
                                this.F.add(Integer.valueOf(dVar.f()));
                            }
                            dVar.c(r52);
                            break;
                        case 242:
                            s.b bVarJ = (this.f6209c & 64) == 64 ? this.H.j() : null;
                            s sVar = (s) dVar.g(s.f6550h, fVar);
                            this.H = sVar;
                            if (bVarJ != null) {
                                bVarJ.l(sVar);
                                this.H = bVarJ.k();
                            }
                            this.f6209c |= 64;
                        case 248:
                            if ((r82 & 4194304) != 4194304) {
                                this.I = new ArrayList();
                                r82 |= 4194304;
                            }
                            list = this.I;
                            r10 = dVar.f();
                            pVarG = Integer.valueOf(r10);
                            list.add(pVarG);
                        case ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION /* 250 */:
                            int r103 = dVar.d(dVar.k());
                            if ((r82 & 4194304) != 4194304 && dVar.b() > 0) {
                                this.I = new ArrayList();
                                r82 |= 4194304;
                            }
                            while (dVar.b() > 0) {
                                this.I.add(Integer.valueOf(dVar.f()));
                            }
                            dVar.c(r103);
                            break;
                        case 258:
                            if ((this.f6209c & 128) == 128) {
                                v vVar = this.K;
                                vVar.getClass();
                                bVar = new v.b();
                                bVar.l(vVar);
                            } else {
                                bVar = null;
                            }
                            v vVar2 = (v) dVar.g(v.f, fVar);
                            this.K = vVar2;
                            if (bVar != null) {
                                bVar.l(vVar2);
                                this.K = bVar.k();
                            }
                            this.f6209c |= 128;
                        default:
                            if (!o(dVar, eVarJ, fVar, r102)) {
                                z10 = true;
                            }
                    }
                } catch (Throwable th2) {
                    if ((r82 & 32) == 32) {
                        this.f6214j = Collections.unmodifiableList(this.f6214j);
                    }
                    if ((r82 & 8) == 8) {
                        this.f6212g = Collections.unmodifiableList(this.f6212g);
                    }
                    if ((r82 & 16) == 16) {
                        this.f6213h = Collections.unmodifiableList(this.f6213h);
                    }
                    if ((r82 & 64) == 64) {
                        this.f6216l = Collections.unmodifiableList(this.f6216l);
                    }
                    if ((r82 & 512) == 512) {
                        this.f6221r = Collections.unmodifiableList(this.f6221r);
                    }
                    if ((r82 & 1024) == 1024) {
                        this.f6222s = Collections.unmodifiableList(this.f6222s);
                    }
                    if ((r82 & 2048) == 2048) {
                        this.f6223t = Collections.unmodifiableList(this.f6223t);
                    }
                    if ((r82 & 4096) == 4096) {
                        this.f6224v = Collections.unmodifiableList(this.f6224v);
                    }
                    if ((r82 & 8192) == 8192) {
                        this.w = Collections.unmodifiableList(this.w);
                    }
                    if ((r82 & 16384) == 16384) {
                        this.f6225x = Collections.unmodifiableList(this.f6225x);
                    }
                    if ((r82 & 128) == 128) {
                        this.f6218n = Collections.unmodifiableList(this.f6218n);
                    }
                    if ((r82 & 256) == 256) {
                        this.f6219p = Collections.unmodifiableList(this.f6219p);
                    }
                    if ((r82 & 262144) == 262144) {
                        this.C = Collections.unmodifiableList(this.C);
                    }
                    if ((r82 & 524288) == 524288) {
                        this.E = Collections.unmodifiableList(this.E);
                    }
                    if ((r82 & 1048576) == 1048576) {
                        this.F = Collections.unmodifiableList(this.F);
                    }
                    if ((r82 & 4194304) == 4194304) {
                        this.I = Collections.unmodifiableList(this.I);
                    }
                    try {
                        eVarJ.i();
                    } catch (IOException unused) {
                    } catch (Throwable th3) {
                        this.f6208b = bVarZ.c();
                        throw th3;
                    }
                    this.f6208b = bVarZ.c();
                    m();
                    throw th2;
                }
            } catch (mb.j e10) {
                e10.a(this);
                throw e10;
            } catch (IOException e11) {
                mb.j jVar = new mb.j(e11.getMessage());
                jVar.a(this);
                throw jVar;
            }
        }
        if ((r82 & 32) == 32) {
            this.f6214j = Collections.unmodifiableList(this.f6214j);
        }
        if ((r82 & 8) == 8) {
            this.f6212g = Collections.unmodifiableList(this.f6212g);
        }
        if ((r82 & 16) == 16) {
            this.f6213h = Collections.unmodifiableList(this.f6213h);
        }
        if ((r82 & 64) == 64) {
            this.f6216l = Collections.unmodifiableList(this.f6216l);
        }
        if ((r82 & 512) == 512) {
            this.f6221r = Collections.unmodifiableList(this.f6221r);
        }
        if ((r82 & 1024) == 1024) {
            this.f6222s = Collections.unmodifiableList(this.f6222s);
        }
        if ((r82 & 2048) == 2048) {
            this.f6223t = Collections.unmodifiableList(this.f6223t);
        }
        if ((r82 & 4096) == 4096) {
            this.f6224v = Collections.unmodifiableList(this.f6224v);
        }
        if ((r82 & 8192) == 8192) {
            this.w = Collections.unmodifiableList(this.w);
        }
        if ((r82 & 16384) == 16384) {
            this.f6225x = Collections.unmodifiableList(this.f6225x);
        }
        if ((r82 & 128) == 128) {
            this.f6218n = Collections.unmodifiableList(this.f6218n);
        }
        if ((r82 & 256) == 256) {
            this.f6219p = Collections.unmodifiableList(this.f6219p);
        }
        if ((r82 & 262144) == 262144) {
            this.C = Collections.unmodifiableList(this.C);
        }
        if ((r82 & 524288) == 524288) {
            this.E = Collections.unmodifiableList(this.E);
        }
        if ((r82 & 1048576) == 1048576) {
            this.F = Collections.unmodifiableList(this.F);
        }
        if ((r82 & 4194304) == 4194304) {
            this.I = Collections.unmodifiableList(this.I);
        }
        try {
            eVarJ.i();
        } catch (IOException unused2) {
        } catch (Throwable th4) {
            this.f6208b = bVarZ.c();
            throw th4;
        }
        this.f6208b = bVarZ.c();
        m();
    }

    @Override // mb.q
    public final boolean b() {
        byte b10 = this.L;
        if (b10 == 1) {
            return true;
        }
        if (b10 == 0) {
            return false;
        }
        if (!((this.f6209c & 2) == 2)) {
            this.L = (byte) 0;
            return false;
        }
        for (int r02 = 0; r02 < this.f6212g.size(); r02++) {
            if (!this.f6212g.get(r02).b()) {
                this.L = (byte) 0;
                return false;
            }
        }
        for (int r03 = 0; r03 < this.f6213h.size(); r03++) {
            if (!this.f6213h.get(r03).b()) {
                this.L = (byte) 0;
                return false;
            }
        }
        for (int r04 = 0; r04 < this.f6218n.size(); r04++) {
            if (!this.f6218n.get(r04).b()) {
                this.L = (byte) 0;
                return false;
            }
        }
        for (int r05 = 0; r05 < this.f6221r.size(); r05++) {
            if (!this.f6221r.get(r05).b()) {
                this.L = (byte) 0;
                return false;
            }
        }
        for (int r06 = 0; r06 < this.f6222s.size(); r06++) {
            if (!this.f6222s.get(r06).b()) {
                this.L = (byte) 0;
                return false;
            }
        }
        for (int r07 = 0; r07 < this.f6223t.size(); r07++) {
            if (!this.f6223t.get(r07).b()) {
                this.L = (byte) 0;
                return false;
            }
        }
        for (int r08 = 0; r08 < this.f6224v.size(); r08++) {
            if (!this.f6224v.get(r08).b()) {
                this.L = (byte) 0;
                return false;
            }
        }
        for (int r09 = 0; r09 < this.w.size(); r09++) {
            if (!this.w.get(r09).b()) {
                this.L = (byte) 0;
                return false;
            }
        }
        if (((this.f6209c & 16) == 16) && !this.A.b()) {
            this.L = (byte) 0;
            return false;
        }
        for (int r010 = 0; r010 < this.E.size(); r010++) {
            if (!this.E.get(r010).b()) {
                this.L = (byte) 0;
                return false;
            }
        }
        if (((this.f6209c & 64) == 64) && !this.H.b()) {
            this.L = (byte) 0;
            return false;
        }
        if (i()) {
            this.L = (byte) 1;
            return true;
        }
        this.L = (byte) 0;
        return false;
    }

    @Override // mb.p
    public final int c() {
        int r02 = this.M;
        if (r02 != -1) {
            return r02;
        }
        int r03 = (this.f6209c & 1) == 1 ? mb.e.b(1, this.f6210d) + 0 : 0;
        int r32 = 0;
        for (int r12 = 0; r12 < this.f6214j.size(); r12++) {
            r32 += mb.e.c(this.f6214j.get(r12).intValue());
        }
        int r04 = r03 + r32;
        if (!this.f6214j.isEmpty()) {
            r04 = r04 + 1 + mb.e.c(r32);
        }
        this.f6215k = r32;
        if ((this.f6209c & 2) == 2) {
            r04 += mb.e.b(3, this.f6211e);
        }
        if ((this.f6209c & 4) == 4) {
            r04 += mb.e.b(4, this.f);
        }
        for (int r13 = 0; r13 < this.f6212g.size(); r13++) {
            r04 += mb.e.d(5, this.f6212g.get(r13));
        }
        for (int r14 = 0; r14 < this.f6213h.size(); r14++) {
            r04 += mb.e.d(6, this.f6213h.get(r14));
        }
        int r42 = 0;
        for (int r15 = 0; r15 < this.f6216l.size(); r15++) {
            r42 += mb.e.c(this.f6216l.get(r15).intValue());
        }
        int r05 = r04 + r42;
        if (!this.f6216l.isEmpty()) {
            r05 = r05 + 1 + mb.e.c(r42);
        }
        this.f6217m = r42;
        for (int r16 = 0; r16 < this.f6221r.size(); r16++) {
            r05 += mb.e.d(8, this.f6221r.get(r16));
        }
        for (int r17 = 0; r17 < this.f6222s.size(); r17++) {
            r05 += mb.e.d(9, this.f6222s.get(r17));
        }
        for (int r18 = 0; r18 < this.f6223t.size(); r18++) {
            r05 += mb.e.d(10, this.f6223t.get(r18));
        }
        for (int r19 = 0; r19 < this.f6224v.size(); r19++) {
            r05 += mb.e.d(11, this.f6224v.get(r19));
        }
        for (int r110 = 0; r110 < this.w.size(); r110++) {
            r05 += mb.e.d(13, this.w.get(r110));
        }
        int r43 = 0;
        for (int r111 = 0; r111 < this.f6225x.size(); r111++) {
            r43 += mb.e.c(this.f6225x.get(r111).intValue());
        }
        int r06 = r05 + r43;
        if (!this.f6225x.isEmpty()) {
            r06 = r06 + 2 + mb.e.c(r43);
        }
        this.f6226y = r43;
        if ((this.f6209c & 8) == 8) {
            r06 += mb.e.b(17, this.f6227z);
        }
        if ((this.f6209c & 16) == 16) {
            r06 += mb.e.d(18, this.A);
        }
        if ((this.f6209c & 32) == 32) {
            r06 += mb.e.b(19, this.B);
        }
        for (int r112 = 0; r112 < this.f6218n.size(); r112++) {
            r06 += mb.e.d(20, this.f6218n.get(r112));
        }
        int r52 = 0;
        for (int r113 = 0; r113 < this.f6219p.size(); r113++) {
            r52 += mb.e.c(this.f6219p.get(r113).intValue());
        }
        int r07 = r06 + r52;
        if (!this.f6219p.isEmpty()) {
            r07 = r07 + 2 + mb.e.c(r52);
        }
        this.f6220q = r52;
        int r53 = 0;
        for (int r114 = 0; r114 < this.C.size(); r114++) {
            r53 += mb.e.c(this.C.get(r114).intValue());
        }
        int r08 = r07 + r53;
        if (!this.C.isEmpty()) {
            r08 = r08 + 2 + mb.e.c(r53);
        }
        this.D = r53;
        for (int r115 = 0; r115 < this.E.size(); r115++) {
            r08 += mb.e.d(23, this.E.get(r115));
        }
        int r54 = 0;
        for (int r116 = 0; r116 < this.F.size(); r116++) {
            r54 += mb.e.c(this.F.get(r116).intValue());
        }
        int r09 = r08 + r54;
        if (!this.F.isEmpty()) {
            r09 = r09 + 2 + mb.e.c(r54);
        }
        this.G = r54;
        if ((this.f6209c & 64) == 64) {
            r09 += mb.e.d(30, this.H);
        }
        int r117 = 0;
        for (int r22 = 0; r22 < this.I.size(); r22++) {
            r117 += mb.e.c(this.I.get(r22).intValue());
        }
        int size = (this.I.size() * 2) + r09 + r117;
        if ((this.f6209c & 128) == 128) {
            size += mb.e.d(32, this.K);
        }
        int size2 = this.f6208b.size() + j() + size;
        this.M = size2;
        return size2;
    }

    @Override // mb.p
    public final void d(mb.e eVar) throws IOException {
        c();
        h.c.a aVar = new h.c.a(this);
        if ((this.f6209c & 1) == 1) {
            eVar.m(1, this.f6210d);
        }
        if (this.f6214j.size() > 0) {
            eVar.v(18);
            eVar.v(this.f6215k);
        }
        for (int r32 = 0; r32 < this.f6214j.size(); r32++) {
            eVar.n(this.f6214j.get(r32).intValue());
        }
        if ((this.f6209c & 2) == 2) {
            eVar.m(3, this.f6211e);
        }
        if ((this.f6209c & 4) == 4) {
            eVar.m(4, this.f);
        }
        for (int r33 = 0; r33 < this.f6212g.size(); r33++) {
            eVar.o(5, this.f6212g.get(r33));
        }
        for (int r34 = 0; r34 < this.f6213h.size(); r34++) {
            eVar.o(6, this.f6213h.get(r34));
        }
        if (this.f6216l.size() > 0) {
            eVar.v(58);
            eVar.v(this.f6217m);
        }
        for (int r35 = 0; r35 < this.f6216l.size(); r35++) {
            eVar.n(this.f6216l.get(r35).intValue());
        }
        for (int r36 = 0; r36 < this.f6221r.size(); r36++) {
            eVar.o(8, this.f6221r.get(r36));
        }
        for (int r37 = 0; r37 < this.f6222s.size(); r37++) {
            eVar.o(9, this.f6222s.get(r37));
        }
        for (int r38 = 0; r38 < this.f6223t.size(); r38++) {
            eVar.o(10, this.f6223t.get(r38));
        }
        for (int r39 = 0; r39 < this.f6224v.size(); r39++) {
            eVar.o(11, this.f6224v.get(r39));
        }
        for (int r310 = 0; r310 < this.w.size(); r310++) {
            eVar.o(13, this.w.get(r310));
        }
        if (this.f6225x.size() > 0) {
            eVar.v(ISO781611.BIOMETRIC_SUBTYPE_TAG);
            eVar.v(this.f6226y);
        }
        for (int r311 = 0; r311 < this.f6225x.size(); r311++) {
            eVar.n(this.f6225x.get(r311).intValue());
        }
        if ((this.f6209c & 8) == 8) {
            eVar.m(17, this.f6227z);
        }
        if ((this.f6209c & 16) == 16) {
            eVar.o(18, this.A);
        }
        if ((this.f6209c & 32) == 32) {
            eVar.m(19, this.B);
        }
        for (int r22 = 0; r22 < this.f6218n.size(); r22++) {
            eVar.o(20, this.f6218n.get(r22));
        }
        if (this.f6219p.size() > 0) {
            eVar.v(170);
            eVar.v(this.f6220q);
        }
        for (int r23 = 0; r23 < this.f6219p.size(); r23++) {
            eVar.n(this.f6219p.get(r23).intValue());
        }
        if (this.C.size() > 0) {
            eVar.v(178);
            eVar.v(this.D);
        }
        for (int r24 = 0; r24 < this.C.size(); r24++) {
            eVar.n(this.C.get(r24).intValue());
        }
        for (int r25 = 0; r25 < this.E.size(); r25++) {
            eVar.o(23, this.E.get(r25));
        }
        if (this.F.size() > 0) {
            eVar.v(194);
            eVar.v(this.G);
        }
        for (int r26 = 0; r26 < this.F.size(); r26++) {
            eVar.n(this.F.get(r26).intValue());
        }
        if ((this.f6209c & 64) == 64) {
            eVar.o(30, this.H);
        }
        for (int r12 = 0; r12 < this.I.size(); r12++) {
            eVar.m(31, this.I.get(r12).intValue());
        }
        if ((this.f6209c & 128) == 128) {
            eVar.o(32, this.K);
        }
        aVar.a(19000, eVar);
        eVar.r(this.f6208b);
    }

    @Override // mb.q
    public final mb.p e() {
        return N;
    }

    @Override // mb.p
    public final p.a f() {
        C0110b c0110b = new C0110b();
        c0110b.n(this);
        return c0110b;
    }

    @Override // mb.p
    public final p.a g() {
        return new C0110b();
    }

    public final void q() {
        this.f6210d = 6;
        this.f6211e = 0;
        this.f = 0;
        this.f6212g = Collections.emptyList();
        this.f6213h = Collections.emptyList();
        this.f6214j = Collections.emptyList();
        this.f6216l = Collections.emptyList();
        this.f6218n = Collections.emptyList();
        this.f6219p = Collections.emptyList();
        this.f6221r = Collections.emptyList();
        this.f6222s = Collections.emptyList();
        this.f6223t = Collections.emptyList();
        this.f6224v = Collections.emptyList();
        this.w = Collections.emptyList();
        this.f6225x = Collections.emptyList();
        this.f6227z = 0;
        this.A = p.w;
        this.B = 0;
        this.C = Collections.emptyList();
        this.E = Collections.emptyList();
        this.F = Collections.emptyList();
        this.H = s.f6549g;
        this.I = Collections.emptyList();
        this.K = v.f6603e;
    }

    public b(h.b bVar) {
        super(bVar);
        this.f6215k = -1;
        this.f6217m = -1;
        this.f6220q = -1;
        this.f6226y = -1;
        this.D = -1;
        this.G = -1;
        this.L = (byte) -1;
        this.M = -1;
        this.f6208b = bVar.f10281a;
    }
}
