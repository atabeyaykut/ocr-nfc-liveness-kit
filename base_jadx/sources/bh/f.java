package bh;

import bh.i;
import c5.v;
import c5.w;
import l9.m;
import nc.a0;
import nc.f0;
import x9.p;

@r9.e(c = "tr.gov.turkiye.edevlet.kapisi.ui.accident.conditions.MobileAccidentConditionViewModel$provideQuestionSet$1", f = "MobileAccidentConditionViewModel.kt", l = {29}, m = "invokeSuspend")
/* loaded from: classes3.dex */
public final class f extends r9.i implements p<a0, p9.d<? super m>, Object> {

    /* renamed from: a, reason: collision with root package name */
    public int f1323a;

    /* renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f1324b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ c f1325c;

    @r9.e(c = "tr.gov.turkiye.edevlet.kapisi.ui.accident.conditions.MobileAccidentConditionViewModel$provideQuestionSet$1$job$1", f = "MobileAccidentConditionViewModel.kt", l = {27}, m = "invokeSuspend")
    public static final class a extends r9.i implements p<a0, p9.d<? super m>, Object> {

        /* renamed from: a, reason: collision with root package name */
        public int f1326a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ c f1327b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(c cVar, p9.d<? super a> dVar) {
            super(2, dVar);
            this.f1327b = cVar;
        }

        @Override // r9.a
        public final p9.d<m> create(Object obj, p9.d<?> dVar) {
            return new a(this.f1327b, dVar);
        }

        @Override // x9.p
        /* renamed from: invoke */
        public final Object mo7invoke(a0 a0Var, p9.d<? super m> dVar) {
            return ((a) create(a0Var, dVar)).invokeSuspend(m.f9594a);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            q9.a aVar = q9.a.COROUTINE_SUSPENDED;
            int r12 = this.f1326a;
            if (r12 == 0) {
                w.F(obj);
                i iVar = this.f1327b.f1311h;
                i.a aVar2 = new i.a();
                this.f1326a = 1;
                if (iVar.d(aVar2, this) == aVar) {
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
    public f(c cVar, p9.d<? super f> dVar) {
        super(2, dVar);
        this.f1325c = cVar;
    }

    @Override // r9.a
    public final p9.d<m> create(Object obj, p9.d<?> dVar) {
        f fVar = new f(this.f1325c, dVar);
        fVar.f1324b = obj;
        return fVar;
    }

    @Override // x9.p
    /* renamed from: invoke */
    public final Object mo7invoke(a0 a0Var, p9.d<? super m> dVar) {
        return ((f) create(a0Var, dVar)).invokeSuspend(m.f9594a);
    }

    @Override // r9.a
    public final Object invokeSuspend(Object obj) throws Throwable {
        q9.a aVar = q9.a.COROUTINE_SUSPENDED;
        int r12 = this.f1323a;
        if (r12 == 0) {
            w.F(obj);
            a0 a0Var = (a0) this.f1324b;
            c cVar = this.f1325c;
            f0 f0VarN = v.n(a0Var, cVar.f1311h.f1334c, new a(cVar, null), 2);
            this.f1323a = 1;
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
