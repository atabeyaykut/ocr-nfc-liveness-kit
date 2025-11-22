package be;

import c5.w;
import java.util.List;
import r0.z;
import tr.gov.turkiye.edevlet.kapisi.data.barcode.BarcodeVerifyFieldModel;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Result;
import x9.p;

@r9.e(c = "tr.gov.turkiye.edevlet.kapisi.barcode.manual.dynamic.ManualDynamicFieldViewModel$fetchValidationFieldsOnLogin$2", f = "ManualDynamicFieldViewModel.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes3.dex */
public final class l extends r9.i implements p<kotlinx.coroutines.flow.f<? extends Result<List<? extends BarcodeVerifyFieldModel>>>, p9.d<? super l9.m>, Object> {

    /* renamed from: a, reason: collision with root package name */
    public /* synthetic */ Object f1258a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ j f1259b;

    public static final class a extends kotlin.jvm.internal.j implements p<h, r0.b<? extends Result<List<? extends BarcodeVerifyFieldModel>>>, h> {

        /* renamed from: a, reason: collision with root package name */
        public static final a f1260a = new a();

        public a() {
            super(2);
        }

        @Override // x9.p
        /* renamed from: invoke */
        public final h mo7invoke(h hVar, r0.b<? extends Result<List<? extends BarcodeVerifyFieldModel>>> bVar) {
            h execute = hVar;
            r0.b<? extends Result<List<? extends BarcodeVerifyFieldModel>>> result = bVar;
            kotlin.jvm.internal.h.f(execute, "$this$execute");
            kotlin.jvm.internal.h.f(result, "result");
            try {
                Result<List<? extends BarcodeVerifyFieldModel>> resultA = result.a();
                List<? extends BarcodeVerifyFieldModel> orThrow = resultA != null ? resultA.getOrThrow() : null;
                return orThrow != null ? h.copy$default(execute, result, orThrow, null, null, false, 12, null) : h.copy$default(execute, result, null, null, null, false, 14, null);
            } catch (Throwable th2) {
                return h.copy$default(execute, new r0.i(null, th2), null, null, null, false, 14, null);
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public l(j jVar, p9.d<? super l> dVar) {
        super(2, dVar);
        this.f1259b = jVar;
    }

    @Override // r9.a
    public final p9.d<l9.m> create(Object obj, p9.d<?> dVar) {
        l lVar = new l(this.f1259b, dVar);
        lVar.f1258a = obj;
        return lVar;
    }

    @Override // x9.p
    /* renamed from: invoke */
    public final Object mo7invoke(kotlinx.coroutines.flow.f<? extends Result<List<? extends BarcodeVerifyFieldModel>>> fVar, p9.d<? super l9.m> dVar) {
        return ((l) create(fVar, dVar)).invokeSuspend(l9.m.f9594a);
    }

    @Override // r9.a
    public final Object invokeSuspend(Object obj) throws Throwable {
        w.F(obj);
        z.a(this.f1259b, (kotlinx.coroutines.flow.f) this.f1258a, a.f1260a);
        return l9.m.f9594a;
    }
}
