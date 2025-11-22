package ag;

import bg.d;
import c5.v;
import c5.w;
import l9.m;
import nc.a0;
import nc.f0;
import x9.p;

@r9.e(c = "tr.gov.turkiye.edevlet.kapisi.institution.InstitutionDetailViewModel$unFavoriteOperation$1", f = "InstitutionDetailViewModel.kt", l = {93}, m = "invokeSuspend")
/* loaded from: classes3.dex */
public final class g extends r9.i implements p<a0, p9.d<? super m>, Object> {

    /* renamed from: a, reason: collision with root package name */
    public int f319a;

    /* renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f320b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ d f321c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f322d;

    @r9.e(c = "tr.gov.turkiye.edevlet.kapisi.institution.InstitutionDetailViewModel$unFavoriteOperation$1$job$1", f = "InstitutionDetailViewModel.kt", l = {91}, m = "invokeSuspend")
    public static final class a extends r9.i implements p<a0, p9.d<? super m>, Object> {

        /* renamed from: a, reason: collision with root package name */
        public int f323a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ d f324b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ int f325c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(d dVar, int r22, p9.d<? super a> dVar2) {
            super(2, dVar2);
            this.f324b = dVar;
            this.f325c = r22;
        }

        @Override // r9.a
        public final p9.d<m> create(Object obj, p9.d<?> dVar) {
            return new a(this.f324b, this.f325c, dVar);
        }

        @Override // x9.p
        /* renamed from: invoke */
        public final Object mo7invoke(a0 a0Var, p9.d<? super m> dVar) {
            return ((a) create(a0Var, dVar)).invokeSuspend(m.f9594a);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            q9.a aVar = q9.a.COROUTINE_SUSPENDED;
            int r12 = this.f323a;
            if (r12 == 0) {
                w.F(obj);
                bg.d dVar = this.f324b.f295j;
                d.a aVar2 = new d.a(this.f325c);
                this.f323a = 1;
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
    public g(d dVar, int r22, p9.d<? super g> dVar2) {
        super(2, dVar2);
        this.f321c = dVar;
        this.f322d = r22;
    }

    @Override // r9.a
    public final p9.d<m> create(Object obj, p9.d<?> dVar) {
        g gVar = new g(this.f321c, this.f322d, dVar);
        gVar.f320b = obj;
        return gVar;
    }

    @Override // x9.p
    /* renamed from: invoke */
    public final Object mo7invoke(a0 a0Var, p9.d<? super m> dVar) {
        return ((g) create(a0Var, dVar)).invokeSuspend(m.f9594a);
    }

    @Override // r9.a
    public final Object invokeSuspend(Object obj) throws Throwable {
        q9.a aVar = q9.a.COROUTINE_SUSPENDED;
        int r12 = this.f319a;
        if (r12 == 0) {
            w.F(obj);
            a0 a0Var = (a0) this.f320b;
            d dVar = this.f321c;
            f0 f0VarN = v.n(a0Var, dVar.f295j.f1290c, new a(dVar, this.f322d, null), 2);
            this.f319a = 1;
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
