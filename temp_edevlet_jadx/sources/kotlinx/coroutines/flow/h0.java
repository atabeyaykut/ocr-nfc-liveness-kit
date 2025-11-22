package kotlinx.coroutines.flow;

/* loaded from: classes2.dex */
public final class h0<T> implements g<T> {
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /* JADX WARN: Type inference failed for: r1v0, types: [int, qc.m] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final l9.m a(p9.d r5) throws java.lang.Throwable {
        /*
            r4 = this;
            boolean r0 = r5 instanceof kotlinx.coroutines.flow.g0
            if (r0 == 0) goto L13
            r0 = r5
            kotlinx.coroutines.flow.g0 r0 = (kotlinx.coroutines.flow.g0) r0
            int r1 = r0.f9063e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f9063e = r1
            goto L18
        L13:
            kotlinx.coroutines.flow.g0 r0 = new kotlinx.coroutines.flow.g0
            r0.<init>(r4, r5)
        L18:
            java.lang.Object r5 = r0.f9061c
            int r1 = r0.f9063e
            r2 = 1
            if (r1 == 0) goto L40
            if (r1 == r2) goto L32
            r0 = 2
            if (r1 != r0) goto L2a
            c5.w.F(r5)
        L27:
            l9.m r5 = l9.m.f9594a
            return r5
        L2a:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r0)
            throw r5
        L32:
            qc.m r1 = r0.f9060b
            kotlinx.coroutines.flow.h0 r0 = r0.f9059a
            c5.w.F(r5)     // Catch: java.lang.Throwable -> L54
            r1.releaseIntercepted()
            r0.getClass()
            goto L27
        L40:
            c5.w.F(r5)
            qc.m r1 = new qc.m
            p9.f r5 = r0.getContext()
            r3 = 0
            r1.<init>(r3, r5)
            r0.f9059a = r4     // Catch: java.lang.Throwable -> L54
            r0.f9060b = r1     // Catch: java.lang.Throwable -> L54
            r0.f9063e = r2     // Catch: java.lang.Throwable -> L54
            throw r3     // Catch: java.lang.Throwable -> L54
        L54:
            r5 = move-exception
            r1.releaseIntercepted()
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.h0.a(p9.d):l9.m");
    }

    @Override // kotlinx.coroutines.flow.g
    public final Object emit(T t10, p9.d<? super l9.m> dVar) {
        throw null;
    }
}
