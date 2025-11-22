package vf;

import c5.w;
import java.util.List;
import l9.m;
import m9.v;
import r0.z;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Result;
import tr.gov.turkiye.edevlet.kapisi.data.service.ServiceModelRealm;
import x9.p;

@r9.e(c = "tr.gov.turkiye.edevlet.kapisi.dashboard.newest.NewestServicesViewModel$fetchNewestServices$2", f = "NewestServicesViewModel.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes3.dex */
public final class g extends r9.i implements p<kotlinx.coroutines.flow.f<? extends Result<List<? extends ServiceModelRealm>>>, p9.d<? super m>, Object> {

    /* renamed from: a, reason: collision with root package name */
    public /* synthetic */ Object f18609a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ c f18610b;

    public static final class a extends kotlin.jvm.internal.j implements p<b, r0.b<? extends Result<List<? extends ServiceModelRealm>>>, b> {

        /* renamed from: a, reason: collision with root package name */
        public static final a f18611a = new a();

        public a() {
            super(2);
        }

        @Override // x9.p
        /* renamed from: invoke */
        public final b mo7invoke(b bVar, r0.b<? extends Result<List<? extends ServiceModelRealm>>> bVar2) {
            b execute = bVar;
            r0.b<? extends Result<List<? extends ServiceModelRealm>>> result = bVar2;
            kotlin.jvm.internal.h.f(execute, "$this$execute");
            kotlin.jvm.internal.h.f(result, "result");
            try {
                Result<List<? extends ServiceModelRealm>> resultA = result.a();
                List<? extends ServiceModelRealm> orThrow = resultA != null ? resultA.getOrThrow() : null;
                return orThrow != null ? b.copy$default(execute, false, false, null, orThrow, null, result, 23, null) : b.copy$default(execute, false, false, null, null, null, result, 31, null);
            } catch (Throwable th2) {
                return b.copy$default(execute, false, false, null, v.f10173a, null, new r0.i(null, th2), 23, null);
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g(c cVar, p9.d<? super g> dVar) {
        super(2, dVar);
        this.f18610b = cVar;
    }

    @Override // r9.a
    public final p9.d<m> create(Object obj, p9.d<?> dVar) {
        g gVar = new g(this.f18610b, dVar);
        gVar.f18609a = obj;
        return gVar;
    }

    @Override // x9.p
    /* renamed from: invoke */
    public final Object mo7invoke(kotlinx.coroutines.flow.f<? extends Result<List<? extends ServiceModelRealm>>> fVar, p9.d<? super m> dVar) {
        return ((g) create(fVar, dVar)).invokeSuspend(m.f9594a);
    }

    @Override // r9.a
    public final Object invokeSuspend(Object obj) throws Throwable {
        w.F(obj);
        z.a(this.f18610b, (kotlinx.coroutines.flow.f) this.f18609a, a.f18611a);
        return m.f9594a;
    }
}
