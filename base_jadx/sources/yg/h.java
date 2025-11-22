package yg;

import c5.w;
import kotlin.jvm.internal.j;
import l9.m;
import r0.z;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Result;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.AgreementModel;
import x9.p;

@r9.e(c = "tr.gov.turkiye.edevlet.kapisi.ui.accident.agreement.MobileAccidentAgreementViewModel$provideAgreementText$2", f = "MobileAccidentAgreementViewModel.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes3.dex */
public final class h extends r9.i implements p<kotlinx.coroutines.flow.f<? extends Result<AgreementModel>>, p9.d<? super m>, Object> {

    /* renamed from: a, reason: collision with root package name */
    public /* synthetic */ Object f19720a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ d f19721b;

    public static final class a extends j implements p<c, r0.b<? extends Result<AgreementModel>>, c> {

        /* renamed from: a, reason: collision with root package name */
        public static final a f19722a = new a();

        public a() {
            super(2);
        }

        @Override // x9.p
        /* renamed from: invoke */
        public final c mo7invoke(c cVar, r0.b<? extends Result<AgreementModel>> bVar) {
            c execute = cVar;
            r0.b<? extends Result<AgreementModel>> result = bVar;
            kotlin.jvm.internal.h.f(execute, "$this$execute");
            kotlin.jvm.internal.h.f(result, "result");
            try {
                Result<AgreementModel> resultA = result.a();
                AgreementModel orThrow = resultA != null ? resultA.getOrThrow() : null;
                return orThrow != null ? c.copy$default(execute, result, null, orThrow, null, 10, null) : c.copy$default(execute, result, null, null, null, 14, null);
            } catch (Throwable th2) {
                return c.copy$default(execute, new r0.i(null, th2), null, null, null, 14, null);
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h(d dVar, p9.d<? super h> dVar2) {
        super(2, dVar2);
        this.f19721b = dVar;
    }

    @Override // r9.a
    public final p9.d<m> create(Object obj, p9.d<?> dVar) {
        h hVar = new h(this.f19721b, dVar);
        hVar.f19720a = obj;
        return hVar;
    }

    @Override // x9.p
    /* renamed from: invoke */
    public final Object mo7invoke(kotlinx.coroutines.flow.f<? extends Result<AgreementModel>> fVar, p9.d<? super m> dVar) {
        return ((h) create(fVar, dVar)).invokeSuspend(m.f9594a);
    }

    @Override // r9.a
    public final Object invokeSuspend(Object obj) throws Throwable {
        w.F(obj);
        z.a(this.f19721b, (kotlinx.coroutines.flow.f) this.f19720a, a.f19722a);
        return m.f9594a;
    }
}
