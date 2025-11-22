package bh;

import c5.w;
import l9.m;
import r0.z;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Result;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.InitializeResponseModel;
import x9.p;

@r9.e(c = "tr.gov.turkiye.edevlet.kapisi.ui.accident.conditions.MobileAccidentConditionViewModel$initializeReport$2", f = "MobileAccidentConditionViewModel.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes3.dex */
public final class e extends r9.i implements p<kotlinx.coroutines.flow.f<? extends Result<InitializeResponseModel>>, p9.d<? super m>, Object> {

    /* renamed from: a, reason: collision with root package name */
    public /* synthetic */ Object f1320a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ c f1321b;

    public static final class a extends kotlin.jvm.internal.j implements p<b, r0.b<? extends Result<InitializeResponseModel>>, b> {

        /* renamed from: a, reason: collision with root package name */
        public static final a f1322a = new a();

        public a() {
            super(2);
        }

        @Override // x9.p
        /* renamed from: invoke */
        public final b mo7invoke(b bVar, r0.b<? extends Result<InitializeResponseModel>> bVar2) {
            b execute = bVar;
            r0.b<? extends Result<InitializeResponseModel>> result = bVar2;
            kotlin.jvm.internal.h.f(execute, "$this$execute");
            kotlin.jvm.internal.h.f(result, "result");
            try {
                Result<InitializeResponseModel> resultA = result.a();
                InitializeResponseModel orThrow = resultA != null ? resultA.getOrThrow() : null;
                return orThrow != null ? b.copy$default(execute, null, result, null, false, orThrow, 5, null) : b.copy$default(execute, null, result, null, false, null, 21, null);
            } catch (Throwable th2) {
                return b.copy$default(execute, null, new r0.i(null, th2), null, false, null, 21, null);
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e(c cVar, p9.d<? super e> dVar) {
        super(2, dVar);
        this.f1321b = cVar;
    }

    @Override // r9.a
    public final p9.d<m> create(Object obj, p9.d<?> dVar) {
        e eVar = new e(this.f1321b, dVar);
        eVar.f1320a = obj;
        return eVar;
    }

    @Override // x9.p
    /* renamed from: invoke */
    public final Object mo7invoke(kotlinx.coroutines.flow.f<? extends Result<InitializeResponseModel>> fVar, p9.d<? super m> dVar) {
        return ((e) create(fVar, dVar)).invokeSuspend(m.f9594a);
    }

    @Override // r9.a
    public final Object invokeSuspend(Object obj) throws Throwable {
        w.F(obj);
        z.a(this.f1321b, (kotlinx.coroutines.flow.f) this.f1320a, a.f1322a);
        return m.f9594a;
    }
}
