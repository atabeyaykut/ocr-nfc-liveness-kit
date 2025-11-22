package bh;

import c5.w;
import l9.m;
import r0.z;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Result;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.QuestionSetModel;
import x9.p;

@r9.e(c = "tr.gov.turkiye.edevlet.kapisi.ui.accident.conditions.MobileAccidentConditionViewModel$provideQuestionSet$2", f = "MobileAccidentConditionViewModel.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes3.dex */
public final class g extends r9.i implements p<kotlinx.coroutines.flow.f<? extends Result<QuestionSetModel>>, p9.d<? super m>, Object> {

    /* renamed from: a, reason: collision with root package name */
    public /* synthetic */ Object f1328a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ c f1329b;

    public static final class a extends kotlin.jvm.internal.j implements p<b, r0.b<? extends Result<QuestionSetModel>>, b> {

        /* renamed from: a, reason: collision with root package name */
        public static final a f1330a = new a();

        public a() {
            super(2);
        }

        @Override // x9.p
        /* renamed from: invoke */
        public final b mo7invoke(b bVar, r0.b<? extends Result<QuestionSetModel>> bVar2) {
            b execute = bVar;
            r0.b<? extends Result<QuestionSetModel>> result = bVar2;
            kotlin.jvm.internal.h.f(execute, "$this$execute");
            kotlin.jvm.internal.h.f(result, "result");
            try {
                Result<QuestionSetModel> resultA = result.a();
                QuestionSetModel orThrow = resultA != null ? resultA.getOrThrow() : null;
                return orThrow != null ? b.copy$default(execute, result, null, orThrow, true, null, 18, null) : b.copy$default(execute, result, null, null, true, null, 22, null);
            } catch (Throwable th2) {
                return b.copy$default(execute, new r0.i(null, th2), null, null, true, null, 22, null);
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g(c cVar, p9.d<? super g> dVar) {
        super(2, dVar);
        this.f1329b = cVar;
    }

    @Override // r9.a
    public final p9.d<m> create(Object obj, p9.d<?> dVar) {
        g gVar = new g(this.f1329b, dVar);
        gVar.f1328a = obj;
        return gVar;
    }

    @Override // x9.p
    /* renamed from: invoke */
    public final Object mo7invoke(kotlinx.coroutines.flow.f<? extends Result<QuestionSetModel>> fVar, p9.d<? super m> dVar) {
        return ((g) create(fVar, dVar)).invokeSuspend(m.f9594a);
    }

    @Override // r9.a
    public final Object invokeSuspend(Object obj) throws Throwable {
        w.F(obj);
        z.a(this.f1329b, (kotlinx.coroutines.flow.f) this.f1328a, a.f1330a);
        return m.f9594a;
    }
}
