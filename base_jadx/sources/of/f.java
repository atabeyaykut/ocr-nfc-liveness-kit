package of;

import c5.w;
import java.util.List;
import l9.m;
import r0.z;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Result;
import tr.gov.turkiye.edevlet.kapisi.data.service.ConceptServiceModelRealm;
import x9.p;

@r9.e(c = "tr.gov.turkiye.edevlet.kapisi.dashboard.concept.ConceptServicesViewModel$fetchConceptServiceList$2", f = "ConceptServicesViewModel.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes3.dex */
public final class f extends r9.i implements p<kotlinx.coroutines.flow.f<? extends Result<List<? extends ConceptServiceModelRealm>>>, p9.d<? super m>, Object> {

    /* renamed from: a, reason: collision with root package name */
    public /* synthetic */ Object f11327a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ d f11328b;

    public static final class a extends kotlin.jvm.internal.j implements p<c, r0.b<? extends Result<List<? extends ConceptServiceModelRealm>>>, c> {

        /* renamed from: a, reason: collision with root package name */
        public static final a f11329a = new a();

        public a() {
            super(2);
        }

        @Override // x9.p
        /* renamed from: invoke */
        public final c mo7invoke(c cVar, r0.b<? extends Result<List<? extends ConceptServiceModelRealm>>> bVar) {
            c execute = cVar;
            r0.b<? extends Result<List<? extends ConceptServiceModelRealm>>> result = bVar;
            kotlin.jvm.internal.h.f(execute, "$this$execute");
            kotlin.jvm.internal.h.f(result, "result");
            try {
                Result<List<? extends ConceptServiceModelRealm>> resultA = result.a();
                List<? extends ConceptServiceModelRealm> orThrow = resultA != null ? resultA.getOrThrow() : null;
                return orThrow != null ? new c(result, orThrow) : c.copy$default(execute, result, null, 2, null);
            } catch (Throwable th2) {
                return c.copy$default(execute, new r0.i(null, th2), null, 2, null);
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f(d dVar, p9.d<? super f> dVar2) {
        super(2, dVar2);
        this.f11328b = dVar;
    }

    @Override // r9.a
    public final p9.d<m> create(Object obj, p9.d<?> dVar) {
        f fVar = new f(this.f11328b, dVar);
        fVar.f11327a = obj;
        return fVar;
    }

    @Override // x9.p
    /* renamed from: invoke */
    public final Object mo7invoke(kotlinx.coroutines.flow.f<? extends Result<List<? extends ConceptServiceModelRealm>>> fVar, p9.d<? super m> dVar) {
        return ((f) create(fVar, dVar)).invokeSuspend(m.f9594a);
    }

    @Override // r9.a
    public final Object invokeSuspend(Object obj) throws Throwable {
        w.F(obj);
        z.a(this.f11328b, (kotlinx.coroutines.flow.f) this.f11327a, a.f11329a);
        return m.f9594a;
    }
}
