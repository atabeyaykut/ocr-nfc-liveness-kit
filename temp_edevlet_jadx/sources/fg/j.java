package fg;

import c5.v;
import c5.w;
import fg.l;
import l9.m;
import nc.a0;
import nc.f0;
import x9.p;

@r9.e(c = "tr.gov.turkiye.edevlet.kapisi.profile.ProfileViewModel$updateProfileInfo$2", f = "ProfileViewModel.kt", l = {53}, m = "invokeSuspend")
/* loaded from: classes3.dex */
public final class j extends r9.i implements p<a0, p9.d<? super m>, Object> {

    /* renamed from: a, reason: collision with root package name */
    public int f5659a;

    /* renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f5660b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ f f5661c;

    @r9.e(c = "tr.gov.turkiye.edevlet.kapisi.profile.ProfileViewModel$updateProfileInfo$2$updateJob$1", f = "ProfileViewModel.kt", l = {51}, m = "invokeSuspend")
    public static final class a extends r9.i implements p<a0, p9.d<? super m>, Object> {

        /* renamed from: a, reason: collision with root package name */
        public int f5662a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ f f5663b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(f fVar, p9.d<? super a> dVar) {
            super(2, dVar);
            this.f5663b = fVar;
        }

        @Override // r9.a
        public final p9.d<m> create(Object obj, p9.d<?> dVar) {
            return new a(this.f5663b, dVar);
        }

        @Override // x9.p
        /* renamed from: invoke */
        public final Object mo7invoke(a0 a0Var, p9.d<? super m> dVar) {
            return ((a) create(a0Var, dVar)).invokeSuspend(m.f9594a);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            q9.a aVar = q9.a.COROUTINE_SUSPENDED;
            int r12 = this.f5662a;
            if (r12 == 0) {
                w.F(obj);
                l lVar = this.f5663b.f5649h;
                l.a aVar2 = new l.a(true);
                this.f5662a = 1;
                if (lVar.d(aVar2, this) == aVar) {
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
    public j(f fVar, p9.d<? super j> dVar) {
        super(2, dVar);
        this.f5661c = fVar;
    }

    @Override // r9.a
    public final p9.d<m> create(Object obj, p9.d<?> dVar) {
        j jVar = new j(this.f5661c, dVar);
        jVar.f5660b = obj;
        return jVar;
    }

    @Override // x9.p
    /* renamed from: invoke */
    public final Object mo7invoke(a0 a0Var, p9.d<? super m> dVar) {
        return ((j) create(a0Var, dVar)).invokeSuspend(m.f9594a);
    }

    @Override // r9.a
    public final Object invokeSuspend(Object obj) throws Throwable {
        q9.a aVar = q9.a.COROUTINE_SUSPENDED;
        int r12 = this.f5659a;
        if (r12 == 0) {
            w.F(obj);
            a0 a0Var = (a0) this.f5660b;
            f fVar = this.f5661c;
            f0 f0VarN = v.n(a0Var, fVar.f5649h.f5668c, new a(fVar, null), 2);
            this.f5659a = 1;
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
