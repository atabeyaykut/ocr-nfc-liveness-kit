package fh;

import c5.w;
import kotlin.jvm.internal.j;
import l9.m;
import r0.z;
import r9.i;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Result;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.DifferentVehicleSaveModel;
import x9.p;

@r9.e(c = "tr.gov.turkiye.edevlet.kapisi.ui.accident.driver.vehicle.MobileAccidentDifferentVehicleViewModel$saveDifferentCar$2", f = "MobileAccidentDifferentVehicleViewModel.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes3.dex */
public final class f extends i implements p<kotlinx.coroutines.flow.f<? extends Result<DifferentVehicleSaveModel>>, p9.d<? super m>, Object> {

    /* renamed from: a, reason: collision with root package name */
    public /* synthetic */ Object f5695a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ d f5696b;

    public static final class a extends j implements p<c, r0.b<? extends Result<DifferentVehicleSaveModel>>, c> {

        /* renamed from: a, reason: collision with root package name */
        public static final a f5697a = new a();

        public a() {
            super(2);
        }

        @Override // x9.p
        /* renamed from: invoke */
        public final c mo7invoke(c cVar, r0.b<? extends Result<DifferentVehicleSaveModel>> bVar) {
            c execute = cVar;
            r0.b<? extends Result<DifferentVehicleSaveModel>> result = bVar;
            kotlin.jvm.internal.h.f(execute, "$this$execute");
            kotlin.jvm.internal.h.f(result, "result");
            try {
                Result<DifferentVehicleSaveModel> resultA = result.a();
                DifferentVehicleSaveModel orThrow = resultA != null ? resultA.getOrThrow() : null;
                return orThrow != null ? new c(result, orThrow) : c.copy$default(execute, result, null, 2, null);
            } catch (Throwable th2) {
                return c.copy$default(execute, new r0.i(null, th2), null, 2, null);
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f(d dVar, p9.d<? super f> dVar2) {
        super(2, dVar2);
        this.f5696b = dVar;
    }

    @Override // r9.a
    public final p9.d<m> create(Object obj, p9.d<?> dVar) {
        f fVar = new f(this.f5696b, dVar);
        fVar.f5695a = obj;
        return fVar;
    }

    @Override // x9.p
    /* renamed from: invoke */
    public final Object mo7invoke(kotlinx.coroutines.flow.f<? extends Result<DifferentVehicleSaveModel>> fVar, p9.d<? super m> dVar) {
        return ((f) create(fVar, dVar)).invokeSuspend(m.f9594a);
    }

    @Override // r9.a
    public final Object invokeSuspend(Object obj) throws Throwable {
        w.F(obj);
        z.a(this.f5696b, (kotlinx.coroutines.flow.f) this.f5695a, a.f5697a);
        return m.f9594a;
    }
}
