package nh;

import c5.v;
import c5.w;
import l9.m;
import nc.a0;
import nc.f0;
import nh.f;
import r9.i;
import x9.p;

@r9.e(c = "tr.gov.turkiye.edevlet.kapisi.ui.accident.merge.matched.MobileAccidentMatchedReportViewModel$scanQRCompleteDraft$1", f = "MobileAccidentMatchedReportViewModel.kt", l = {24}, m = "invokeSuspend")
/* loaded from: classes3.dex */
public final class d extends i implements p<a0, p9.d<? super m>, Object> {

    /* renamed from: a, reason: collision with root package name */
    public int f11009a;

    /* renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f11010b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ c f11011c;

    @r9.e(c = "tr.gov.turkiye.edevlet.kapisi.ui.accident.merge.matched.MobileAccidentMatchedReportViewModel$scanQRCompleteDraft$1$job$1", f = "MobileAccidentMatchedReportViewModel.kt", l = {22}, m = "invokeSuspend")
    public static final class a extends i implements p<a0, p9.d<? super m>, Object> {

        /* renamed from: a, reason: collision with root package name */
        public int f11012a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ c f11013b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(c cVar, p9.d<? super a> dVar) {
            super(2, dVar);
            this.f11013b = cVar;
        }

        @Override // r9.a
        public final p9.d<m> create(Object obj, p9.d<?> dVar) {
            return new a(this.f11013b, dVar);
        }

        @Override // x9.p
        /* renamed from: invoke */
        public final Object mo7invoke(a0 a0Var, p9.d<? super m> dVar) {
            return ((a) create(a0Var, dVar)).invokeSuspend(m.f9594a);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            q9.a aVar = q9.a.COROUTINE_SUSPENDED;
            int r12 = this.f11012a;
            if (r12 == 0) {
                w.F(obj);
                f fVar = this.f11013b.f11008h;
                f.a aVar2 = new f.a();
                this.f11012a = 1;
                if (fVar.d(aVar2, this) == aVar) {
                    return aVar;
                }
            } else {
                if (r12 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                w.F(obj);
            }
            return m.f9594a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d(c cVar, p9.d<? super d> dVar) {
        super(2, dVar);
        this.f11011c = cVar;
    }

    @Override // r9.a
    public final p9.d<m> create(Object obj, p9.d<?> dVar) {
        d dVar2 = new d(this.f11011c, dVar);
        dVar2.f11010b = obj;
        return dVar2;
    }

    @Override // x9.p
    /* renamed from: invoke */
    public final Object mo7invoke(a0 a0Var, p9.d<? super m> dVar) {
        return ((d) create(a0Var, dVar)).invokeSuspend(m.f9594a);
    }

    @Override // r9.a
    public final Object invokeSuspend(Object obj) throws Throwable {
        q9.a aVar = q9.a.COROUTINE_SUSPENDED;
        int r12 = this.f11009a;
        if (r12 == 0) {
            w.F(obj);
            a0 a0Var = (a0) this.f11010b;
            c cVar = this.f11011c;
            f0 f0VarN = v.n(a0Var, cVar.f11008h.f11018c, new a(cVar, null), 2);
            this.f11009a = 1;
            if (f0VarN.m0(this) == aVar) {
                return aVar;
            }
        } else {
            if (r12 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            w.F(obj);
        }
        return m.f9594a;
    }
}
