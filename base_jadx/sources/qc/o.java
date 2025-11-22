package qc;

import p9.f;

/* loaded from: classes2.dex */
public final class o extends kotlin.jvm.internal.j implements x9.p<Integer, f.b, Integer> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ m<?> f13531a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public o(m<?> mVar) {
        super(2);
        this.f13531a = mVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:6:0x001f  */
    @Override // x9.p
    /* renamed from: invoke */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Integer mo7invoke(java.lang.Integer r4, p9.f.b r5) {
        /*
            r3 = this;
            java.lang.Number r4 = (java.lang.Number) r4
            int r4 = r4.intValue()
            p9.f$b r5 = (p9.f.b) r5
            p9.f$c r0 = r5.getKey()
            qc.m<?> r1 = r3.f13531a
            p9.f r1 = r1.f13524b
            p9.f$b r1 = r1.get(r0)
            int r2 = nc.b1.f10783d0
            nc.b1$b r2 = nc.b1.b.f10784a
            if (r0 == r2) goto L26
            if (r5 == r1) goto L1f
            r4 = -2147483648(0xffffffff80000000, float:-0.0)
            goto L21
        L1f:
            int r4 = r4 + 1
        L21:
            java.lang.Integer r4 = java.lang.Integer.valueOf(r4)
            goto L3b
        L26:
            nc.b1 r1 = (nc.b1) r1
            nc.b1 r5 = (nc.b1) r5
        L2a:
            r0 = 0
            if (r5 != 0) goto L2f
            r5 = r0
            goto L36
        L2f:
            if (r5 != r1) goto L32
            goto L36
        L32:
            boolean r2 = r5 instanceof kotlinx.coroutines.internal.r
            if (r2 != 0) goto L61
        L36:
            if (r5 != r1) goto L3c
            if (r1 != 0) goto L1f
            goto L21
        L3b:
            return r4
        L3c:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            java.lang.String r2 = "Flow invariant is violated:\n\t\tEmission from another coroutine is detected.\n\t\tChild of "
            r0.<init>(r2)
            r0.append(r5)
            java.lang.String r5 = ", expected child of "
            r0.append(r5)
            r0.append(r1)
            java.lang.String r5 = ".\n\t\tFlowCollector is not thread-safe and concurrent emissions are prohibited.\n\t\tTo mitigate this restriction please use 'channelFlow' builder instead of 'flow'"
            r0.append(r5)
            java.lang.String r5 = r0.toString()
            java.lang.String r5 = r5.toString()
            r4.<init>(r5)
            throw r4
        L61:
            kotlinx.coroutines.internal.r r5 = (kotlinx.coroutines.internal.r) r5
            nc.m r5 = r5.R()
            if (r5 != 0) goto L6b
            r5 = r0
            goto L2a
        L6b:
            nc.b1 r5 = r5.getParent()
            goto L2a
        */
        throw new UnsupportedOperationException("Method not decompiled: qc.o.mo7invoke(java.lang.Object, java.lang.Object):java.lang.Object");
    }
}
