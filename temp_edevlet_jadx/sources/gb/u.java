package gb;

import java.io.IOException;
import mb.a;
import mb.c;
import mb.h;
import mb.i;
import mb.p;

/* loaded from: classes2.dex */
public final class u extends mb.h implements mb.q {

    /* renamed from: l, reason: collision with root package name */
    public static final u f6576l;

    /* renamed from: m, reason: collision with root package name */
    public static final a f6577m = new a();

    /* renamed from: a, reason: collision with root package name */
    public final mb.c f6578a;

    /* renamed from: b, reason: collision with root package name */
    public int f6579b;

    /* renamed from: c, reason: collision with root package name */
    public int f6580c;

    /* renamed from: d, reason: collision with root package name */
    public int f6581d;

    /* renamed from: e, reason: collision with root package name */
    public c f6582e;
    public int f;

    /* renamed from: g, reason: collision with root package name */
    public int f6583g;

    /* renamed from: h, reason: collision with root package name */
    public d f6584h;

    /* renamed from: j, reason: collision with root package name */
    public byte f6585j;

    /* renamed from: k, reason: collision with root package name */
    public int f6586k;

    public static class a extends mb.b<u> {
        @Override // mb.r
        public final Object a(mb.d dVar, mb.f fVar) throws mb.j {
            return new u(dVar);
        }
    }

    public static final class b extends h.a<u, b> implements mb.q {

        /* renamed from: b, reason: collision with root package name */
        public int f6587b;

        /* renamed from: c, reason: collision with root package name */
        public int f6588c;

        /* renamed from: d, reason: collision with root package name */
        public int f6589d;
        public int f;

        /* renamed from: g, reason: collision with root package name */
        public int f6591g;

        /* renamed from: e, reason: collision with root package name */
        public c f6590e = c.ERROR;

        /* renamed from: h, reason: collision with root package name */
        public d f6592h = d.LANGUAGE_VERSION;

        @Override // mb.a.AbstractC0188a, mb.p.a
        public final /* bridge */ /* synthetic */ p.a E(mb.d dVar, mb.f fVar) throws Throwable {
            n(dVar, fVar);
            return this;
        }

        @Override // mb.p.a
        public final mb.p build() {
            u uVarK = k();
            if (uVarK.b()) {
                return uVarK;
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
            l((u) hVar);
            return this;
        }

        public final u k() {
            u uVar = new u(this);
            int r12 = this.f6587b;
            int r32 = (r12 & 1) != 1 ? 0 : 1;
            uVar.f6580c = this.f6588c;
            if ((r12 & 2) == 2) {
                r32 |= 2;
            }
            uVar.f6581d = this.f6589d;
            if ((r12 & 4) == 4) {
                r32 |= 4;
            }
            uVar.f6582e = this.f6590e;
            if ((r12 & 8) == 8) {
                r32 |= 8;
            }
            uVar.f = this.f;
            if ((r12 & 16) == 16) {
                r32 |= 16;
            }
            uVar.f6583g = this.f6591g;
            if ((r12 & 32) == 32) {
                r32 |= 32;
            }
            uVar.f6584h = this.f6592h;
            uVar.f6579b = r32;
            return uVar;
        }

        public final void l(u uVar) {
            if (uVar == u.f6576l) {
                return;
            }
            int r02 = uVar.f6579b;
            if ((r02 & 1) == 1) {
                int r12 = uVar.f6580c;
                this.f6587b |= 1;
                this.f6588c = r12;
            }
            if ((r02 & 2) == 2) {
                int r13 = uVar.f6581d;
                this.f6587b = 2 | this.f6587b;
                this.f6589d = r13;
            }
            if ((r02 & 4) == 4) {
                c cVar = uVar.f6582e;
                cVar.getClass();
                this.f6587b = 4 | this.f6587b;
                this.f6590e = cVar;
            }
            int r03 = uVar.f6579b;
            if ((r03 & 8) == 8) {
                int r14 = uVar.f;
                this.f6587b = 8 | this.f6587b;
                this.f = r14;
            }
            if ((r03 & 16) == 16) {
                int r15 = uVar.f6583g;
                this.f6587b = 16 | this.f6587b;
                this.f6591g = r15;
            }
            if ((r03 & 32) == 32) {
                d dVar = uVar.f6584h;
                dVar.getClass();
                this.f6587b = 32 | this.f6587b;
                this.f6592h = dVar;
            }
            this.f10281a = this.f10281a.l(uVar.f6578a);
        }

        /* JADX WARN: Removed duplicated region for block: B:15:0x001c  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void n(mb.d r1, mb.f r2) throws java.lang.Throwable {
            /*
                r0 = this;
                gb.u$a r2 = gb.u.f6577m     // Catch: mb.j -> Le java.lang.Throwable -> L10
                r2.getClass()     // Catch: mb.j -> Le java.lang.Throwable -> L10
                gb.u r2 = new gb.u     // Catch: mb.j -> Le java.lang.Throwable -> L10
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
                gb.u r2 = (gb.u) r2     // Catch: java.lang.Throwable -> L10
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
            throw new UnsupportedOperationException("Method not decompiled: gb.u.b.n(mb.d, mb.f):void");
        }
    }

    public enum c implements i.a {
        WARNING(0),
        ERROR(1),
        HIDDEN(2);


        /* renamed from: a, reason: collision with root package name */
        public final int f6597a;

        c(int r32) {
            this.f6597a = r32;
        }

        @Override // mb.i.a
        public final int f() {
            return this.f6597a;
        }
    }

