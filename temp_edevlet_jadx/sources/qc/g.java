package qc;

/* loaded from: classes2.dex */
public abstract class g<S, T> extends e<T> {

    /* renamed from: d, reason: collision with root package name */
    public final kotlinx.coroutines.flow.f<S> f13500d;

    /* JADX WARN: Multi-variable type inference failed */
    public g(kotlinx.coroutines.flow.f<? extends S> fVar, p9.f fVar2, int r32, pc.f fVar3) {
        super(fVar2, r32, fVar3);
        this.f13500d = fVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x005b  */
    @Override // qc.e, kotlinx.coroutines.flow.f
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(kotlinx.coroutines.flow.g<? super T> r6, p9.d<? super l9.m> r7) {
        /*
            r5 = this;
            q9.a r0 = q9.a.COROUTINE_SUSPENDED
            int r1 = r5.f13495b
            r2 = -3
            if (r1 != r2) goto L5b
            p9.f r1 = r7.getContext()
            p9.f r2 = r5.f13494a
            p9.f r2 = r1.plus(r2)
            boolean r3 = kotlin.jvm.internal.h.a(r2, r1)
            if (r3 == 0) goto L1e
            java.lang.Object r6 = r5.g(r6, r7)
            if (r6 != r0) goto L62
            goto L64
        L1e:
            int r3 = p9.e.f12867e0
            p9.e$a r3 = p9.e.a.f12868a
            p9.f$b r4 = r2.get(r3)
            p9.f$b r1 = r1.get(r3)
            boolean r1 = kotlin.jvm.internal.h.a(r4, r1)
            if (r1 == 0) goto L5b
            p9.f r1 = r7.getContext()
            boolean r3 = r6 instanceof qc.p
            if (r3 == 0) goto L3a
            r3 = 1
            goto L3c
        L3a:
            boolean r3 = r6 instanceof qc.l
        L3c:
            if (r3 == 0) goto L3f
            goto L45
        L3f:
            qc.r r3 = new qc.r
            r3.<init>(r6, r1)
            r6 = r3
        L45:
            qc.f r1 = new qc.f
            r3 = 0
            r1.<init>(r5, r3)
            java.lang.Object r3 = kotlinx.coroutines.internal.w.b(r2)
            java.lang.Object r6 = a6.a.H(r2, r6, r3, r1, r7)
            if (r6 != r0) goto L56
            goto L58
        L56:
            l9.m r6 = l9.m.f9594a
        L58:
            if (r6 != r0) goto L62
            goto L64
        L5b:
            java.lang.Object r6 = super.a(r6, r7)
            if (r6 != r0) goto L62
            goto L64
        L62:
            l9.m r6 = l9.m.f9594a
        L64:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: qc.g.a(kotlinx.coroutines.flow.g, p9.d):java.lang.Object");
    }

    @Override // qc.e
    public final Object c(pc.r<? super T> rVar, p9.d<? super l9.m> dVar) {
        Object objG = g(new p(rVar), dVar);
        return objG == q9.a.COROUTINE_SUSPENDED ? objG : l9.m.f9594a;
    }

    public abstract Object g(kotlinx.coroutines.flow.g<? super T> gVar, p9.d<? super l9.m> dVar);

    @Override // qc.e
    public final String toString() {
        return this.f13500d + " -> " + super.toString();
    }
}
