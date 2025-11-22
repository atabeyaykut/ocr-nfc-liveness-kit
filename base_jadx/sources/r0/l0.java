package r0;

/* loaded from: classes.dex */
public final class l0 implements kotlinx.coroutines.flow.f<t<Object>> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ kotlinx.coroutines.flow.f f13775a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ da.l f13776b;

    public static final class a implements kotlinx.coroutines.flow.g<Object> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ kotlinx.coroutines.flow.g f13777a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ l0 f13778b;

        @r9.e(c = "com.airbnb.mvrx.MavericksViewModelExtensionsKt$_internal1$$inlined$map$1$2", f = "MavericksViewModelExtensions.kt", l = {135}, m = "emit")
        /* renamed from: r0.l0$a$a, reason: collision with other inner class name */
        public static final class C0230a extends r9.c {

            /* renamed from: a, reason: collision with root package name */
            public /* synthetic */ Object f13779a;

            /* renamed from: b, reason: collision with root package name */
            public int f13780b;

            public C0230a(p9.d dVar) {
                super(dVar);
            }

            @Override // r9.a
            public final Object invokeSuspend(Object obj) {
                this.f13779a = obj;
                this.f13780b |= Integer.MIN_VALUE;
                return a.this.emit(null, this);
            }
        }

        public a(kotlinx.coroutines.flow.g gVar, l0 l0Var) {
            this.f13777a = gVar;
            this.f13778b = l0Var;
        }

        /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
        @Override // kotlinx.coroutines.flow.g
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object emit(java.lang.Object r5, p9.d r6) throws java.lang.Throwable {
            /*
                r4 = this;
                boolean r0 = r6 instanceof r0.l0.a.C0230a
                if (r0 == 0) goto L13
                r0 = r6
                r0.l0$a$a r0 = (r0.l0.a.C0230a) r0
                int r1 = r0.f13780b
                r2 = -2147483648(0xffffffff80000000, float:-0.0)
                r3 = r1 & r2
                if (r3 == 0) goto L13
                int r1 = r1 - r2
                r0.f13780b = r1
                goto L18
            L13:
                r0.l0$a$a r0 = new r0.l0$a$a
                r0.<init>(r6)
            L18:
                java.lang.Object r6 = r0.f13779a
                q9.a r1 = q9.a.COROUTINE_SUSPENDED
                int r2 = r0.f13780b
                r3 = 1
                if (r2 == 0) goto L2f
                if (r2 != r3) goto L27
                c5.w.F(r6)
                goto L4c
            L27:
                java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
                java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
                r5.<init>(r6)
                throw r5
            L2f:
                c5.w.F(r6)
                r0.p r5 = (r0.p) r5
                r0.t r6 = new r0.t
                r0.l0 r2 = r4.f13778b
                da.l r2 = r2.f13776b
                java.lang.Object r5 = r2.get(r5)
                r6.<init>(r5)
                r0.f13780b = r3
                kotlinx.coroutines.flow.g r5 = r4.f13777a
                java.lang.Object r5 = r5.emit(r6, r0)
                if (r5 != r1) goto L4c
                return r1
            L4c:
                l9.m r5 = l9.m.f9594a
                return r5
            */
            throw new UnsupportedOperationException("Method not decompiled: r0.l0.a.emit(java.lang.Object, p9.d):java.lang.Object");
        }
    }

    public l0(kotlinx.coroutines.flow.f fVar, kotlin.jvm.internal.r rVar) {
        this.f13775a = fVar;
        this.f13776b = rVar;
    }

    @Override // kotlinx.coroutines.flow.f
    public final Object a(kotlinx.coroutines.flow.g<? super t<Object>> gVar, p9.d dVar) {
        Object objA = this.f13775a.a(new a(gVar, this), dVar);
        return objA == q9.a.COROUTINE_SUSPENDED ? objA : l9.m.f9594a;
    }
}
