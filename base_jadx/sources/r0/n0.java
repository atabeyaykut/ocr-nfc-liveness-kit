package r0;

/* loaded from: classes.dex */
public final class n0 implements kotlinx.coroutines.flow.f<u<Object, Object>> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ kotlinx.coroutines.flow.f f13837a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ da.l f13838b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ da.l f13839c;

    public static final class a implements kotlinx.coroutines.flow.g<Object> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ kotlinx.coroutines.flow.g f13840a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ n0 f13841b;

        @r9.e(c = "com.airbnb.mvrx.MavericksViewModelExtensionsKt$_internal2$$inlined$map$1$2", f = "MavericksViewModelExtensions.kt", l = {135}, m = "emit")
        /* renamed from: r0.n0$a$a, reason: collision with other inner class name */
        public static final class C0233a extends r9.c {

            /* renamed from: a, reason: collision with root package name */
            public /* synthetic */ Object f13842a;

            /* renamed from: b, reason: collision with root package name */
            public int f13843b;

            public C0233a(p9.d dVar) {
                super(dVar);
            }

            @Override // r9.a
            public final Object invokeSuspend(Object obj) {
                this.f13842a = obj;
                this.f13843b |= Integer.MIN_VALUE;
                return a.this.emit(null, this);
            }
        }

        public a(kotlinx.coroutines.flow.g gVar, n0 n0Var) {
            this.f13840a = gVar;
            this.f13841b = n0Var;
        }

        /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
        @Override // kotlinx.coroutines.flow.g
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object emit(java.lang.Object r6, p9.d r7) throws java.lang.Throwable {
            /*
                r5 = this;
                boolean r0 = r7 instanceof r0.n0.a.C0233a
                if (r0 == 0) goto L13
                r0 = r7
                r0.n0$a$a r0 = (r0.n0.a.C0233a) r0
                int r1 = r0.f13843b
                r2 = -2147483648(0xffffffff80000000, float:-0.0)
                r3 = r1 & r2
                if (r3 == 0) goto L13
                int r1 = r1 - r2
                r0.f13843b = r1
                goto L18
            L13:
                r0.n0$a$a r0 = new r0.n0$a$a
                r0.<init>(r7)
            L18:
                java.lang.Object r7 = r0.f13842a
                q9.a r1 = q9.a.COROUTINE_SUSPENDED
                int r2 = r0.f13843b
                r3 = 1
                if (r2 == 0) goto L2f
                if (r2 != r3) goto L27
                c5.w.F(r7)
                goto L52
            L27:
                java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
                java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
                r6.<init>(r7)
                throw r6
            L2f:
                c5.w.F(r7)
                r0.p r6 = (r0.p) r6
                r0.u r7 = new r0.u
                r0.n0 r2 = r5.f13841b
                da.l r4 = r2.f13838b
                java.lang.Object r4 = r4.get(r6)
                da.l r2 = r2.f13839c
                java.lang.Object r6 = r2.get(r6)
                r7.<init>(r4, r6)
                r0.f13843b = r3
                kotlinx.coroutines.flow.g r6 = r5.f13840a
                java.lang.Object r6 = r6.emit(r7, r0)
                if (r6 != r1) goto L52
                return r1
            L52:
                l9.m r6 = l9.m.f9594a
                return r6
            */
            throw new UnsupportedOperationException("Method not decompiled: r0.n0.a.emit(java.lang.Object, p9.d):java.lang.Object");
        }
    }

    public n0(kotlinx.coroutines.flow.f fVar, kotlin.jvm.internal.r rVar, kotlin.jvm.internal.r rVar2) {
        this.f13837a = fVar;
        this.f13838b = rVar;
        this.f13839c = rVar2;
    }

    @Override // kotlinx.coroutines.flow.f
    public final Object a(kotlinx.coroutines.flow.g<? super u<Object, Object>> gVar, p9.d dVar) {
        Object objA = this.f13837a.a(new a(gVar, this), dVar);
        return objA == q9.a.COROUTINE_SUSPENDED ? objA : l9.m.f9594a;
    }
}
