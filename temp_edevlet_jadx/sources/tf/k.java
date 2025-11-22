package tf;

import c5.w;
import java.util.List;
import l9.m;
import r0.z;
import tr.gov.turkiye.edevlet.kapisi.data.city.CityModelRealm;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Result;
import x9.p;

@r9.e(c = "tr.gov.turkiye.edevlet.kapisi.dashboard.mycity.city.MyCityListViewModel$fetchCityListByCategory$2", f = "MyCityListViewModel.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes3.dex */
public final class k extends r9.i implements p<kotlinx.coroutines.flow.f<? extends Result<List<? extends CityModelRealm>>>, p9.d<? super m>, Object> {

    /* renamed from: a, reason: collision with root package name */
    public /* synthetic */ Object f15710a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ i f15711b;

    public static final class a extends kotlin.jvm.internal.j implements p<h, r0.b<? extends Result<List<? extends CityModelRealm>>>, h> {

        /* renamed from: a, reason: collision with root package name */
        public static final a f15712a = new a();

        public a() {
            super(2);
        }

        @Override // x9.p
        /* renamed from: invoke */
        public final h mo7invoke(h hVar, r0.b<? extends Result<List<? extends CityModelRealm>>> bVar) {
            h execute = hVar;
            r0.b<? extends Result<List<? extends CityModelRealm>>> result = bVar;
            kotlin.jvm.internal.h.f(execute, "$this$execute");
            kotlin.jvm.internal.h.f(result, "result");
            try {
                Result<List<? extends CityModelRealm>> resultA = result.a();
                List<? extends CityModelRealm> orThrow = resultA != null ? resultA.getOrThrow() : null;
                return orThrow != null ? new h(result, orThrow) : h.copy$default(execute, result, null, 2, null);
            } catch (Throwable th2) {
                return h.copy$default(execute, new r0.i(null, th2), null, 2, null);
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public k(i iVar, p9.d<? super k> dVar) {
        super(2, dVar);
        this.f15711b = iVar;
    }

    @Override // r9.a
    public final p9.d<m> create(Object obj, p9.d<?> dVar) {
        k kVar = new k(this.f15711b, dVar);
        kVar.f15710a = obj;
        return kVar;
    }

    @Override // x9.p
    /* renamed from: invoke */
    public final Object mo7invoke(kotlinx.coroutines.flow.f<? extends Result<List<? extends CityModelRealm>>> fVar, p9.d<? super m> dVar) {
        return ((k) create(fVar, dVar)).invokeSuspend(m.f9594a);
    }

    @Override // r9.a
    public final Object invokeSuspend(Object obj) throws Throwable {
        w.F(obj);
        z.a(this.f15711b, (kotlinx.coroutines.flow.f) this.f15710a, a.f15712a);
        return m.f9594a;
    }
}
