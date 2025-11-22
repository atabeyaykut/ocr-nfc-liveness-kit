package kotlinx.coroutines.flow;

/* loaded from: classes2.dex */
public final class n implements f<Object> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ f f9087a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ x9.q f9088b;

    @r9.e(c = "kotlinx.coroutines.flow.FlowKt__ErrorsKt$catch$$inlined$unsafeFlow$1", f = "Errors.kt", l = {113, 114}, m = "collect")
    public static final class a extends r9.c {

        /* renamed from: a, reason: collision with root package name */
        public /* synthetic */ Object f9089a;

        /* renamed from: b, reason: collision with root package name */
        public int f9090b;

        /* renamed from: d, reason: collision with root package name */
        public n f9092d;

        /* renamed from: e, reason: collision with root package name */
        public g f9093e;

        public a(p9.d dVar) {
            super(dVar);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) {
            this.f9089a = obj;
            this.f9090b |= Integer.MIN_VALUE;
            return n.this.a(null, this);
        }
    }

    public n(f fVar, r0.d0 d0Var) {
        this.f9087a = fVar;
        this.f9088b = d0Var;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    @Override // kotlinx.coroutines.flow.f
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(kotlinx.coroutines.flow.g<? super java.lang.Object> r6, p9.d<? super l9.m> r7) throws java.lang.Throwable {
        /*
            r5 = this;
            boolean r0 = r7 instanceof kotlinx.coroutines.flow.n.a
            if (r0 == 0) goto L13
            r0 = r7
            kotlinx.coroutines.flow.n$a r0 = (kotlinx.coroutines.flow.n.a) r0
            int r1 = r0.f9090b
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f9090b = r1
            goto L18
        L13:
            kotlinx.coroutines.flow.n$a r0 = new kotlinx.coroutines.flow.n$a
            r0.<init>(r7)
        L18:
            java.lang.Object r7 = r0.f9089a
            q9.a r1 = q9.a.COROUTINE_SUSPENDED
            int r2 = r0.f9090b
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L3a
            if (r2 == r4) goto L32
            if (r2 != r3) goto L2a
            c5.w.F(r7)
            goto L61
        L2a:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L32:
            kotlinx.coroutines.flow.g r6 = r0.f9093e
            kotlinx.coroutines.flow.n r2 = r0.f9092d
            c5.w.F(r7)
            goto L4d
        L3a:
            c5.w.F(r7)
            r0.f9092d = r5
            r0.f9093e = r6
            r0.f9090b = r4
            kotlinx.coroutines.flow.f r7 = r5.f9087a
            java.io.Serializable r7 = b8.f.n(r7, r6, r0)
            if (r7 != r1) goto L4c
            return r1
        L4c:
            r2 = r5
        L4d:
            java.lang.Throwable r7 = (java.lang.Throwable) r7
            if (r7 == 0) goto L61
            x9.q r2 = r2.f9088b
            r4 = 0
            r0.f9092d = r4
            r0.f9093e = r4
            r0.f9090b = r3
            java.lang.Object r6 = r2.i(r6, r7, r0)
            if (r6 != r1) goto L61
            return r1
        L61:
            l9.m r6 = l9.m.f9594a
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.n.a(kotlinx.coroutines.flow.g, p9.d):java.lang.Object");
    }
}
