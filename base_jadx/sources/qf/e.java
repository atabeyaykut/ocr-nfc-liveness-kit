package qf;

import c5.v;
import c5.w;
import l9.m;
import nc.a0;
import nc.f0;
import rf.d;
import x9.p;

@r9.e(c = "tr.gov.turkiye.edevlet.kapisi.dashboard.editor.EditorServicesViewModel$favoriteOperation$1", f = "EditorServicesViewModel.kt", l = {56}, m = "invokeSuspend")
/* loaded from: classes3.dex */
public final class e extends r9.i implements p<a0, p9.d<? super m>, Object> {

    /* renamed from: a, reason: collision with root package name */
    public int f13616a;

    /* renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f13617b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ d f13618c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f13619d;

    @r9.e(c = "tr.gov.turkiye.edevlet.kapisi.dashboard.editor.EditorServicesViewModel$favoriteOperation$1$job$1", f = "EditorServicesViewModel.kt", l = {54}, m = "invokeSuspend")
    public static final class a extends r9.i implements p<a0, p9.d<? super m>, Object> {

        /* renamed from: a, reason: collision with root package name */
        public int f13620a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ d f13621b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ int f13622c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(d dVar, int r22, p9.d<? super a> dVar2) {
            super(2, dVar2);
            this.f13621b = dVar;
            this.f13622c = r22;
        }

        @Override // r9.a
        public final p9.d<m> create(Object obj, p9.d<?> dVar) {
            return new a(this.f13621b, this.f13622c, dVar);
        }

        @Override // x9.p
        /* renamed from: invoke */
        public final Object mo7invoke(a0 a0Var, p9.d<? super m> dVar) {
            return ((a) create(a0Var, dVar)).invokeSuspend(m.f9594a);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            q9.a aVar = q9.a.COROUTINE_SUSPENDED;
            int r12 = this.f13620a;
            if (r12 == 0) {
                w.F(obj);
                rf.d dVar = this.f13621b.f13614i;
                d.a aVar2 = new d.a(this.f13622c);
                this.f13620a = 1;
                if (dVar.d(aVar2, this) == aVar) {
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
    public e(d dVar, int r22, p9.d<? super e> dVar2) {
        super(2, dVar2);
        this.f13618c = dVar;
        this.f13619d = r22;
    }

    @Override // r9.a
    public final p9.d<m> create(Object obj, p9.d<?> dVar) {
        e eVar = new e(this.f13618c, this.f13619d, dVar);
        eVar.f13617b = obj;
        return eVar;
    }

    @Override // x9.p
    /* renamed from: invoke */
    public final Object mo7invoke(a0 a0Var, p9.d<? super m> dVar) {
        return ((e) create(a0Var, dVar)).invokeSuspend(m.f9594a);
    }

    @Override // r9.a
    public final Object invokeSuspend(Object obj) throws Throwable {
        q9.a aVar = q9.a.COROUTINE_SUSPENDED;
        int r12 = this.f13616a;
        if (r12 == 0) {
            w.F(obj);
            a0 a0Var = (a0) this.f13617b;
            d dVar = this.f13618c;
            f0 f0VarN = v.n(a0Var, dVar.f13614i.f14642c, new a(dVar, this.f13619d, null), 2);
            this.f13616a = 1;
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
