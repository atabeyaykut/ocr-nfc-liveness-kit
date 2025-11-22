package nf;

import c5.w;
import java.util.List;
import r0.z;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Result;
import tr.gov.turkiye.edevlet.kapisi.data.service.ServiceModelRealm;
import x9.p;

@r9.e(c = "tr.gov.turkiye.edevlet.kapisi.dashboard.barcode.BarcodeServicesViewModel$fetchBarcodeServices$2", f = "BarcodeServicesViewModel.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes3.dex */
public final class i extends r9.i implements p<kotlinx.coroutines.flow.f<? extends Result<List<? extends ServiceModelRealm>>>, p9.d<? super l9.m>, Object> {

    /* renamed from: a, reason: collision with root package name */
    public /* synthetic */ Object f10927a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ e f10928b;

    public static final class a extends kotlin.jvm.internal.j implements p<d, r0.b<? extends Result<List<? extends ServiceModelRealm>>>, d> {

        /* renamed from: a, reason: collision with root package name */
        public static final a f10929a = new a();

        public a() {
            super(2);
        }

        @Override // x9.p
        /* renamed from: invoke */
        public final d mo7invoke(d dVar, r0.b<? extends Result<List<? extends ServiceModelRealm>>> bVar) {
            d execute = dVar;
            r0.b<? extends Result<List<? extends ServiceModelRealm>>> result = bVar;
            kotlin.jvm.internal.h.f(execute, "$this$execute");
            kotlin.jvm.internal.h.f(result, "result");
            try {
                Result<List<? extends ServiceModelRealm>> resultA = result.a();
                List<? extends ServiceModelRealm> orThrow = resultA != null ? resultA.getOrThrow() : null;
                return orThrow != null ? d.copy$default(execute, result, null, false, false, null, orThrow, 30, null) : d.copy$default(execute, result, null, false, false, null, null, 62, null);
            } catch (Throwable th2) {
                return d.copy$default(execute, new r0.i(null, th2), null, false, false, null, null, 62, null);
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public i(e eVar, p9.d<? super i> dVar) {
        super(2, dVar);
        this.f10928b = eVar;
    }

    @Override // r9.a
    public final p9.d<l9.m> create(Object obj, p9.d<?> dVar) {
        i iVar = new i(this.f10928b, dVar);
        iVar.f10927a = obj;
        return iVar;
    }

    @Override // x9.p
    /* renamed from: invoke */
    public final Object mo7invoke(kotlinx.coroutines.flow.f<? extends Result<List<? extends ServiceModelRealm>>> fVar, p9.d<? super l9.m> dVar) {
        return ((i) create(fVar, dVar)).invokeSuspend(l9.m.f9594a);
    }

    @Override // r9.a
    public final Object invokeSuspend(Object obj) throws Throwable {
        w.F(obj);
        z.a(this.f10928b, (kotlinx.coroutines.flow.f) this.f10927a, a.f10929a);
        return l9.m.f9594a;
    }
}
