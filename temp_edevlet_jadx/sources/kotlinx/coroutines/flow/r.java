package kotlinx.coroutines.flow;

/* loaded from: classes2.dex */
public final class r<T> implements g {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ kotlin.jvm.internal.t f9105a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ g<T> f9106b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ x9.p<T, p9.d<? super Boolean>, Object> f9107c;

    @r9.e(c = "kotlinx.coroutines.flow.FlowKt__LimitKt$dropWhile$1$1", f = "Limit.kt", l = {37, 38, 40}, m = "emit")
    public static final class a extends r9.c {

        /* renamed from: a, reason: collision with root package name */
        public r f9108a;

        /* renamed from: b, reason: collision with root package name */
        public Object f9109b;

        /* renamed from: c, reason: collision with root package name */
        public /* synthetic */ Object f9110c;

        /* renamed from: d, reason: collision with root package name */
        public final /* synthetic */ r<T> f9111d;

        /* renamed from: e, reason: collision with root package name */
        public int f9112e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public a(r<? super T> rVar, p9.d<? super a> dVar) {
            super(dVar);
            this.f9111d = rVar;
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) {
            this.f9110c = obj;
            this.f9112e |= Integer.MIN_VALUE;
            return this.f9111d.emit(null, this);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public r(kotlin.jvm.internal.t tVar, g<? super T> gVar, x9.p<? super T, ? super p9.d<? super Boolean>, ? extends Object> pVar) {
        this.f9105a = tVar;
        this.f9106b = gVar;
        this.f9107c = pVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x0070  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0087  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    @Override // kotlinx.coroutines.flow.g
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object emit(T r7, p9.d<? super l9.m> r8) throws java.lang.Throwable {
        /*
            r6 = this;
            boolean r0 = r8 instanceof kotlinx.coroutines.flow.r.a
            if (r0 == 0) goto L13
            r0 = r8
            kotlinx.coroutines.flow.r$a r0 = (kotlinx.coroutines.flow.r.a) r0
            int r1 = r0.f9112e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f9112e = r1
            goto L18
        L13:
            kotlinx.coroutines.flow.r$a r0 = new kotlinx.coroutines.flow.r$a
            r0.<init>(r6, r8)
        L18:
            java.lang.Object r8 = r0.f9110c
            q9.a r1 = q9.a.COROUTINE_SUSPENDED
            int r2 = r0.f9112e
            r3 = 3
            r4 = 2
            r5 = 1
            if (r2 == 0) goto L41
            if (r2 == r5) goto L3d
            if (r2 == r4) goto L35
            if (r2 != r3) goto L2d
            c5.w.F(r8)
            goto L84
        L2d:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r8)
            throw r7
        L35:
            java.lang.Object r7 = r0.f9109b
            kotlinx.coroutines.flow.r r2 = r0.f9108a
            c5.w.F(r8)
            goto L68
        L3d:
            c5.w.F(r8)
            goto L55
        L41:
            c5.w.F(r8)
            kotlin.jvm.internal.t r8 = r6.f9105a
            boolean r8 = r8.f8973a
            if (r8 == 0) goto L58
            r0.f9112e = r5
            kotlinx.coroutines.flow.g<T> r8 = r6.f9106b
            java.lang.Object r7 = r8.emit(r7, r0)
            if (r7 != r1) goto L55
            return r1
        L55:
            l9.m r7 = l9.m.f9594a
            return r7
        L58:
            r0.f9108a = r6
            r0.f9109b = r7
            r0.f9112e = r4
            x9.p<T, p9.d<? super java.lang.Boolean>, java.lang.Object> r8 = r6.f9107c
            java.lang.Object r8 = r8.mo7invoke(r7, r0)
            if (r8 != r1) goto L67
            return r1
        L67:
            r2 = r6
        L68:
            java.lang.Boolean r8 = (java.lang.Boolean) r8
            boolean r8 = r8.booleanValue()
            if (r8 != 0) goto L87
            kotlin.jvm.internal.t r8 = r2.f9105a
            r8.f8973a = r5
            r8 = 0
            r0.f9108a = r8
            r0.f9109b = r8
            r0.f9112e = r3
            kotlinx.coroutines.flow.g<T> r8 = r2.f9106b
            java.lang.Object r7 = r8.emit(r7, r0)
            if (r7 != r1) goto L84
            return r1
        L84:
            l9.m r7 = l9.m.f9594a
            return r7
        L87:
            l9.m r7 = l9.m.f9594a
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.r.emit(java.lang.Object, p9.d):java.lang.Object");
    }
}
