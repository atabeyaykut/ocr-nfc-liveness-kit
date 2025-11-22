package ed;

/* loaded from: classes2.dex */
public final class a0 implements j0 {

    /* renamed from: a, reason: collision with root package name */
    public final g f5287a;

    /* renamed from: b, reason: collision with root package name */
    public final e f5288b;

    /* renamed from: c, reason: collision with root package name */
    public e0 f5289c;

    /* renamed from: d, reason: collision with root package name */
    public int f5290d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f5291e;
    public long f;

    public a0(g upstream) {
        kotlin.jvm.internal.h.f(upstream, "upstream");
        this.f5287a = upstream;
        e buffer = upstream.getBuffer();
        this.f5288b = buffer;
        e0 e0Var = buffer.f5303a;
        this.f5289c = e0Var;
        this.f5290d = e0Var == null ? -1 : e0Var.f5306b;
    }

    @Override // ed.j0, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.f5291e = true;
    }

    @Override // ed.j0
    public final k0 h() {
        return this.f5287a.h();
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x002a  */
    @Override // ed.j0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long w(ed.e r9, long r10) {
        /*
            r8 = this;
            java.lang.String r0 = "sink"
            kotlin.jvm.internal.h.f(r9, r0)
            r0 = 0
            r1 = 1
            r2 = 0
            int r4 = (r10 > r2 ? 1 : (r10 == r2 ? 0 : -1))
            if (r4 < 0) goto Lf
            r5 = 1
            goto L10
        Lf:
            r5 = 0
        L10:
            if (r5 == 0) goto L7e
            boolean r5 = r8.f5291e
            r5 = r5 ^ r1
            if (r5 == 0) goto L72
            ed.e0 r5 = r8.f5289c
            ed.e r6 = r8.f5288b
            if (r5 == 0) goto L2a
            ed.e0 r7 = r6.f5303a
            if (r5 != r7) goto L2b
            int r5 = r8.f5290d
            kotlin.jvm.internal.h.c(r7)
            int r7 = r7.f5306b
            if (r5 != r7) goto L2b
        L2a:
            r0 = 1
        L2b:
            if (r0 == 0) goto L66
            if (r4 != 0) goto L30
            return r2
        L30:
            long r0 = r8.f
            r2 = 1
            long r0 = r0 + r2
            ed.g r2 = r8.f5287a
            boolean r0 = r2.Y(r0)
            if (r0 != 0) goto L40
            r9 = -1
            return r9
        L40:
            ed.e0 r0 = r8.f5289c
            if (r0 != 0) goto L4e
            ed.e0 r0 = r6.f5303a
            if (r0 == 0) goto L4e
            r8.f5289c = r0
            int r0 = r0.f5306b
            r8.f5290d = r0
        L4e:
            long r0 = r6.f5304b
            long r2 = r8.f
            long r0 = r0 - r2
            long r10 = java.lang.Math.min(r10, r0)
            ed.e r2 = r8.f5288b
            long r3 = r8.f
            r5 = r10
            r7 = r9
            r2.e(r3, r5, r7)
            long r0 = r8.f
            long r0 = r0 + r10
            r8.f = r0
            return r10
        L66:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r10 = "Peek source is invalid because upstream source was used"
            java.lang.String r10 = r10.toString()
            r9.<init>(r10)
            throw r9
        L72:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r10 = "closed"
            java.lang.String r10 = r10.toString()
            r9.<init>(r10)
            throw r9
        L7e:
            java.lang.String r9 = "byteCount < 0: "
            java.lang.Long r10 = java.lang.Long.valueOf(r10)
            java.lang.String r9 = kotlin.jvm.internal.h.k(r10, r9)
            java.lang.IllegalArgumentException r10 = new java.lang.IllegalArgumentException
            java.lang.String r9 = r9.toString()
            r10.<init>(r9)
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: ed.a0.w(ed.e, long):long");
    }
}
