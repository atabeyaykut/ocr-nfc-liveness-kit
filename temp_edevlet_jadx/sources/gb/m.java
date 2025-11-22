package gb;

import androidx.recyclerview.widget.ItemTouchHelper;
import gb.p;
import gb.t;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import mb.a;
import mb.c;
import mb.h;
import mb.p;

/* loaded from: classes2.dex */
public final class m extends h.c<m> {

    /* renamed from: x, reason: collision with root package name */
    public static final m f6390x;

    /* renamed from: y, reason: collision with root package name */
    public static final a f6391y = new a();

    /* renamed from: b, reason: collision with root package name */
    public final mb.c f6392b;

    /* renamed from: c, reason: collision with root package name */
    public int f6393c;

    /* renamed from: d, reason: collision with root package name */
    public int f6394d;

    /* renamed from: e, reason: collision with root package name */
    public int f6395e;
    public int f;

    /* renamed from: g, reason: collision with root package name */
    public p f6396g;

    /* renamed from: h, reason: collision with root package name */
    public int f6397h;

    /* renamed from: j, reason: collision with root package name */
    public List<r> f6398j;

    /* renamed from: k, reason: collision with root package name */
    public p f6399k;

    /* renamed from: l, reason: collision with root package name */
    public int f6400l;

    /* renamed from: m, reason: collision with root package name */
    public List<p> f6401m;

    /* renamed from: n, reason: collision with root package name */
    public List<Integer> f6402n;

    /* renamed from: p, reason: collision with root package name */
    public int f6403p;

    /* renamed from: q, reason: collision with root package name */
    public t f6404q;

    /* renamed from: r, reason: collision with root package name */
    public int f6405r;

    /* renamed from: s, reason: collision with root package name */
    public int f6406s;

    /* renamed from: t, reason: collision with root package name */
    public List<Integer> f6407t;

    /* renamed from: v, reason: collision with root package name */
    public byte f6408v;
    public int w;

    public static class a extends mb.b<m> {
        @Override // mb.r
        public final Object a(mb.d dVar, mb.f fVar) throws mb.j {
            return new m(dVar, fVar);
        }
    }

    public static final class b extends h.b<m, b> {

        /* renamed from: d, reason: collision with root package name */
        public int f6409d;

        /* renamed from: e, reason: collision with root package name */
        public int f6410e = 518;
        public int f = 2054;

        /* renamed from: g, reason: collision with root package name */
        public int f6411g;

        /* renamed from: h, reason: collision with root package name */
        public p f6412h;

        /* renamed from: j, reason: collision with root package name */
        public int f6413j;

        /* renamed from: k, reason: collision with root package name */
        public List<r> f6414k;

        /* renamed from: l, reason: collision with root package name */
        public p f6415l;

        /* renamed from: m, reason: collision with root package name */
        public int f6416m;

        /* renamed from: n, reason: collision with root package name */
        public List<p> f6417n;

        /* renamed from: p, reason: collision with root package name */
        public List<Integer> f6418p;

        /* renamed from: q, reason: collision with root package name */
        public t f6419q;

        /* renamed from: r, reason: collision with root package name */
        public int f6420r;

        /* renamed from: s, reason: collision with root package name */
        public int f6421s;

        /* renamed from: t, reason: collision with root package name */
        public List<Integer> f6422t;

        public b() {
            p pVar = p.w;
            this.f6412h = pVar;
            this.f6414k = Collections.emptyList();
            this.f6415l = pVar;
            this.f6417n = Collections.emptyList();
            this.f6418p = Collections.emptyList();
            this.f6419q = t.f6559m;
            this.f6422t = Collections.emptyList();
        }

        @Override // mb.a.AbstractC0188a, mb.p.a
        public final /* bridge */ /* synthetic */ p.a E(mb.d dVar, mb.f fVar) throws Throwable {
            p(dVar, fVar);
            return this;
        }

