package th;

import c5.w;
import kotlin.jvm.internal.h;
import kotlin.jvm.internal.j;
import l9.m;
import r0.z;
import r9.i;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Result;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.CheckClarificationModel;
import x9.p;

@r9.e(c = "tr.gov.turkiye.edevlet.kapisi.ui.accident.onboarding.MobileAccidentOnboardingViewModel$checkClarification$2", f = "MobileAccidentOnboardingViewModel.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes3.dex */
public final class f extends i implements p<kotlinx.coroutines.flow.f<? extends Result<CheckClarificationModel>>, p9.d<? super m>, Object> {

    /* renamed from: a, reason: collision with root package name */
    public /* synthetic */ Object f15754a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ d f15755b;

    public static final class a extends j implements p<c, r0.b<? extends Result<CheckClarificationModel>>, c> {

        /* renamed from: a, reason: collision with root package name */
        public static final a f15756a = new a();

        public a() {
            super(2);
        }

        @Override // x9.p
        /* renamed from: invoke */
        public final c mo7invoke(c cVar, r0.b<? extends Result<CheckClarificationModel>> bVar) {
            c execute = cVar;
            r0.b<? extends Result<CheckClarificationModel>> result = bVar;
            h.f(execute, "$this$execute");
            h.f(result, "result");
            try {
                Result<CheckClarificationModel> resultA = result.a();
                CheckClarificationModel orThrow = resultA != null ? resultA.getOrThrow() : null;
                return orThrow != null ? c.copy$default(execute, null, false, null, result, orThrow, 5, null) : c.copy$default(execute, null, false, null, result, null, 21, null);
            } catch (Throwable th2) {
                return c.copy$default(execute, null, false, null, new r0.i(null, th2), null, 21, null);
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f(d dVar, p9.d<? super f> dVar2) {
        super(2, dVar2);
        this.f15755b = dVar;
    }

    @Override // r9.a
    public final p9.d<m> create(Object obj, p9.d<?> dVar) {
        f fVar = new f(this.f15755b, dVar);
        fVar.f15754a = obj;
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
        z.a(this.f15755b, (kotlinx.coroutines.flow.f) this.f15754a, a.f15756a);
        return m.f9594a;
    }
}
