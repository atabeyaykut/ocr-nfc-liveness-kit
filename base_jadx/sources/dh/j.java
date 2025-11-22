package dh;

import c5.w;
import r0.z;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Result;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.DriverSaveModel;
import x9.p;

@r9.e(c = "tr.gov.turkiye.edevlet.kapisi.ui.accident.driver.MobileAccidentDriverViewModel$saveDriver$2", f = "MobileAccidentDriverViewModel.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes3.dex */
public final class j extends r9.i implements p<kotlinx.coroutines.flow.f<? extends Result<DriverSaveModel>>, p9.d<? super l9.m>, Object> {

    /* renamed from: a, reason: collision with root package name */
    public /* synthetic */ Object f4958a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ f f4959b;

    public static final class a extends kotlin.jvm.internal.j implements p<e, r0.b<? extends Result<DriverSaveModel>>, e> {

        /* renamed from: a, reason: collision with root package name */
        public static final a f4960a = new a();

        public a() {
            super(2);
        }

        @Override // x9.p
        /* renamed from: invoke */
        public final e mo7invoke(e eVar, r0.b<? extends Result<DriverSaveModel>> bVar) {
            e execute = eVar;
            r0.b<? extends Result<DriverSaveModel>> result = bVar;
            kotlin.jvm.internal.h.f(execute, "$this$execute");
            kotlin.jvm.internal.h.f(result, "result");
            try {
                Result<DriverSaveModel> resultA = result.a();
                DriverSaveModel orThrow = resultA != null ? resultA.getOrThrow() : null;
                return orThrow != null ? e.copy$default(execute, null, result, null, "SaveDriver", null, orThrow, null, 85, null) : e.copy$default(execute, null, result, null, "SaveDriver", null, null, null, 117, null);
            } catch (Throwable th2) {
                return e.copy$default(execute, null, new r0.i(null, th2), null, "SaveDriver", null, null, null, 117, null);
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public j(f fVar, p9.d<? super j> dVar) {
        super(2, dVar);
        this.f4959b = fVar;
    }

    @Override // r9.a
    public final p9.d<l9.m> create(Object obj, p9.d<?> dVar) {
        j jVar = new j(this.f4959b, dVar);
        jVar.f4958a = obj;
        return jVar;
    }

    @Override // x9.p
    /* renamed from: invoke */
    public final Object mo7invoke(kotlinx.coroutines.flow.f<? extends Result<DriverSaveModel>> fVar, p9.d<? super l9.m> dVar) {
        return ((j) create(fVar, dVar)).invokeSuspend(l9.m.f9594a);
    }

    @Override // r9.a
    public final Object invokeSuspend(Object obj) throws Throwable {
        w.F(obj);
        z.a(this.f4959b, (kotlinx.coroutines.flow.f) this.f4958a, a.f4960a);
        return l9.m.f9594a;
    }
}
