package ag;

import ag.i;
import c5.v;
import c5.w;
import l9.m;
import nc.a0;
import nc.f0;
import r0.z;
import tr.gov.turkiye.edevlet.kapisi.core.di.viewmodel.DaggerMvRxViewModelFactory;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Result;
import tr.gov.turkiye.edevlet.kapisi.data.institution.InstitutionModelRealm;
import x9.p;

/* loaded from: classes3.dex */
public final class d extends af.c<ag.c> {

    /* renamed from: h, reason: collision with root package name */
    public final i f293h;

    /* renamed from: i, reason: collision with root package name */
    public final bg.c f294i;

    /* renamed from: j, reason: collision with root package name */
    public final bg.d f295j;

    public static final class a extends DaggerMvRxViewModelFactory<d, ag.c> {
        public a(kotlin.jvm.internal.d dVar) {
            super(d.class);
        }
    }

    @r9.e(c = "tr.gov.turkiye.edevlet.kapisi.institution.InstitutionDetailViewModel$fetchInstitutionDetail$1", f = "InstitutionDetailViewModel.kt", l = {34}, m = "invokeSuspend")
    public static final class b extends r9.i implements p<a0, p9.d<? super m>, Object> {

        /* renamed from: a, reason: collision with root package name */
        public int f296a;

        /* renamed from: b, reason: collision with root package name */
        public /* synthetic */ Object f297b;

        /* renamed from: d, reason: collision with root package name */
        public final /* synthetic */ int f299d;

        /* renamed from: e, reason: collision with root package name */
        public final /* synthetic */ int f300e;
        public final /* synthetic */ Integer f;

        @r9.e(c = "tr.gov.turkiye.edevlet.kapisi.institution.InstitutionDetailViewModel$fetchInstitutionDetail$1$job$1", f = "InstitutionDetailViewModel.kt", l = {26}, m = "invokeSuspend")
        public static final class a extends r9.i implements p<a0, p9.d<? super m>, Object> {

            /* renamed from: a, reason: collision with root package name */
            public int f301a;

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ d f302b;

            /* renamed from: c, reason: collision with root package name */
            public final /* synthetic */ int f303c;

            /* renamed from: d, reason: collision with root package name */
            public final /* synthetic */ int f304d;

            /* renamed from: e, reason: collision with root package name */
            public final /* synthetic */ Integer f305e;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(d dVar, int r22, int r32, Integer num, p9.d<? super a> dVar2) {
                super(2, dVar2);
                this.f302b = dVar;
                this.f303c = r22;
                this.f304d = r32;
                this.f305e = num;
            }

            @Override // r9.a
            public final p9.d<m> create(Object obj, p9.d<?> dVar) {
                return new a(this.f302b, this.f303c, this.f304d, this.f305e, dVar);
            }

            @Override // x9.p
            /* renamed from: invoke */
            public final Object mo7invoke(a0 a0Var, p9.d<? super m> dVar) {
                return ((a) create(a0Var, dVar)).invokeSuspend(m.f9594a);
            }

            @Override // r9.a
            public final Object invokeSuspend(Object obj) throws Throwable {
                q9.a aVar = q9.a.COROUTINE_SUSPENDED;
                int r12 = this.f301a;
                if (r12 == 0) {
                    w.F(obj);
                    i iVar = this.f302b.f293h;
                    i.a aVar2 = new i.a(this.f303c, this.f304d, this.f305e);
                    this.f301a = 1;
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
        public b(int r22, int r32, Integer num, p9.d<? super b> dVar) {
            super(2, dVar);
            this.f299d = r22;
            this.f300e = r32;
            this.f = num;
        }

        @Override // r9.a
        public final p9.d<m> create(Object obj, p9.d<?> dVar) {
            b bVar = d.this.new b(this.f299d, this.f300e, this.f, dVar);
            bVar.f297b = obj;
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
            int r12 = this.f296a;
            if (r12 == 0) {
                w.F(obj);
                a0 a0Var = (a0) this.f297b;
                d dVar = d.this;
                f0 f0VarN = v.n(a0Var, dVar.f293h.f330c, new a(dVar, this.f299d, this.f300e, this.f, null), 2);
                this.f296a = 1;
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

    @r9.e(c = "tr.gov.turkiye.edevlet.kapisi.institution.InstitutionDetailViewModel$fetchInstitutionDetail$2", f = "InstitutionDetailViewModel.kt", l = {}, m = "invokeSuspend")
    public static final class c extends r9.i implements p<kotlinx.coroutines.flow.f<? extends Result<InstitutionModelRealm>>, p9.d<? super m>, Object> {

        /* renamed from: a, reason: collision with root package name */
        public /* synthetic */ Object f306a;

        public static final class a extends kotlin.jvm.internal.j implements p<ag.c, r0.b<? extends Result<InstitutionModelRealm>>, ag.c> {

            /* renamed from: a, reason: collision with root package name */
            public static final a f308a = new a();

            public a() {
                super(2);
            }

            @Override // x9.p
            /* renamed from: invoke */
            public final ag.c mo7invoke(ag.c cVar, r0.b<? extends Result<InstitutionModelRealm>> bVar) {
                ag.c execute = cVar;
                r0.b<? extends Result<InstitutionModelRealm>> result = bVar;
                kotlin.jvm.internal.h.f(execute, "$this$execute");
                kotlin.jvm.internal.h.f(result, "result");
                try {
                    Result<InstitutionModelRealm> resultA = result.a();
                    InstitutionModelRealm orThrow = resultA != null ? resultA.getOrThrow() : null;
                    return orThrow != null ? ag.c.copy$default(execute, result, orThrow, null, false, false, null, 60, null) : ag.c.copy$default(execute, result, null, null, false, false, null, 62, null);
                } catch (Throwable th2) {
                    return ag.c.copy$default(execute, new r0.i(null, th2), null, null, false, false, null, 62, null);
                }
            }
        }

        public c(p9.d<? super c> dVar) {
            super(2, dVar);
        }

        @Override // r9.a
        public final p9.d<m> create(Object obj, p9.d<?> dVar) {
            c cVar = d.this.new c(dVar);
            cVar.f306a = obj;
            return cVar;
        }

        @Override // x9.p
        /* renamed from: invoke */
        public final Object mo7invoke(kotlinx.coroutines.flow.f<? extends Result<InstitutionModelRealm>> fVar, p9.d<? super m> dVar) {
            return ((c) create(fVar, dVar)).invokeSuspend(m.f9594a);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            w.F(obj);
            z.a(d.this, (kotlinx.coroutines.flow.f) this.f306a, a.f308a);
            return m.f9594a;
        }
    }

    static {
        new a(null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d(ag.c state, i institutionDetailWork, bg.c favoriteServiceWork, bg.d unFavoriteServiceWork) {
        super(state);
        kotlin.jvm.internal.h.f(state, "state");
        kotlin.jvm.internal.h.f(institutionDetailWork, "institutionDetailWork");
        kotlin.jvm.internal.h.f(favoriteServiceWork, "favoriteServiceWork");
        kotlin.jvm.internal.h.f(unFavoriteServiceWork, "unFavoriteServiceWork");
        this.f293h = institutionDetailWork;
        this.f294i = favoriteServiceWork;
        this.f295j = unFavoriteServiceWork;
    }

    public final void d(int r82, int r92, Integer num) {
        b bVar = new b(r82, r92, num, null);
        a0 a0Var = this.f13883c;
        v.C(a0Var, null, 0, bVar, 3);
        v.D(a0Var, this.f293h, new c(null));
    }
}
