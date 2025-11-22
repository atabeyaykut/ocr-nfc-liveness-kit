package ud;

/* loaded from: classes2.dex */
public final class t {

    public static final class a implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ p9.d f18050a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ Exception f18051b;

        public a(Exception exc, b bVar) {
            this.f18050a = bVar;
            this.f18051b = exc;
        }

        @Override // java.lang.Runnable
        public final void run() {
            c5.w.x(this.f18050a).resumeWith(c5.w.j(this.f18051b));
        }
    }

    @r9.e(c = "retrofit2.KotlinExtensions", f = "KotlinExtensions.kt", l = {113}, m = "suspendAndThrow")
    public static final class b extends r9.c {

        /* renamed from: a, reason: collision with root package name */
        public /* synthetic */ Object f18052a;

        /* renamed from: b, reason: collision with root package name */
        public int f18053b;

        public b(p9.d dVar) {
            super(dVar);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) {
            this.f18052a = obj;
            this.f18053b |= Integer.MIN_VALUE;
            return t.a(null, this);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object a(java.lang.Exception r4, p9.d<?> r5) throws java.lang.Throwable {
        /*
            boolean r0 = r5 instanceof ud.t.b
            if (r0 == 0) goto L13
            r0 = r5
            ud.t$b r0 = (ud.t.b) r0
            int r1 = r0.f18053b
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f18053b = r1
            goto L18
        L13:
            ud.t$b r0 = new ud.t$b
            r0.<init>(r5)
        L18:
            java.lang.Object r5 = r0.f18052a
            q9.a r1 = q9.a.COROUTINE_SUSPENDED
            int r2 = r0.f18053b
            r3 = 1
            if (r2 == 0) goto L31
            if (r2 != r3) goto L29
            c5.w.F(r5)
            l9.m r4 = l9.m.f9594a
            return r4
        L29:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            r4.<init>(r5)
            throw r4
        L31:
            c5.w.F(r5)
            r0.getClass()
            r0.f18053b = r3
            kotlinx.coroutines.scheduling.c r5 = nc.j0.f10808a
            p9.f r2 = r0.getContext()
            ud.t$a r3 = new ud.t$a
            r3.<init>(r4, r0)
            r5.dispatch(r2, r3)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: ud.t.a(java.lang.Exception, p9.d):java.lang.Object");
    }
}
