package kh;

import c5.w;
import kotlin.jvm.internal.j;
import l9.m;
import r0.z;
import r9.i;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Result;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.LocationSaveModel;
import x9.p;

@r9.e(c = "tr.gov.turkiye.edevlet.kapisi.ui.accident.map.MobileAccidentMapViewModel$saveLocation$2", f = "MobileAccidentMapViewModel.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes3.dex */
public final class g extends i implements p<kotlinx.coroutines.flow.f<? extends Result<LocationSaveModel>>, p9.d<? super m>, Object> {

    /* renamed from: a, reason: collision with root package name */
    public /* synthetic */ Object f8960a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ e f8961b;

    public static final class a extends j implements p<d, r0.b<? extends Result<LocationSaveModel>>, d> {

        /* renamed from: a, reason: collision with root package name */
        public static final a f8962a = new a();

        public a() {
            super(2);
        }

        @Override // x9.p
        /* renamed from: invoke */
        public final d mo7invoke(d dVar, r0.b<? extends Result<LocationSaveModel>> bVar) {
            d execute = dVar;
            r0.b<? extends Result<LocationSaveModel>> result = bVar;
            kotlin.jvm.internal.h.f(execute, "$this$execute");
            kotlin.jvm.internal.h.f(result, "result");
            try {
                Result<LocationSaveModel> resultA = result.a();
                LocationSaveModel orThrow = resultA != null ? resultA.getOrThrow() : null;
                return orThrow != null ? new d(result, orThrow) : d.copy$default(execute, result, null, 2, null);
            } catch (Throwable th2) {
                return d.copy$default(execute, new r0.i(null, th2), null, 2, null);
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g(e eVar, p9.d<? super g> dVar) {
        super(2, dVar);
        this.f8961b = eVar;
    }

    @Override // r9.a
    public final p9.d<m> create(Object obj, p9.d<?> dVar) {
        g gVar = new g(this.f8961b, dVar);
        gVar.f8960a = obj;
        return gVar;
    }

    @Override // x9.p
    /* renamed from: invoke */
    public final Object mo7invoke(kotlinx.coroutines.flow.f<? extends Result<LocationSaveModel>> fVar, p9.d<? super m> dVar) {
        return ((g) create(fVar, dVar)).invokeSuspend(m.f9594a);
    }

    @Override // r9.a
    public final Object invokeSuspend(Object obj) throws Throwable {
        w.F(obj);
        z.a(this.f8961b, (kotlinx.coroutines.flow.f) this.f8960a, a.f8962a);
        return m.f9594a;
    }
}
