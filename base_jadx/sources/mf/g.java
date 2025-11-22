package mf;

import c5.v;
import c5.w;
import l9.m;
import mf.k;
import nc.a0;
import nc.f0;
import x9.p;

@r9.e(c = "tr.gov.turkiye.edevlet.kapisi.dashboard.about.AboutPageViewModel$fetchAboutPages$1", f = "AboutPageViewModel.kt", l = {28}, m = "invokeSuspend")
/* loaded from: classes3.dex */
public final class g extends r9.i implements p<a0, p9.d<? super m>, Object> {

    /* renamed from: a, reason: collision with root package name */
    public int f10409a;

    /* renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f10410b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ f f10411c;

    @r9.e(c = "tr.gov.turkiye.edevlet.kapisi.dashboard.about.AboutPageViewModel$fetchAboutPages$1$job$1", f = "AboutPageViewModel.kt", l = {26}, m = "invokeSuspend")
    public static final class a extends r9.i implements p<a0, p9.d<? super m>, Object> {

        /* renamed from: a, reason: collision with root package name */
        public int f10412a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ f f10413b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(f fVar, p9.d<? super a> dVar) {
            super(2, dVar);
            this.f10413b = fVar;
        }

        @Override // r9.a
        public final p9.d<m> create(Object obj, p9.d<?> dVar) {
            return new a(this.f10413b, dVar);
        }

        @Override // x9.p
        /* renamed from: invoke */
        public final Object mo7invoke(a0 a0Var, p9.d<? super m> dVar) {
            return ((a) create(a0Var, dVar)).invokeSuspend(m.f9594a);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            q9.a aVar = q9.a.COROUTINE_SUSPENDED;
            int r12 = this.f10412a;
            if (r12 == 0) {
                w.F(obj);
                k kVar = this.f10413b.f10408h;
                k.a aVar2 = new k.a();
                this.f10412a = 1;
                if (kVar.d(aVar2, this) == aVar) {
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
    public g(f fVar, p9.d<? super g> dVar) {
        super(2, dVar);
        this.f10411c = fVar;
    }

    @Override // r9.a
    public final p9.d<m> create(Object obj, p9.d<?> dVar) {
        g gVar = new g(this.f10411c, dVar);
        gVar.f10410b = obj;
        return gVar;
    }

    @Override // x9.p
    /* renamed from: invoke */
    public final Object mo7invoke(a0 a0Var, p9.d<? super m> dVar) {
        return ((g) create(a0Var, dVar)).invokeSuspend(m.f9594a);
    }

    @Override // r9.a
    public final Object invokeSuspend(Object obj) throws Throwable {
        q9.a aVar = q9.a.COROUTINE_SUSPENDED;
        int r12 = this.f10409a;
        if (r12 == 0) {
            w.F(obj);
            a0 a0Var = (a0) this.f10410b;
            f fVar = this.f10411c;
            f0 f0VarN = v.n(a0Var, fVar.f10408h.f10421c, new a(fVar, null), 2);
            this.f10409a = 1;
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
