package dh;

import c5.w;
import r0.z;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Result;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.VehicleListModel;
import x9.p;

@r9.e(c = "tr.gov.turkiye.edevlet.kapisi.ui.accident.driver.MobileAccidentDriverViewModel$provideListOfCar$2", f = "MobileAccidentDriverViewModel.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes3.dex */
public final class h extends r9.i implements p<kotlinx.coroutines.flow.f<? extends Result<VehicleListModel>>, p9.d<? super l9.m>, Object> {

    /* renamed from: a, reason: collision with root package name */
    public /* synthetic */ Object f4950a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ f f4951b;

    public static final class a extends kotlin.jvm.internal.j implements p<e, r0.b<? extends Result<VehicleListModel>>, e> {

        /* renamed from: a, reason: collision with root package name */
        public static final a f4952a = new a();

        public a() {
            super(2);
        }

        @Override // x9.p
        /* renamed from: invoke */
        public final e mo7invoke(e eVar, r0.b<? extends Result<VehicleListModel>> bVar) {
            e execute = eVar;
            r0.b<? extends Result<VehicleListModel>> result = bVar;
            kotlin.jvm.internal.h.f(execute, "$this$execute");
            kotlin.jvm.internal.h.f(result, "result");
            try {
                Result<VehicleListModel> resultA = result.a();
                VehicleListModel orThrow = resultA != null ? resultA.getOrThrow() : null;
                return orThrow != null ? e.copy$default(execute, result, null, null, "ListOfCar", orThrow, null, null, 102, null) : e.copy$default(execute, result, null, null, "ListOfCar", null, null, null, 118, null);
            } catch (Throwable th2) {
                return e.copy$default(execute, new r0.i(null, th2), null, null, "ListOfCar", null, null, null, 118, null);
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h(f fVar, p9.d<? super h> dVar) {
        super(2, dVar);
        this.f4951b = fVar;
    }

    @Override // r9.a
    public final p9.d<l9.m> create(Object obj, p9.d<?> dVar) {
        h hVar = new h(this.f4951b, dVar);
        hVar.f4950a = obj;
        return hVar;
    }

    @Override // x9.p
    /* renamed from: invoke */
    public final Object mo7invoke(kotlinx.coroutines.flow.f<? extends Result<VehicleListModel>> fVar, p9.d<? super l9.m> dVar) {
        return ((h) create(fVar, dVar)).invokeSuspend(l9.m.f9594a);
    }

    @Override // r9.a
    public final Object invokeSuspend(Object obj) throws Throwable {
        w.F(obj);
        z.a(this.f4951b, (kotlinx.coroutines.flow.f) this.f4950a, a.f4952a);
        return l9.m.f9594a;
    }
}
