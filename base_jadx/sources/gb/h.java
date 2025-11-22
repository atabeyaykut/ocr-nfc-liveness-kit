package gb;

import androidx.recyclerview.widget.ItemTouchHelper;
import gb.d;
import gb.p;
import gb.s;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import mb.a;
import mb.c;
import mb.h;
import mb.p;

/* loaded from: classes2.dex */
public final class h extends h.c<h> {

    /* renamed from: x, reason: collision with root package name */
    public static final h f6325x;

    /* renamed from: y, reason: collision with root package name */
    public static final a f6326y = new a();

    /* renamed from: b, reason: collision with root package name */
    public final mb.c f6327b;

    /* renamed from: c, reason: collision with root package name */
    public int f6328c;

    /* renamed from: d, reason: collision with root package name */
    public int f6329d;

    /* renamed from: e, reason: collision with root package name */
    public int f6330e;
    public int f;

    /* renamed from: g, reason: collision with root package name */
    public p f6331g;

    /* renamed from: h, reason: collision with root package name */
    public int f6332h;

    /* renamed from: j, reason: collision with root package name */
    public List<r> f6333j;

    /* renamed from: k, reason: collision with root package name */
    public p f6334k;

    /* renamed from: l, reason: collision with root package name */
    public int f6335l;

    /* renamed from: m, reason: collision with root package name */
    public List<p> f6336m;

    /* renamed from: n, reason: collision with root package name */
    public List<Integer> f6337n;

    /* renamed from: p, reason: collision with root package name */
    public int f6338p;

    /* renamed from: q, reason: collision with root package name */
    public List<t> f6339q;

    /* renamed from: r, reason: collision with root package name */
    public s f6340r;

    /* renamed from: s, reason: collision with root package name */
    public List<Integer> f6341s;

    /* renamed from: t, reason: collision with root package name */
    public d f6342t;

    /* renamed from: v, reason: collision with root package name */
    public byte f6343v;
    public int w;

    public static class a extends mb.b<h> {
        @Override // mb.r
        public final Object a(mb.d dVar, mb.f fVar) throws mb.j {
            return new h(dVar, fVar);
        }
    }

    public static final class b extends h.b<h, b> {

        /* renamed from: d, reason: collision with root package name */
        public int f6344d;

        /* renamed from: e, reason: collision with root package name */
        public int f6345e = 6;
        public int f = 6;

        /* renamed from: g, reason: collision with root package name */
        public int f6346g;

        /* renamed from: h, reason: collision with root package name */
        public p f6347h;

        /* renamed from: j, reason: collision with root package name */
        public int f6348j;

        /* renamed from: k, reason: collision with root package name */
        public List<r> f6349k;

        /* renamed from: l, reason: collision with root package name */
        public p f6350l;

        /* renamed from: m, reason: collision with root package name */
        public int f6351m;

        /* renamed from: n, reason: collision with root package name */
        public List<p> f6352n;

        /* renamed from: p, reason: collision with root package name */
        public List<Integer> f6353p;

        /* renamed from: q, reason: collision with root package name */
        public List<t> f6354q;

        /* renamed from: r, reason: collision with root package name */
        public s f6355r;

        /* renamed from: s, reason: collision with root package name */
        public List<Integer> f6356s;

        /* renamed from: t, reason: collision with root package name */
        public d f6357t;

        public b() {
            p pVar = p.w;
            this.f6347h = pVar;
            this.f6349k = Collections.emptyList();
            this.f6350l = pVar;
            this.f6352n = Collections.emptyList();
            this.f6353p = Collections.emptyList();
            this.f6354q = Collections.emptyList();
            this.f6355r = s.f6549g;
            this.f6356s = Collections.emptyList();
            this.f6357t = d.f6263e;
        }

        @Override // mb.a.AbstractC0188a, mb.p.a
        public final /* bridge */ /* synthetic */ p.a E(mb.d dVar, mb.f fVar) throws Throwable {
            p(dVar, fVar);
            return this;
        }

