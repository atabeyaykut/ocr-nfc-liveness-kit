package zg;

import c5.w;
import r0.z;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Result;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.ConfirmationGuestRequestModel;

@r9.e(c = "tr.gov.turkiye.edevlet.kapisi.ui.accident.approve.MobileAccidentApproveViewModel$makeConfirmationRequestForGuest$2", f = "MobileAccidentApproveViewModel.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes3.dex */
public final class n extends r9.i implements x9.p<kotlinx.coroutines.flow.f<? extends Result<ConfirmationGuestRequestModel>>, p9.d<? super l9.m>, Object> {

    /* renamed from: a, reason: collision with root package name */
    public /* synthetic */ Object f20401a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ l f20402b;

    public static final class a extends kotlin.jvm.internal.j implements x9.p<k, r0.b<? extends Result<ConfirmationGuestRequestModel>>, k> {

        /* renamed from: a, reason: collision with root package name */
        public static final a f20403a = new a();

        public a() {
            super(2);
        }

        @Override // x9.p
        /* renamed from: invoke */
        public final k mo7invoke(k kVar, r0.b<? extends Result<ConfirmationGuestRequestModel>> bVar) {
            k kVar2;
            ConfirmationGuestRequestModel orThrow;
            k kVarCopy$default;
            k execute = kVar;
            r0.b<? extends Result<ConfirmationGuestRequestModel>> result = bVar;
            kotlin.jvm.internal.h.f(execute, "$this$execute");
            kotlin.jvm.internal.h.f(result, "result");
            try {
                Result<ConfirmationGuestRequestModel> resultA = result.a();
                orThrow = resultA != null ? resultA.getOrThrow() : null;
                kVar2 = null;
            } catch (Throwable th2) {
                th = th2;
                kVar2 = execute;
            }
            try {
                if (orThrow != null) {
                    kVar2 = execute;
                    kVarCopy$default = k.copy$default(execute, null, null, null, null, null, null, null, null, null, null, result, orThrow, null, null, null, 29695, null);
                } else {
                    kVar2 = execute;
                    kVarCopy$default = k.copy$default(kVar2, null, null, null, null, null, null, null, null, null, null, result, null, null, null, null, 31743, null);
                }
                return kVarCopy$default;
            } catch (Throwable th3) {
                th = th3;
                return k.copy$default(kVar2, null, null, null, null, null, null, null, null, null, null, new r0.i(null, th), null, null, null, null, 31743, null);
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public n(l lVar, p9.d<? super n> dVar) {
        super(2, dVar);
        this.f20402b = lVar;
    }

    @Override // r9.a
    public final p9.d<l9.m> create(Object obj, p9.d<?> dVar) {
        n nVar = new n(this.f20402b, dVar);
        nVar.f20401a = obj;
        return nVar;
    }

    @Override // x9.p
    /* renamed from: invoke */
    public final Object mo7invoke(kotlinx.coroutines.flow.f<? extends Result<ConfirmationGuestRequestModel>> fVar, p9.d<? super l9.m> dVar) {
        return ((n) create(fVar, dVar)).invokeSuspend(l9.m.f9594a);
    }

    @Override // r9.a
    public final Object invokeSuspend(Object obj) throws Throwable {
        w.F(obj);
        z.a(this.f20402b, (kotlinx.coroutines.flow.f) this.f20401a, a.f20403a);
        return l9.m.f9594a;
    }
}
