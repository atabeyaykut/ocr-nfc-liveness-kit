package vf;

import c5.v;
import c5.w;
import l9.m;
import nc.a0;
import nc.f0;
import rf.d;
import x9.p;

@r9.e(c = "tr.gov.turkiye.edevlet.kapisi.dashboard.newest.NewestServicesViewModel$favoriteOperation$1", f = "NewestServicesViewModel.kt", l = {56}, m = "invokeSuspend")
/* loaded from: classes3.dex */
public final class d extends r9.i implements p<a0, p9.d<? super m>, Object> {

    /* renamed from: a, reason: collision with root package name */
    public int f18594a;

    /* renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f18595b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ c f18596c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f18597d;

    @r9.e(c = "tr.gov.turkiye.edevlet.kapisi.dashboard.newest.NewestServicesViewModel$favoriteOperation$1$job$1", f = "NewestServicesViewModel.kt", l = {54}, m = "invokeSuspend")
    public static final class a extends r9.i implements p<a0, p9.d<? super m>, Object> {

        /* renamed from: a, reason: collision with root package name */
        public int f18598a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ c f18599b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ int f18600c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(c cVar, int r22, p9.d<? super a> dVar) {
            super(2, dVar);
            this.f18599b = cVar;
            this.f18600c = r22;
        }

        @Override // r9.a
        public final p9.d<m> create(Object obj, p9.d<?> dVar) {
            return new a(this.f18599b, this.f18600c, dVar);
        }

        @Override // x9.p
        /* renamed from: invoke */
        public final Object mo7invoke(a0 a0Var, p9.d<? super m> dVar) {
            return ((a) create(a0Var, dVar)).invokeSuspend(m.f9594a);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            q9.a aVar = q9.a.COROUTINE_SUSPENDED;
            int r12 = this.f18598a;
            if (r12 == 0) {
                w.F(obj);
                rf.d dVar = this.f18599b.f18592i;
                d.a aVar2 = new d.a(this.f18600c);
                this.f18598a = 1;
                if (dVar.d(aVar2, this) == aVar) {
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
    public d(c cVar, int r22, p9.d<? super d> dVar) {
        super(2, dVar);
        this.f18596c = cVar;
        this.f18597d = r22;
    }

    @Override // r9.a
    public final p9.d<m> create(Object obj, p9.d<?> dVar) {
        d dVar2 = new d(this.f18596c, this.f18597d, dVar);
        dVar2.f18595b = obj;
        return dVar2;
    }

    @Override // x9.p
    /* renamed from: invoke */
    public final Object mo7invoke(a0 a0Var, p9.d<? super m> dVar) {
        return ((d) create(a0Var, dVar)).invokeSuspend(m.f9594a);
    }

    @Override // r9.a
    public final Object invokeSuspend(Object obj) throws Throwable {
        q9.a aVar = q9.a.COROUTINE_SUSPENDED;
        int r12 = this.f18594a;
        if (r12 == 0) {
            w.F(obj);
            a0 a0Var = (a0) this.f18595b;
            c cVar = this.f18596c;
            f0 f0VarN = v.n(a0Var, cVar.f18592i.f14642c, new a(cVar, this.f18597d, null), 2);
            this.f18594a = 1;
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
