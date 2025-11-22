package uf;

import c5.v;
import c5.w;
import java.util.List;
import kotlin.jvm.internal.h;
import kotlin.jvm.internal.j;
import l9.m;
import nc.a0;
import nc.f0;
import r0.z;
import r9.i;
import tr.gov.turkiye.edevlet.kapisi.core.di.viewmodel.DaggerMvRxViewModelFactory;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Result;
import tr.gov.turkiye.edevlet.kapisi.data.institution.InstitutionModelRealm;
import uf.f;
import x9.p;

/* loaded from: classes3.dex */
public final class d extends af.c<uf.c> {

    /* renamed from: h, reason: collision with root package name */
    public final f f18133h;

    public static final class a extends DaggerMvRxViewModelFactory<d, uf.c> {
        public a(kotlin.jvm.internal.d dVar) {
            super(d.class);
        }
    }

    @r9.e(c = "tr.gov.turkiye.edevlet.kapisi.dashboard.mycity.page.MyCityViewModel$provideInstitutionList$1", f = "MyCityViewModel.kt", l = {24}, m = "invokeSuspend")
    public static final class b extends i implements p<a0, p9.d<? super m>, Object> {

        /* renamed from: a, reason: collision with root package name */
        public int f18134a;

        /* renamed from: b, reason: collision with root package name */
        public /* synthetic */ Object f18135b;

        /* renamed from: d, reason: collision with root package name */
        public final /* synthetic */ int f18137d;

        /* renamed from: e, reason: collision with root package name */
        public final /* synthetic */ int f18138e;

        @r9.e(c = "tr.gov.turkiye.edevlet.kapisi.dashboard.mycity.page.MyCityViewModel$provideInstitutionList$1$job$1", f = "MyCityViewModel.kt", l = {22}, m = "invokeSuspend")
        public static final class a extends i implements p<a0, p9.d<? super m>, Object> {

            /* renamed from: a, reason: collision with root package name */
            public int f18139a;

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ d f18140b;

            /* renamed from: c, reason: collision with root package name */
            public final /* synthetic */ int f18141c;

            /* renamed from: d, reason: collision with root package name */
            public final /* synthetic */ int f18142d;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(d dVar, int r22, int r32, p9.d<? super a> dVar2) {
                super(2, dVar2);
                this.f18140b = dVar;
                this.f18141c = r22;
                this.f18142d = r32;
            }

            @Override // r9.a
            public final p9.d<m> create(Object obj, p9.d<?> dVar) {
                return new a(this.f18140b, this.f18141c, this.f18142d, dVar);
            }

            @Override // x9.p
            /* renamed from: invoke */
            public final Object mo7invoke(a0 a0Var, p9.d<? super m> dVar) {
                return ((a) create(a0Var, dVar)).invokeSuspend(m.f9594a);
            }

            @Override // r9.a
            public final Object invokeSuspend(Object obj) throws Throwable {
                q9.a aVar = q9.a.COROUTINE_SUSPENDED;
                int r12 = this.f18139a;
                if (r12 == 0) {
                    w.F(obj);
                    f fVar = this.f18140b.f18133h;
                    f.a aVar2 = new f.a(this.f18141c, this.f18142d);
                    this.f18139a = 1;
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
        public b(int r22, int r32, p9.d<? super b> dVar) {
            super(2, dVar);
            this.f18137d = r22;
            this.f18138e = r32;
        }

        @Override // r9.a
        public final p9.d<m> create(Object obj, p9.d<?> dVar) {
            b bVar = d.this.new b(this.f18137d, this.f18138e, dVar);
            bVar.f18135b = obj;
            return bVar;
        }

        @Override // x9.p
        /* renamed from: invoke */
        public final Object mo7invoke(a0 a0Var, p9.d<? super m> dVar) {
            return ((b) create(a0Var, dVar)).invokeSuspend(m.f9594a);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            q9.a aVar = q9.a.COROUTINE_SUSPENDED;
            int r12 = this.f18134a;
            if (r12 == 0) {
                w.F(obj);
                a0 a0Var = (a0) this.f18135b;
                d dVar = d.this;
                f0 f0VarN = v.n(a0Var, dVar.f18133h.f18148c, new a(dVar, this.f18137d, this.f18138e, null), 2);
                this.f18134a = 1;
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

    @r9.e(c = "tr.gov.turkiye.edevlet.kapisi.dashboard.mycity.page.MyCityViewModel$provideInstitutionList$2", f = "MyCityViewModel.kt", l = {}, m = "invokeSuspend")
    public static final class c extends i implements p<kotlinx.coroutines.flow.f<? extends Result<List<? extends InstitutionModelRealm>>>, p9.d<? super m>, Object> {

        /* renamed from: a, reason: collision with root package name */
        public /* synthetic */ Object f18143a;

        public static final class a extends j implements p<uf.c, r0.b<? extends Result<List<? extends InstitutionModelRealm>>>, uf.c> {

            /* renamed from: a, reason: collision with root package name */
            public static final a f18145a = new a();

            public a() {
                super(2);
            }

            @Override // x9.p
            /* renamed from: invoke */
            public final uf.c mo7invoke(uf.c cVar, r0.b<? extends Result<List<? extends InstitutionModelRealm>>> bVar) {
                uf.c execute = cVar;
                r0.b<? extends Result<List<? extends InstitutionModelRealm>>> result = bVar;
                h.f(execute, "$this$execute");
                h.f(result, "result");
                try {
                    Result<List<? extends InstitutionModelRealm>> resultA = result.a();
                    List<? extends InstitutionModelRealm> orThrow = resultA != null ? resultA.getOrThrow() : null;
                    return orThrow != null ? new uf.c(result, orThrow) : uf.c.copy$default(execute, result, null, 2, null);
                } catch (Throwable th2) {
                    return uf.c.copy$default(execute, new r0.i(null, th2), null, 2, null);
                }
            }
        }

        public c(p9.d<? super c> dVar) {
            super(2, dVar);
        }

        @Override // r9.a
        public final p9.d<m> create(Object obj, p9.d<?> dVar) {
            c cVar = d.this.new c(dVar);
            cVar.f18143a = obj;
            return cVar;
        }

        @Override // x9.p
        /* renamed from: invoke */
        public final Object mo7invoke(kotlinx.coroutines.flow.f<? extends Result<List<? extends InstitutionModelRealm>>> fVar, p9.d<? super m> dVar) {
            return ((c) create(fVar, dVar)).invokeSuspend(m.f9594a);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            w.F(obj);
            z.a(d.this, (kotlinx.coroutines.flow.f) this.f18143a, a.f18145a);
            return m.f9594a;
        }
    }

    static {
        new a(null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d(uf.c state, f myCityWork) {
        super(state);
        h.f(state, "state");
        h.f(myCityWork, "myCityWork");
        this.f18133h = myCityWork;
    }

    public final void d(int r42, int r52) {
        b bVar = new b(r42, r52, null);
        a0 a0Var = this.f13883c;
        v.C(a0Var, null, 0, bVar, 3);
        v.D(a0Var, this.f18133h, new c(null));
    }
}
