package yf;

import c5.v;
import c5.w;
import l9.m;
import nc.a0;
import nc.f0;
import r9.i;
import x9.p;
import yf.h;

@r9.e(c = "tr.gov.turkiye.edevlet.kapisi.dashboard.wonder.WonderServicesViewModel$fetchWonderServiceList$1", f = "WonderServicesViewModel.kt", l = {28}, m = "invokeSuspend")
/* loaded from: classes3.dex */
public final class f extends i implements p<a0, p9.d<? super m>, Object> {

    /* renamed from: a, reason: collision with root package name */
    public int f19674a;

    /* renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f19675b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ e f19676c;

    @r9.e(c = "tr.gov.turkiye.edevlet.kapisi.dashboard.wonder.WonderServicesViewModel$fetchWonderServiceList$1$job$1", f = "WonderServicesViewModel.kt", l = {26}, m = "invokeSuspend")
    public static final class a extends i implements p<a0, p9.d<? super m>, Object> {

        /* renamed from: a, reason: collision with root package name */
        public int f19677a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ e f19678b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(e eVar, p9.d<? super a> dVar) {
            super(2, dVar);
            this.f19678b = eVar;
        }

        @Override // r9.a
        public final p9.d<m> create(Object obj, p9.d<?> dVar) {
            return new a(this.f19678b, dVar);
        }

        @Override // x9.p
        /* renamed from: invoke */
        public final Object mo7invoke(a0 a0Var, p9.d<? super m> dVar) {
            return ((a) create(a0Var, dVar)).invokeSuspend(m.f9594a);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            q9.a aVar = q9.a.COROUTINE_SUSPENDED;
            int r12 = this.f19677a;
            if (r12 == 0) {
                w.F(obj);
                h hVar = this.f19678b.f19673h;
                h.a aVar2 = new h.a();
                this.f19677a = 1;
                if (hVar.d(aVar2, this) == aVar) {
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
    public f(e eVar, p9.d<? super f> dVar) {
        super(2, dVar);
        this.f19676c = eVar;
    }

    @Override // r9.a
    public final p9.d<m> create(Object obj, p9.d<?> dVar) {
        f fVar = new f(this.f19676c, dVar);
        fVar.f19675b = obj;
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
        int r12 = this.f19674a;
        if (r12 == 0) {
            w.F(obj);
            a0 a0Var = (a0) this.f19675b;
            e eVar = this.f19676c;
            f0 f0VarN = v.n(a0Var, eVar.f19673h.f19683c, new a(eVar, null), 2);
            this.f19674a = 1;
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
