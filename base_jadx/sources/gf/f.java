package gf;

import kotlinx.coroutines.flow.h;
import pc.m;

/* loaded from: classes3.dex */
public abstract class f<P, T> implements d<T> {

    /* renamed from: a, reason: collision with root package name */
    public final m<T> f6714a = new m<>();

    @r9.e(c = "tr.gov.turkiye.edevlet.kapisi.core.network.SuspendingWorkInteractor", f = "Interactor.kt", l = {65, 65}, m = "invoke")
    public static final class a extends r9.c {

        /* renamed from: a, reason: collision with root package name */
        public m f6715a;

        /* renamed from: b, reason: collision with root package name */
        public /* synthetic */ Object f6716b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ f<P, T> f6717c;

        /* renamed from: d, reason: collision with root package name */
        public int f6718d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(f<P, T> fVar, p9.d<? super a> dVar) {
            super(dVar);
            this.f6717c = fVar;
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) {
            this.f6716b = obj;
            this.f6718d |= Integer.MIN_VALUE;
            return this.f6717c.d(null, this);
        }
    }

    @Override // gf.d
    public final kotlinx.coroutines.flow.f<T> a() {
        return new h(this.f6714a);
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
            boolean r0 = r8 instanceof gf.f.a
            if (r0 == 0) goto L13
            r0 = r8
            gf.f$a r0 = (gf.f.a) r0
            int r1 = r0.f6718d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f6718d = r1
            goto L18
        L13:
            gf.f$a r0 = new gf.f$a
            r0.<init>(r6, r8)
        L18:
            java.lang.Object r8 = r0.f6716b
            q9.a r1 = q9.a.COROUTINE_SUSPENDED
            int r2 = r0.f6718d
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
            pc.m r7 = r0.f6715a
            c5.w.F(r8)
            goto L4b
        L38:
            c5.w.F(r8)
            pc.m<T> r8 = r6.f6714a
            r0.f6715a = r8
            r0.f6718d = r4
            java.lang.Object r7 = r6.c(r7, r0)
            if (r7 != r1) goto L48
            return r1
        L48:
            r5 = r8
            r8 = r7
            r7 = r5
        L4b:
            r2 = 0
            r0.f6715a = r2
            r0.f6718d = r3
            java.lang.Object r7 = r7.p(r8, r0)
            if (r7 != r1) goto L57
            return r1
        L57:
            l9.m r7 = l9.m.f9594a
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: gf.f.d(java.lang.Object, p9.d):java.lang.Object");
    }
}
