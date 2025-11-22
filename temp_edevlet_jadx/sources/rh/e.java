package rh;

import c5.v;
import c5.w;
import nc.a0;
import nc.f0;
import rh.a;

@r9.e(c = "tr.gov.turkiye.edevlet.kapisi.ui.accident.myreport.completed.MobileAccidentCompletedReportViewModel$downloadCompletedReport$1", f = "MobileAccidentCompletedReportViewModel.kt", l = {95}, m = "invokeSuspend")
/* loaded from: classes3.dex */
public final class e extends r9.i implements x9.p<a0, p9.d<? super l9.m>, Object> {

    /* renamed from: a, reason: collision with root package name */
    public int f14748a;

    /* renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f14749b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ d f14750c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ String f14751d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ String f14752e;
    public final /* synthetic */ String f;

    @r9.e(c = "tr.gov.turkiye.edevlet.kapisi.ui.accident.myreport.completed.MobileAccidentCompletedReportViewModel$downloadCompletedReport$1$job$1", f = "MobileAccidentCompletedReportViewModel.kt", l = {89}, m = "invokeSuspend")
    public static final class a extends r9.i implements x9.p<a0, p9.d<? super l9.m>, Object> {

        /* renamed from: a, reason: collision with root package name */
        public int f14753a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ d f14754b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ String f14755c;

        /* renamed from: d, reason: collision with root package name */
        public final /* synthetic */ String f14756d;

        /* renamed from: e, reason: collision with root package name */
        public final /* synthetic */ String f14757e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(d dVar, String str, String str2, String str3, p9.d<? super a> dVar2) {
            super(2, dVar2);
            this.f14754b = dVar;
            this.f14755c = str;
            this.f14756d = str2;
            this.f14757e = str3;
        }

        @Override // r9.a
        public final p9.d<l9.m> create(Object obj, p9.d<?> dVar) {
            return new a(this.f14754b, this.f14755c, this.f14756d, this.f14757e, dVar);
        }

        @Override // x9.p
        /* renamed from: invoke */
        public final Object mo7invoke(a0 a0Var, p9.d<? super l9.m> dVar) {
            return ((a) create(a0Var, dVar)).invokeSuspend(l9.m.f9594a);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            q9.a aVar = q9.a.COROUTINE_SUSPENDED;
            int r12 = this.f14753a;
            if (r12 == 0) {
                w.F(obj);
                rh.a aVar2 = this.f14754b.f14736j;
                a.C0240a c0240a = new a.C0240a(this.f14755c, this.f14756d, this.f14757e);
                this.f14753a = 1;
                if (aVar2.d(c0240a, this) == aVar) {
                    return aVar;
                }
            } else {
                if (r12 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                w.F(obj);
            }
            return l9.m.f9594a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e(d dVar, String str, String str2, String str3, p9.d<? super e> dVar2) {
        super(2, dVar2);
        this.f14750c = dVar;
        this.f14751d = str;
        this.f14752e = str2;
        this.f = str3;
    }

    @Override // r9.a
    public final p9.d<l9.m> create(Object obj, p9.d<?> dVar) {
        e eVar = new e(this.f14750c, this.f14751d, this.f14752e, this.f, dVar);
        eVar.f14749b = obj;
        return eVar;
    }

    @Override // x9.p
    /* renamed from: invoke */
    public final Object mo7invoke(a0 a0Var, p9.d<? super l9.m> dVar) {
        return ((e) create(a0Var, dVar)).invokeSuspend(l9.m.f9594a);
    }

    @Override // r9.a
    public final Object invokeSuspend(Object obj) throws Throwable {
        q9.a aVar = q9.a.COROUTINE_SUSPENDED;
        int r12 = this.f14748a;
        if (r12 == 0) {
            w.F(obj);
            a0 a0Var = (a0) this.f14749b;
            d dVar = this.f14750c;
            f0 f0VarN = v.n(a0Var, dVar.f14736j.f14690c, new a(dVar, this.f14751d, this.f14752e, this.f, null), 2);
            this.f14748a = 1;
            if (f0VarN.m0(this) == aVar) {
                return aVar;
            }
        } else {
            if (r12 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            w.F(obj);
        }
        return l9.m.f9594a;
    }
}
