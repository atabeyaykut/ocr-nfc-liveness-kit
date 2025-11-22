package pc;

import net.sf.scuba.smartcards.ISO7816;

/* loaded from: classes2.dex */
public final class p {

    @r9.e(c = "kotlinx.coroutines.channels.ProduceKt", f = "Produce.kt", l = {ISO7816.TAG_SM_STATUS_WORD}, m = "awaitClose")
    public static final class a extends r9.c {

        /* renamed from: a, reason: collision with root package name */
        public r f13114a;

        /* renamed from: b, reason: collision with root package name */
        public x9.a f13115b;

        /* renamed from: c, reason: collision with root package name */
        public /* synthetic */ Object f13116c;

        /* renamed from: d, reason: collision with root package name */
        public int f13117d;

        public a(p9.d<? super a> dVar) {
            super(dVar);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) {
            this.f13116c = obj;
            this.f13117d |= Integer.MIN_VALUE;
            return p.a(null, null, this);
        }
    }

    public static final class b extends kotlin.jvm.internal.j implements x9.l<Throwable, l9.m> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ nc.i<l9.m> f13118a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(nc.j jVar) {
            super(1);
            this.f13118a = jVar;
        }

        @Override // x9.l
        public final l9.m invoke(Throwable th2) {
            l9.m mVar = l9.m.f9594a;
            this.f13118a.resumeWith(mVar);
            return mVar;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object a(pc.r<?> r4, x9.a<l9.m> r5, p9.d<? super l9.m> r6) throws java.lang.Throwable {
        /*
            boolean r0 = r6 instanceof pc.p.a
            if (r0 == 0) goto L13
            r0 = r6
            pc.p$a r0 = (pc.p.a) r0
            int r1 = r0.f13117d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f13117d = r1
            goto L18
        L13:
            pc.p$a r0 = new pc.p$a
            r0.<init>(r6)
        L18:
            java.lang.Object r6 = r0.f13116c
            q9.a r1 = q9.a.COROUTINE_SUSPENDED
            int r2 = r0.f13117d
            r3 = 1
            if (r2 == 0) goto L31
            if (r2 != r3) goto L29
            x9.a r5 = r0.f13115b
            c5.w.F(r6)     // Catch: java.lang.Throwable -> L6c
            goto L66
        L29:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            r4.<init>(r5)
            throw r4
        L31:
            c5.w.F(r6)
            p9.f r6 = r0.getContext()
            nc.b1$b r2 = nc.b1.b.f10784a
            p9.f$b r6 = r6.get(r2)
            if (r6 != r4) goto L42
            r6 = 1
            goto L43
        L42:
            r6 = 0
        L43:
            if (r6 == 0) goto L71
            r0.f13114a = r4     // Catch: java.lang.Throwable -> L6c
            r0.f13115b = r5     // Catch: java.lang.Throwable -> L6c
            r0.f13117d = r3     // Catch: java.lang.Throwable -> L6c
            nc.j r6 = new nc.j     // Catch: java.lang.Throwable -> L6c
            p9.d r0 = c5.w.x(r0)     // Catch: java.lang.Throwable -> L6c
            r6.<init>(r3, r0)     // Catch: java.lang.Throwable -> L6c
            r6.n()     // Catch: java.lang.Throwable -> L6c
            pc.p$b r0 = new pc.p$b     // Catch: java.lang.Throwable -> L6c
            r0.<init>(r6)     // Catch: java.lang.Throwable -> L6c
            r4.c(r0)     // Catch: java.lang.Throwable -> L6c
            java.lang.Object r4 = r6.m()     // Catch: java.lang.Throwable -> L6c
            if (r4 != r1) goto L66
            return r1
        L66:
            r5.invoke()
            l9.m r4 = l9.m.f9594a
            return r4
        L6c:
            r4 = move-exception
            r5.invoke()
            throw r4
        L71:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r5 = "awaitClose() can only be invoked from the producer context"
            java.lang.String r5 = r5.toString()
            r4.<init>(r5)
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: pc.p.a(pc.r, x9.a, p9.d):java.lang.Object");
    }
}
