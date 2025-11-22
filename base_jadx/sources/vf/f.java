package vf;

import c5.v;
import c5.w;
import l9.m;
import nc.a0;
import nc.f0;
import vf.j;
import x9.p;

@r9.e(c = "tr.gov.turkiye.edevlet.kapisi.dashboard.newest.NewestServicesViewModel$fetchNewestServices$1", f = "NewestServicesViewModel.kt", l = {32}, m = "invokeSuspend")
/* loaded from: classes3.dex */
public final class f extends r9.i implements p<a0, p9.d<? super m>, Object> {

    /* renamed from: a, reason: collision with root package name */
    public int f18604a;

    /* renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f18605b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ c f18606c;

    @r9.e(c = "tr.gov.turkiye.edevlet.kapisi.dashboard.newest.NewestServicesViewModel$fetchNewestServices$1$job$1", f = "NewestServicesViewModel.kt", l = {30}, m = "invokeSuspend")
    public static final class a extends r9.i implements p<a0, p9.d<? super m>, Object> {

        /* renamed from: a, reason: collision with root package name */
        public int f18607a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ c f18608b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(c cVar, p9.d<? super a> dVar) {
            super(2, dVar);
            this.f18608b = cVar;
        }

        @Override // r9.a
        public final p9.d<m> create(Object obj, p9.d<?> dVar) {
            return new a(this.f18608b, dVar);
        }

        @Override // x9.p
        /* renamed from: invoke */
        public final Object mo7invoke(a0 a0Var, p9.d<? super m> dVar) {
            return ((a) create(a0Var, dVar)).invokeSuspend(m.f9594a);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            q9.a aVar = q9.a.COROUTINE_SUSPENDED;
            int r12 = this.f18607a;
            if (r12 == 0) {
                w.F(obj);
                j jVar = this.f18608b.f18591h;
                j.a aVar2 = new j.a();
                this.f18607a = 1;
                if (jVar.d(aVar2, this) == aVar) {
                    return aVar;
                }
            } else {
                if (r12 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                w.F(obj);
            }
            return m.f9594a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f(c cVar, p9.d<? super f> dVar) {
        super(2, dVar);
        this.f18606c = cVar;
    }

    @Override // r9.a
    public final p9.d<m> create(Object obj, p9.d<?> dVar) {
        f fVar = new f(this.f18606c, dVar);
        fVar.f18605b = obj;
        return fVar;
    }

    @Override // x9.p
    /* renamed from: invoke */
    public final Object mo7invoke(a0 a0Var, p9.d<? super m> dVar) {
        return ((f) create(a0Var, dVar)).invokeSuspend(m.f9594a);
    }

    @Override // r9.a
    public final Object invokeSuspend(Object obj) throws Throwable {
        q9.a aVar = q9.a.COROUTINE_SUSPENDED;
        int r12 = this.f18604a;
        if (r12 == 0) {
            w.F(obj);
            a0 a0Var = (a0) this.f18605b;
            c cVar = this.f18606c;
            f0 f0VarN = v.n(a0Var, cVar.f18591h.f18623c, new a(cVar, null), 2);
            this.f18604a = 1;
            if (f0VarN.m0(this) == aVar) {
                return aVar;
            }
        } else {
            if (r12 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            w.F(obj);
        }
        return m.f9594a;
    }
}
