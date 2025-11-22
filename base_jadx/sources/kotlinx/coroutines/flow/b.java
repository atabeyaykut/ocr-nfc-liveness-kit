package kotlinx.coroutines.flow;

/* loaded from: classes2.dex */
public final class b<T> extends d<T> {

    /* renamed from: e, reason: collision with root package name */
    public final x9.p<pc.r<? super T>, p9.d<? super l9.m>, Object> f9025e;

    @r9.e(c = "kotlinx.coroutines.flow.CallbackFlowBuilder", f = "Builders.kt", l = {336}, m = "collectTo")
    public static final class a extends r9.c {

        /* renamed from: a, reason: collision with root package name */
        public pc.r f9026a;

        /* renamed from: b, reason: collision with root package name */
        public /* synthetic */ Object f9027b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ b<T> f9028c;

        /* renamed from: d, reason: collision with root package name */
        public int f9029d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(b<T> bVar, p9.d<? super a> dVar) {
            super(dVar);
            this.f9028c = bVar;
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) {
            this.f9027b = obj;
            this.f9029d |= Integer.MIN_VALUE;
            return this.f9028c.c(null, this);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public b(x9.p<? super pc.r<? super T>, ? super p9.d<? super l9.m>, ? extends Object> pVar, p9.f fVar, int r32, pc.f fVar2) {
        super(pVar, fVar, r32, fVar2);
        this.f9025e = pVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    @Override // qc.e
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object c(pc.r<? super T> r5, p9.d<? super l9.m> r6) throws java.lang.Throwable {
        /*
            r4 = this;
            boolean r0 = r6 instanceof kotlinx.coroutines.flow.b.a
            if (r0 == 0) goto L13
            r0 = r6
            kotlinx.coroutines.flow.b$a r0 = (kotlinx.coroutines.flow.b.a) r0
            int r1 = r0.f9029d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f9029d = r1
            goto L18
        L13:
            kotlinx.coroutines.flow.b$a r0 = new kotlinx.coroutines.flow.b$a
            r0.<init>(r4, r6)
        L18:
            java.lang.Object r6 = r0.f9027b
            q9.a r1 = q9.a.COROUTINE_SUSPENDED
            int r2 = r0.f9029d
            r3 = 1
            if (r2 == 0) goto L31
            if (r2 != r3) goto L29
            pc.r r5 = r0.f9026a
            c5.w.F(r6)
            goto L46
        L29:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L31:
            c5.w.F(r6)
            r0.f9026a = r5
            r0.f9029d = r3
            x9.p<pc.r<? super T>, p9.d<? super l9.m>, java.lang.Object> r6 = r4.f9040d
            java.lang.Object r6 = r6.mo7invoke(r5, r0)
            if (r6 != r1) goto L41
            goto L43
        L41:
            l9.m r6 = l9.m.f9594a
        L43:
            if (r6 != r1) goto L46
            return r1
        L46:
            boolean r5 = r5.C()
            if (r5 == 0) goto L4f
            l9.m r5 = l9.m.f9594a
            return r5
        L4f:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "'awaitClose { yourCallbackOrListener.cancel() }' should be used in the end of callbackFlow block.\nOtherwise, a callback/listener may leak in case of external cancellation.\nSee callbackFlow API documentation for the details."
            r5.<init>(r6)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.b.c(pc.r, p9.d):java.lang.Object");
    }

    @Override // qc.e
    public final qc.e<T> d(p9.f fVar, int r42, pc.f fVar2) {
        return new b(this.f9025e, fVar, r42, fVar2);
    }
}
