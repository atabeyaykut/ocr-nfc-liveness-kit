package kotlinx.coroutines.flow;

import org.jmrtd.cbeff.ISO781611;

/* loaded from: classes2.dex */
public final class p<T> implements g {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ g<T> f9097a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ kotlin.jvm.internal.v<Throwable> f9098b;

    @r9.e(c = "kotlinx.coroutines.flow.FlowKt__ErrorsKt$catchImpl$2", f = "Errors.kt", l = {ISO781611.SMT_DO_DS}, m = "emit")
    public static final class a extends r9.c {

        /* renamed from: a, reason: collision with root package name */
        public p f9099a;

        /* renamed from: b, reason: collision with root package name */
        public /* synthetic */ Object f9100b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ p<T> f9101c;

        /* renamed from: d, reason: collision with root package name */
        public int f9102d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public a(p<? super T> pVar, p9.d<? super a> dVar) {
            super(dVar);
            this.f9101c = pVar;
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) {
            this.f9100b = obj;
            this.f9102d |= Integer.MIN_VALUE;
            return this.f9101c.emit(null, this);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public p(g<? super T> gVar, kotlin.jvm.internal.v<Throwable> vVar) {
        this.f9097a = gVar;
        this.f9098b = vVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    @Override // kotlinx.coroutines.flow.g
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object emit(T r5, p9.d<? super l9.m> r6) throws java.lang.Throwable {
        /*
            r4 = this;
            boolean r0 = r6 instanceof kotlinx.coroutines.flow.p.a
            if (r0 == 0) goto L13
            r0 = r6
            kotlinx.coroutines.flow.p$a r0 = (kotlinx.coroutines.flow.p.a) r0
            int r1 = r0.f9102d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f9102d = r1
            goto L18
        L13:
            kotlinx.coroutines.flow.p$a r0 = new kotlinx.coroutines.flow.p$a
            r0.<init>(r4, r6)
        L18:
            java.lang.Object r6 = r0.f9100b
            q9.a r1 = q9.a.COROUTINE_SUSPENDED
            int r2 = r0.f9102d
            r3 = 1
            if (r2 == 0) goto L33
            if (r2 != r3) goto L2b
            kotlinx.coroutines.flow.p r5 = r0.f9099a
            c5.w.F(r6)     // Catch: java.lang.Throwable -> L29
            goto L43
        L29:
            r6 = move-exception
            goto L49
        L2b:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L33:
            c5.w.F(r6)
            kotlinx.coroutines.flow.g<T> r6 = r4.f9097a     // Catch: java.lang.Throwable -> L46
            r0.f9099a = r4     // Catch: java.lang.Throwable -> L46
            r0.f9102d = r3     // Catch: java.lang.Throwable -> L46
            java.lang.Object r5 = r6.emit(r5, r0)     // Catch: java.lang.Throwable -> L46
            if (r5 != r1) goto L43
            return r1
        L43:
            l9.m r5 = l9.m.f9594a
            return r5
        L46:
            r5 = move-exception
            r6 = r5
            r5 = r4
        L49:
            kotlin.jvm.internal.v<java.lang.Throwable> r5 = r5.f9098b
            r5.f8975a = r6
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.p.emit(java.lang.Object, p9.d):java.lang.Object");
    }
}
