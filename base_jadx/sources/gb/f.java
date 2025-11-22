package gb;

import java.io.IOException;
import mb.a;
import mb.c;
import mb.h;
import mb.p;

/* loaded from: classes2.dex */
public final class f extends h.c<f> {

    /* renamed from: g, reason: collision with root package name */
    public static final f f6293g;

    /* renamed from: h, reason: collision with root package name */
    public static final a f6294h = new a();

    /* renamed from: b, reason: collision with root package name */
    public final mb.c f6295b;

    /* renamed from: c, reason: collision with root package name */
    public int f6296c;

    /* renamed from: d, reason: collision with root package name */
    public int f6297d;

    /* renamed from: e, reason: collision with root package name */
    public byte f6298e;
    public int f;

    public static class a extends mb.b<f> {
        @Override // mb.r
        public final Object a(mb.d dVar, mb.f fVar) throws mb.j {
            return new f(dVar, fVar);
        }
    }

    public static final class b extends h.b<f, b> {

        /* renamed from: d, reason: collision with root package name */
        public int f6299d;

        /* renamed from: e, reason: collision with root package name */
        public int f6300e;

        @Override // mb.a.AbstractC0188a, mb.p.a
        public final /* bridge */ /* synthetic */ p.a E(mb.d dVar, mb.f fVar) throws Throwable {
            n(dVar, fVar);
            return this;
        }

        @Override // mb.p.a
        public final mb.p build() {
            f fVar = new f(this);
            int r22 = (this.f6299d & 1) != 1 ? 0 : 1;
            fVar.f6297d = this.f6300e;
            fVar.f6296c = r22;
            if (fVar.b()) {
                return fVar;
            }
            throw new c0.a();
        }

        @Override // mb.h.a
        public final Object clone() throws CloneNotSupportedException {
            b bVar = new b();
            f fVar = new f(this);
            int r32 = (this.f6299d & 1) != 1 ? 0 : 1;
            fVar.f6297d = this.f6300e;
            fVar.f6296c = r32;
            bVar.l(fVar);
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
            f fVar = new f(this);
            int r32 = (this.f6299d & 1) != 1 ? 0 : 1;
            fVar.f6297d = this.f6300e;
            fVar.f6296c = r32;
            bVar.l(fVar);
            return bVar;
        }

        @Override // mb.h.a
        public final /* bridge */ /* synthetic */ h.a j(mb.h hVar) {
            l((f) hVar);
            return this;
        }

        public final void l(f fVar) {
            if (fVar == f.f6293g) {
                return;
            }
            if ((fVar.f6296c & 1) == 1) {
                int r02 = fVar.f6297d;
                this.f6299d = 1 | this.f6299d;
                this.f6300e = r02;
            }
            k(fVar);
            this.f10281a = this.f10281a.l(fVar.f6295b);
        }

        /* JADX WARN: Removed duplicated region for block: B:15:0x001c  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void n(mb.d r2, mb.f r3) throws java.lang.Throwable {
            /*
                r1 = this;
                gb.f$a r0 = gb.f.f6294h     // Catch: mb.j -> Le java.lang.Throwable -> L10
                r0.getClass()     // Catch: mb.j -> Le java.lang.Throwable -> L10
                gb.f r0 = new gb.f     // Catch: mb.j -> Le java.lang.Throwable -> L10
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
                gb.f r3 = (gb.f) r3     // Catch: java.lang.Throwable -> L10
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
            throw new UnsupportedOperationException("Method not decompiled: gb.f.b.n(mb.d, mb.f):void");
        }
    }

    static {
        f fVar = new f(0);
        f6293g = fVar;
        fVar.f6297d = 0;
    }

    public f() {
        throw null;
    }

    public f(int r12) {
        this.f6298e = (byte) -1;
        this.f = -1;
        this.f6295b = mb.c.f10255a;
    }

    public f(mb.d dVar, mb.f fVar) throws mb.j {
        this.f6298e = (byte) -1;
        this.f = -1;
        boolean z10 = false;
        this.f6297d = 0;
        c.b bVar = new c.b();
        mb.e eVarJ = mb.e.j(bVar, 1);
        while (!z10) {
            try {
                try {
                    int r42 = dVar.n();
                    if (r42 != 0) {
                        if (r42 == 8) {
                            this.f6296c |= 1;
                            this.f6297d = dVar.k();
                        } else if (!o(dVar, eVarJ, fVar, r42)) {
                        }
                    }
                    z10 = true;
                } catch (Throwable th2) {
                    try {
                        eVarJ.i();
                    } catch (IOException unused) {
                    } catch (Throwable th3) {
                        this.f6295b = bVar.c();
                        throw th3;
                    }
                    this.f6295b = bVar.c();
                    m();
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
            this.f6295b = bVar.c();
            throw th4;
        }
        this.f6295b = bVar.c();
        m();
    }

    @Override // mb.q
    public final boolean b() {
        byte b10 = this.f6298e;
        if (b10 == 1) {
            return true;
        }
        if (b10 == 0) {
            return false;
        }
        if (i()) {
            this.f6298e = (byte) 1;
            return true;
        }
        this.f6298e = (byte) 0;
        return false;
    }

    @Override // mb.p
    public final int c() {
        int r02 = this.f;
        if (r02 != -1) {
            return r02;
        }
        int size = this.f6295b.size() + j() + ((this.f6296c & 1) == 1 ? 0 + mb.e.b(1, this.f6297d) : 0);
        this.f = size;
        return size;
    }

    @Override // mb.p
    public final void d(mb.e eVar) throws IOException {
        c();
        h.c<MessageType>.a aVarN = n();
        if ((this.f6296c & 1) == 1) {
            eVar.m(1, this.f6297d);
        }
        aVarN.a(200, eVar);
        eVar.r(this.f6295b);
    }

    @Override // mb.q
    public final mb.p e() {
        return f6293g;
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

    public f(h.b bVar) {
        super(bVar);
        this.f6298e = (byte) -1;
        this.f = -1;
        this.f6295b = bVar.f10281a;
    }
}
