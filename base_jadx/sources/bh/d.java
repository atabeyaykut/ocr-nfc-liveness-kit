package bh;

import bh.j;
import c5.v;
import c5.w;
import l9.m;
import nc.a0;
import nc.f0;
import x9.p;

@r9.e(c = "tr.gov.turkiye.edevlet.kapisi.ui.accident.conditions.MobileAccidentConditionViewModel$initializeReport$1", f = "MobileAccidentConditionViewModel.kt", l = {58}, m = "invokeSuspend")
/* loaded from: classes3.dex */
public final class d extends r9.i implements p<a0, p9.d<? super m>, Object> {

    /* renamed from: a, reason: collision with root package name */
    public int f1313a;

    /* renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f1314b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ c f1315c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ String f1316d;

    @r9.e(c = "tr.gov.turkiye.edevlet.kapisi.ui.accident.conditions.MobileAccidentConditionViewModel$initializeReport$1$job$1", f = "MobileAccidentConditionViewModel.kt", l = {56}, m = "invokeSuspend")
    public static final class a extends r9.i implements p<a0, p9.d<? super m>, Object> {

        /* renamed from: a, reason: collision with root package name */
        public int f1317a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ c f1318b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ String f1319c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(c cVar, String str, p9.d<? super a> dVar) {
            super(2, dVar);
            this.f1318b = cVar;
            this.f1319c = str;
        }

        @Override // r9.a
        public final p9.d<m> create(Object obj, p9.d<?> dVar) {
            return new a(this.f1318b, this.f1319c, dVar);
        }

        @Override // x9.p
        /* renamed from: invoke */
        public final Object mo7invoke(a0 a0Var, p9.d<? super m> dVar) {
            return ((a) create(a0Var, dVar)).invokeSuspend(m.f9594a);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            q9.a aVar = q9.a.COROUTINE_SUSPENDED;
            int r12 = this.f1317a;
            if (r12 == 0) {
                w.F(obj);
                j jVar = this.f1318b.f1312i;
                j.a aVar2 = new j.a(this.f1319c);
                this.f1317a = 1;
                if (jVar.d(aVar2, this) == aVar) {
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
    public d(c cVar, String str, p9.d<? super d> dVar) {
        super(2, dVar);
        this.f1315c = cVar;
        this.f1316d = str;
    }

    @Override // r9.a
    public final p9.d<m> create(Object obj, p9.d<?> dVar) {
        d dVar2 = new d(this.f1315c, this.f1316d, dVar);
        dVar2.f1314b = obj;
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
        int r12 = this.f1313a;
        if (r12 == 0) {
            w.F(obj);
            a0 a0Var = (a0) this.f1314b;
            c cVar = this.f1315c;
            f0 f0VarN = v.n(a0Var, cVar.f1312i.f1337c, new a(cVar, this.f1316d, null), 2);
            this.f1313a = 1;
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
