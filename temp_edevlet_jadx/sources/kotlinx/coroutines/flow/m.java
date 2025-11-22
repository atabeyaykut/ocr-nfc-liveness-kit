package kotlinx.coroutines.flow;

/* loaded from: classes2.dex */
public final class m implements f<Object> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ f f9080a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ x9.q f9081b;

    @r9.e(c = "kotlinx.coroutines.flow.FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1", f = "Emitters.kt", l = {114, 121, 128}, m = "collect")
    public static final class a extends r9.c {

        /* renamed from: a, reason: collision with root package name */
        public /* synthetic */ Object f9082a;

        /* renamed from: b, reason: collision with root package name */
        public int f9083b;

        /* renamed from: d, reason: collision with root package name */
        public Object f9085d;

        /* renamed from: e, reason: collision with root package name */
        public g f9086e;

        public a(p9.d dVar) {
            super(dVar);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) {
            this.f9082a = obj;
            this.f9083b |= Integer.MIN_VALUE;
            return m.this.a(null, this);
        }
    }

    public m(f fVar, r0.a0 a0Var) {
        this.f9080a = fVar;
        this.f9081b = a0Var;
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x007a A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x007b  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x009f A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:56:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    @Override // kotlinx.coroutines.flow.f
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(kotlinx.coroutines.flow.g<? super java.lang.Object> r9, p9.d<? super l9.m> r10) throws java.lang.Throwable {
        /*
            r8 = this;
            boolean r0 = r10 instanceof kotlinx.coroutines.flow.m.a
            if (r0 == 0) goto L13
            r0 = r10
            kotlinx.coroutines.flow.m$a r0 = (kotlinx.coroutines.flow.m.a) r0
            int r1 = r0.f9083b
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f9083b = r1
            goto L18
        L13:
            kotlinx.coroutines.flow.m$a r0 = new kotlinx.coroutines.flow.m$a
            r0.<init>(r10)
        L18:
            java.lang.Object r10 = r0.f9082a
            q9.a r1 = q9.a.COROUTINE_SUSPENDED
            int r2 = r0.f9083b
            r3 = 3
            r4 = 2
            r5 = 1
            r6 = 0
            if (r2 == 0) goto L50
            if (r2 == r5) goto L44
            if (r2 == r4) goto L3c
            if (r2 != r3) goto L34
            java.lang.Object r9 = r0.f9085d
            qc.m r9 = (qc.m) r9
            c5.w.F(r10)     // Catch: java.lang.Throwable -> L32
            goto L7c
        L32:
            r10 = move-exception
            goto L86
        L34:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r10 = "call to 'resume' before 'invoke' with coroutine"
            r9.<init>(r10)
            throw r9
        L3c:
            java.lang.Object r9 = r0.f9085d
            java.lang.Throwable r9 = (java.lang.Throwable) r9
            c5.w.F(r10)
            goto La0
        L44:
            kotlinx.coroutines.flow.g r9 = r0.f9086e
            java.lang.Object r2 = r0.f9085d
            kotlinx.coroutines.flow.m r2 = (kotlinx.coroutines.flow.m) r2
            c5.w.F(r10)     // Catch: java.lang.Throwable -> L4e
            goto L63
        L4e:
            r9 = move-exception
            goto L8c
        L50:
            c5.w.F(r10)
            kotlinx.coroutines.flow.f r10 = r8.f9080a     // Catch: java.lang.Throwable -> L8a
            r0.f9085d = r8     // Catch: java.lang.Throwable -> L8a
            r0.f9086e = r9     // Catch: java.lang.Throwable -> L8a
            r0.f9083b = r5     // Catch: java.lang.Throwable -> L8a
            java.lang.Object r10 = r10.a(r9, r0)     // Catch: java.lang.Throwable -> L8a
            if (r10 != r1) goto L62
            return r1
        L62:
            r2 = r8
        L63:
            qc.m r10 = new qc.m
            p9.f r4 = r0.getContext()
            r10.<init>(r9, r4)
            x9.q r9 = r2.f9081b     // Catch: java.lang.Throwable -> L82
            r0.f9085d = r10     // Catch: java.lang.Throwable -> L82
            r0.f9086e = r6     // Catch: java.lang.Throwable -> L82
            r0.f9083b = r3     // Catch: java.lang.Throwable -> L82
            java.lang.Object r9 = r9.i(r10, r6, r0)     // Catch: java.lang.Throwable -> L82
            if (r9 != r1) goto L7b
            return r1
        L7b:
            r9 = r10
        L7c:
            r9.releaseIntercepted()
            l9.m r9 = l9.m.f9594a
            return r9
        L82:
            r9 = move-exception
            r7 = r10
            r10 = r9
            r9 = r7
        L86:
            r9.releaseIntercepted()
            throw r10
        L8a:
            r9 = move-exception
            r2 = r8
        L8c:
            kotlinx.coroutines.flow.i0 r10 = new kotlinx.coroutines.flow.i0
            r10.<init>(r9)
            x9.q r2 = r2.f9081b
            r0.f9085d = r9
            r0.f9086e = r6
            r0.f9083b = r4
            java.lang.Object r10 = a2.b.f(r10, r2, r9, r0)
            if (r10 != r1) goto La0
            return r1
        La0:
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.m.a(kotlinx.coroutines.flow.g, p9.d):java.lang.Object");
    }
}
