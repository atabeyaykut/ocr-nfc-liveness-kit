package qg;

import c5.v;
import c5.w;
import nc.a0;
import nc.f0;
import qg.l;
import x9.p;

@r9.e(c = "tr.gov.turkiye.edevlet.kapisi.services.city.InstitutionCityListViewModel$fetchCityListByCategory$1", f = "InstitutionCityListViewModel.kt", l = {24}, m = "invokeSuspend")
/* loaded from: classes3.dex */
public final class j extends r9.i implements p<a0, p9.d<? super l9.m>, Object> {

    /* renamed from: a, reason: collision with root package name */
    public int f13675a;

    /* renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f13676b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ i f13677c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f13678d;

    @r9.e(c = "tr.gov.turkiye.edevlet.kapisi.services.city.InstitutionCityListViewModel$fetchCityListByCategory$1$job$1", f = "InstitutionCityListViewModel.kt", l = {22}, m = "invokeSuspend")
    public static final class a extends r9.i implements p<a0, p9.d<? super l9.m>, Object> {

        /* renamed from: a, reason: collision with root package name */
        public int f13679a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ i f13680b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ int f13681c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(i iVar, int r22, p9.d<? super a> dVar) {
            super(2, dVar);
            this.f13680b = iVar;
            this.f13681c = r22;
        }

        @Override // r9.a
        public final p9.d<l9.m> create(Object obj, p9.d<?> dVar) {
            return new a(this.f13680b, this.f13681c, dVar);
        }

        @Override // x9.p
        /* renamed from: invoke */
        public final Object mo7invoke(a0 a0Var, p9.d<? super l9.m> dVar) {
            return ((a) create(a0Var, dVar)).invokeSuspend(l9.m.f9594a);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            q9.a aVar = q9.a.COROUTINE_SUSPENDED;
            int r12 = this.f13679a;
            if (r12 == 0) {
                w.F(obj);
                l lVar = this.f13680b.f13674h;
                l.a aVar2 = new l.a(this.f13681c);
                this.f13679a = 1;
                if (lVar.d(aVar2, this) == aVar) {
                    return aVar;
                }
            } else {
                if (r12 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                w.F(obj);
            }
            return l9.m.f9594a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public j(i iVar, int r22, p9.d<? super j> dVar) {
        super(2, dVar);
        this.f13677c = iVar;
        this.f13678d = r22;
    }

    @Override // r9.a
    public final p9.d<l9.m> create(Object obj, p9.d<?> dVar) {
        j jVar = new j(this.f13677c, this.f13678d, dVar);
        jVar.f13676b = obj;
        return jVar;
    }

    @Override // x9.p
    /* renamed from: invoke */
    public final Object mo7invoke(a0 a0Var, p9.d<? super l9.m> dVar) {
        return ((j) create(a0Var, dVar)).invokeSuspend(l9.m.f9594a);
    }

    @Override // r9.a
    public final Object invokeSuspend(Object obj) throws Throwable {
        q9.a aVar = q9.a.COROUTINE_SUSPENDED;
        int r12 = this.f13675a;
        if (r12 == 0) {
            w.F(obj);
            a0 a0Var = (a0) this.f13676b;
            i iVar = this.f13677c;
            f0 f0VarN = v.n(a0Var, iVar.f13674h.f13686c, new a(iVar, this.f13678d, null), 2);
            this.f13675a = 1;
            if (f0VarN.m0(this) == aVar) {
                return aVar;
            }
        } else {
            if (r12 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            w.F(obj);
        }
        return l9.m.f9594a;
    }
}
