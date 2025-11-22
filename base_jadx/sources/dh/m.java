package dh;

import c5.w;
import r0.z;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Result;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.VehicleSaveModel;
import x9.p;

@r9.e(c = "tr.gov.turkiye.edevlet.kapisi.ui.accident.driver.MobileAccidentDriverViewModel$saveVehicle$3", f = "MobileAccidentDriverViewModel.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes3.dex */
public final class m extends r9.i implements p<kotlinx.coroutines.flow.f<? extends Result<VehicleSaveModel>>, p9.d<? super l9.m>, Object> {

    /* renamed from: a, reason: collision with root package name */
    public /* synthetic */ Object f4969a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ f f4970b;

    public static final class a extends kotlin.jvm.internal.j implements p<e, r0.b<? extends Result<VehicleSaveModel>>, e> {

        /* renamed from: a, reason: collision with root package name */
        public static final a f4971a = new a();

        public a() {
            super(2);
        }

        @Override // x9.p
        /* renamed from: invoke */
        public final e mo7invoke(e eVar, r0.b<? extends Result<VehicleSaveModel>> bVar) {
            e execute = eVar;
            r0.b<? extends Result<VehicleSaveModel>> result = bVar;
            kotlin.jvm.internal.h.f(execute, "$this$execute");
            kotlin.jvm.internal.h.f(result, "result");
            try {
                Result<VehicleSaveModel> resultA = result.a();
                VehicleSaveModel orThrow = resultA != null ? resultA.getOrThrow() : null;
                if (orThrow != null) {
                    yd.a.f19652a.c("Test v2", new Object[0]);
                    return e.copy$default(execute, null, null, result, "SaveVehicle", null, null, orThrow, 51, null);
                }
                yd.a.f19652a.c("Test v0", new Object[0]);
                return e.copy$default(execute, null, null, result, "SaveVehicle", null, null, null, 115, null);
            } catch (Throwable th2) {
                yd.a.f19652a.c("Test v1", new Object[0]);
                return e.copy$default(execute, null, null, new r0.i(null, th2), "SaveVehicle", null, null, null, 115, null);
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public m(f fVar, p9.d<? super m> dVar) {
        super(2, dVar);
        this.f4970b = fVar;
    }

    @Override // r9.a
    public final p9.d<l9.m> create(Object obj, p9.d<?> dVar) {
        m mVar = new m(this.f4970b, dVar);
        mVar.f4969a = obj;
        return mVar;
    }

    @Override // x9.p
    /* renamed from: invoke */
    public final Object mo7invoke(kotlinx.coroutines.flow.f<? extends Result<VehicleSaveModel>> fVar, p9.d<? super l9.m> dVar) {
        return ((m) create(fVar, dVar)).invokeSuspend(l9.m.f9594a);
    }

    @Override // r9.a
    public final Object invokeSuspend(Object obj) throws Throwable {
        w.F(obj);
        z.a(this.f4970b, (kotlinx.coroutines.flow.f) this.f4969a, a.f4971a);
        return l9.m.f9594a;
    }
}
