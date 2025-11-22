package qf;

import c5.w;
import java.util.List;
import l9.m;
import r0.z;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Result;
import tr.gov.turkiye.edevlet.kapisi.data.service.ServiceModelRealm;
import x9.p;

@r9.e(c = "tr.gov.turkiye.edevlet.kapisi.dashboard.editor.EditorServicesViewModel$fetchEditorServiceList$2", f = "EditorServicesViewModel.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes3.dex */
public final class h extends r9.i implements p<kotlinx.coroutines.flow.f<? extends Result<List<? extends ServiceModelRealm>>>, p9.d<? super m>, Object> {

    /* renamed from: a, reason: collision with root package name */
    public /* synthetic */ Object f13631a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ d f13632b;

    public static final class a extends kotlin.jvm.internal.j implements p<c, r0.b<? extends Result<List<? extends ServiceModelRealm>>>, c> {

        /* renamed from: a, reason: collision with root package name */
        public static final a f13633a = new a();

        public a() {
            super(2);
        }

        @Override // x9.p
        /* renamed from: invoke */
        public final c mo7invoke(c cVar, r0.b<? extends Result<List<? extends ServiceModelRealm>>> bVar) {
            c execute = cVar;
            r0.b<? extends Result<List<? extends ServiceModelRealm>>> result = bVar;
            kotlin.jvm.internal.h.f(execute, "$this$execute");
            kotlin.jvm.internal.h.f(result, "result");
            try {
                Result<List<? extends ServiceModelRealm>> resultA = result.a();
                List<? extends ServiceModelRealm> orThrow = resultA != null ? resultA.getOrThrow() : null;
                return orThrow != null ? c.copy$default(execute, result, null, false, false, null, orThrow, 30, null) : c.copy$default(execute, result, null, false, false, null, null, 62, null);
            } catch (Throwable th2) {
                return c.copy$default(execute, new r0.i(null, th2), null, false, false, null, null, 62, null);
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h(d dVar, p9.d<? super h> dVar2) {
        super(2, dVar2);
        this.f13632b = dVar;
    }

    @Override // r9.a
    public final p9.d<m> create(Object obj, p9.d<?> dVar) {
        h hVar = new h(this.f13632b, dVar);
        hVar.f13631a = obj;
        return hVar;
    }

    @Override // x9.p
    /* renamed from: invoke */
    public final Object mo7invoke(kotlinx.coroutines.flow.f<? extends Result<List<? extends ServiceModelRealm>>> fVar, p9.d<? super m> dVar) {
        return ((h) create(fVar, dVar)).invokeSuspend(m.f9594a);
    }

    @Override // r9.a
    public final Object invokeSuspend(Object obj) throws Throwable {
        w.F(obj);
        z.a(this.f13632b, (kotlinx.coroutines.flow.f) this.f13631a, a.f13633a);
        return m.f9594a;
    }
}