        @Override // mb.p.a
        public final mb.p build() {
            h hVarL = l();
            if (hVarL.b()) {
                return hVarL;
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
            n((h) hVar);
            return this;
        }

        public final h l() {
            h hVar = new h(this);
            int r12 = this.f6344d;
            int r32 = (r12 & 1) != 1 ? 0 : 1;
            hVar.f6329d = this.f6345e;
            if ((r12 & 2) == 2) {
                r32 |= 2;
            }
            hVar.f6330e = this.f;
            if ((r12 & 4) == 4) {
                r32 |= 4;
            }
            hVar.f = this.f6346g;
            if ((r12 & 8) == 8) {
                r32 |= 8;
            }
            hVar.f6331g = this.f6347h;
            if ((r12 & 16) == 16) {
                r32 |= 16;
            }
            hVar.f6332h = this.f6348j;
            if ((r12 & 32) == 32) {
                this.f6349k = Collections.unmodifiableList(this.f6349k);
                this.f6344d &= -33;
            }
            hVar.f6333j = this.f6349k;
            if ((r12 & 64) == 64) {
                r32 |= 32;
            }
            hVar.f6334k = this.f6350l;
            if ((r12 & 128) == 128) {
                r32 |= 64;
            }
            hVar.f6335l = this.f6351m;
            if ((this.f6344d & 256) == 256) {
                this.f6352n = Collections.unmodifiableList(this.f6352n);
                this.f6344d &= -257;
            }
            hVar.f6336m = this.f6352n;
            if ((this.f6344d & 512) == 512) {
                this.f6353p = Collections.unmodifiableList(this.f6353p);
                this.f6344d &= -513;
            }
            hVar.f6337n = this.f6353p;
            if ((this.f6344d & 1024) == 1024) {
                this.f6354q = Collections.unmodifiableList(this.f6354q);
                this.f6344d &= -1025;
            }
            hVar.f6339q = this.f6354q;
            if ((r12 & 2048) == 2048) {
                r32 |= 128;
            }
            hVar.f6340r = this.f6355r;
            if ((this.f6344d & 4096) == 4096) {
                this.f6356s = Collections.unmodifiableList(this.f6356s);
                this.f6344d &= -4097;
            }
            hVar.f6341s = this.f6356s;
            if ((r12 & 8192) == 8192) {
                r32 |= 256;
            }
            hVar.f6342t = this.f6357t;
            hVar.f6328c = r32;
            return hVar;
        }

        public final void n(h hVar) {
            d dVar;
            s sVar;
            p pVar;
            p pVar2;
            if (hVar == h.f6325x) {
                return;
            }
            int r02 = hVar.f6328c;
            if ((r02 & 1) == 1) {
                int r12 = hVar.f6329d;
                this.f6344d |= 1;
                this.f6345e = r12;
            }
            if ((r02 & 2) == 2) {
                int r13 = hVar.f6330e;
                this.f6344d = 2 | this.f6344d;
                this.f = r13;
            }
            if ((r02 & 4) == 4) {
                int r14 = hVar.f;
                this.f6344d = 4 | this.f6344d;
                this.f6346g = r14;
            }
            if ((r02 & 8) == 8) {
                p pVarL = hVar.f6331g;
                if ((this.f6344d & 8) == 8 && (pVar2 = this.f6347h) != p.w) {
                    p.c cVarS = p.s(pVar2);
                    cVarS.n(pVarL);
                    pVarL = cVarS.l();
                }
                this.f6347h = pVarL;
                this.f6344d |= 8;
            }
            if ((hVar.f6328c & 16) == 16) {
                int r03 = hVar.f6332h;
                this.f6344d = 16 | this.f6344d;
                this.f6348j = r03;
            }
            if (!hVar.f6333j.isEmpty()) {
                if (this.f6349k.isEmpty()) {
                    this.f6349k = hVar.f6333j;
                    this.f6344d &= -33;
                } else {
                    if ((this.f6344d & 32) != 32) {
                        this.f6349k = new ArrayList(this.f6349k);
                        this.f6344d |= 32;
                    }
                    this.f6349k.addAll(hVar.f6333j);
                }
            }
            if ((hVar.f6328c & 32) == 32) {
                p pVarL2 = hVar.f6334k;
                if ((this.f6344d & 64) == 64 && (pVar = this.f6350l) != p.w) {
                    p.c cVarS2 = p.s(pVar);
                    cVarS2.n(pVarL2);
                    pVarL2 = cVarS2.l();
                }
                this.f6350l = pVarL2;
                this.f6344d |= 64;
            }
            if ((hVar.f6328c & 64) == 64) {
                int r04 = hVar.f6335l;
                this.f6344d |= 128;
                this.f6351m = r04;
            }
            if (!hVar.f6336m.isEmpty()) {
                if (this.f6352n.isEmpty()) {
                    this.f6352n = hVar.f6336m;
                    this.f6344d &= -257;
                } else {
                    if ((this.f6344d & 256) != 256) {
                        this.f6352n = new ArrayList(this.f6352n);
                        this.f6344d |= 256;
                    }
                    this.f6352n.addAll(hVar.f6336m);
                }
            }
            if (!hVar.f6337n.isEmpty()) {
                if (this.f6353p.isEmpty()) {
                    this.f6353p = hVar.f6337n;
                    this.f6344d &= -513;
                } else {
                    if ((this.f6344d & 512) != 512) {
                        this.f6353p = new ArrayList(this.f6353p);
                        this.f6344d |= 512;
                    }
                    this.f6353p.addAll(hVar.f6337n);
                }
            }
            if (!hVar.f6339q.isEmpty()) {
                if (this.f6354q.isEmpty()) {
                    this.f6354q = hVar.f6339q;
                    this.f6344d &= -1025;
                } else {
                    if ((this.f6344d & 1024) != 1024) {
                        this.f6354q = new ArrayList(this.f6354q);
                        this.f6344d |= 1024;
                    }
                    this.f6354q.addAll(hVar.f6339q);
                }
            }
            if ((hVar.f6328c & 128) == 128) {
                s sVarK = hVar.f6340r;
                if ((this.f6344d & 2048) == 2048 && (sVar = this.f6355r) != s.f6549g) {
                    s.b bVarI = s.i(sVar);
                    bVarI.l(sVarK);
                    sVarK = bVarI.k();
                }
                this.f6355r = sVarK;
                this.f6344d |= 2048;
            }
            if (!hVar.f6341s.isEmpty()) {
                if (this.f6356s.isEmpty()) {
                    this.f6356s = hVar.f6341s;
                    this.f6344d &= -4097;
                } else {
                    if ((this.f6344d & 4096) != 4096) {
                        this.f6356s = new ArrayList(this.f6356s);
                        this.f6344d |= 4096;
                    }
                    this.f6356s.addAll(hVar.f6341s);
                }
            }
            if ((hVar.f6328c & 256) == 256) {
                d dVarK = hVar.f6342t;
                if ((this.f6344d & 8192) == 8192 && (dVar = this.f6357t) != d.f6263e) {
                    d.b bVar = new d.b();
                    bVar.l(dVar);
                    bVar.l(dVarK);
                    dVarK = bVar.k();
                }
                this.f6357t = dVarK;
                this.f6344d |= 8192;
            }
            k(hVar);
            this.f10281a = this.f10281a.l(hVar.f6327b);
        }

        /* JADX WARN: Removed duplicated region for block: B:15:0x001c  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void p(mb.d r2, mb.f r3) throws java.lang.Throwable {
            /*
                r1 = this;
                gb.h$a r0 = gb.h.f6326y     // Catch: mb.j -> Le java.lang.Throwable -> L10
                r0.getClass()     // Catch: mb.j -> Le java.lang.Throwable -> L10
                gb.h r0 = new gb.h     // Catch: mb.j -> Le java.lang.Throwable -> L10
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
                gb.h r3 = (gb.h) r3     // Catch: java.lang.Throwable -> L10
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
            throw new UnsupportedOperationException("Method not decompiled: gb.h.b.p(mb.d, mb.f):void");
        }
    }

    static {
        h hVar = new h(0);
        f6325x = hVar;
        hVar.q();
    }

    public h() {
        throw null;
    }

    public h(int r12) {
        this.f6338p = -1;
        this.f6343v = (byte) -1;
        this.w = -1;
        this.f6327b = mb.c.f10255a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v19, types: [java.lang.Integer] */
    /* JADX WARN: Type inference failed for: r5v0 */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v2, types: [boolean] */
    public h(mb.d dVar, mb.f fVar) throws mb.j {
        int r12;
        List list;
        mb.b bVar;
        int r10;
        mb.p pVarG;
        this.f6338p = -1;
        this.f6343v = (byte) -1;
        this.w = -1;
        q();
        c.b bVar2 = new c.b();
        mb.e eVarJ = mb.e.j(bVar2, 1);
        boolean z10 = false;
        int r42 = 0;
        while (true) {
            ?? O = 1024;
            if (z10) {
                if ((r42 & 32) == 32) {
                    this.f6333j = Collections.unmodifiableList(this.f6333j);
                }
                if ((r42 & 1024) == 1024) {
                    this.f6339q = Collections.unmodifiableList(this.f6339q);
                }
                if ((r42 & 256) == 256) {
                    this.f6336m = Collections.unmodifiableList(this.f6336m);
                }
                if ((r42 & 512) == 512) {
                    this.f6337n = Collections.unmodifiableList(this.f6337n);
                }
                if ((r42 & 4096) == 4096) {
                    this.f6341s = Collections.unmodifiableList(this.f6341s);
                }
                try {
                    eVarJ.i();
                } catch (IOException unused) {
                } catch (Throwable th2) {
                    this.f6327b = bVar2.c();
                    throw th2;
                }
                this.f6327b = bVar2.c();
                m();
                return;
            }
            try {
                try {
                    int r102 = dVar.n();
                    p.c cVarS = null;
                    d.b bVar3 = null;
                    s.b bVarI = null;
                    p.c cVarS2 = null;
                    switch (r102) {
                        case 0:
                            z10 = true;
                        case 8:
                            this.f6328c |= 2;
                            this.f6330e = dVar.k();
                        case 16:
                            this.f6328c |= 4;
                            this.f = dVar.k();
                        case 26:
                            r12 = 8;
                            if ((this.f6328c & 8) == 8) {
                                p pVar = this.f6331g;
                                pVar.getClass();
                                cVarS = p.s(pVar);
                            }
                            p pVar2 = (p) dVar.g(p.f6454x, fVar);
                            this.f6331g = pVar2;
                            if (cVarS != null) {
                                cVarS.n(pVar2);
                                this.f6331g = cVarS.l();
                            }
                            this.f6328c |= r12;
                        case 34:
                            if ((r42 & 32) != 32) {
                                this.f6333j = new ArrayList();
                                r42 |= 32;
                            }
                            list = this.f6333j;
                            bVar = r.f6527p;
                            pVarG = dVar.g(bVar, fVar);
                            list.add(pVarG);
                        case 42:
                            if ((this.f6328c & 32) == 32) {
                                p pVar3 = this.f6334k;
                                pVar3.getClass();
                                cVarS2 = p.s(pVar3);
                            }
                            p pVar4 = (p) dVar.g(p.f6454x, fVar);
                            this.f6334k = pVar4;
                            if (cVarS2 != null) {
                                cVarS2.n(pVar4);
                                this.f6334k = cVarS2.l();
                            }
                            this.f6328c |= 32;
                        case 50:
                            if ((r42 & 1024) != 1024) {
                                this.f6339q = new ArrayList();
                                r42 |= 1024;
                            }
                            list = this.f6339q;
                            bVar = t.f6560n;
                            pVarG = dVar.g(bVar, fVar);
                            list.add(pVarG);
                        case 56:
                            this.f6328c |= 16;
                            this.f6332h = dVar.k();
                        case 64:
                            this.f6328c |= 64;
                            this.f6335l = dVar.k();
                        case 72:
                            this.f6328c |= 1;
                            this.f6329d = dVar.k();
                        case 82:
                            if ((r42 & 256) != 256) {
                                this.f6336m = new ArrayList();
                                r42 |= 256;
                            }
                            list = this.f6336m;
                            bVar = p.f6454x;
                            pVarG = dVar.g(bVar, fVar);
                            list.add(pVarG);
                        case 88:
                            if ((r42 & 512) != 512) {
                                this.f6337n = new ArrayList();
                                r42 |= 512;
                            }
                            list = this.f6337n;
                            pVarG = Integer.valueOf(dVar.k());
                            list.add(pVarG);
                        case 90:
                            r10 = dVar.d(dVar.k());
                            if ((r42 & 512) != 512 && dVar.b() > 0) {
                                this.f6337n = new ArrayList();
                                r42 |= 512;
                            }
                            while (dVar.b() > 0) {
                                this.f6337n.add(Integer.valueOf(dVar.k()));
                            }
                            dVar.c(r10);
                            break;
                        case 242:
                            r12 = 128;
                            if ((this.f6328c & 128) == 128) {
                                s sVar = this.f6340r;
                                sVar.getClass();
                                bVarI = s.i(sVar);
                            }
                            s sVar2 = (s) dVar.g(s.f6550h, fVar);
                            this.f6340r = sVar2;
                            if (bVarI != null) {
                                bVarI.l(sVar2);
                                this.f6340r = bVarI.k();
                            }
                            this.f6328c |= r12;
                        case 248:
                            if ((r42 & 4096) != 4096) {
                                this.f6341s = new ArrayList();
                                r42 |= 4096;
                            }
                            list = this.f6341s;
                            pVarG = Integer.valueOf(dVar.k());
                            list.add(pVarG);
                        case ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION /* 250 */:
                            r10 = dVar.d(dVar.k());
                            if ((r42 & 4096) != 4096 && dVar.b() > 0) {
                                this.f6341s = new ArrayList();
                                r42 |= 4096;
                            }
                            while (dVar.b() > 0) {
                                this.f6341s.add(Integer.valueOf(dVar.k()));
                            }
                            dVar.c(r10);
                            break;
                        case 258:
                            if ((this.f6328c & 256) == 256) {
                                d dVar2 = this.f6342t;
                                dVar2.getClass();
                                bVar3 = new d.b();
                                bVar3.l(dVar2);
                            }
                            d dVar3 = (d) dVar.g(d.f, fVar);
                            this.f6342t = dVar3;
                            if (bVar3 != null) {
                                bVar3.l(dVar3);
                                this.f6342t = bVar3.k();
                            }
                            this.f6328c |= 256;
                        default:
                            O = o(dVar, eVarJ, fVar, r102);
                            if (O == 0) {
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
            } catch (Throwable th3) {
                if ((r42 & 32) == 32) {
                    this.f6333j = Collections.unmodifiableList(this.f6333j);
                }
                if ((r42 & 1024) == O) {
                    this.f6339q = Collections.unmodifiableList(this.f6339q);
                }
                if ((r42 & 256) == 256) {
                    this.f6336m = Collections.unmodifiableList(this.f6336m);
                }
                if ((r42 & 512) == 512) {
                    this.f6337n = Collections.unmodifiableList(this.f6337n);
                }
                if ((r42 & 4096) == 4096) {
                    this.f6341s = Collections.unmodifiableList(this.f6341s);
                }
                try {
                    eVarJ.i();
                } catch (IOException unused2) {
                } catch (Throwable th4) {
                    this.f6327b = bVar2.c();
                    throw th4;
                }
                this.f6327b = bVar2.c();
                m();
                throw th3;
            }
        }
    }

    @Override // mb.q
    public final boolean b() {
        byte b10 = this.f6343v;
        if (b10 == 1) {
            return true;
        }
        if (b10 == 0) {
            return false;
        }
        int r02 = this.f6328c;
        if (!((r02 & 4) == 4)) {
            this.f6343v = (byte) 0;
            return false;
        }
        if (((r02 & 8) == 8) && !this.f6331g.b()) {
            this.f6343v = (byte) 0;
            return false;
        }
        for (int r03 = 0; r03 < this.f6333j.size(); r03++) {
            if (!this.f6333j.get(r03).b()) {
                this.f6343v = (byte) 0;
                return false;
            }
        }
        if (((this.f6328c & 32) == 32) && !this.f6334k.b()) {
            this.f6343v = (byte) 0;
            return false;
        }
        for (int r04 = 0; r04 < this.f6336m.size(); r04++) {
            if (!this.f6336m.get(r04).b()) {
                this.f6343v = (byte) 0;
                return false;
            }
        }
        for (int r05 = 0; r05 < this.f6339q.size(); r05++) {
            if (!this.f6339q.get(r05).b()) {
                this.f6343v = (byte) 0;
                return false;
            }
        }
        if (((this.f6328c & 128) == 128) && !this.f6340r.b()) {
            this.f6343v = (byte) 0;
            return false;
        }
        if (((this.f6328c & 256) == 256) && !this.f6342t.b()) {
            this.f6343v = (byte) 0;
            return false;
        }
        if (i()) {
            this.f6343v = (byte) 1;
            return true;
        }
        this.f6343v = (byte) 0;
        return false;
    }

    @Override // mb.p
    public final int c() {
        int r02 = this.w;
        if (r02 != -1) {
            return r02;
        }
        int r03 = (this.f6328c & 2) == 2 ? mb.e.b(1, this.f6330e) + 0 : 0;
        if ((this.f6328c & 4) == 4) {
            r03 += mb.e.b(2, this.f);
        }
        if ((this.f6328c & 8) == 8) {
            r03 += mb.e.d(3, this.f6331g);
        }
        for (int r42 = 0; r42 < this.f6333j.size(); r42++) {
            r03 += mb.e.d(4, this.f6333j.get(r42));
        }
        if ((this.f6328c & 32) == 32) {
            r03 += mb.e.d(5, this.f6334k);
        }
        for (int r43 = 0; r43 < this.f6339q.size(); r43++) {
            r03 += mb.e.d(6, this.f6339q.get(r43));
        }
        if ((this.f6328c & 16) == 16) {
            r03 += mb.e.b(7, this.f6332h);
        }
        if ((this.f6328c & 64) == 64) {
            r03 += mb.e.b(8, this.f6335l);
        }
        if ((this.f6328c & 1) == 1) {
            r03 += mb.e.b(9, this.f6329d);
        }
        for (int r22 = 0; r22 < this.f6336m.size(); r22++) {
            r03 += mb.e.d(10, this.f6336m.get(r22));
        }
        int r44 = 0;
        for (int r23 = 0; r23 < this.f6337n.size(); r23++) {
            r44 += mb.e.c(this.f6337n.get(r23).intValue());
        }
        int r04 = r03 + r44;
        if (!this.f6337n.isEmpty()) {
            r04 = r04 + 1 + mb.e.c(r44);
        }
        this.f6338p = r44;
        if ((this.f6328c & 128) == 128) {
            r04 += mb.e.d(30, this.f6340r);
        }
        int r24 = 0;
        for (int r32 = 0; r32 < this.f6341s.size(); r32++) {
            r24 += mb.e.c(this.f6341s.get(r32).intValue());
        }
        int size = (this.f6341s.size() * 2) + r04 + r24;
        if ((this.f6328c & 256) == 256) {
            size += mb.e.d(32, this.f6342t);
        }
        int size2 = this.f6327b.size() + j() + size;
        this.w = size2;
        return size2;
    }

    @Override // mb.p
    public final void d(mb.e eVar) throws IOException {
        c();
        h.c.a aVar = new h.c.a(this);
        if ((this.f6328c & 2) == 2) {
            eVar.m(1, this.f6330e);
        }
        if ((this.f6328c & 4) == 4) {
            eVar.m(2, this.f);
        }
        if ((this.f6328c & 8) == 8) {
            eVar.o(3, this.f6331g);
        }
        for (int r52 = 0; r52 < this.f6333j.size(); r52++) {
            eVar.o(4, this.f6333j.get(r52));
        }
        if ((this.f6328c & 32) == 32) {
            eVar.o(5, this.f6334k);
        }
        for (int r42 = 0; r42 < this.f6339q.size(); r42++) {
            eVar.o(6, this.f6339q.get(r42));
        }
        if ((this.f6328c & 16) == 16) {
            eVar.m(7, this.f6332h);
        }
        if ((this.f6328c & 64) == 64) {
            eVar.m(8, this.f6335l);
        }
        if ((this.f6328c & 1) == 1) {
            eVar.m(9, this.f6329d);
        }
        for (int r22 = 0; r22 < this.f6336m.size(); r22++) {
            eVar.o(10, this.f6336m.get(r22));
        }
        if (this.f6337n.size() > 0) {
            eVar.v(90);
            eVar.v(this.f6338p);
        }
        for (int r23 = 0; r23 < this.f6337n.size(); r23++) {
            eVar.n(this.f6337n.get(r23).intValue());
        }
        if ((this.f6328c & 128) == 128) {
            eVar.o(30, this.f6340r);
        }
        for (int r12 = 0; r12 < this.f6341s.size(); r12++) {
            eVar.m(31, this.f6341s.get(r12).intValue());
        }
        if ((this.f6328c & 256) == 256) {
            eVar.o(32, this.f6342t);
        }
        aVar.a(19000, eVar);
        eVar.r(this.f6327b);
    }

    @Override // mb.q
    public final mb.p e() {
        return f6325x;
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
        this.f6329d = 6;
        this.f6330e = 6;
        this.f = 0;
        p pVar = p.w;
        this.f6331g = pVar;
        this.f6332h = 0;
        this.f6333j = Collections.emptyList();
        this.f6334k = pVar;
        this.f6335l = 0;
        this.f6336m = Collections.emptyList();
        this.f6337n = Collections.emptyList();
        this.f6339q = Collections.emptyList();
        this.f6340r = s.f6549g;
        this.f6341s = Collections.emptyList();
        this.f6342t = d.f6263e;
    }

    public h(h.b bVar) {
        super(bVar);
        this.f6338p = -1;
        this.f6343v = (byte) -1;
        this.w = -1;
        this.f6327b = bVar.f10281a;
    }
}
