package mh;

import c5.w;
import kotlin.jvm.internal.h;
import kotlin.jvm.internal.j;
import l9.m;
import r0.z;
import r9.i;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Result;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.ScanQRModel;
import x9.p;

@r9.e(c = "tr.gov.turkiye.edevlet.kapisi.ui.accident.merge.host.MobileAccidentQRScanViewModel$scanQR$2", f = "MobileAccidentQRScanViewModel.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes3.dex */
public final class e extends i implements p<kotlinx.coroutines.flow.f<? extends Result<ScanQRModel>>, p9.d<? super m>, Object> {

    /* renamed from: a, reason: collision with root package name */
    public /* synthetic */ Object f10451a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ c f10452b;

    public static final class a extends j implements p<b, r0.b<? extends Result<ScanQRModel>>, b> {

        /* renamed from: a, reason: collision with root package name */
        public static final a f10453a = new a();

        public a() {
            super(2);
        }

        @Override // x9.p
        /* renamed from: invoke */
        public final b mo7invoke(b bVar, r0.b<? extends Result<ScanQRModel>> bVar2) {
            b execute = bVar;
            r0.b<? extends Result<ScanQRModel>> result = bVar2;
            h.f(execute, "$this$execute");
            h.f(result, "result");
            try {
                Result<ScanQRModel> resultA = result.a();
                ScanQRModel orThrow = resultA != null ? resultA.getOrThrow() : null;
                return orThrow != null ? new b(result, orThrow) : b.copy$default(execute, result, null, 2, null);
            } catch (Throwable th2) {
                return b.copy$default(execute, new r0.i(null, th2), null, 2, null);
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e(c cVar, p9.d<? super e> dVar) {
        super(2, dVar);
        this.f10452b = cVar;
    }

    @Override // r9.a
    public final p9.d<m> create(Object obj, p9.d<?> dVar) {
        e eVar = new e(this.f10452b, dVar);
        eVar.f10451a = obj;
        return eVar;
    }

    @Override // x9.p
    /* renamed from: invoke */
    public final Object mo7invoke(kotlinx.coroutines.flow.f<? extends Result<ScanQRModel>> fVar, p9.d<? super m> dVar) {
        return ((e) create(fVar, dVar)).invokeSuspend(m.f9594a);
    }

    @Override // r9.a
    public final Object invokeSuspend(Object obj) throws Throwable {
        w.F(obj);
        z.a(this.f10452b, (kotlinx.coroutines.flow.f) this.f10451a, a.f10453a);
        return m.f9594a;
    }
}
