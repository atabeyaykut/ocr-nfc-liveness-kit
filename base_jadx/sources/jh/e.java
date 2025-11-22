package jh;

import c5.w;
import kotlin.jvm.internal.h;
import kotlin.jvm.internal.j;
import l9.m;
import r0.z;
import r9.i;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Result;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.DriverLicenceModel;
import x9.p;

@r9.e(c = "tr.gov.turkiye.edevlet.kapisi.ui.accident.introduction.MobileAccidentIntroductionViewModel$checkDriverLicence$2", f = "MobileAccidentIntroductionViewModel.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes3.dex */
public final class e extends i implements p<kotlinx.coroutines.flow.f<? extends Result<DriverLicenceModel>>, p9.d<? super m>, Object> {

    /* renamed from: a, reason: collision with root package name */
    public /* synthetic */ Object f8527a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ c f8528b;

    public static final class a extends j implements p<b, r0.b<? extends Result<DriverLicenceModel>>, b> {

        /* renamed from: a, reason: collision with root package name */
        public static final a f8529a = new a();

        public a() {
            super(2);
        }

        @Override // x9.p
        /* renamed from: invoke */
        public final b mo7invoke(b bVar, r0.b<? extends Result<DriverLicenceModel>> bVar2) {
            b execute = bVar;
            r0.b<? extends Result<DriverLicenceModel>> result = bVar2;
            h.f(execute, "$this$execute");
            h.f(result, "result");
            try {
                Result<DriverLicenceModel> resultA = result.a();
                DriverLicenceModel orThrow = resultA != null ? resultA.getOrThrow() : null;
                return orThrow != null ? new b(result, orThrow) : b.copy$default(execute, result, null, 2, null);
            } catch (Throwable th2) {
                return b.copy$default(execute, new r0.i(null, th2), null, 2, null);
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e(c cVar, p9.d<? super e> dVar) {
        super(2, dVar);
        this.f8528b = cVar;
    }

    @Override // r9.a
    public final p9.d<m> create(Object obj, p9.d<?> dVar) {
        e eVar = new e(this.f8528b, dVar);
        eVar.f8527a = obj;
        return eVar;
    }

    @Override // x9.p
    /* renamed from: invoke */
    public final Object mo7invoke(kotlinx.coroutines.flow.f<? extends Result<DriverLicenceModel>> fVar, p9.d<? super m> dVar) {
        return ((e) create(fVar, dVar)).invokeSuspend(m.f9594a);
    }

    @Override // r9.a
    public final Object invokeSuspend(Object obj) throws Throwable {
        w.F(obj);
        z.a(this.f8528b, (kotlinx.coroutines.flow.f) this.f8527a, a.f8529a);
        return m.f9594a;
    }
}
