package nf;

import c5.v;
import c5.w;
import nc.a0;
import nc.f0;
import rf.d;
import x9.p;

@r9.e(c = "tr.gov.turkiye.edevlet.kapisi.dashboard.barcode.BarcodeServicesViewModel$favoriteOperation$1", f = "BarcodeServicesViewModel.kt", l = {56}, m = "invokeSuspend")
/* loaded from: classes3.dex */
public final class f extends r9.i implements p<a0, p9.d<? super l9.m>, Object> {

    /* renamed from: a, reason: collision with root package name */
    public int f10912a;

    /* renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f10913b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ e f10914c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f10915d;

    @r9.e(c = "tr.gov.turkiye.edevlet.kapisi.dashboard.barcode.BarcodeServicesViewModel$favoriteOperation$1$job$1", f = "BarcodeServicesViewModel.kt", l = {54}, m = "invokeSuspend")
    public static final class a extends r9.i implements p<a0, p9.d<? super l9.m>, Object> {

        /* renamed from: a, reason: collision with root package name */
        public int f10916a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ e f10917b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ int f10918c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(e eVar, int r22, p9.d<? super a> dVar) {
            super(2, dVar);
            this.f10917b = eVar;
            this.f10918c = r22;
        }

        @Override // r9.a
        public final p9.d<l9.m> create(Object obj, p9.d<?> dVar) {
            return new a(this.f10917b, this.f10918c, dVar);
        }

        @Override // x9.p
        /* renamed from: invoke */
        public final Object mo7invoke(a0 a0Var, p9.d<? super l9.m> dVar) {
            return ((a) create(a0Var, dVar)).invokeSuspend(l9.m.f9594a);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            q9.a aVar = q9.a.COROUTINE_SUSPENDED;
            int r12 = this.f10916a;
            if (r12 == 0) {
                w.F(obj);
                rf.d dVar = this.f10917b.f10910i;
                d.a aVar2 = new d.a(this.f10918c);
                this.f10916a = 1;
                if (dVar.d(aVar2, this) == aVar) {
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
    public f(e eVar, int r22, p9.d<? super f> dVar) {
        super(2, dVar);
        this.f10914c = eVar;
        this.f10915d = r22;
    }

    @Override // r9.a
    public final p9.d<l9.m> create(Object obj, p9.d<?> dVar) {
        f fVar = new f(this.f10914c, this.f10915d, dVar);
        fVar.f10913b = obj;
        return fVar;
    }

    @Override // x9.p
    /* renamed from: invoke */
    public final Object mo7invoke(a0 a0Var, p9.d<? super l9.m> dVar) {
        return ((f) create(a0Var, dVar)).invokeSuspend(l9.m.f9594a);
    }

    @Override // r9.a
    public final Object invokeSuspend(Object obj) throws Throwable {
        q9.a aVar = q9.a.COROUTINE_SUSPENDED;
        int r12 = this.f10912a;
        if (r12 == 0) {
            w.F(obj);
            a0 a0Var = (a0) this.f10913b;
            e eVar = this.f10914c;
            f0 f0VarN = v.n(a0Var, eVar.f10910i.f14642c, new a(eVar, this.f10915d, null), 2);
            this.f10912a = 1;
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