        @Override // mb.p.a
        public final mb.p build() {
            m mVarL = l();
            if (mVarL.b()) {
                return mVarL;
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
            n((m) hVar);
            return this;
        }

        public final m l() {
            m mVar = new m(this);
            int r12 = this.f6409d;
            int r32 = (r12 & 1) != 1 ? 0 : 1;
            mVar.f6394d = this.f6410e;
            if ((r12 & 2) == 2) {
                r32 |= 2;
            }
            mVar.f6395e = this.f;
            if ((r12 & 4) == 4) {
                r32 |= 4;
            }
            mVar.f = this.f6411g;
            if ((r12 & 8) == 8) {
                r32 |= 8;
            }
            mVar.f6396g = this.f6412h;
            if ((r12 & 16) == 16) {
                r32 |= 16;
            }
            mVar.f6397h = this.f6413j;
            if ((r12 & 32) == 32) {
                this.f6414k = Collections.unmodifiableList(this.f6414k);
                this.f6409d &= -33;
            }
            mVar.f6398j = this.f6414k;
            if ((r12 & 64) == 64) {
                r32 |= 32;
            }
            mVar.f6399k = this.f6415l;
            if ((r12 & 128) == 128) {
                r32 |= 64;
            }
            mVar.f6400l = this.f6416m;
            if ((this.f6409d & 256) == 256) {
                this.f6417n = Collections.unmodifiableList(this.f6417n);
                this.f6409d &= -257;
            }
            mVar.f6401m = this.f6417n;
            if ((this.f6409d & 512) == 512) {
                this.f6418p = Collections.unmodifiableList(this.f6418p);
                this.f6409d &= -513;
            }
            mVar.f6402n = this.f6418p;
            if ((r12 & 1024) == 1024) {
                r32 |= 128;
            }
            mVar.f6404q = this.f6419q;
            if ((r12 & 2048) == 2048) {
                r32 |= 256;
            }
            mVar.f6405r = this.f6420r;
            if ((r12 & 4096) == 4096) {
                r32 |= 512;
            }
            mVar.f6406s = this.f6421s;
            if ((this.f6409d & 8192) == 8192) {
                this.f6422t = Collections.unmodifiableList(this.f6422t);
                this.f6409d &= -8193;
            }
            mVar.f6407t = this.f6422t;
            mVar.f6393c = r32;
            return mVar;
        }

        public final void n(m mVar) {
            t tVar;
            p pVar;
            p pVar2;
            if (mVar == m.f6390x) {
                return;
            }
            int r02 = mVar.f6393c;
            if ((r02 & 1) == 1) {
                int r12 = mVar.f6394d;
                this.f6409d |= 1;
                this.f6410e = r12;
            }
            if ((r02 & 2) == 2) {
                int r13 = mVar.f6395e;
                this.f6409d = 2 | this.f6409d;
                this.f = r13;
            }
            if ((r02 & 4) == 4) {
                int r14 = mVar.f;
                this.f6409d = 4 | this.f6409d;
                this.f6411g = r14;
            }
            if ((r02 & 8) == 8) {
                p pVarL = mVar.f6396g;
                if ((this.f6409d & 8) == 8 && (pVar2 = this.f6412h) != p.w) {
                    p.c cVarS = p.s(pVar2);
                    cVarS.n(pVarL);
                    pVarL = cVarS.l();
                }
                this.f6412h = pVarL;
                this.f6409d |= 8;
            }
            if ((mVar.f6393c & 16) == 16) {
                int r03 = mVar.f6397h;
                this.f6409d = 16 | this.f6409d;
                this.f6413j = r03;
            }
            if (!mVar.f6398j.isEmpty()) {
                if (this.f6414k.isEmpty()) {
                    this.f6414k = mVar.f6398j;
                    this.f6409d &= -33;
                } else {
                    if ((this.f6409d & 32) != 32) {
                        this.f6414k = new ArrayList(this.f6414k);
                        this.f6409d |= 32;
                    }
                    this.f6414k.addAll(mVar.f6398j);
                }
            }
            if ((mVar.f6393c & 32) == 32) {
                p pVarL2 = mVar.f6399k;
                if ((this.f6409d & 64) == 64 && (pVar = this.f6415l) != p.w) {
                    p.c cVarS2 = p.s(pVar);
                    cVarS2.n(pVarL2);
                    pVarL2 = cVarS2.l();
                }
                this.f6415l = pVarL2;
                this.f6409d |= 64;
            }
            if ((mVar.f6393c & 64) == 64) {
                int r04 = mVar.f6400l;
                this.f6409d |= 128;
                this.f6416m = r04;
            }
            if (!mVar.f6401m.isEmpty()) {
                if (this.f6417n.isEmpty()) {
                    this.f6417n = mVar.f6401m;
                    this.f6409d &= -257;
                } else {
                    if ((this.f6409d & 256) != 256) {
                        this.f6417n = new ArrayList(this.f6417n);
                        this.f6409d |= 256;
                    }
                    this.f6417n.addAll(mVar.f6401m);
                }
            }
            if (!mVar.f6402n.isEmpty()) {
                if (this.f6418p.isEmpty()) {
                    this.f6418p = mVar.f6402n;
                    this.f6409d &= -513;
                } else {
                    if ((this.f6409d & 512) != 512) {
                        this.f6418p = new ArrayList(this.f6418p);
                        this.f6409d |= 512;
                    }
                    this.f6418p.addAll(mVar.f6402n);
                }
            }
            if ((mVar.f6393c & 128) == 128) {
                t tVarL = mVar.f6404q;
                if ((this.f6409d & 1024) == 1024 && (tVar = this.f6419q) != t.f6559m) {
                    t.b bVar = new t.b();
                    bVar.n(tVar);
                    bVar.n(tVarL);
                    tVarL = bVar.l();
                }
                this.f6419q = tVarL;
                this.f6409d |= 1024;
            }
            int r05 = mVar.f6393c;
            if ((r05 & 256) == 256) {
                int r15 = mVar.f6405r;
                this.f6409d |= 2048;
                this.f6420r = r15;
            }
            if ((r05 & 512) == 512) {
                int r06 = mVar.f6406s;
                this.f6409d |= 4096;
                this.f6421s = r06;
            }
            if (!mVar.f6407t.isEmpty()) {
                if (this.f6422t.isEmpty()) {
                    this.f6422t = mVar.f6407t;
                    this.f6409d &= -8193;
                } else {
                    if ((this.f6409d & 8192) != 8192) {
                        this.f6422t = new ArrayList(this.f6422t);
                        this.f6409d |= 8192;
                    }
                    this.f6422t.addAll(mVar.f6407t);
                }
            }
            k(mVar);
            this.f10281a = this.f10281a.l(mVar.f6392b);
        }

        /* JADX WARN: Removed duplicated region for block: B:15:0x001c  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void p(mb.d r2, mb.f r3) throws java.lang.Throwable {
            /*
                r1 = this;
                gb.m$a r0 = gb.m.f6391y     // Catch: mb.j -> Le java.lang.Throwable -> L10
                r0.getClass()     // Catch: mb.j -> Le java.lang.Throwable -> L10
                gb.m r0 = new gb.m     // Catch: mb.j -> Le java.lang.Throwable -> L10
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
                gb.m r3 = (gb.m) r3     // Catch: java.lang.Throwable -> L10
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
            throw new UnsupportedOperationException("Method not decompiled: gb.m.b.p(mb.d, mb.f):void");
        }
    }

    static {
        m mVar = new m(0);
        f6390x = mVar;
        mVar.q();
    }

    public m() {
        throw null;
    }

    public m(int r12) {
        this.f6403p = -1;
        this.f6408v = (byte) -1;
        this.w = -1;
        this.f6392b = mb.c.f10255a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v18, types: [java.lang.Integer] */
    /* JADX WARN: Type inference failed for: r5v0 */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v2, types: [boolean] */
    public m(mb.d dVar, mb.f fVar) throws mb.j {
        int r11;
        List list;
        mb.b bVar;
        int r92;
        mb.p pVarG;
        this.f6403p = -1;
        this.f6408v = (byte) -1;
        this.w = -1;
        q();
        c.b bVar2 = new c.b();
        mb.e eVarJ = mb.e.j(bVar2, 1);
        boolean z10 = false;
        int r42 = 0;
        while (true) {
            ?? O = 256;
            if (z10) {
                if ((r42 & 32) == 32) {
                    this.f6398j = Collections.unmodifiableList(this.f6398j);
                }
                if ((r42 & 256) == 256) {
                    this.f6401m = Collections.unmodifiableList(this.f6401m);
                }
                if ((r42 & 512) == 512) {
                    this.f6402n = Collections.unmodifiableList(this.f6402n);
                }
                if ((r42 & 8192) == 8192) {
                    this.f6407t = Collections.unmodifiableList(this.f6407t);
                }
                try {
                    eVarJ.i();
                } catch (IOException unused) {
                } catch (Throwable th2) {
                    this.f6392b = bVar2.c();
                    throw th2;
                }
                this.f6392b = bVar2.c();
                m();
                return;
            }
            try {
                try {
                    try {
                        int r93 = dVar.n();
                        p.c cVarS = null;
                        t.b bVar3 = null;
                        p.c cVarS2 = null;
                        switch (r93) {
                            case 0:
                                z10 = true;
                            case 8:
                                this.f6393c |= 2;
                                this.f6395e = dVar.k();
                            case 16:
                                this.f6393c |= 4;
                                this.f = dVar.k();
                            case 26:
                                r11 = 8;
                                if ((this.f6393c & 8) == 8) {
                                    p pVar = this.f6396g;
                                    pVar.getClass();
                                    cVarS = p.s(pVar);
                                }
                                p pVar2 = (p) dVar.g(p.f6454x, fVar);
                                this.f6396g = pVar2;
                                if (cVarS != null) {
                                    cVarS.n(pVar2);
                                    this.f6396g = cVarS.l();
                                }
                                this.f6393c |= r11;
                            case 34:
                                if ((r42 & 32) != 32) {
                                    this.f6398j = new ArrayList();
                                    r42 |= 32;
                                }
                                list = this.f6398j;
                                bVar = r.f6527p;
                                pVarG = dVar.g(bVar, fVar);
                                list.add(pVarG);
                            case 42:
                                if ((this.f6393c & 32) == 32) {
                                    p pVar3 = this.f6399k;
                                    pVar3.getClass();
                                    cVarS2 = p.s(pVar3);
                                }
                                p pVar4 = (p) dVar.g(p.f6454x, fVar);
                                this.f6399k = pVar4;
                                if (cVarS2 != null) {
                                    cVarS2.n(pVar4);
                                    this.f6399k = cVarS2.l();
                                }
                                this.f6393c |= 32;
                            case 50:
                                r11 = 128;
                                if ((this.f6393c & 128) == 128) {
                                    t tVar = this.f6404q;
                                    tVar.getClass();
                                    bVar3 = new t.b();
                                    bVar3.n(tVar);
                                }
                                t tVar2 = (t) dVar.g(t.f6560n, fVar);
                                this.f6404q = tVar2;
                                if (bVar3 != null) {
                                    bVar3.n(tVar2);
                                    this.f6404q = bVar3.l();
                                }
                                this.f6393c |= r11;
                            case 56:
                                this.f6393c |= 256;
                                this.f6405r = dVar.k();
                            case 64:
                                this.f6393c |= 512;
                                this.f6406s = dVar.k();
                            case 72:
                                this.f6393c |= 16;
                                this.f6397h = dVar.k();
                            case 80:
                                this.f6393c |= 64;
                                this.f6400l = dVar.k();
                            case 88:
                                this.f6393c |= 1;
                                this.f6394d = dVar.k();
                            case 98:
                                if ((r42 & 256) != 256) {
                                    this.f6401m = new ArrayList();
                                    r42 |= 256;
                                }
                                list = this.f6401m;
                                bVar = p.f6454x;
                                pVarG = dVar.g(bVar, fVar);
                                list.add(pVarG);
                            case 104:
                                if ((r42 & 512) != 512) {
                                    this.f6402n = new ArrayList();
                                    r42 |= 512;
                                }
                                list = this.f6402n;
                                pVarG = Integer.valueOf(dVar.k());
                                list.add(pVarG);
                            case 106:
                                r92 = dVar.d(dVar.k());
                                if ((r42 & 512) != 512 && dVar.b() > 0) {
                                    this.f6402n = new ArrayList();
                                    r42 |= 512;
                                }
                                while (dVar.b() > 0) {
                                    this.f6402n.add(Integer.valueOf(dVar.k()));
                                }
                                dVar.c(r92);
                                break;
                            case 248:
                                if ((r42 & 8192) != 8192) {
                                    this.f6407t = new ArrayList();
                                    r42 |= 8192;
                                }
                                list = this.f6407t;
                                pVarG = Integer.valueOf(dVar.k());
                                list.add(pVarG);
                            case ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION /* 250 */:
                                r92 = dVar.d(dVar.k());
                                if ((r42 & 8192) != 8192 && dVar.b() > 0) {
                                    this.f6407t = new ArrayList();
                                    r42 |= 8192;
                                }
                                while (dVar.b() > 0) {
                                    this.f6407t.add(Integer.valueOf(dVar.k()));
                                }
                                dVar.c(r92);
                                break;
                            default:
                                O = o(dVar, eVarJ, fVar, r93);
                                if (O == 0) {
                                    z10 = true;
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
            } catch (Throwable th3) {
                if ((r42 & 32) == 32) {
                    this.f6398j = Collections.unmodifiableList(this.f6398j);
                }
                if ((r42 & 256) == O) {
                    this.f6401m = Collections.unmodifiableList(this.f6401m);
                }
                if ((r42 & 512) == 512) {
                    this.f6402n = Collections.unmodifiableList(this.f6402n);
                }
                if ((r42 & 8192) == 8192) {
                    this.f6407t = Collections.unmodifiableList(this.f6407t);
                }
                try {
                    eVarJ.i();
                } catch (IOException unused2) {
                } catch (Throwable th4) {
                    this.f6392b = bVar2.c();
                    throw th4;
                }
                this.f6392b = bVar2.c();
                m();
                throw th3;
            }
        }
    }

    @Override // mb.q
    public final boolean b() {
        byte b10 = this.f6408v;
        if (b10 == 1) {
            return true;
        }
        if (b10 == 0) {
            return false;
        }
        int r02 = this.f6393c;
        if (!((r02 & 4) == 4)) {
            this.f6408v = (byte) 0;
            return false;
        }
        if (((r02 & 8) == 8) && !this.f6396g.b()) {
            this.f6408v = (byte) 0;
            return false;
        }
        for (int r03 = 0; r03 < this.f6398j.size(); r03++) {
            if (!this.f6398j.get(r03).b()) {
                this.f6408v = (byte) 0;
                return false;
            }
        }
        if (((this.f6393c & 32) == 32) && !this.f6399k.b()) {
            this.f6408v = (byte) 0;
            return false;
        }
        for (int r04 = 0; r04 < this.f6401m.size(); r04++) {
            if (!this.f6401m.get(r04).b()) {
                this.f6408v = (byte) 0;
                return false;
            }
        }
        if (((this.f6393c & 128) == 128) && !this.f6404q.b()) {
            this.f6408v = (byte) 0;
            return false;
        }
        if (i()) {
            this.f6408v = (byte) 1;
            return true;
        }
        this.f6408v = (byte) 0;
        return false;
    }

    @Override // mb.p
    public final int c() {
        int r02 = this.w;
        if (r02 != -1) {
            return r02;
        }
        int r03 = (this.f6393c & 2) == 2 ? mb.e.b(1, this.f6395e) + 0 : 0;
        if ((this.f6393c & 4) == 4) {
            r03 += mb.e.b(2, this.f);
        }
        if ((this.f6393c & 8) == 8) {
            r03 += mb.e.d(3, this.f6396g);
        }
        for (int r42 = 0; r42 < this.f6398j.size(); r42++) {
            r03 += mb.e.d(4, this.f6398j.get(r42));
        }
        if ((this.f6393c & 32) == 32) {
            r03 += mb.e.d(5, this.f6399k);
        }
        if ((this.f6393c & 128) == 128) {
            r03 += mb.e.d(6, this.f6404q);
        }
        if ((this.f6393c & 256) == 256) {
            r03 += mb.e.b(7, this.f6405r);
        }
        if ((this.f6393c & 512) == 512) {
            r03 += mb.e.b(8, this.f6406s);
        }
        if ((this.f6393c & 16) == 16) {
            r03 += mb.e.b(9, this.f6397h);
        }
        if ((this.f6393c & 64) == 64) {
            r03 += mb.e.b(10, this.f6400l);
        }
        if ((this.f6393c & 1) == 1) {
            r03 += mb.e.b(11, this.f6394d);
        }
        for (int r22 = 0; r22 < this.f6401m.size(); r22++) {
            r03 += mb.e.d(12, this.f6401m.get(r22));
        }
        int r43 = 0;
        for (int r23 = 0; r23 < this.f6402n.size(); r23++) {
            r43 += mb.e.c(this.f6402n.get(r23).intValue());
        }
        int r04 = r03 + r43;
        if (!this.f6402n.isEmpty()) {
            r04 = r04 + 1 + mb.e.c(r43);
        }
        this.f6403p = r43;
        int r24 = 0;
        for (int r32 = 0; r32 < this.f6407t.size(); r32++) {
            r24 += mb.e.c(this.f6407t.get(r32).intValue());
        }
        int size = this.f6392b.size() + j() + (this.f6407t.size() * 2) + r04 + r24;
        this.w = size;
        return size;
    }

    @Override // mb.p
    public final void d(mb.e eVar) throws IOException {
        c();
        h.c.a aVar = new h.c.a(this);
        if ((this.f6393c & 2) == 2) {
            eVar.m(1, this.f6395e);
        }
        if ((this.f6393c & 4) == 4) {
            eVar.m(2, this.f);
        }
        if ((this.f6393c & 8) == 8) {
            eVar.o(3, this.f6396g);
        }
        for (int r52 = 0; r52 < this.f6398j.size(); r52++) {
            eVar.o(4, this.f6398j.get(r52));
        }
        if ((this.f6393c & 32) == 32) {
            eVar.o(5, this.f6399k);
        }
        if ((this.f6393c & 128) == 128) {
            eVar.o(6, this.f6404q);
        }
        if ((this.f6393c & 256) == 256) {
            eVar.m(7, this.f6405r);
        }
        if ((this.f6393c & 512) == 512) {
            eVar.m(8, this.f6406s);
        }
        if ((this.f6393c & 16) == 16) {
            eVar.m(9, this.f6397h);
        }
        if ((this.f6393c & 64) == 64) {
            eVar.m(10, this.f6400l);
        }
        if ((this.f6393c & 1) == 1) {
            eVar.m(11, this.f6394d);
        }
        for (int r22 = 0; r22 < this.f6401m.size(); r22++) {
            eVar.o(12, this.f6401m.get(r22));
        }
        if (this.f6402n.size() > 0) {
            eVar.v(106);
            eVar.v(this.f6403p);
        }
        for (int r23 = 0; r23 < this.f6402n.size(); r23++) {
            eVar.n(this.f6402n.get(r23).intValue());
        }
        for (int r12 = 0; r12 < this.f6407t.size(); r12++) {
            eVar.m(31, this.f6407t.get(r12).intValue());
        }
        aVar.a(19000, eVar);
        eVar.r(this.f6392b);
    }

    @Override // mb.q
    public final mb.p e() {
        return f6390x;
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
        this.f6394d = 518;
        this.f6395e = 2054;
        this.f = 0;
        p pVar = p.w;
        this.f6396g = pVar;
        this.f6397h = 0;
        this.f6398j = Collections.emptyList();
        this.f6399k = pVar;
        this.f6400l = 0;
        this.f6401m = Collections.emptyList();
        this.f6402n = Collections.emptyList();
        this.f6404q = t.f6559m;
        this.f6405r = 0;
        this.f6406s = 0;
        this.f6407t = Collections.emptyList();
    }

    public m(h.b bVar) {
        super(bVar);
        this.f6403p = -1;
        this.f6408v = (byte) -1;
        this.w = -1;
        this.f6392b = bVar.f10281a;
    }
}
