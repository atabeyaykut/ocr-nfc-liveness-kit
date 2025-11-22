package pf;

import c5.w;
import r0.z;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Result;
import tr.gov.turkiye.edevlet.kapisi.data.service.ServiceModelRealm;
import x9.p;

@r9.e(c = "tr.gov.turkiye.edevlet.kapisi.dashboard.ebys.ElectronicDocServicesViewModel$unFavoriteOperation$2", f = "ElectronicDocServicesViewModel.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes3.dex */
public final class j extends r9.i implements p<kotlinx.coroutines.flow.f<? extends Result<ServiceModelRealm>>, p9.d<? super l9.m>, Object> {

    /* renamed from: a, reason: collision with root package name */
    public /* synthetic */ Object f13187a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ d f13188b;

    public static final class a extends kotlin.jvm.internal.j implements p<c, r0.b<? extends Result<ServiceModelRealm>>, c> {

        /* renamed from: a, reason: collision with root package name */
        public static final a f13189a = new a();

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
                return orThrow != null ? c.copy$default(execute, null, null, result, false, true, orThrow, 3, null) : c.copy$default(execute, null, null, result, false, true, null, 35, null);
            } catch (Throwable th2) {
                return c.copy$default(execute, null, null, new r0.i(null, th2), false, true, null, 35, null);
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public j(d dVar, p9.d<? super j> dVar2) {
        super(2, dVar2);
        this.f13188b = dVar;
    }

    @Override // r9.a
    public final p9.d<l9.m> create(Object obj, p9.d<?> dVar) {
        j jVar = new j(this.f13188b, dVar);
        jVar.f13187a = obj;
        return jVar;
    }

    @Override // x9.p
    /* renamed from: invoke */
    public final Object mo7invoke(kotlinx.coroutines.flow.f<? extends Result<ServiceModelRealm>> fVar, p9.d<? super l9.m> dVar) {
        return ((j) create(fVar, dVar)).invokeSuspend(l9.m.f9594a);
    }

    @Override // r9.a
    public final Object invokeSuspend(Object obj) throws Throwable {
        w.F(obj);
        z.a(this.f13188b, (kotlinx.coroutines.flow.f) this.f13187a, a.f13189a);
        return l9.m.f9594a;
    }
}
