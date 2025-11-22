package ch;

import c5.w;
import r0.z;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Result;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.DashPointSaveModel;
import x9.p;

@r9.e(c = "tr.gov.turkiye.edevlet.kapisi.ui.accident.dashpoint.MobileAccidentDashPointViewModel$saveDashPoint$2", f = "MobileAccidentDashPointViewModel.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes3.dex */
public final class n extends r9.i implements p<kotlinx.coroutines.flow.f<? extends Result<DashPointSaveModel>>, p9.d<? super l9.m>, Object> {

    /* renamed from: a, reason: collision with root package name */
    public /* synthetic */ Object f2454a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ l f2455b;

    public static final class a extends kotlin.jvm.internal.j implements p<k, r0.b<? extends Result<DashPointSaveModel>>, k> {

        /* renamed from: a, reason: collision with root package name */
        public static final a f2456a = new a();

        public a() {
            super(2);
        }

        @Override // x9.p
        /* renamed from: invoke */
        public final k mo7invoke(k kVar, r0.b<? extends Result<DashPointSaveModel>> bVar) {
            k execute = kVar;
            r0.b<? extends Result<DashPointSaveModel>> result = bVar;
            kotlin.jvm.internal.h.f(execute, "$this$execute");
            kotlin.jvm.internal.h.f(result, "result");
            try {
                Result<DashPointSaveModel> resultA = result.a();
                DashPointSaveModel orThrow = resultA != null ? resultA.getOrThrow() : null;
                return orThrow != null ? new k(result, orThrow) : k.copy$default(execute, result, null, 2, null);
            } catch (Throwable th2) {
                return k.copy$default(execute, new r0.i(null, th2), null, 2, null);
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public n(l lVar, p9.d<? super n> dVar) {
        super(2, dVar);
        this.f2455b = lVar;
    }

    @Override // r9.a
    public final p9.d<l9.m> create(Object obj, p9.d<?> dVar) {
        n nVar = new n(this.f2455b, dVar);
        nVar.f2454a = obj;
        return nVar;
    }

    @Override // x9.p
    /* renamed from: invoke */
    public final Object mo7invoke(kotlinx.coroutines.flow.f<? extends Result<DashPointSaveModel>> fVar, p9.d<? super l9.m> dVar) {
        return ((n) create(fVar, dVar)).invokeSuspend(l9.m.f9594a);
    }

    @Override // r9.a
    public final Object invokeSuspend(Object obj) throws Throwable {
        w.F(obj);
        z.a(this.f2455b, (kotlinx.coroutines.flow.f) this.f2454a, a.f2456a);
        return l9.m.f9594a;
    }
}
