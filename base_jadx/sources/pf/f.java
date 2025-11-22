package pf;

import c5.w;
import r0.z;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Result;
import tr.gov.turkiye.edevlet.kapisi.data.service.ServiceModelRealm;
import x9.p;

@r9.e(c = "tr.gov.turkiye.edevlet.kapisi.dashboard.ebys.ElectronicDocServicesViewModel$favoriteOperation$2", f = "ElectronicDocServicesViewModel.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes3.dex */
public final class f extends r9.i implements p<kotlinx.coroutines.flow.f<? extends Result<ServiceModelRealm>>, p9.d<? super l9.m>, Object> {

    /* renamed from: a, reason: collision with root package name */
    public /* synthetic */ Object f13169a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ d f13170b;

    public static final class a extends kotlin.jvm.internal.j implements p<c, r0.b<? extends Result<ServiceModelRealm>>, c> {

        /* renamed from: a, reason: collision with root package name */
        public static final a f13171a = new a();

        public a() {
            super(2);
        }

        @Override // x9.p
        /* renamed from: invoke */
        public final c mo7invoke(c cVar, r0.b<? extends Result<ServiceModelRealm>> bVar) {
            c execute = cVar;
            r0.b<? extends Result<ServiceModelRealm>> result = bVar;
            kotlin.jvm.internal.h.f(execute, "$this$execute");
            kotlin.jvm.internal.h.f(result, "result");
            try {
                Result<ServiceModelRealm> resultA = result.a();
                ServiceModelRealm orThrow = resultA != null ? resultA.getOrThrow() : null;
                return orThrow != null ? c.copy$default(execute, null, null, result, true, false, orThrow, 3, null) : c.copy$default(execute, null, null, result, true, false, null, 35, null);
            } catch (Throwable th2) {
                return c.copy$default(execute, null, null, new r0.i(null, th2), true, false, null, 35, null);
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f(d dVar, p9.d<? super f> dVar2) {
        super(2, dVar2);
        this.f13170b = dVar;
    }

    @Override // r9.a
    public final p9.d<l9.m> create(Object obj, p9.d<?> dVar) {
        f fVar = new f(this.f13170b, dVar);
        fVar.f13169a = obj;
        return fVar;
    }

    @Override // x9.p
    /* renamed from: invoke */
    public final Object mo7invoke(kotlinx.coroutines.flow.f<? extends Result<ServiceModelRealm>> fVar, p9.d<? super l9.m> dVar) {
        return ((f) create(fVar, dVar)).invokeSuspend(l9.m.f9594a);
    }

    @Override // r9.a
    public final Object invokeSuspend(Object obj) throws Throwable {
        w.F(obj);
        z.a(this.f13170b, (kotlinx.coroutines.flow.f) this.f13169a, a.f13171a);
        return l9.m.f9594a;
    }
}
