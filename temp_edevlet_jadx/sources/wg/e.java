package wg;

import c5.v;
import c5.w;
import l9.m;
import nc.a0;
import nc.f0;
import r9.i;
import wg.g;
import x9.p;

@r9.e(c = "tr.gov.turkiye.edevlet.kapisi.services.municipality.MunicipalityListViewModel$provideInstitutionList$1", f = "MunicipalityListViewModel.kt", l = {24}, m = "invokeSuspend")
/* loaded from: classes3.dex */
public final class e extends i implements p<a0, p9.d<? super m>, Object> {

    /* renamed from: a, reason: collision with root package name */
    public int f18915a;

    /* renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f18916b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ d f18917c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f18918d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f18919e;

    @r9.e(c = "tr.gov.turkiye.edevlet.kapisi.services.municipality.MunicipalityListViewModel$provideInstitutionList$1$job$1", f = "MunicipalityListViewModel.kt", l = {22}, m = "invokeSuspend")
    public static final class a extends i implements p<a0, p9.d<? super m>, Object> {

        /* renamed from: a, reason: collision with root package name */
        public int f18920a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ d f18921b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ int f18922c;

        /* renamed from: d, reason: collision with root package name */
        public final /* synthetic */ int f18923d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(d dVar, int r22, int r32, p9.d<? super a> dVar2) {
            super(2, dVar2);
            this.f18921b = dVar;
            this.f18922c = r22;
            this.f18923d = r32;
        }

        @Override // r9.a
        public final p9.d<m> create(Object obj, p9.d<?> dVar) {
            return new a(this.f18921b, this.f18922c, this.f18923d, dVar);
        }

        @Override // x9.p
        /* renamed from: invoke */
        public final Object mo7invoke(a0 a0Var, p9.d<? super m> dVar) {
            return ((a) create(a0Var, dVar)).invokeSuspend(m.f9594a);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            q9.a aVar = q9.a.COROUTINE_SUSPENDED;
            int r12 = this.f18920a;
            if (r12 == 0) {
                w.F(obj);
                g gVar = this.f18921b.f18914h;
                g.a aVar2 = new g.a(this.f18922c, this.f18923d);
                this.f18920a = 1;
                if (gVar.d(aVar2, this) == aVar) {
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
    public e(d dVar, int r22, int r32, p9.d<? super e> dVar2) {
        super(2, dVar2);
        this.f18917c = dVar;
        this.f18918d = r22;
        this.f18919e = r32;
    }

    @Override // r9.a
    public final p9.d<m> create(Object obj, p9.d<?> dVar) {
        e eVar = new e(this.f18917c, this.f18918d, this.f18919e, dVar);
        eVar.f18916b = obj;
        return eVar;
    }

    @Override // x9.p
    /* renamed from: invoke */
    public final Object mo7invoke(a0 a0Var, p9.d<? super m> dVar) {
        return ((e) create(a0Var, dVar)).invokeSuspend(m.f9594a);
    }

    @Override // r9.a
    public final Object invokeSuspend(Object obj) throws Throwable {
        q9.a aVar = q9.a.COROUTINE_SUSPENDED;
        int r12 = this.f18915a;
        if (r12 == 0) {
            w.F(obj);
            a0 a0Var = (a0) this.f18916b;
            d dVar = this.f18917c;
            f0 f0VarN = v.n(a0Var, dVar.f18914h.f18928c, new a(dVar, this.f18918d, this.f18919e, null), 2);
            this.f18915a = 1;
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
