package fh;

import c5.v;
import c5.w;
import fh.h;
import l9.m;
import nc.a0;
import nc.f0;
import r9.i;
import x9.p;

@r9.e(c = "tr.gov.turkiye.edevlet.kapisi.ui.accident.driver.vehicle.MobileAccidentDifferentVehicleViewModel$saveDifferentCar$1", f = "MobileAccidentDifferentVehicleViewModel.kt", l = {30}, m = "invokeSuspend")
/* loaded from: classes3.dex */
public final class e extends i implements p<a0, p9.d<? super m>, Object> {

    /* renamed from: a, reason: collision with root package name */
    public int f5685a;

    /* renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f5686b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ d f5687c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ String f5688d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ String f5689e;
    public final /* synthetic */ String f;

    @r9.e(c = "tr.gov.turkiye.edevlet.kapisi.ui.accident.driver.vehicle.MobileAccidentDifferentVehicleViewModel$saveDifferentCar$1$job$1", f = "MobileAccidentDifferentVehicleViewModel.kt", l = {22}, m = "invokeSuspend")
    public static final class a extends i implements p<a0, p9.d<? super m>, Object> {

        /* renamed from: a, reason: collision with root package name */
        public int f5690a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ d f5691b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ String f5692c;

        /* renamed from: d, reason: collision with root package name */
        public final /* synthetic */ String f5693d;

        /* renamed from: e, reason: collision with root package name */
        public final /* synthetic */ String f5694e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(d dVar, String str, String str2, String str3, p9.d<? super a> dVar2) {
            super(2, dVar2);
            this.f5691b = dVar;
            this.f5692c = str;
            this.f5693d = str2;
            this.f5694e = str3;
        }

        @Override // r9.a
        public final p9.d<m> create(Object obj, p9.d<?> dVar) {
            return new a(this.f5691b, this.f5692c, this.f5693d, this.f5694e, dVar);
        }

        @Override // x9.p
        /* renamed from: invoke */
        public final Object mo7invoke(a0 a0Var, p9.d<? super m> dVar) {
            return ((a) create(a0Var, dVar)).invokeSuspend(m.f9594a);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            q9.a aVar = q9.a.COROUTINE_SUSPENDED;
            int r12 = this.f5690a;
            if (r12 == 0) {
                w.F(obj);
                h hVar = this.f5691b.f5684h;
                h.a aVar2 = new h.a(this.f5692c, this.f5693d, this.f5694e);
                this.f5690a = 1;
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
    public e(d dVar, String str, String str2, String str3, p9.d<? super e> dVar2) {
        super(2, dVar2);
        this.f5687c = dVar;
        this.f5688d = str;
        this.f5689e = str2;
        this.f = str3;
    }

    @Override // r9.a
    public final p9.d<m> create(Object obj, p9.d<?> dVar) {
        e eVar = new e(this.f5687c, this.f5688d, this.f5689e, this.f, dVar);
        eVar.f5686b = obj;
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
        int r12 = this.f5685a;
        if (r12 == 0) {
            w.F(obj);
            a0 a0Var = (a0) this.f5686b;
            d dVar = this.f5687c;
            f0 f0VarN = v.n(a0Var, dVar.f5684h.f5700c, new a(dVar, this.f5688d, this.f5689e, this.f, null), 2);
            this.f5685a = 1;
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
