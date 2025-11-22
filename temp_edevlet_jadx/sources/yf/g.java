package yf;

import c5.w;
import java.util.List;
import kotlin.jvm.internal.j;
import l9.m;
import r0.z;
import r9.i;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Result;
import tr.gov.turkiye.edevlet.kapisi.data.service.ServiceModelRealm;
import x9.p;

@r9.e(c = "tr.gov.turkiye.edevlet.kapisi.dashboard.wonder.WonderServicesViewModel$fetchWonderServiceList$2", f = "WonderServicesViewModel.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes3.dex */
public final class g extends i implements p<kotlinx.coroutines.flow.f<? extends Result<List<? extends ServiceModelRealm>>>, p9.d<? super m>, Object> {

    /* renamed from: a, reason: collision with root package name */
    public /* synthetic */ Object f19679a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ e f19680b;

    public static final class a extends j implements p<d, r0.b<? extends Result<List<? extends ServiceModelRealm>>>, d> {

        /* renamed from: a, reason: collision with root package name */
        public static final a f19681a = new a();

        public a() {
            super(2);
        }

        @Override // x9.p
        /* renamed from: invoke */
        public final d mo7invoke(d dVar, r0.b<? extends Result<List<? extends ServiceModelRealm>>> bVar) {
            d execute = dVar;
            r0.b<? extends Result<List<? extends ServiceModelRealm>>> result = bVar;
            kotlin.jvm.internal.h.f(execute, "$this$execute");
            kotlin.jvm.internal.h.f(result, "result");
            try {
                Result<List<? extends ServiceModelRealm>> resultA = result.a();
                List<? extends ServiceModelRealm> orThrow = resultA != null ? resultA.getOrThrow() : null;
                return orThrow != null ? new d(result, orThrow) : d.copy$default(execute, result, null, 2, null);
            } catch (Throwable th2) {
                return d.copy$default(execute, new r0.i(null, th2), null, 2, null);
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g(e eVar, p9.d<? super g> dVar) {
        super(2, dVar);
        this.f19680b = eVar;
    }

    @Override // r9.a
    public final p9.d<m> create(Object obj, p9.d<?> dVar) {
        g gVar = new g(this.f19680b, dVar);
        gVar.f19679a = obj;
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
        z.a(this.f19680b, (kotlinx.coroutines.flow.f) this.f19679a, a.f19681a);
        return m.f9594a;
    }
}
