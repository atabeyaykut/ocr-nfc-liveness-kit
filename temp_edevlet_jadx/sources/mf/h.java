package mf;

import c5.w;
import java.util.List;
import l9.m;
import r0.z;
import tr.gov.turkiye.edevlet.kapisi.data.about.AboutPageModelRealm;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Result;
import x9.p;

@r9.e(c = "tr.gov.turkiye.edevlet.kapisi.dashboard.about.AboutPageViewModel$fetchAboutPages$2", f = "AboutPageViewModel.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes3.dex */
public final class h extends r9.i implements p<kotlinx.coroutines.flow.f<? extends Result<List<? extends AboutPageModelRealm>>>, p9.d<? super m>, Object> {

    /* renamed from: a, reason: collision with root package name */
    public /* synthetic */ Object f10414a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ f f10415b;

    public static final class a extends kotlin.jvm.internal.j implements p<e, r0.b<? extends Result<List<? extends AboutPageModelRealm>>>, e> {

        /* renamed from: a, reason: collision with root package name */
        public static final a f10416a = new a();

        public a() {
            super(2);
        }

        @Override // x9.p
        /* renamed from: invoke */
        public final e mo7invoke(e eVar, r0.b<? extends Result<List<? extends AboutPageModelRealm>>> bVar) {
            e execute = eVar;
            r0.b<? extends Result<List<? extends AboutPageModelRealm>>> result = bVar;
            kotlin.jvm.internal.h.f(execute, "$this$execute");
            kotlin.jvm.internal.h.f(result, "result");
            try {
                Result<List<? extends AboutPageModelRealm>> resultA = result.a();
                List<? extends AboutPageModelRealm> orThrow = resultA != null ? resultA.getOrThrow() : null;
                return orThrow != null ? new e(result, orThrow) : e.copy$default(execute, result, null, 2, null);
            } catch (Throwable th2) {
                return e.copy$default(execute, new r0.i(null, th2), null, 2, null);
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h(f fVar, p9.d<? super h> dVar) {
        super(2, dVar);
        this.f10415b = fVar;
    }

    @Override // r9.a
    public final p9.d<m> create(Object obj, p9.d<?> dVar) {
        h hVar = new h(this.f10415b, dVar);
        hVar.f10414a = obj;
        return hVar;
    }

    @Override // x9.p
    /* renamed from: invoke */
    public final Object mo7invoke(kotlinx.coroutines.flow.f<? extends Result<List<? extends AboutPageModelRealm>>> fVar, p9.d<? super m> dVar) {
        return ((h) create(fVar, dVar)).invokeSuspend(m.f9594a);
    }

    @Override // r9.a
    public final Object invokeSuspend(Object obj) throws Throwable {
        w.F(obj);
        z.a(this.f10415b, (kotlinx.coroutines.flow.f) this.f10414a, a.f10416a);
        return m.f9594a;
    }
}
