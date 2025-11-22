package jh;

import c5.v;
import c5.w;
import jh.f;
import l9.m;
import nc.a0;
import nc.f0;
import r9.i;
import x9.p;

@r9.e(c = "tr.gov.turkiye.edevlet.kapisi.ui.accident.introduction.MobileAccidentIntroductionViewModel$checkDriverLicence$1", f = "MobileAccidentIntroductionViewModel.kt", l = {28}, m = "invokeSuspend")
/* loaded from: classes3.dex */
public final class d extends i implements p<a0, p9.d<? super m>, Object> {

    /* renamed from: a, reason: collision with root package name */
    public int f8522a;

    /* renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f8523b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ c f8524c;

    @r9.e(c = "tr.gov.turkiye.edevlet.kapisi.ui.accident.introduction.MobileAccidentIntroductionViewModel$checkDriverLicence$1$job$1", f = "MobileAccidentIntroductionViewModel.kt", l = {26}, m = "invokeSuspend")
    public static final class a extends i implements p<a0, p9.d<? super m>, Object> {

        /* renamed from: a, reason: collision with root package name */
        public int f8525a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ c f8526b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(c cVar, p9.d<? super a> dVar) {
            super(2, dVar);
            this.f8526b = cVar;
        }

        @Override // r9.a
        public final p9.d<m> create(Object obj, p9.d<?> dVar) {
            return new a(this.f8526b, dVar);
        }

        @Override // x9.p
        /* renamed from: invoke */
        public final Object mo7invoke(a0 a0Var, p9.d<? super m> dVar) {
            return ((a) create(a0Var, dVar)).invokeSuspend(m.f9594a);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            q9.a aVar = q9.a.COROUTINE_SUSPENDED;
            int r12 = this.f8525a;
            if (r12 == 0) {
                w.F(obj);
                f fVar = this.f8526b.f8521h;
                f.a aVar2 = new f.a();
                this.f8525a = 1;
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
        this.f8524c = cVar;
    }

    @Override // r9.a
    public final p9.d<m> create(Object obj, p9.d<?> dVar) {
        d dVar2 = new d(this.f8524c, dVar);
        dVar2.f8523b = obj;
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
        int r12 = this.f8522a;
        if (r12 == 0) {
            w.F(obj);
            a0 a0Var = (a0) this.f8523b;
            c cVar = this.f8524c;
            f0 f0VarN = v.n(a0Var, cVar.f8521h.f8531c, new a(cVar, null), 2);
            this.f8522a = 1;
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
