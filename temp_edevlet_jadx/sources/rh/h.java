package rh;

import c5.w;
import r0.z;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Result;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.InProgressReportListModel;

@r9.e(c = "tr.gov.turkiye.edevlet.kapisi.ui.accident.myreport.completed.MobileAccidentCompletedReportViewModel$provideInProgressReportList$2", f = "MobileAccidentCompletedReportViewModel.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes3.dex */
public final class h extends r9.i implements x9.p<kotlinx.coroutines.flow.f<? extends Result<InProgressReportListModel>>, p9.d<? super l9.m>, Object> {

    /* renamed from: a, reason: collision with root package name */
    public /* synthetic */ Object f14766a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ d f14767b;

    public static final class a extends kotlin.jvm.internal.j implements x9.p<c, r0.b<? extends Result<InProgressReportListModel>>, c> {

        /* renamed from: a, reason: collision with root package name */
        public static final a f14768a = new a();

        public a() {
            super(2);
        }

        @Override // x9.p
        /* renamed from: invoke */
        public final c mo7invoke(c cVar, r0.b<? extends Result<InProgressReportListModel>> bVar) {
            c cVar2;
            c cVarCopy$default;
            c execute = cVar;
            r0.b<? extends Result<InProgressReportListModel>> result = bVar;
            kotlin.jvm.internal.h.f(execute, "$this$execute");
            kotlin.jvm.internal.h.f(result, "result");
            try {
                Result<InProgressReportListModel> resultA = result.a();
                InProgressReportListModel orThrow = resultA != null ? resultA.getOrThrow() : null;
                try {
                    if (orThrow != null) {
                        cVar2 = execute;
                        cVarCopy$default = c.copy$default(execute, result, orThrow, null, null, null, null, null, null, null, null, null, null, 4092, null);
                    } else {
                        cVar2 = execute;
                        cVarCopy$default = c.copy$default(cVar2, result, null, null, null, null, null, null, null, null, null, null, null, 4094, null);
                    }
                    return cVarCopy$default;
                } catch (Throwable th2) {
                    th = th2;
                    return c.copy$default(cVar2, new r0.i(null, th), null, null, null, null, null, null, null, null, null, null, null, 4094, null);
                }
            } catch (Throwable th3) {
                th = th3;
                cVar2 = execute;
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h(d dVar, p9.d<? super h> dVar2) {
        super(2, dVar2);
        this.f14767b = dVar;
    }

    @Override // r9.a
    public final p9.d<l9.m> create(Object obj, p9.d<?> dVar) {
        h hVar = new h(this.f14767b, dVar);
        hVar.f14766a = obj;
        return hVar;
    }

    @Override // x9.p
    /* renamed from: invoke */
    public final Object mo7invoke(kotlinx.coroutines.flow.f<? extends Result<InProgressReportListModel>> fVar, p9.d<? super l9.m> dVar) {
        return ((h) create(fVar, dVar)).invokeSuspend(l9.m.f9594a);
    }

    @Override // r9.a
    public final Object invokeSuspend(Object obj) throws Throwable {
        w.F(obj);
        z.a(this.f14767b, (kotlinx.coroutines.flow.f) this.f14766a, a.f14768a);
        return l9.m.f9594a;
    }
}
