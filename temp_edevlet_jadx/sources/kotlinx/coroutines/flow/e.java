package kotlinx.coroutines.flow;

import kotlinx.coroutines.flow.k;

/* loaded from: classes2.dex */
public final class e<T> implements f<T> {

    /* renamed from: a, reason: collision with root package name */
    public final f<T> f9041a;

    /* renamed from: b, reason: collision with root package name */
    public final x9.l<T, Object> f9042b;

    /* renamed from: c, reason: collision with root package name */
    public final x9.p<Object, Object, Boolean> f9043c;

    public static final class a<T> implements g {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ e<T> f9044a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ kotlin.jvm.internal.v<Object> f9045b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ g<T> f9046c;

        @r9.e(c = "kotlinx.coroutines.flow.DistinctFlowImpl$collect$2", f = "Distinct.kt", l = {81}, m = "emit")
        /* renamed from: kotlinx.coroutines.flow.e$a$a, reason: collision with other inner class name */
        public static final class C0171a extends r9.c {

            /* renamed from: a, reason: collision with root package name */
            public /* synthetic */ Object f9047a;

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ a<T> f9048b;

            /* renamed from: c, reason: collision with root package name */
            public int f9049c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            public C0171a(a<? super T> aVar, p9.d<? super C0171a> dVar) {
                super(dVar);
                this.f9048b = aVar;
            }

            @Override // r9.a
            public final Object invokeSuspend(Object obj) {
                this.f9047a = obj;
                this.f9049c |= Integer.MIN_VALUE;
                return this.f9048b.emit(null, this);
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public a(e<T> eVar, kotlin.jvm.internal.v<Object> vVar, g<? super T> gVar) {
            this.f9044a = eVar;
            this.f9045b = vVar;
            this.f9046c = gVar;
        }

        /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
        @Override // kotlinx.coroutines.flow.g
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object emit(T r8, p9.d<? super l9.m> r9) throws java.lang.Throwable {
            /*
                r7 = this;
                boolean r0 = r9 instanceof kotlinx.coroutines.flow.e.a.C0171a
                if (r0 == 0) goto L13
                r0 = r9
                kotlinx.coroutines.flow.e$a$a r0 = (kotlinx.coroutines.flow.e.a.C0171a) r0
                int r1 = r0.f9049c
                r2 = -2147483648(0xffffffff80000000, float:-0.0)
                r3 = r1 & r2
                if (r3 == 0) goto L13
                int r1 = r1 - r2
                r0.f9049c = r1
                goto L18
            L13:
                kotlinx.coroutines.flow.e$a$a r0 = new kotlinx.coroutines.flow.e$a$a
                r0.<init>(r7, r9)
            L18:
                java.lang.Object r9 = r0.f9047a
                q9.a r1 = q9.a.COROUTINE_SUSPENDED
                int r2 = r0.f9049c
                r3 = 1
                if (r2 == 0) goto L2f
                if (r2 != r3) goto L27
                c5.w.F(r9)
                goto L61
            L27:
                java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
                java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
                r8.<init>(r9)
                throw r8
            L2f:
                c5.w.F(r9)
                kotlinx.coroutines.flow.e<T> r9 = r7.f9044a
                x9.l<T, java.lang.Object> r2 = r9.f9042b
                java.lang.Object r2 = r2.invoke(r8)
                kotlin.jvm.internal.v<java.lang.Object> r4 = r7.f9045b
                T r5 = r4.f8975a
                kotlinx.coroutines.internal.u r6 = a2.b.f45k
                if (r5 == r6) goto L54
                x9.p<java.lang.Object, java.lang.Object, java.lang.Boolean> r9 = r9.f9043c
                java.lang.Object r9 = r9.mo7invoke(r5, r2)
                java.lang.Boolean r9 = (java.lang.Boolean) r9
                boolean r9 = r9.booleanValue()
                if (r9 != 0) goto L51
                goto L54
            L51:
                l9.m r8 = l9.m.f9594a
                return r8
            L54:
                r4.f8975a = r2
                r0.f9049c = r3
                kotlinx.coroutines.flow.g<T> r9 = r7.f9046c
                java.lang.Object r8 = r9.emit(r8, r0)
                if (r8 != r1) goto L61
                return r1
            L61:
                l9.m r8 = l9.m.f9594a
                return r8
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.e.a.emit(java.lang.Object, p9.d):java.lang.Object");
        }
    }

    public e(f fVar) {
        k.b bVar = k.f9073a;
        k.a aVar = k.f9074b;
        this.f9041a = fVar;
        this.f9042b = bVar;
        this.f9043c = aVar;
    }

    @Override // kotlinx.coroutines.flow.f
    public final Object a(g<? super T> gVar, p9.d<? super l9.m> dVar) {
        kotlin.jvm.internal.v vVar = new kotlin.jvm.internal.v();
        vVar.f8975a = (T) a2.b.f45k;
        Object objA = this.f9041a.a(new a(this, vVar, gVar), dVar);
        return objA == q9.a.COROUTINE_SUSPENDED ? objA : l9.m.f9594a;
    }
}