    public enum d implements i.a {
        LANGUAGE_VERSION(0),
        COMPILER_VERSION(1),
        API_VERSION(2);


        /* renamed from: a, reason: collision with root package name */
        public final int f6602a;

        d(int r32) {
            this.f6602a = r32;
        }

        @Override // mb.i.a
        public final int f() {
            return this.f6602a;
        }
    }

    static {
        u uVar = new u();
        f6576l = uVar;
        uVar.f6580c = 0;
        uVar.f6581d = 0;
        uVar.f6582e = c.ERROR;
        uVar.f = 0;
        uVar.f6583g = 0;
        uVar.f6584h = d.LANGUAGE_VERSION;
    }

    public u() {
        this.f6585j = (byte) -1;
        this.f6586k = -1;
        this.f6578a = mb.c.f10255a;
    }

    public u(mb.d dVar) throws mb.j {
        int r72;
        this.f6585j = (byte) -1;
        this.f6586k = -1;
        boolean z10 = false;
        this.f6580c = 0;
        this.f6581d = 0;
        c cVar = c.ERROR;
        this.f6582e = cVar;
        this.f = 0;
        this.f6583g = 0;
        d dVar2 = d.LANGUAGE_VERSION;
        this.f6584h = dVar2;
        c.b bVar = new c.b();
        mb.e eVarJ = mb.e.j(bVar, 1);
        while (!z10) {
            try {
                try {
                    int r6 = dVar.n();
                    if (r6 != 0) {
                        if (r6 == 8) {
                            this.f6579b |= 1;
                            this.f6580c = dVar.k();
                        } else if (r6 != 16) {
                            d dVar3 = null;
                            c cVar2 = null;
                            if (r6 == 24) {
                                r72 = dVar.k();
                                if (r72 == 0) {
                                    cVar2 = c.WARNING;
                                } else if (r72 == 1) {
                                    cVar2 = cVar;
                                } else if (r72 == 2) {
                                    cVar2 = c.HIDDEN;
                                }
                                if (cVar2 == null) {
                                    eVarJ.v(r6);
                                    eVarJ.v(r72);
                                } else {
                                    this.f6579b |= 4;
                                    this.f6582e = cVar2;
                                }
                            } else if (r6 == 32) {
                                this.f6579b |= 8;
                                this.f = dVar.k();
                            } else if (r6 == 40) {
                                this.f6579b |= 16;
                                this.f6583g = dVar.k();
                            } else if (r6 == 48) {
                                r72 = dVar.k();
                                if (r72 == 0) {
                                    dVar3 = dVar2;
                                } else if (r72 == 1) {
                                    dVar3 = d.COMPILER_VERSION;
                                } else if (r72 == 2) {
                                    dVar3 = d.API_VERSION;
                                }
                                if (dVar3 == null) {
                                    eVarJ.v(r6);
                                    eVarJ.v(r72);
                                } else {
                                    this.f6579b |= 32;
                                    this.f6584h = dVar3;
                                }
                            } else if (!dVar.q(r6, eVarJ)) {
                            }
                        } else {
                            this.f6579b |= 2;
                            this.f6581d = dVar.k();
                        }
                    }
                    z10 = true;
                } catch (Throwable th2) {
                    try {
                        eVarJ.i();
                    } catch (IOException unused) {
                    } catch (Throwable th3) {
                        this.f6578a = bVar.c();
                        throw th3;
                    }
                    this.f6578a = bVar.c();
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
            this.f6578a = bVar.c();
            throw th4;
        }
        this.f6578a = bVar.c();
    }

    @Override // mb.q
    public final boolean b() {
        byte b10 = this.f6585j;
        if (b10 == 1) {
            return true;
        }
        if (b10 == 0) {
            return false;
        }
        this.f6585j = (byte) 1;
        return true;
    }

    @Override // mb.p
    public final int c() {
        int r02 = this.f6586k;
        if (r02 != -1) {
            return r02;
        }
        int r22 = (this.f6579b & 1) == 1 ? 0 + mb.e.b(1, this.f6580c) : 0;
        if ((this.f6579b & 2) == 2) {
            r22 += mb.e.b(2, this.f6581d);
        }
        if ((this.f6579b & 4) == 4) {
            r22 += mb.e.a(3, this.f6582e.f6597a);
        }
        if ((this.f6579b & 8) == 8) {
            r22 += mb.e.b(4, this.f);
        }
        if ((this.f6579b & 16) == 16) {
            r22 += mb.e.b(5, this.f6583g);
        }
        if ((this.f6579b & 32) == 32) {
            r22 += mb.e.a(6, this.f6584h.f6602a);
        }
        int size = this.f6578a.size() + r22;
        this.f6586k = size;
        return size;
    }

    @Override // mb.p
    public final void d(mb.e eVar) throws IOException {
        c();
        if ((this.f6579b & 1) == 1) {
            eVar.m(1, this.f6580c);
        }
        if ((this.f6579b & 2) == 2) {
            eVar.m(2, this.f6581d);
        }
        if ((this.f6579b & 4) == 4) {
            eVar.l(3, this.f6582e.f6597a);
        }
        if ((this.f6579b & 8) == 8) {
            eVar.m(4, this.f);
        }
        if ((this.f6579b & 16) == 16) {
            eVar.m(5, this.f6583g);
        }
        if ((this.f6579b & 32) == 32) {
            eVar.l(6, this.f6584h.f6602a);
        }
        eVar.r(this.f6578a);
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

    public u(h.a aVar) {
        super(0);
        this.f6585j = (byte) -1;
        this.f6586k = -1;
        this.f6578a = aVar.f10281a;
    }
}
