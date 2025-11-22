package gf;

import p9.g;

/* loaded from: classes3.dex */
public abstract class e<P, T> implements d<T> {

    /* renamed from: a, reason: collision with root package name */
    public final pc.a f6709a = b8.f.e(0, null, 6);

    @r9.e(c = "tr.gov.turkiye.edevlet.kapisi.core.network.SearchWorkInteractor", f = "Interactor.kt", l = {78, 78}, m = "invoke")
    public static final class a extends r9.c {

        /* renamed from: a, reason: collision with root package name */
        public pc.a f6710a;

        /* renamed from: b, reason: collision with root package name */
        public /* synthetic */ Object f6711b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ e<P, T> f6712c;

        /* renamed from: d, reason: collision with root package name */
        public int f6713d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(e<P, T> eVar, p9.d<? super a> dVar) {
            super(dVar);
            this.f6712c = eVar;
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) {
            this.f6711b = obj;
            this.f6713d |= Integer.MIN_VALUE;
            return this.f6712c.d(null, this);
        }
    }

    @Override // gf.d
    public final kotlinx.coroutines.flow.f<T> a() {
        return new kotlinx.coroutines.flow.c(this.f6709a, true, g.f12870a, -3, pc.f.SUSPEND);
    }

    public abstract Object c(P p10, p9.d<? super T> dVar);

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object d(P r7, p9.d<? super l9.m> r8) throws java.lang.Throwable {
        /*
            r6 = this;
            boolean r0 = r8 instanceof gf.e.a
            if (r0 == 0) goto L13
            r0 = r8
            gf.e$a r0 = (gf.e.a) r0
            int r1 = r0.f6713d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f6713d = r1
            goto L18
        L13:
            gf.e$a r0 = new gf.e$a
            r0.<init>(r6, r8)
        L18:
            java.lang.Object r8 = r0.f6711b
            q9.a r1 = q9.a.COROUTINE_SUSPENDED
            int r2 = r0.f6713d
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L38
            if (r2 == r4) goto L32
            if (r2 != r3) goto L2a
            c5.w.F(r8)
            goto L57
        L2a:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r8)
            throw r7
        L32:
            pc.a r7 = r0.f6710a
            c5.w.F(r8)
            goto L4b
        L38:
            c5.w.F(r8)
            pc.a r8 = r6.f6709a
            r0.f6710a = r8
            r0.f6713d = r4
            java.lang.Object r7 = r6.c(r7, r0)
            if (r7 != r1) goto L48
            return r1
        L48:
            r5 = r8
            r8 = r7
            r7 = r5
        L4b:
            r2 = 0
            r0.f6710a = r2
            r0.f6713d = r3
            java.lang.Object r7 = r7.p(r8, r0)
            if (r7 != r1) goto L57
            return r1
        L57:
            l9.m r7 = l9.m.f9594a
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: gf.e.d(java.lang.Object, p9.d):java.lang.Object");
    }
}
