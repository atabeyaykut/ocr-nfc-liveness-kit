package gb;

import androidx.recyclerview.widget.ItemTouchHelper;
import gb.p;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import mb.a;
import mb.c;
import mb.h;
import mb.p;

/* loaded from: classes2.dex */
public final class q extends h.c<q> {

    /* renamed from: q, reason: collision with root package name */
    public static final q f6503q;

    /* renamed from: r, reason: collision with root package name */
    public static final a f6504r = new a();

    /* renamed from: b, reason: collision with root package name */
    public final mb.c f6505b;

    /* renamed from: c, reason: collision with root package name */
    public int f6506c;

    /* renamed from: d, reason: collision with root package name */
    public int f6507d;

    /* renamed from: e, reason: collision with root package name */
    public int f6508e;
    public List<r> f;

    /* renamed from: g, reason: collision with root package name */
    public p f6509g;

    /* renamed from: h, reason: collision with root package name */
    public int f6510h;

    /* renamed from: j, reason: collision with root package name */
    public p f6511j;

    /* renamed from: k, reason: collision with root package name */
    public int f6512k;

    /* renamed from: l, reason: collision with root package name */
    public List<gb.a> f6513l;

    /* renamed from: m, reason: collision with root package name */
    public List<Integer> f6514m;

    /* renamed from: n, reason: collision with root package name */
    public byte f6515n;

    /* renamed from: p, reason: collision with root package name */
    public int f6516p;

    public static class a extends mb.b<q> {
        @Override // mb.r
        public final Object a(mb.d dVar, mb.f fVar) throws mb.j {
            return new q(dVar, fVar);
        }
    }

    public static final class b extends h.b<q, b> {

        /* renamed from: d, reason: collision with root package name */
        public int f6517d;
        public int f;

        /* renamed from: h, reason: collision with root package name */
        public p f6520h;

        /* renamed from: j, reason: collision with root package name */
        public int f6521j;

        /* renamed from: k, reason: collision with root package name */
        public p f6522k;

        /* renamed from: l, reason: collision with root package name */
        public int f6523l;

        /* renamed from: m, reason: collision with root package name */
        public List<gb.a> f6524m;

        /* renamed from: n, reason: collision with root package name */
        public List<Integer> f6525n;

        /* renamed from: e, reason: collision with root package name */
        public int f6518e = 6;

        /* renamed from: g, reason: collision with root package name */
        public List<r> f6519g = Collections.emptyList();

        public b() {
            p pVar = p.w;
            this.f6520h = pVar;
            this.f6522k = pVar;
            this.f6524m = Collections.emptyList();
            this.f6525n = Collections.emptyList();
        }

        @Override // mb.a.AbstractC0188a, mb.p.a
        public final /* bridge */ /* synthetic */ p.a E(mb.d dVar, mb.f fVar) throws Throwable {
            p(dVar, fVar);
            return this;
        }

