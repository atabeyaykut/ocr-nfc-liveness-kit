package zg;

import c5.w;
import r0.z;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Result;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.ConfirmationHostRequestModel;

@r9.e(c = "tr.gov.turkiye.edevlet.kapisi.ui.accident.approve.MobileAccidentApproveViewModel$makeConfirmationRequestForHost$2", f = "MobileAccidentApproveViewModel.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes3.dex */
public final class p extends r9.i implements x9.p<kotlinx.coroutines.flow.f<? extends Result<ConfirmationHostRequestModel>>, p9.d<? super l9.m>, Object> {

    /* renamed from: a, reason: collision with root package name */
    public /* synthetic */ Object f20411a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ l f20412b;

    public static final class a extends kotlin.jvm.internal.j implements x9.p<k, r0.b<? extends Result<ConfirmationHostRequestModel>>, k> {

        /* renamed from: a, reason: collision with root package name */
        public static final a f20413a = new a();

        public a() {
            super(2);
        }

        @Override // x9.p
        /* renamed from: invoke */
        public final k mo7invoke(k kVar, r0.b<? extends Result<ConfirmationHostRequestModel>> bVar) {
            k kVar2;
            ConfirmationHostRequestModel orThrow;
            k kVarCopy$default;
            k execute = kVar;
            r0.b<? extends Result<ConfirmationHostRequestModel>> result = bVar;
            kotlin.jvm.internal.h.f(execute, "$this$execute");
            kotlin.jvm.internal.h.f(result, "result");
            try {
                Result<ConfirmationHostRequestModel> resultA = result.a();
                orThrow = resultA != null ? resultA.getOrThrow() : null;
                kVar2 = null;
            } catch (Throwable th2) {
                th = th2;
                kVar2 = execute;
            }
            try {
                if (orThrow != null) {
                    kVar2 = execute;
                    kVarCopy$default = k.copy$default(execute, null, null, null, null, null, null, null, null, result, orThrow, null, null, null, null, null, 31999, null);
                } else {
                    kVar2 = execute;
                    kVarCopy$default = k.copy$default(kVar2, null, null, null, null, null, null, null, null, result, null, null, null, null, null, null, 32511, null);
                }
                return kVarCopy$default;
            } catch (Throwable th3) {
                th = th3;
                return k.copy$default(kVar2, null, null, null, null, null, null, null, null, new r0.i(null, th), null, null, null, null, null, null, 32511, null);
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public p(l lVar, p9.d<? super p> dVar) {
        super(2, dVar);
        this.f20412b = lVar;
    }

    @Override // r9.a
    public final p9.d<l9.m> create(Object obj, p9.d<?> dVar) {
        p pVar = new p(this.f20412b, dVar);
        pVar.f20411a = obj;
        return pVar;
    }

    @Override // x9.p
    /* renamed from: invoke */
    public final Object mo7invoke(kotlinx.coroutines.flow.f<? extends Result<ConfirmationHostRequestModel>> fVar, p9.d<? super l9.m> dVar) {
        return ((p) create(fVar, dVar)).invokeSuspend(l9.m.f9594a);
    }

    @Override // r9.a
    public final Object invokeSuspend(Object obj) throws Throwable {
        w.F(obj);
        z.a(this.f20412b, (kotlinx.coroutines.flow.f) this.f20411a, a.f20413a);
        return l9.m.f9594a;
    }
}
