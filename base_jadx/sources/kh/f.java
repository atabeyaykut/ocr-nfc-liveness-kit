package kh;

import c5.v;
import c5.w;
import kh.h;
import l9.m;
import nc.a0;
import nc.f0;
import r9.i;
import x9.p;

@r9.e(c = "tr.gov.turkiye.edevlet.kapisi.ui.accident.map.MobileAccidentMapViewModel$saveLocation$1", f = "MobileAccidentMapViewModel.kt", l = {28}, m = "invokeSuspend")
/* loaded from: classes3.dex */
public final class f extends i implements p<a0, p9.d<? super m>, Object> {

    /* renamed from: a, reason: collision with root package name */
    public int f8951a;

    /* renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f8952b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ e f8953c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ String f8954d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ String f8955e;

    @r9.e(c = "tr.gov.turkiye.edevlet.kapisi.ui.accident.map.MobileAccidentMapViewModel$saveLocation$1$job$1", f = "MobileAccidentMapViewModel.kt", l = {22}, m = "invokeSuspend")
    public static final class a extends i implements p<a0, p9.d<? super m>, Object> {

        /* renamed from: a, reason: collision with root package name */
        public int f8956a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ e f8957b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ String f8958c;

        /* renamed from: d, reason: collision with root package name */
        public final /* synthetic */ String f8959d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(e eVar, String str, String str2, p9.d<? super a> dVar) {
            super(2, dVar);
            this.f8957b = eVar;
            this.f8958c = str;
            this.f8959d = str2;
        }

        @Override // r9.a
        public final p9.d<m> create(Object obj, p9.d<?> dVar) {
            return new a(this.f8957b, this.f8958c, this.f8959d, dVar);
        }

        @Override // x9.p
        /* renamed from: invoke */
        public final Object mo7invoke(a0 a0Var, p9.d<? super m> dVar) {
            return ((a) create(a0Var, dVar)).invokeSuspend(m.f9594a);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            q9.a aVar = q9.a.COROUTINE_SUSPENDED;
            int r12 = this.f8956a;
            if (r12 == 0) {
                w.F(obj);
                h hVar = this.f8957b.f8950h;
                h.a aVar2 = new h.a(this.f8958c, this.f8959d);
                this.f8956a = 1;
                if (hVar.d(aVar2, this) == aVar) {
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
    public f(e eVar, String str, String str2, p9.d<? super f> dVar) {
        super(2, dVar);
        this.f8953c = eVar;
        this.f8954d = str;
        this.f8955e = str2;
    }

    @Override // r9.a
    public final p9.d<m> create(Object obj, p9.d<?> dVar) {
        f fVar = new f(this.f8953c, this.f8954d, this.f8955e, dVar);
        fVar.f8952b = obj;
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
        int r12 = this.f8951a;
        if (r12 == 0) {
            w.F(obj);
            a0 a0Var = (a0) this.f8952b;
            e eVar = this.f8953c;
            f0 f0VarN = v.n(a0Var, eVar.f8950h.f8964c, new a(eVar, this.f8954d, this.f8955e, null), 2);
            this.f8951a = 1;
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
