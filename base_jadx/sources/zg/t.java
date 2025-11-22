package zg;

import c5.w;
import r0.z;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Result;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.ReportDetailModel;

@r9.e(c = "tr.gov.turkiye.edevlet.kapisi.ui.accident.approve.MobileAccidentApproveViewModel$provideReportDetails$2", f = "MobileAccidentApproveViewModel.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes3.dex */
public final class t extends r9.i implements x9.p<kotlinx.coroutines.flow.f<? extends Result<ReportDetailModel>>, p9.d<? super l9.m>, Object> {

    /* renamed from: a, reason: collision with root package name */
    public /* synthetic */ Object f20429a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ l f20430b;

    public static final class a extends kotlin.jvm.internal.j implements x9.p<k, r0.b<? extends Result<ReportDetailModel>>, k> {

        /* renamed from: a, reason: collision with root package name */
        public static final a f20431a = new a();

        public a() {
            super(2);
        }

        @Override // x9.p
        /* renamed from: invoke */
        public final k mo7invoke(k kVar, r0.b<? extends Result<ReportDetailModel>> bVar) {
            k kVar2;
            k kVarCopy$default;
            k execute = kVar;
            r0.b<? extends Result<ReportDetailModel>> result = bVar;
            kotlin.jvm.internal.h.f(execute, "$this$execute");
            kotlin.jvm.internal.h.f(result, "result");
            try {
                Result<ReportDetailModel> resultA = result.a();
                ReportDetailModel orThrow = resultA != null ? resultA.getOrThrow() : null;
                try {
                    if (orThrow != null) {
                        kVar2 = execute;
                        kVarCopy$default = k.copy$default(execute, result, orThrow, null, null, null, null, null, null, null, null, null, null, null, null, null, 32764, null);
                    } else {
                        kVar2 = execute;
                        kVarCopy$default = k.copy$default(kVar2, result, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 32766, null);
                    }
                    return kVarCopy$default;
                } catch (Throwable th2) {
                    th = th2;
                    return k.copy$default(kVar2, new r0.i(null, th), null, null, null, null, null, null, null, null, null, null, null, null, null, null, 32766, null);
                }
            } catch (Throwable th3) {
                th = th3;
                kVar2 = execute;
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public t(l lVar, p9.d<? super t> dVar) {
        super(2, dVar);
        this.f20430b = lVar;
    }

    @Override // r9.a
    public final p9.d<l9.m> create(Object obj, p9.d<?> dVar) {
        t tVar = new t(this.f20430b, dVar);
        tVar.f20429a = obj;
        return tVar;
    }

    @Override // x9.p
    /* renamed from: invoke */
    public final Object mo7invoke(kotlinx.coroutines.flow.f<? extends Result<ReportDetailModel>> fVar, p9.d<? super l9.m> dVar) {
        return ((t) create(fVar, dVar)).invokeSuspend(l9.m.f9594a);
    }

    @Override // r9.a
    public final Object invokeSuspend(Object obj) throws Throwable {
        w.F(obj);
        z.a(this.f20430b, (kotlinx.coroutines.flow.f) this.f20429a, a.f20431a);
        return l9.m.f9594a;
    }
}
