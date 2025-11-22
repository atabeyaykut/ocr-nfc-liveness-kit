package tf;

import c5.v;
import c5.w;
import l9.m;
import nc.a0;
import nc.f0;
import tf.l;
import x9.p;

@r9.e(c = "tr.gov.turkiye.edevlet.kapisi.dashboard.mycity.city.MyCityListViewModel$fetchCityListByCategory$1", f = "MyCityListViewModel.kt", l = {24}, m = "invokeSuspend")
/* loaded from: classes3.dex */
public final class j extends r9.i implements p<a0, p9.d<? super m>, Object> {

    /* renamed from: a, reason: collision with root package name */
    public int f15703a;

    /* renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f15704b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ i f15705c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f15706d;

    @r9.e(c = "tr.gov.turkiye.edevlet.kapisi.dashboard.mycity.city.MyCityListViewModel$fetchCityListByCategory$1$job$1", f = "MyCityListViewModel.kt", l = {22}, m = "invokeSuspend")
    public static final class a extends r9.i implements p<a0, p9.d<? super m>, Object> {

        /* renamed from: a, reason: collision with root package name */
        public int f15707a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ i f15708b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ int f15709c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(i iVar, int r22, p9.d<? super a> dVar) {
            super(2, dVar);
            this.f15708b = iVar;
            this.f15709c = r22;
        }

        @Override // r9.a
        public final p9.d<m> create(Object obj, p9.d<?> dVar) {
            return new a(this.f15708b, this.f15709c, dVar);
        }

        @Override // x9.p
        /* renamed from: invoke */
        public final Object mo7invoke(a0 a0Var, p9.d<? super m> dVar) {
            return ((a) create(a0Var, dVar)).invokeSuspend(m.f9594a);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            q9.a aVar = q9.a.COROUTINE_SUSPENDED;
            int r12 = this.f15707a;
            if (r12 == 0) {
                w.F(obj);
                l lVar = this.f15708b.f15702h;
                l.a aVar2 = new l.a(this.f15709c);
                this.f15707a = 1;
                if (lVar.d(aVar2, this) == aVar) {
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
    public j(i iVar, int r22, p9.d<? super j> dVar) {
        super(2, dVar);
        this.f15705c = iVar;
        this.f15706d = r22;
    }

    @Override // r9.a
    public final p9.d<m> create(Object obj, p9.d<?> dVar) {
        j jVar = new j(this.f15705c, this.f15706d, dVar);
        jVar.f15704b = obj;
        return jVar;
    }

    @Override // x9.p
    /* renamed from: invoke */
    public final Object mo7invoke(a0 a0Var, p9.d<? super m> dVar) {
        return ((j) create(a0Var, dVar)).invokeSuspend(m.f9594a);
    }

    @Override // r9.a
    public final Object invokeSuspend(Object obj) throws Throwable {
        q9.a aVar = q9.a.COROUTINE_SUSPENDED;
        int r12 = this.f15703a;
        if (r12 == 0) {
            w.F(obj);
            a0 a0Var = (a0) this.f15704b;
            i iVar = this.f15705c;
            f0 f0VarN = v.n(a0Var, iVar.f15702h.f15714c, new a(iVar, this.f15706d, null), 2);
            this.f15703a = 1;
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
