package r0;

import tr.gov.turkiye.edevlet.kapisi.ui.accident.information.MobileAccidentInformationFragment;

/* loaded from: classes.dex */
public final class p0 implements kotlinx.coroutines.flow.f<v<Object, Object, Object>> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ kotlinx.coroutines.flow.f f13849a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ da.l f13850b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ da.l f13851c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ da.l f13852d;

    public static final class a implements kotlinx.coroutines.flow.g<Object> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ kotlinx.coroutines.flow.g f13853a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ p0 f13854b;

        @r9.e(c = "com.airbnb.mvrx.MavericksViewModelExtensionsKt$_internal3$$inlined$map$1$2", f = "MavericksViewModelExtensions.kt", l = {135}, m = "emit")
        /* renamed from: r0.p0$a$a, reason: collision with other inner class name */
        public static final class C0234a extends r9.c {

            /* renamed from: a, reason: collision with root package name */
            public /* synthetic */ Object f13855a;

            /* renamed from: b, reason: collision with root package name */
            public int f13856b;

            public C0234a(p9.d dVar) {
                super(dVar);
            }

            @Override // r9.a
            public final Object invokeSuspend(Object obj) {
                this.f13855a = obj;
                this.f13856b |= Integer.MIN_VALUE;
                return a.this.emit(null, this);
            }
        }

        public a(kotlinx.coroutines.flow.g gVar, p0 p0Var) {
            this.f13853a = gVar;
            this.f13854b = p0Var;
        }

        /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
        @Override // kotlinx.coroutines.flow.g
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object emit(java.lang.Object r7, p9.d r8) throws java.lang.Throwable {
            /*
                r6 = this;
                boolean r0 = r8 instanceof r0.p0.a.C0234a
                if (r0 == 0) goto L13
                r0 = r8
                r0.p0$a$a r0 = (r0.p0.a.C0234a) r0
                int r1 = r0.f13856b
                r2 = -2147483648(0xffffffff80000000, float:-0.0)
                r3 = r1 & r2
                if (r3 == 0) goto L13
                int r1 = r1 - r2
                r0.f13856b = r1
                goto L18
            L13:
                r0.p0$a$a r0 = new r0.p0$a$a
                r0.<init>(r8)
            L18:
                java.lang.Object r8 = r0.f13855a
                q9.a r1 = q9.a.COROUTINE_SUSPENDED
                int r2 = r0.f13856b
                r3 = 1
                if (r2 == 0) goto L2f
                if (r2 != r3) goto L27
                c5.w.F(r8)
                goto L58
            L27:
                java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
                java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
                r7.<init>(r8)
                throw r7
            L2f:
                c5.w.F(r8)
                r0.p r7 = (r0.p) r7
                r0.v r8 = new r0.v
                r0.p0 r2 = r6.f13854b
                da.l r4 = r2.f13850b
                java.lang.Object r4 = r4.get(r7)
                da.l r5 = r2.f13851c
                java.lang.Object r5 = r5.get(r7)
                da.l r2 = r2.f13852d
                java.lang.Object r7 = r2.get(r7)
                r8.<init>(r4, r5, r7)
                r0.f13856b = r3
                kotlinx.coroutines.flow.g r7 = r6.f13853a
                java.lang.Object r7 = r7.emit(r8, r0)
                if (r7 != r1) goto L58
                return r1
            L58:
                l9.m r7 = l9.m.f9594a
                return r7
            */
            throw new UnsupportedOperationException("Method not decompiled: r0.p0.a.emit(java.lang.Object, p9.d):java.lang.Object");
        }
    }

    public p0(kotlinx.coroutines.flow.f fVar, MobileAccidentInformationFragment.g gVar, MobileAccidentInformationFragment.h hVar, MobileAccidentInformationFragment.i iVar) {
        this.f13849a = fVar;
        this.f13850b = gVar;
        this.f13851c = hVar;
        this.f13852d = iVar;
    }

    @Override // kotlinx.coroutines.flow.f
    public final Object a(kotlinx.coroutines.flow.g<? super v<Object, Object, Object>> gVar, p9.d dVar) {
        Object objA = this.f13849a.a(new a(gVar, this), dVar);
        return objA == q9.a.COROUTINE_SUSPENDED ? objA : l9.m.f9594a;
    }
}
