package lh;

import c5.w;
import l9.m;
import r0.z;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Result;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.GenerateQRModel;
import x9.p;

@r9.e(c = "tr.gov.turkiye.edevlet.kapisi.ui.accident.merge.guest.MobileAccidentGenerateQRViewModel$generateQR$2", f = "MobileAccidentGenerateQRViewModel.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes3.dex */
public final class i extends r9.i implements p<kotlinx.coroutines.flow.f<? extends Result<GenerateQRModel>>, p9.d<? super m>, Object> {

    /* renamed from: a, reason: collision with root package name */
    public /* synthetic */ Object f9851a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ e f9852b;

    public static final class a extends kotlin.jvm.internal.j implements p<d, r0.b<? extends Result<GenerateQRModel>>, d> {

        /* renamed from: a, reason: collision with root package name */
        public static final a f9853a = new a();

        public a() {
            super(2);
        }

        @Override // x9.p
        /* renamed from: invoke */
        public final d mo7invoke(d dVar, r0.b<? extends Result<GenerateQRModel>> bVar) {
            d execute = dVar;
            r0.b<? extends Result<GenerateQRModel>> result = bVar;
            kotlin.jvm.internal.h.f(execute, "$this$execute");
            kotlin.jvm.internal.h.f(result, "result");
            try {
                Result<GenerateQRModel> resultA = result.a();
                GenerateQRModel orThrow = resultA != null ? resultA.getOrThrow() : null;
                return orThrow != null ? d.copy$default(execute, result, orThrow, null, null, 12, null) : d.copy$default(execute, result, null, null, null, 14, null);
            } catch (Throwable th2) {
                return d.copy$default(execute, new r0.i(null, th2), null, null, null, 14, null);
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public i(e eVar, p9.d<? super i> dVar) {
        super(2, dVar);
        this.f9852b = eVar;
    }

    @Override // r9.a
    public final p9.d<m> create(Object obj, p9.d<?> dVar) {
        i iVar = new i(this.f9852b, dVar);
        iVar.f9851a = obj;
        return iVar;
    }

    @Override // x9.p
    /* renamed from: invoke */
    public final Object mo7invoke(kotlinx.coroutines.flow.f<? extends Result<GenerateQRModel>> fVar, p9.d<? super m> dVar) {
        return ((i) create(fVar, dVar)).invokeSuspend(m.f9594a);
    }

    @Override // r9.a
    public final Object invokeSuspend(Object obj) throws Throwable {
        w.F(obj);
        z.a(this.f9852b, (kotlinx.coroutines.flow.f) this.f9851a, a.f9853a);
        return m.f9594a;
    }
}
