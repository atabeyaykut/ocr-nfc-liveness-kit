package kotlinx.coroutines.flow;

/* loaded from: classes2.dex */
public abstract class a<T> implements f<T> {

    @r9.e(c = "kotlinx.coroutines.flow.AbstractFlow", f = "Flow.kt", l = {230}, m = "collect")
    /* renamed from: kotlinx.coroutines.flow.a$a, reason: collision with other inner class name */
    public static final class C0170a extends r9.c {

        /* renamed from: a, reason: collision with root package name */
        public qc.m f9010a;

        /* renamed from: b, reason: collision with root package name */
        public /* synthetic */ Object f9011b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ a<T> f9012c;

        /* renamed from: d, reason: collision with root package name */
        public int f9013d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0170a(a<T> aVar, p9.d<? super C0170a> dVar) {
            super(dVar);
            this.f9012c = aVar;
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) {
            this.f9011b = obj;
            this.f9013d |= Integer.MIN_VALUE;
            return this.f9012c.a(null, this);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    @Override // kotlinx.coroutines.flow.f
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(kotlinx.coroutines.flow.g<? super T> r6, p9.d<? super l9.m> r7) throws java.lang.Throwable {
        /*
            r5 = this;
            boolean r0 = r7 instanceof kotlinx.coroutines.flow.a.C0170a
            if (r0 == 0) goto L13
            r0 = r7
            kotlinx.coroutines.flow.a$a r0 = (kotlinx.coroutines.flow.a.C0170a) r0
            int r1 = r0.f9013d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f9013d = r1
            goto L18
        L13:
            kotlinx.coroutines.flow.a$a r0 = new kotlinx.coroutines.flow.a$a
            r0.<init>(r5, r7)
        L18:
            java.lang.Object r7 = r0.f9011b
            q9.a r1 = q9.a.COROUTINE_SUSPENDED
            int r2 = r0.f9013d
            r3 = 1
            if (r2 == 0) goto L33
            if (r2 != r3) goto L2b
            qc.m r6 = r0.f9010a
            c5.w.F(r7)     // Catch: java.lang.Throwable -> L29
            goto L55
        L29:
            r7 = move-exception
            goto L5f
        L2b:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L33:
            c5.w.F(r7)
            qc.m r7 = new qc.m
            p9.f r2 = r0.getContext()
            r7.<init>(r6, r2)
            r0.f9010a = r7     // Catch: java.lang.Throwable -> L5b
            r0.f9013d = r3     // Catch: java.lang.Throwable -> L5b
            r6 = r5
            kotlinx.coroutines.flow.y r6 = (kotlinx.coroutines.flow.y) r6     // Catch: java.lang.Throwable -> L5b
            x9.p<kotlinx.coroutines.flow.g<? super T>, p9.d<? super l9.m>, java.lang.Object> r6 = r6.f9129a     // Catch: java.lang.Throwable -> L5b
            java.lang.Object r6 = r6.mo7invoke(r7, r0)     // Catch: java.lang.Throwable -> L5b
            if (r6 != r1) goto L4f
            goto L51
        L4f:
            l9.m r6 = l9.m.f9594a     // Catch: java.lang.Throwable -> L5b
        L51:
            if (r6 != r1) goto L54
            return r1
        L54:
            r6 = r7
        L55:
            r6.releaseIntercepted()
            l9.m r6 = l9.m.f9594a
            return r6
        L5b:
            r6 = move-exception
            r4 = r7
            r7 = r6
            r6 = r4
        L5f:
            r6.releaseIntercepted()
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.a.a(kotlinx.coroutines.flow.g, p9.d):java.lang.Object");
    }
}