        @Override // mb.p.a
        public final mb.p build() {
            q qVarL = l();
            if (qVarL.b()) {
                return qVarL;
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
            n((q) hVar);
            return this;
        }

        public final q l() {
            q qVar = new q(this);
            int r12 = this.f6517d;
            int r32 = (r12 & 1) != 1 ? 0 : 1;
            qVar.f6507d = this.f6518e;
            if ((r12 & 2) == 2) {
                r32 |= 2;
            }
            qVar.f6508e = this.f;
            if ((r12 & 4) == 4) {
                this.f6519g = Collections.unmodifiableList(this.f6519g);
                this.f6517d &= -5;
            }
            qVar.f = this.f6519g;
            if ((r12 & 8) == 8) {
                r32 |= 4;
            }
            qVar.f6509g = this.f6520h;
            if ((r12 & 16) == 16) {
                r32 |= 8;
            }
            qVar.f6510h = this.f6521j;
            if ((r12 & 32) == 32) {
                r32 |= 16;
            }
            qVar.f6511j = this.f6522k;
            if ((r12 & 64) == 64) {
                r32 |= 32;
            }
            qVar.f6512k = this.f6523l;
            if ((this.f6517d & 128) == 128) {
                this.f6524m = Collections.unmodifiableList(this.f6524m);
                this.f6517d &= -129;
            }
            qVar.f6513l = this.f6524m;
            if ((this.f6517d & 256) == 256) {
                this.f6525n = Collections.unmodifiableList(this.f6525n);
                this.f6517d &= -257;
            }
            qVar.f6514m = this.f6525n;
            qVar.f6506c = r32;
            return qVar;
        }

        public final void n(q qVar) {
            p pVar;
            p pVar2;
            if (qVar == q.f6503q) {
                return;
            }
            int r02 = qVar.f6506c;
            if ((r02 & 1) == 1) {
                int r12 = qVar.f6507d;
                this.f6517d |= 1;
                this.f6518e = r12;
            }
            if ((r02 & 2) == 2) {
                int r03 = qVar.f6508e;
                this.f6517d = 2 | this.f6517d;
                this.f = r03;
            }
            if (!qVar.f.isEmpty()) {
                if (this.f6519g.isEmpty()) {
                    this.f6519g = qVar.f;
                    this.f6517d &= -5;
                } else {
                    if ((this.f6517d & 4) != 4) {
                        this.f6519g = new ArrayList(this.f6519g);
                        this.f6517d |= 4;
                    }
                    this.f6519g.addAll(qVar.f);
                }
            }
            if ((qVar.f6506c & 4) == 4) {
                p pVarL = qVar.f6509g;
                if ((this.f6517d & 8) == 8 && (pVar2 = this.f6520h) != p.w) {
                    p.c cVarS = p.s(pVar2);
                    cVarS.n(pVarL);
                    pVarL = cVarS.l();
                }
                this.f6520h = pVarL;
                this.f6517d |= 8;
            }
            int r04 = qVar.f6506c;
            if ((r04 & 8) == 8) {
                int r13 = qVar.f6510h;
                this.f6517d |= 16;
                this.f6521j = r13;
            }
            if ((r04 & 16) == 16) {
                p pVarL2 = qVar.f6511j;
                if ((this.f6517d & 32) == 32 && (pVar = this.f6522k) != p.w) {
                    p.c cVarS2 = p.s(pVar);
                    cVarS2.n(pVarL2);
                    pVarL2 = cVarS2.l();
                }
                this.f6522k = pVarL2;
                this.f6517d |= 32;
            }
            if ((qVar.f6506c & 32) == 32) {
                int r05 = qVar.f6512k;
                this.f6517d |= 64;
                this.f6523l = r05;
            }
            if (!qVar.f6513l.isEmpty()) {
                if (this.f6524m.isEmpty()) {
                    this.f6524m = qVar.f6513l;
                    this.f6517d &= -129;
                } else {
                    if ((this.f6517d & 128) != 128) {
                        this.f6524m = new ArrayList(this.f6524m);
                        this.f6517d |= 128;
                    }
                    this.f6524m.addAll(qVar.f6513l);
                }
            }
            if (!qVar.f6514m.isEmpty()) {
                if (this.f6525n.isEmpty()) {
                    this.f6525n = qVar.f6514m;
                    this.f6517d &= -257;
                } else {
                    if ((this.f6517d & 256) != 256) {
                        this.f6525n = new ArrayList(this.f6525n);
                        this.f6517d |= 256;
                    }
                    this.f6525n.addAll(qVar.f6514m);
                }
            }
            k(qVar);
            this.f10281a = this.f10281a.l(qVar.f6505b);
        }

        /* JADX WARN: Removed duplicated region for block: B:15:0x001c  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void p(mb.d r2, mb.f r3) throws java.lang.Throwable {
            /*
                r1 = this;
                gb.q$a r0 = gb.q.f6504r     // Catch: mb.j -> Le java.lang.Throwable -> L10
                r0.getClass()     // Catch: mb.j -> Le java.lang.Throwable -> L10
                gb.q r0 = new gb.q     // Catch: mb.j -> Le java.lang.Throwable -> L10
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
                gb.q r3 = (gb.q) r3     // Catch: java.lang.Throwable -> L10
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
            throw new UnsupportedOperationException("Method not decompiled: gb.q.b.p(mb.d, mb.f):void");
        }
    }

    static {
        q qVar = new q(0);
        f6503q = qVar;
        qVar.q();
    }

    public q() {
        throw null;
    }

    public q(int r12) {
        this.f6515n = (byte) -1;
        this.f6516p = -1;
        this.f6505b = mb.c.f10255a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v0 */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v2, types: [boolean] */
    public q(mb.d dVar, mb.f fVar) throws mb.j {
        List list;
        mb.b bVar;
        Object objG;
        this.f6515n = (byte) -1;
        this.f6516p = -1;
        q();
        c.b bVar2 = new c.b();
        mb.e eVarJ = mb.e.j(bVar2, 1);
        boolean z10 = false;
        int r42 = 0;
        while (true) {
            ?? O = 128;
            if (z10) {
                if ((r42 & 4) == 4) {
                    this.f = Collections.unmodifiableList(this.f);
                }
                if ((r42 & 128) == 128) {
                    this.f6513l = Collections.unmodifiableList(this.f6513l);
                }
                if ((r42 & 256) == 256) {
                    this.f6514m = Collections.unmodifiableList(this.f6514m);
                }
                try {
                    eVarJ.i();
                } catch (IOException unused) {
                } catch (Throwable th2) {
                    this.f6505b = bVar2.c();
                    throw th2;
                }
                this.f6505b = bVar2.c();
                m();
                return;
            }
            try {
                try {
                    int r82 = dVar.n();
                    p.c cVarS = null;
                    switch (r82) {
                        case 0:
                            z10 = true;
                        case 8:
                            this.f6506c |= 1;
                            this.f6507d = dVar.k();
                        case 16:
                            this.f6506c |= 2;
                            this.f6508e = dVar.k();
                        case 26:
                            if ((r42 & 4) != 4) {
                                this.f = new ArrayList();
                                r42 |= 4;
                            }
                            list = this.f;
                            bVar = r.f6527p;
                            objG = dVar.g(bVar, fVar);
                            list.add(objG);
                        case 34:
                            if ((this.f6506c & 4) == 4) {
                                p pVar = this.f6509g;
                                pVar.getClass();
                                cVarS = p.s(pVar);
                            }
                            p pVar2 = (p) dVar.g(p.f6454x, fVar);
                            this.f6509g = pVar2;
                            if (cVarS != null) {
                                cVarS.n(pVar2);
                                this.f6509g = cVarS.l();
                            }
                            this.f6506c |= 4;
                        case 40:
                            this.f6506c |= 8;
                            this.f6510h = dVar.k();
                        case 50:
                            if ((this.f6506c & 16) == 16) {
                                p pVar3 = this.f6511j;
                                pVar3.getClass();
                                cVarS = p.s(pVar3);
                            }
                            p pVar4 = (p) dVar.g(p.f6454x, fVar);
                            this.f6511j = pVar4;
                            if (cVarS != null) {
                                cVarS.n(pVar4);
                                this.f6511j = cVarS.l();
                            }
                            this.f6506c |= 16;
                        case 56:
                            this.f6506c |= 32;
                            this.f6512k = dVar.k();
                        case 66:
                            if ((r42 & 128) != 128) {
                                this.f6513l = new ArrayList();
                                r42 |= 128;
                            }
                            list = this.f6513l;
                            bVar = gb.a.f6148h;
                            objG = dVar.g(bVar, fVar);
                            list.add(objG);
                        case 248:
                            if ((r42 & 256) != 256) {
                                this.f6514m = new ArrayList();
                                r42 |= 256;
                            }
                            list = this.f6514m;
                            objG = Integer.valueOf(dVar.k());
                            list.add(objG);
                        case ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION /* 250 */:
                            int r83 = dVar.d(dVar.k());
                            if ((r42 & 256) != 256 && dVar.b() > 0) {
                                this.f6514m = new ArrayList();
                                r42 |= 256;
                            }
                            while (dVar.b() > 0) {
                                this.f6514m.add(Integer.valueOf(dVar.k()));
                            }
                            dVar.c(r83);
                            break;
                        default:
                            O = o(dVar, eVarJ, fVar, r82);
                            if (O == 0) {
                                z10 = true;
                            }
                    }
                } catch (Throwable th3) {
                    if ((r42 & 4) == 4) {
                        this.f = Collections.unmodifiableList(this.f);
                    }
                    if ((r42 & 128) == O) {
                        this.f6513l = Collections.unmodifiableList(this.f6513l);
                    }
                    if ((r42 & 256) == 256) {
                        this.f6514m = Collections.unmodifiableList(this.f6514m);
                    }
                    try {
                        eVarJ.i();
                    } catch (IOException unused2) {
                    } catch (Throwable th4) {
                        this.f6505b = bVar2.c();
                        throw th4;
                    }
                    this.f6505b = bVar2.c();
                    m();
                    throw th3;
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
    }

    @Override // mb.q
    public final boolean b() {
        byte b10 = this.f6515n;
        if (b10 == 1) {
            return true;
        }
        if (b10 == 0) {
            return false;
        }
        if (!((this.f6506c & 2) == 2)) {
            this.f6515n = (byte) 0;
            return false;
        }
        for (int r02 = 0; r02 < this.f.size(); r02++) {
            if (!this.f.get(r02).b()) {
                this.f6515n = (byte) 0;
                return false;
            }
        }
        if (((this.f6506c & 4) == 4) && !this.f6509g.b()) {
            this.f6515n = (byte) 0;
            return false;
        }
        if (((this.f6506c & 16) == 16) && !this.f6511j.b()) {
            this.f6515n = (byte) 0;
            return false;
        }
        for (int r03 = 0; r03 < this.f6513l.size(); r03++) {
            if (!this.f6513l.get(r03).b()) {
                this.f6515n = (byte) 0;
                return false;
            }
        }
        if (i()) {
            this.f6515n = (byte) 1;
            return true;
        }
        this.f6515n = (byte) 0;
        return false;
    }

    @Override // mb.p
    public final int c() {
        int r02 = this.f6516p;
        if (r02 != -1) {
            return r02;
        }
        int r03 = (this.f6506c & 1) == 1 ? mb.e.b(1, this.f6507d) + 0 : 0;
        if ((this.f6506c & 2) == 2) {
            r03 += mb.e.b(2, this.f6508e);
        }
        for (int r12 = 0; r12 < this.f.size(); r12++) {
            r03 += mb.e.d(3, this.f.get(r12));
        }
        if ((this.f6506c & 4) == 4) {
            r03 += mb.e.d(4, this.f6509g);
        }
        if ((this.f6506c & 8) == 8) {
            r03 += mb.e.b(5, this.f6510h);
        }
        if ((this.f6506c & 16) == 16) {
            r03 += mb.e.d(6, this.f6511j);
        }
        if ((this.f6506c & 32) == 32) {
            r03 += mb.e.b(7, this.f6512k);
        }
        for (int r13 = 0; r13 < this.f6513l.size(); r13++) {
            r03 += mb.e.d(8, this.f6513l.get(r13));
        }
        int r14 = 0;
        for (int r22 = 0; r22 < this.f6514m.size(); r22++) {
            r14 += mb.e.c(this.f6514m.get(r22).intValue());
        }
        int size = this.f6505b.size() + j() + (this.f6514m.size() * 2) + r03 + r14;
        this.f6516p = size;
        return size;
    }

    @Override // mb.p
    public final void d(mb.e eVar) throws IOException {
        c();
        h.c.a aVar = new h.c.a(this);
        if ((this.f6506c & 1) == 1) {
            eVar.m(1, this.f6507d);
        }
        if ((this.f6506c & 2) == 2) {
            eVar.m(2, this.f6508e);
        }
        for (int r22 = 0; r22 < this.f.size(); r22++) {
            eVar.o(3, this.f.get(r22));
        }
        if ((this.f6506c & 4) == 4) {
            eVar.o(4, this.f6509g);
        }
        if ((this.f6506c & 8) == 8) {
            eVar.m(5, this.f6510h);
        }
        if ((this.f6506c & 16) == 16) {
            eVar.o(6, this.f6511j);
        }
        if ((this.f6506c & 32) == 32) {
            eVar.m(7, this.f6512k);
        }
        for (int r23 = 0; r23 < this.f6513l.size(); r23++) {
            eVar.o(8, this.f6513l.get(r23));
        }
        for (int r12 = 0; r12 < this.f6514m.size(); r12++) {
            eVar.m(31, this.f6514m.get(r12).intValue());
        }
        aVar.a(200, eVar);
        eVar.r(this.f6505b);
    }

    @Override // mb.q
    public final mb.p e() {
        return f6503q;
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

    public final void q() {
        this.f6507d = 6;
        this.f6508e = 0;
        this.f = Collections.emptyList();
        p pVar = p.w;
        this.f6509g = pVar;
        this.f6510h = 0;
        this.f6511j = pVar;
        this.f6512k = 0;
        this.f6513l = Collections.emptyList();
        this.f6514m = Collections.emptyList();
    }

    public q(h.b bVar) {
        super(bVar);
        this.f6515n = (byte) -1;
        this.f6516p = -1;
        this.f6505b = bVar.f10281a;
    }
}
