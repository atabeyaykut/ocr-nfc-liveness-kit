package rh;

import c5.w;
import r0.z;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Result;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.MergeDetailModel;

@r9.e(c = "tr.gov.turkiye.edevlet.kapisi.ui.accident.myreport.completed.MobileAccidentCompletedReportViewModel$provideMergedReportDetails$2", f = "MobileAccidentCompletedReportViewModel.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes3.dex */
public final class j extends r9.i implements x9.p<kotlinx.coroutines.flow.f<? extends Result<MergeDetailModel>>, p9.d<? super l9.m>, Object> {

    /* renamed from: a, reason: collision with root package name */
    public /* synthetic */ Object f14776a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ d f14777b;

    public static final class a extends kotlin.jvm.internal.j implements x9.p<c, r0.b<? extends Result<MergeDetailModel>>, c> {

        /* renamed from: a, reason: collision with root package name */
        public static final a f14778a = new a();

        public a() {
            super(2);
        }

        @Override // x9.p
        /* renamed from: invoke */
        public final c mo7invoke(c cVar, r0.b<? extends Result<MergeDetailModel>> bVar) {
            c cVar2;
            c cVarCopy$default;
            c execute = cVar;
            r0.b<? extends Result<MergeDetailModel>> result = bVar;
            kotlin.jvm.internal.h.f(execute, "$this$execute");
            kotlin.jvm.internal.h.f(result, "result");
            try {
                Result<MergeDetailModel> resultA = result.a();
                MergeDetailModel orThrow = resultA != null ? resultA.getOrThrow() : null;
                try {
                    if (orThrow != null) {
                        cVar2 = execute;
                        cVarCopy$default = c.copy$default(execute, null, null, null, null, null, null, null, null, null, null, result, orThrow, 1023, null);
                    } else {
                        cVar2 = execute;
                        cVarCopy$default = c.copy$default(cVar2, null, null, null, null, null, null, null, null, null, null, result, null, 3071, null);
                    }
                    return cVarCopy$default;
                } catch (Throwable th2) {
                    th = th2;
                    return c.copy$default(cVar2, null, null, null, null, null, null, null, null, null, null, new r0.i(null, th), null, 3071, null);
                }
            } catch (Throwable th3) {
                th = th3;
                cVar2 = execute;
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public j(d dVar, p9.d<? super j> dVar2) {
        super(2, dVar2);
        this.f14777b = dVar;
    }

    @Override // r9.a
    public final p9.d<l9.m> create(Object obj, p9.d<?> dVar) {
        j jVar = new j(this.f14777b, dVar);
        jVar.f14776a = obj;
        return jVar;
    }

    @Override // x9.p
    /* renamed from: invoke */
    public final Object mo7invoke(kotlinx.coroutines.flow.f<? extends Result<MergeDetailModel>> fVar, p9.d<? super l9.m> dVar) {
        return ((j) create(fVar, dVar)).invokeSuspend(l9.m.f9594a);
    }

    @Override // r9.a
    public final Object invokeSuspend(Object obj) throws Throwable {
        w.F(obj);
        z.a(this.f14777b, (kotlinx.coroutines.flow.f) this.f14776a, a.f14778a);
        return l9.m.f9594a;
    }
}
