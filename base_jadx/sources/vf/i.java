package vf;

import c5.w;
import l9.m;
import r0.z;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Result;
import tr.gov.turkiye.edevlet.kapisi.data.service.ServiceModelRealm;
import x9.p;

@r9.e(c = "tr.gov.turkiye.edevlet.kapisi.dashboard.newest.NewestServicesViewModel$unFavoriteOperation$2", f = "NewestServicesViewModel.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes3.dex */
public final class i extends r9.i implements p<kotlinx.coroutines.flow.f<? extends Result<ServiceModelRealm>>, p9.d<? super m>, Object> {

    /* renamed from: a, reason: collision with root package name */
    public /* synthetic */ Object f18619a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ c f18620b;

    public static final class a extends kotlin.jvm.internal.j implements p<b, r0.b<? extends Result<ServiceModelRealm>>, b> {

        /* renamed from: a, reason: collision with root package name */
        public static final a f18621a = new a();

        public a() {
            super(2);
        }

        @Override // x9.p
        /* renamed from: invoke */
        public final b mo7invoke(b bVar, r0.b<? extends Result<ServiceModelRealm>> bVar2) {
            b execute = bVar;
            r0.b<? extends Result<ServiceModelRealm>> result = bVar2;
            kotlin.jvm.internal.h.f(execute, "$this$execute");
            kotlin.jvm.internal.h.f(result, "result");
            try {
                Result<ServiceModelRealm> resultA = result.a();
                ServiceModelRealm orThrow = resultA != null ? resultA.getOrThrow() : null;
                return orThrow != null ? b.copy$default(execute, false, true, orThrow, null, result, null, 40, null) : b.copy$default(execute, false, true, null, null, result, null, 44, null);
            } catch (Throwable th2) {
                return b.copy$default(execute, false, true, null, null, new r0.i(null, th2), null, 44, null);
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public i(c cVar, p9.d<? super i> dVar) {
        super(2, dVar);
        this.f18620b = cVar;
    }

    @Override // r9.a
    public final p9.d<m> create(Object obj, p9.d<?> dVar) {
        i iVar = new i(this.f18620b, dVar);
        iVar.f18619a = obj;
        return iVar;
    }

    @Override // x9.p
    /* renamed from: invoke */
    public final Object mo7invoke(kotlinx.coroutines.flow.f<? extends Result<ServiceModelRealm>> fVar, p9.d<? super m> dVar) {
        return ((i) create(fVar, dVar)).invokeSuspend(m.f9594a);
    }

    @Override // r9.a
    public final Object invokeSuspend(Object obj) throws Throwable {
        w.F(obj);
        z.a(this.f18620b, (kotlinx.coroutines.flow.f) this.f18619a, a.f18621a);
        return m.f9594a;
    }
}
