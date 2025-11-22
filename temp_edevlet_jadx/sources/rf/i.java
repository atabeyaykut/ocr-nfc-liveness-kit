package rf;

import c5.w;
import java.util.List;
import m9.v;
import r0.z;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Result;
import tr.gov.turkiye.edevlet.kapisi.data.service.ServiceModelRealm;
import x9.p;

@r9.e(c = "tr.gov.turkiye.edevlet.kapisi.dashboard.favorite.FavoriteServicesViewModel$fetchFavoriteList$2", f = "FavoriteServicesViewModel.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes3.dex */
public final class i extends r9.i implements p<kotlinx.coroutines.flow.f<? extends Result<List<? extends ServiceModelRealm>>>, p9.d<? super l9.m>, Object> {

    /* renamed from: a, reason: collision with root package name */
    public /* synthetic */ Object f14659a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ g f14660b;

    public static final class a extends kotlin.jvm.internal.j implements p<f, r0.b<? extends Result<List<? extends ServiceModelRealm>>>, f> {

        /* renamed from: a, reason: collision with root package name */
        public static final a f14661a = new a();

        public a() {
            super(2);
        }

        @Override // x9.p
        /* renamed from: invoke */
        public final f mo7invoke(f fVar, r0.b<? extends Result<List<? extends ServiceModelRealm>>> bVar) {
            f execute = fVar;
            r0.b<? extends Result<List<? extends ServiceModelRealm>>> result = bVar;
            kotlin.jvm.internal.h.f(execute, "$this$execute");
            kotlin.jvm.internal.h.f(result, "result");
            try {
                Result<List<? extends ServiceModelRealm>> resultA = result.a();
                List<? extends ServiceModelRealm> orThrow = resultA != null ? resultA.getOrThrow() : null;
                List<? extends ServiceModelRealm> list = orThrow;
                return !(list == null || list.isEmpty()) ? f.copy$default(execute, result, null, false, null, orThrow, 10, null) : f.copy$default(execute, result, null, false, null, v.f10173a, 10, null);
            } catch (Throwable th2) {
                return f.copy$default(execute, new r0.i(null, th2), null, false, null, null, 26, null);
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public i(g gVar, p9.d<? super i> dVar) {
        super(2, dVar);
        this.f14660b = gVar;
    }

    @Override // r9.a
    public final p9.d<l9.m> create(Object obj, p9.d<?> dVar) {
        i iVar = new i(this.f14660b, dVar);
        iVar.f14659a = obj;
        return iVar;
    }

    @Override // x9.p
    /* renamed from: invoke */
    public final Object mo7invoke(kotlinx.coroutines.flow.f<? extends Result<List<? extends ServiceModelRealm>>> fVar, p9.d<? super l9.m> dVar) {
        return ((i) create(fVar, dVar)).invokeSuspend(l9.m.f9594a);
    }

    @Override // r9.a
    public final Object invokeSuspend(Object obj) throws Throwable {
        w.F(obj);
        z.a(this.f14660b, (kotlinx.coroutines.flow.f) this.f14659a, a.f14661a);
        return l9.m.f9594a;
    }
}
