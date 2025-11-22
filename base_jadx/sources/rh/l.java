package rh;

import c5.w;
import r0.z;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Result;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.ReportDetailModel;

@r9.e(c = "tr.gov.turkiye.edevlet.kapisi.ui.accident.myreport.completed.MobileAccidentCompletedReportViewModel$provideReportDetails$2", f = "MobileAccidentCompletedReportViewModel.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes3.dex */
public final class l extends r9.i implements x9.p<kotlinx.coroutines.flow.f<? extends Result<ReportDetailModel>>, p9.d<? super l9.m>, Object> {

    /* renamed from: a, reason: collision with root package name */
    public /* synthetic */ Object f14786a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ d f14787b;

    public static final class a extends kotlin.jvm.internal.j implements x9.p<c, r0.b<? extends Result<ReportDetailModel>>, c> {

        /* renamed from: a, reason: collision with root package name */
        public static final a f14788a = new a();

        public a() {
            super(2);
        }

        @Override // x9.p
        /* renamed from: invoke */
        public final c mo7invoke(c cVar, r0.b<? extends Result<ReportDetailModel>> bVar) {
            c cVar2;
            c cVarCopy$default;
            c execute = cVar;
            r0.b<? extends Result<ReportDetailModel>> result = bVar;
            kotlin.jvm.internal.h.f(execute, "$this$execute");
            kotlin.jvm.internal.h.f(result, "result");
            try {
                Result<ReportDetailModel> resultA = result.a();
                ReportDetailModel orThrow = resultA != null ? resultA.getOrThrow() : null;
                try {
                    if (orThrow != null) {
                        cVar2 = execute;
                        cVarCopy$default = c.copy$default(execute, null, null, null, null, null, null, result, orThrow, null, null, null, null, 3903, null);
                    } else {
                        cVar2 = execute;
                        cVarCopy$default = c.copy$default(cVar2, null, null, null, null, null, null, result, null, null, null, null, null, 4031, null);
                    }
                    return cVarCopy$default;
                } catch (Throwable th2) {
                    th = th2;
                    return c.copy$default(cVar2, null, null, null, null, null, null, new r0.i(null, th), null, null, null, null, null, 4031, null);
                }
            } catch (Throwable th3) {
                th = th3;
                cVar2 = execute;
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public l(d dVar, p9.d<? super l> dVar2) {
        super(2, dVar2);
        this.f14787b = dVar;
    }

    @Override // r9.a
    public final p9.d<l9.m> create(Object obj, p9.d<?> dVar) {
        l lVar = new l(this.f14787b, dVar);
        lVar.f14786a = obj;
        return lVar;
    }

    @Override // x9.p
    /* renamed from: invoke */
    public final Object mo7invoke(kotlinx.coroutines.flow.f<? extends Result<ReportDetailModel>> fVar, p9.d<? super l9.m> dVar) {
        return ((l) create(fVar, dVar)).invokeSuspend(l9.m.f9594a);
    }

    @Override // r9.a
    public final Object invokeSuspend(Object obj) throws Throwable {
        w.F(obj);
        z.a(this.f14787b, (kotlinx.coroutines.flow.f) this.f14786a, a.f14788a);
        return l9.m.f9594a;
    }
}
