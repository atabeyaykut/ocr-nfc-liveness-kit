package qf;

import c5.v;
import c5.w;
import l9.m;
import nc.a0;
import nc.f0;
import rf.n;
import x9.p;

@r9.e(c = "tr.gov.turkiye.edevlet.kapisi.dashboard.editor.EditorServicesViewModel$unFavoriteOperation$1", f = "EditorServicesViewModel.kt", l = {90}, m = "invokeSuspend")
/* loaded from: classes3.dex */
public final class i extends r9.i implements p<a0, p9.d<? super m>, Object> {

    /* renamed from: a, reason: collision with root package name */
    public int f13634a;

    /* renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f13635b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ d f13636c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f13637d;

    @r9.e(c = "tr.gov.turkiye.edevlet.kapisi.dashboard.editor.EditorServicesViewModel$unFavoriteOperation$1$job$1", f = "EditorServicesViewModel.kt", l = {88}, m = "invokeSuspend")
    public static final class a extends r9.i implements p<a0, p9.d<? super m>, Object> {

        /* renamed from: a, reason: collision with root package name */
        public int f13638a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ d f13639b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ int f13640c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(d dVar, int r22, p9.d<? super a> dVar2) {
            super(2, dVar2);
            this.f13639b = dVar;
            this.f13640c = r22;
        }

        @Override // r9.a
        public final p9.d<m> create(Object obj, p9.d<?> dVar) {
            return new a(this.f13639b, this.f13640c, dVar);
        }

        @Override // x9.p
        /* renamed from: invoke */
        public final Object mo7invoke(a0 a0Var, p9.d<? super m> dVar) {
            return ((a) create(a0Var, dVar)).invokeSuspend(m.f9594a);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            q9.a aVar = q9.a.COROUTINE_SUSPENDED;
            int r12 = this.f13638a;
            if (r12 == 0) {
                w.F(obj);
                n nVar = this.f13639b.f13615j;
                n.a aVar2 = new n.a(this.f13640c);
                this.f13638a = 1;
                if (nVar.d(aVar2, this) == aVar) {
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
    public i(d dVar, int r22, p9.d<? super i> dVar2) {
        super(2, dVar2);
        this.f13636c = dVar;
        this.f13637d = r22;
    }

    @Override // r9.a
    public final p9.d<m> create(Object obj, p9.d<?> dVar) {
        i iVar = new i(this.f13636c, this.f13637d, dVar);
        iVar.f13635b = obj;
        return iVar;
    }

    @Override // x9.p
    /* renamed from: invoke */
    public final Object mo7invoke(a0 a0Var, p9.d<? super m> dVar) {
        return ((i) create(a0Var, dVar)).invokeSuspend(m.f9594a);
    }

    @Override // r9.a
    public final Object invokeSuspend(Object obj) throws Throwable {
        q9.a aVar = q9.a.COROUTINE_SUSPENDED;
        int r12 = this.f13634a;
        if (r12 == 0) {
            w.F(obj);
            a0 a0Var = (a0) this.f13635b;
            d dVar = this.f13636c;
            f0 f0VarN = v.n(a0Var, dVar.f13615j.f14677c, new a(dVar, this.f13637d, null), 2);
            this.f13634a = 1;
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
