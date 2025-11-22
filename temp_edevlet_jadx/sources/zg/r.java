package zg;

import c5.w;
import r0.z;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Result;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.HostReportLocationModel;

@r9.e(c = "tr.gov.turkiye.edevlet.kapisi.ui.accident.approve.MobileAccidentApproveViewModel$provideHostLocation$2", f = "MobileAccidentApproveViewModel.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes3.dex */
public final class r extends r9.i implements x9.p<kotlinx.coroutines.flow.f<? extends Result<HostReportLocationModel>>, p9.d<? super l9.m>, Object> {

    /* renamed from: a, reason: collision with root package name */
    public /* synthetic */ Object f20421a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ l f20422b;

    public static final class a extends kotlin.jvm.internal.j implements x9.p<k, r0.b<? extends Result<HostReportLocationModel>>, k> {

        /* renamed from: a, reason: collision with root package name */
        public static final a f20423a = new a();

        public a() {
            super(2);
        }

        @Override // x9.p
        /* renamed from: invoke */
        public final k mo7invoke(k kVar, r0.b<? extends Result<HostReportLocationModel>> bVar) {
            k kVar2;
            HostReportLocationModel orThrow;
            k kVarCopy$default;
            k execute = kVar;
            r0.b<? extends Result<HostReportLocationModel>> result = bVar;
            kotlin.jvm.internal.h.f(execute, "$this$execute");
            kotlin.jvm.internal.h.f(result, "result");
            try {
                Result<HostReportLocationModel> resultA = result.a();
                orThrow = resultA != null ? resultA.getOrThrow() : null;
                kVar2 = null;
            } catch (Throwable th2) {
                th = th2;
                kVar2 = execute;
            }
            try {
                if (orThrow != null) {
                    kVar2 = execute;
                    kVarCopy$default = k.copy$default(execute, null, null, result, orThrow, null, null, null, null, null, null, null, null, null, null, null, 32755, null);
                } else {
                    kVar2 = execute;
                    kVarCopy$default = k.copy$default(kVar2, null, null, result, null, null, null, null, null, null, null, null, null, null, null, null, 32763, null);
                }
                return kVarCopy$default;
            } catch (Throwable th3) {
                th = th3;
                return k.copy$default(kVar2, null, null, new r0.i(null, th), null, null, null, null, null, null, null, null, null, null, null, null, 32763, null);
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public r(l lVar, p9.d<? super r> dVar) {
        super(2, dVar);
        this.f20422b = lVar;
    }

    @Override // r9.a
    public final p9.d<l9.m> create(Object obj, p9.d<?> dVar) {
        r rVar = new r(this.f20422b, dVar);
        rVar.f20421a = obj;
        return rVar;
    }

    @Override // x9.p
    /* renamed from: invoke */
    public final Object mo7invoke(kotlinx.coroutines.flow.f<? extends Result<HostReportLocationModel>> fVar, p9.d<? super l9.m> dVar) {
        return ((r) create(fVar, dVar)).invokeSuspend(l9.m.f9594a);
    }

    @Override // r9.a
    public final Object invokeSuspend(Object obj) throws Throwable {
        w.F(obj);
        z.a(this.f20422b, (kotlinx.coroutines.flow.f) this.f20421a, a.f20423a);
        return l9.m.f9594a;
    }
}
