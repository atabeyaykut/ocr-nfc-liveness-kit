package vg;

import c5.w;
import java.util.List;
import kotlin.jvm.internal.h;
import kotlin.jvm.internal.j;
import l9.m;
import r0.z;
import r9.i;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Result;
import tr.gov.turkiye.edevlet.kapisi.data.institution.InstitutionModelRealm;
import x9.p;

@r9.e(c = "tr.gov.turkiye.edevlet.kapisi.services.list.InstitutionListViewModel$provideInstitutionList$2", f = "InstitutionListViewModel.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes3.dex */
public final class f extends i implements p<kotlinx.coroutines.flow.f<? extends Result<List<? extends InstitutionModelRealm>>>, p9.d<? super m>, Object> {

    /* renamed from: a, reason: collision with root package name */
    public /* synthetic */ Object f18653a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ d f18654b;

    public static final class a extends j implements p<c, r0.b<? extends Result<List<? extends InstitutionModelRealm>>>, c> {

        /* renamed from: a, reason: collision with root package name */
        public static final a f18655a = new a();

        public a() {
            super(2);
        }

        @Override // x9.p
        /* renamed from: invoke */
        public final c mo7invoke(c cVar, r0.b<? extends Result<List<? extends InstitutionModelRealm>>> bVar) {
            c execute = cVar;
            r0.b<? extends Result<List<? extends InstitutionModelRealm>>> result = bVar;
            h.f(execute, "$this$execute");
            h.f(result, "result");
            try {
                Result<List<? extends InstitutionModelRealm>> resultA = result.a();
                List<? extends InstitutionModelRealm> orThrow = resultA != null ? resultA.getOrThrow() : null;
                return orThrow != null ? new c(result, orThrow) : c.copy$default(execute, result, null, 2, null);
            } catch (Throwable th2) {
                return c.copy$default(execute, new r0.i(null, th2), null, 2, null);
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f(d dVar, p9.d<? super f> dVar2) {
        super(2, dVar2);
        this.f18654b = dVar;
    }

    @Override // r9.a
    public final p9.d<m> create(Object obj, p9.d<?> dVar) {
        f fVar = new f(this.f18654b, dVar);
        fVar.f18653a = obj;
        return fVar;
    }

    @Override // x9.p
    /* renamed from: invoke */
    public final Object mo7invoke(kotlinx.coroutines.flow.f<? extends Result<List<? extends InstitutionModelRealm>>> fVar, p9.d<? super m> dVar) {
        return ((f) create(fVar, dVar)).invokeSuspend(m.f9594a);
    }

    @Override // r9.a
    public final Object invokeSuspend(Object obj) throws Throwable {
        w.F(obj);
        z.a(this.f18654b, (kotlinx.coroutines.flow.f) this.f18653a, a.f18655a);
        return m.f9594a;
    }
}
