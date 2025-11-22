package ag;

import bg.c;
import c5.v;
import c5.w;
import l9.m;
import nc.a0;
import nc.f0;
import x9.p;

@r9.e(c = "tr.gov.turkiye.edevlet.kapisi.institution.InstitutionDetailViewModel$favoriteOperation$1", f = "InstitutionDetailViewModel.kt", l = {59}, m = "invokeSuspend")
/* loaded from: classes3.dex */
public final class e extends r9.i implements p<a0, p9.d<? super m>, Object> {

    /* renamed from: a, reason: collision with root package name */
    public int f309a;

    /* renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f310b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ d f311c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f312d;

    @r9.e(c = "tr.gov.turkiye.edevlet.kapisi.institution.InstitutionDetailViewModel$favoriteOperation$1$job$1", f = "InstitutionDetailViewModel.kt", l = {57}, m = "invokeSuspend")
    public static final class a extends r9.i implements p<a0, p9.d<? super m>, Object> {

        /* renamed from: a, reason: collision with root package name */
        public int f313a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ d f314b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ int f315c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(d dVar, int r22, p9.d<? super a> dVar2) {
            super(2, dVar2);
            this.f314b = dVar;
            this.f315c = r22;
        }

        @Override // r9.a
        public final p9.d<m> create(Object obj, p9.d<?> dVar) {
            return new a(this.f314b, this.f315c, dVar);
        }

        @Override // x9.p
        /* renamed from: invoke */
        public final Object mo7invoke(a0 a0Var, p9.d<? super m> dVar) {
            return ((a) create(a0Var, dVar)).invokeSuspend(m.f9594a);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            q9.a aVar = q9.a.COROUTINE_SUSPENDED;
            int r12 = this.f313a;
            if (r12 == 0) {
                w.F(obj);
                bg.c cVar = this.f314b.f294i;
                c.a aVar2 = new c.a(this.f315c);
                this.f313a = 1;
                if (cVar.d(aVar2, this) == aVar) {
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
    public e(d dVar, int r22, p9.d<? super e> dVar2) {
        super(2, dVar2);
        this.f311c = dVar;
        this.f312d = r22;
    }

    @Override // r9.a
    public final p9.d<m> create(Object obj, p9.d<?> dVar) {
        e eVar = new e(this.f311c, this.f312d, dVar);
        eVar.f310b = obj;
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
        int r12 = this.f309a;
        if (r12 == 0) {
            w.F(obj);
            a0 a0Var = (a0) this.f310b;
            d dVar = this.f311c;
            f0 f0VarN = v.n(a0Var, dVar.f294i.f1287c, new a(dVar, this.f312d, null), 2);
            this.f309a = 1;
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
