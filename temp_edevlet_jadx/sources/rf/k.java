package rf;

import c5.w;
import r0.z;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Result;
import tr.gov.turkiye.edevlet.kapisi.data.service.ServiceModelRealm;
import x9.p;

@r9.e(c = "tr.gov.turkiye.edevlet.kapisi.dashboard.favorite.FavoriteServicesViewModel$unFavoriteOperation$2", f = "FavoriteServicesViewModel.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes3.dex */
public final class k extends r9.i implements p<kotlinx.coroutines.flow.f<? extends Result<ServiceModelRealm>>, p9.d<? super l9.m>, Object> {

    /* renamed from: a, reason: collision with root package name */
    public /* synthetic */ Object f14669a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ g f14670b;

    public static final class a extends kotlin.jvm.internal.j implements p<f, r0.b<? extends Result<ServiceModelRealm>>, f> {

        /* renamed from: a, reason: collision with root package name */
        public static final a f14671a = new a();

        public a() {
            super(2);
        }

        @Override // x9.p
        /* renamed from: invoke */
        public final f mo7invoke(f fVar, r0.b<? extends Result<ServiceModelRealm>> bVar) {
            f execute = fVar;
            r0.b<? extends Result<ServiceModelRealm>> result = bVar;
            kotlin.jvm.internal.h.f(execute, "$this$execute");
            kotlin.jvm.internal.h.f(result, "result");
            try {
                Result<ServiceModelRealm> resultA = result.a();
                ServiceModelRealm orThrow = resultA != null ? resultA.getOrThrow() : null;
                return orThrow != null ? f.copy$default(execute, null, result, true, orThrow, null, 17, null) : f.copy$default(execute, null, result, true, null, null, 25, null);
            } catch (Throwable th2) {
                return f.copy$default(execute, null, new r0.i(null, th2), true, null, null, 25, null);
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public k(g gVar, p9.d<? super k> dVar) {
        super(2, dVar);
        this.f14670b = gVar;
    }

    @Override // r9.a
    public final p9.d<l9.m> create(Object obj, p9.d<?> dVar) {
        k kVar = new k(this.f14670b, dVar);
        kVar.f14669a = obj;
        return kVar;
    }

    @Override // x9.p
    /* renamed from: invoke */
    public final Object mo7invoke(kotlinx.coroutines.flow.f<? extends Result<ServiceModelRealm>> fVar, p9.d<? super l9.m> dVar) {
        return ((k) create(fVar, dVar)).invokeSuspend(l9.m.f9594a);
    }

    @Override // r9.a
    public final Object invokeSuspend(Object obj) throws Throwable {
        w.F(obj);
        z.a(this.f14670b, (kotlinx.coroutines.flow.f) this.f14669a, a.f14671a);
        return l9.m.f9594a;
    }
}
