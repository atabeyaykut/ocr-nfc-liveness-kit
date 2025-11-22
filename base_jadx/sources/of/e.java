package of;

import c5.v;
import c5.w;
import l9.m;
import nc.a0;
import nc.f0;
import of.i;
import x9.p;

@r9.e(c = "tr.gov.turkiye.edevlet.kapisi.dashboard.concept.ConceptServicesViewModel$fetchConceptServiceList$1", f = "ConceptServicesViewModel.kt", l = {28}, m = "invokeSuspend")
/* loaded from: classes3.dex */
public final class e extends r9.i implements p<a0, p9.d<? super m>, Object> {

    /* renamed from: a, reason: collision with root package name */
    public int f11322a;

    /* renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f11323b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ d f11324c;

    @r9.e(c = "tr.gov.turkiye.edevlet.kapisi.dashboard.concept.ConceptServicesViewModel$fetchConceptServiceList$1$job$1", f = "ConceptServicesViewModel.kt", l = {26}, m = "invokeSuspend")
    public static final class a extends r9.i implements p<a0, p9.d<? super m>, Object> {

        /* renamed from: a, reason: collision with root package name */
        public int f11325a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ d f11326b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(d dVar, p9.d<? super a> dVar2) {
            super(2, dVar2);
            this.f11326b = dVar;
        }

        @Override // r9.a
        public final p9.d<m> create(Object obj, p9.d<?> dVar) {
            return new a(this.f11326b, dVar);
        }

        @Override // x9.p
        /* renamed from: invoke */
        public final Object mo7invoke(a0 a0Var, p9.d<? super m> dVar) {
            return ((a) create(a0Var, dVar)).invokeSuspend(m.f9594a);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            q9.a aVar = q9.a.COROUTINE_SUSPENDED;
            int r12 = this.f11325a;
            if (r12 == 0) {
                w.F(obj);
                i iVar = this.f11326b.f11321h;
                i.a aVar2 = new i.a();
                this.f11325a = 1;
                if (iVar.d(aVar2, this) == aVar) {
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
    public e(d dVar, p9.d<? super e> dVar2) {
        super(2, dVar2);
        this.f11324c = dVar;
    }

    @Override // r9.a
    public final p9.d<m> create(Object obj, p9.d<?> dVar) {
        e eVar = new e(this.f11324c, dVar);
        eVar.f11323b = obj;
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
        int r12 = this.f11322a;
        if (r12 == 0) {
            w.F(obj);
            a0 a0Var = (a0) this.f11323b;
            d dVar = this.f11324c;
            f0 f0VarN = v.n(a0Var, dVar.f11321h.f11334c, new a(dVar, null), 2);
            this.f11322a = 1;
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
