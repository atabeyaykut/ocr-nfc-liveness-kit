package g;

import g.g;

/* loaded from: classes.dex */
public final class b implements g {

    /* renamed from: a, reason: collision with root package name */
    public final l f5704a;

    /* renamed from: b, reason: collision with root package name */
    public final p.k f5705b;

    /* renamed from: c, reason: collision with root package name */
    public final kotlinx.coroutines.sync.f f5706c;

    public static final class a extends ed.n {

        /* renamed from: b, reason: collision with root package name */
        public Exception f5707b;

        public a(ed.g gVar) {
            super(gVar);
        }

        @Override // ed.n, ed.j0
        public final long w(ed.e eVar, long j10) throws Exception {
            try {
                return super.w(eVar, j10);
            } catch (Exception e10) {
                this.f5707b = e10;
                throw e10;
            }
        }
    }

    /* renamed from: g.b$b, reason: collision with other inner class name */
    public static final class C0090b implements g.a {

        /* renamed from: a, reason: collision with root package name */
        public final kotlinx.coroutines.sync.g f5708a;

        public C0090b(int r32) {
            int r02 = kotlinx.coroutines.sync.h.f9260a;
            this.f5708a = new kotlinx.coroutines.sync.g(r32, 0);
        }

        @Override // g.g.a
        public final b a(j.l lVar, p.k kVar) {
            return new b(lVar.f7947a, kVar, this.f5708a);
        }

        public final boolean equals(Object obj) {
            return obj instanceof C0090b;
        }

        public final int hashCode() {
            return C0090b.class.hashCode();
        }
    }

    @r9.e(c = "coil.decode.BitmapFactoryDecoder", f = "BitmapFactoryDecoder.kt", l = {210, 32}, m = "decode")
    public static final class c extends r9.c {

        /* renamed from: a, reason: collision with root package name */
        public Object f5709a;

        /* renamed from: b, reason: collision with root package name */
        public kotlinx.coroutines.sync.f f5710b;

        /* renamed from: c, reason: collision with root package name */
        public /* synthetic */ Object f5711c;

        /* renamed from: e, reason: collision with root package name */
        public int f5713e;

        public c(p9.d<? super c> dVar) {
            super(dVar);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) {
            this.f5711c = obj;
            this.f5713e |= Integer.MIN_VALUE;
            return b.this.a(this);
        }
    }

    public static final class d extends kotlin.jvm.internal.j implements x9.a<e> {
        public d() {
            super(0);
        }

        /* JADX WARN: Removed duplicated region for block: B:116:0x01ee  */
        /* JADX WARN: Removed duplicated region for block: B:124:0x0208  */
        /* JADX WARN: Removed duplicated region for block: B:142:0x0258  */
        /* JADX WARN: Removed duplicated region for block: B:149:0x026c  */
        /* JADX WARN: Removed duplicated region for block: B:151:0x026f  */
        /* JADX WARN: Removed duplicated region for block: B:154:0x027e  */
        /* JADX WARN: Removed duplicated region for block: B:156:0x028c A[PHI: r3 r4
          0x028c: PHI (r3v18 int) = (r3v17 int), (r3v21 int) binds: [B:155:0x028a, B:152:0x027b] A[DONT_GENERATE, DONT_INLINE]
          0x028c: PHI (r4v14 int) = (r4v13 int), (r4v18 int) binds: [B:155:0x028a, B:152:0x027b] A[DONT_GENERATE, DONT_INLINE]] */
        /* JADX WARN: Removed duplicated region for block: B:169:0x02cd  */
        /* JADX WARN: Removed duplicated region for block: B:24:0x0089  */
        /* JADX WARN: Removed duplicated region for block: B:31:0x0098  */
        @Override // x9.a
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final g.e invoke() throws java.lang.Exception {
            /*
                Method dump skipped, instructions count: 729
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: g.b.d.invoke():java.lang.Object");
        }
    }

    public b(l lVar, p.k kVar, kotlinx.coroutines.sync.g gVar) {
        this.f5704a = lVar;
        this.f5705b = kVar;
        this.f5706c = gVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    @Override // g.g
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(p9.d<? super g.e> r7) throws java.lang.Throwable {
        /*
            r6 = this;
            boolean r0 = r7 instanceof g.b.c
            if (r0 == 0) goto L13
            r0 = r7
            g.b$c r0 = (g.b.c) r0
            int r1 = r0.f5713e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f5713e = r1
            goto L18
        L13:
            g.b$c r0 = new g.b$c
            r0.<init>(r7)
        L18:
            java.lang.Object r7 = r0.f5711c
            q9.a r1 = q9.a.COROUTINE_SUSPENDED
            int r2 = r0.f5713e
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L42
            if (r2 == r4) goto L38
            if (r2 != r3) goto L30
            java.lang.Object r0 = r0.f5709a
            kotlinx.coroutines.sync.f r0 = (kotlinx.coroutines.sync.f) r0
            c5.w.F(r7)     // Catch: java.lang.Throwable -> L2e
            goto L70
        L2e:
            r7 = move-exception
            goto L76
        L30:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r0)
            throw r7
        L38:
            kotlinx.coroutines.sync.f r2 = r0.f5710b
            java.lang.Object r4 = r0.f5709a
            g.b r4 = (g.b) r4
            c5.w.F(r7)
            goto L55
        L42:
            c5.w.F(r7)
            r0.f5709a = r6
            kotlinx.coroutines.sync.f r2 = r6.f5706c
            r0.f5710b = r2
            r0.f5713e = r4
            java.lang.Object r7 = r2.a(r0)
            if (r7 != r1) goto L54
            return r1
        L54:
            r4 = r6
        L55:
            g.b$d r7 = new g.b$d     // Catch: java.lang.Throwable -> L78
            r7.<init>()     // Catch: java.lang.Throwable -> L78
            r0.f5709a = r2     // Catch: java.lang.Throwable -> L78
            r4 = 0
            r0.f5710b = r4     // Catch: java.lang.Throwable -> L78
            r0.f5713e = r3     // Catch: java.lang.Throwable -> L78
            p9.g r3 = p9.g.f12870a     // Catch: java.lang.Throwable -> L78
            nc.x0 r5 = new nc.x0     // Catch: java.lang.Throwable -> L78
            r5.<init>(r7, r4)     // Catch: java.lang.Throwable -> L78
            java.lang.Object r7 = c5.v.N(r3, r5, r0)     // Catch: java.lang.Throwable -> L78
            if (r7 != r1) goto L6f
            return r1
        L6f:
            r0 = r2
        L70:
            g.e r7 = (g.e) r7     // Catch: java.lang.Throwable -> L2e
            r0.release()
            return r7
        L76:
            r2 = r0
            goto L79
        L78:
            r7 = move-exception
        L79:
            r2.release()
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: g.b.a(p9.d):java.lang.Object");
    }
}
