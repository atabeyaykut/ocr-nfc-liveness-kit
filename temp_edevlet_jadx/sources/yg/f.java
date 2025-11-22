package yg;

import c5.w;
import kotlin.jvm.internal.j;
import l9.m;
import r0.z;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Result;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.CheckClarificationModel;
import x9.p;

@r9.e(c = "tr.gov.turkiye.edevlet.kapisi.ui.accident.agreement.MobileAccidentAgreementViewModel$confirmClarification$2", f = "MobileAccidentAgreementViewModel.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes3.dex */
public final class f extends r9.i implements p<kotlinx.coroutines.flow.f<? extends Result<CheckClarificationModel>>, p9.d<? super m>, Object> {

    /* renamed from: a, reason: collision with root package name */
    public /* synthetic */ Object f19712a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ d f19713b;

    public static final class a extends j implements p<c, r0.b<? extends Result<CheckClarificationModel>>, c> {

        /* renamed from: a, reason: collision with root package name */
        public static final a f19714a = new a();

        public a() {
            super(2);
        }

        @Override // x9.p
        /* renamed from: invoke */
        public final c mo7invoke(c cVar, r0.b<? extends Result<CheckClarificationModel>> bVar) {
            c execute = cVar;
            r0.b<? extends Result<CheckClarificationModel>> result = bVar;
            kotlin.jvm.internal.h.f(execute, "$this$execute");
            kotlin.jvm.internal.h.f(result, "result");
            try {
                Result<CheckClarificationModel> resultA = result.a();
                CheckClarificationModel orThrow = resultA != null ? resultA.getOrThrow() : null;
                return orThrow != null ? c.copy$default(execute, null, result, null, orThrow, 5, null) : c.copy$default(execute, null, result, null, null, 13, null);
            } catch (Throwable th2) {
                return c.copy$default(execute, null, new r0.i(null, th2), null, null, 13, null);
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f(d dVar, p9.d<? super f> dVar2) {
        super(2, dVar2);
        this.f19713b = dVar;
    }

    @Override // r9.a
    public final p9.d<m> create(Object obj, p9.d<?> dVar) {
        f fVar = new f(this.f19713b, dVar);
        fVar.f19712a = obj;
        return fVar;
    }

    @Override // x9.p
    /* renamed from: invoke */
    public final Object mo7invoke(kotlinx.coroutines.flow.f<? extends Result<CheckClarificationModel>> fVar, p9.d<? super m> dVar) {
        return ((f) create(fVar, dVar)).invokeSuspend(m.f9594a);
    }

    @Override // r9.a
    public final Object invokeSuspend(Object obj) throws Throwable {
        w.F(obj);
        z.a(this.f19713b, (kotlinx.coroutines.flow.f) this.f19712a, a.f19714a);
        return m.f9594a;
    }
}
