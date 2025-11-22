package lh;

import c5.w;
import l9.m;
import r0.z;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Result;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.ControlQRScanModel;
import x9.p;

@r9.e(c = "tr.gov.turkiye.edevlet.kapisi.ui.accident.merge.guest.MobileAccidentGenerateQRViewModel$checkQRControl$2", f = "MobileAccidentGenerateQRViewModel.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes3.dex */
public final class g extends r9.i implements p<kotlinx.coroutines.flow.f<? extends Result<ControlQRScanModel>>, p9.d<? super m>, Object> {

    /* renamed from: a, reason: collision with root package name */
    public /* synthetic */ Object f9843a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ e f9844b;

    public static final class a extends kotlin.jvm.internal.j implements p<d, r0.b<? extends Result<ControlQRScanModel>>, d> {

        /* renamed from: a, reason: collision with root package name */
        public static final a f9845a = new a();

        public a() {
            super(2);
        }

        @Override // x9.p
        /* renamed from: invoke */
        public final d mo7invoke(d dVar, r0.b<? extends Result<ControlQRScanModel>> bVar) {
            d execute = dVar;
            r0.b<? extends Result<ControlQRScanModel>> result = bVar;
            kotlin.jvm.internal.h.f(execute, "$this$execute");
            kotlin.jvm.internal.h.f(result, "result");
            try {
                Result<ControlQRScanModel> resultA = result.a();
                ControlQRScanModel orThrow = resultA != null ? resultA.getOrThrow() : null;
                return orThrow != null ? d.copy$default(execute, null, null, result, orThrow, 3, null) : d.copy$default(execute, null, null, result, null, 11, null);
            } catch (Throwable th2) {
                return d.copy$default(execute, null, null, new r0.i(null, th2), null, 11, null);
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g(e eVar, p9.d<? super g> dVar) {
        super(2, dVar);
        this.f9844b = eVar;
    }

    @Override // r9.a
    public final p9.d<m> create(Object obj, p9.d<?> dVar) {
        g gVar = new g(this.f9844b, dVar);
        gVar.f9843a = obj;
        return gVar;
    }

    @Override // x9.p
    /* renamed from: invoke */
    public final Object mo7invoke(kotlinx.coroutines.flow.f<? extends Result<ControlQRScanModel>> fVar, p9.d<? super m> dVar) {
        return ((g) create(fVar, dVar)).invokeSuspend(m.f9594a);
    }

    @Override // r9.a
    public final Object invokeSuspend(Object obj) throws Throwable {
        w.F(obj);
        z.a(this.f9844b, (kotlinx.coroutines.flow.f) this.f9843a, a.f9845a);
        return m.f9594a;
    }
}
