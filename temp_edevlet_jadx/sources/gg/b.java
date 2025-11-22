package gg;

import c5.v;
import c5.w;
import fg.e;
import gg.c;
import kotlin.jvm.internal.h;
import kotlin.jvm.internal.j;
import kotlinx.coroutines.flow.f;
import l9.m;
import nc.a0;
import nc.f0;
import r0.k;
import r0.z;
import r9.i;
import tr.gov.turkiye.edevlet.kapisi.core.di.viewmodel.DaggerMvRxViewModelFactory;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Result;
import tr.gov.turkiye.edevlet.kapisi.data.profile.ProfileContactModel;
import x9.l;
import x9.p;

/* loaded from: classes3.dex */
public final class b extends af.c<e> {

    /* renamed from: h, reason: collision with root package name */
    public final gg.c f6719h;

    public static final class a extends DaggerMvRxViewModelFactory<b, e> {
        public a(kotlin.jvm.internal.d dVar) {
            super(b.class);
        }
    }

    /* renamed from: gg.b$b, reason: collision with other inner class name */
    public static final class C0115b extends j implements l<e, e> {

        /* renamed from: a, reason: collision with root package name */
        public static final C0115b f6720a = new C0115b();

        public C0115b() {
            super(1);
        }

        @Override // x9.l
        public final e invoke(e eVar) {
            e setState = eVar;
            h.f(setState, "$this$setState");
            return e.copy$default(setState, new k(null), null, null, null, null, true, 30, null);
        }
    }

    @r9.e(c = "tr.gov.turkiye.edevlet.kapisi.profile.contact.ProfileContactViewModel$fetchContactInfo$2", f = "ProfileContactViewModel.kt", l = {27}, m = "invokeSuspend")
    public static final class c extends i implements p<a0, p9.d<? super m>, Object> {

        /* renamed from: a, reason: collision with root package name */
        public int f6721a;

        /* renamed from: b, reason: collision with root package name */
        public /* synthetic */ Object f6722b;

        @r9.e(c = "tr.gov.turkiye.edevlet.kapisi.profile.contact.ProfileContactViewModel$fetchContactInfo$2$updateJob$1", f = "ProfileContactViewModel.kt", l = {25}, m = "invokeSuspend")
        public static final class a extends i implements p<a0, p9.d<? super m>, Object> {

            /* renamed from: a, reason: collision with root package name */
            public int f6724a;

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ b f6725b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(b bVar, p9.d<? super a> dVar) {
                super(2, dVar);
                this.f6725b = bVar;
            }

            @Override // r9.a
            public final p9.d<m> create(Object obj, p9.d<?> dVar) {
                return new a(this.f6725b, dVar);
            }

            @Override // x9.p
            /* renamed from: invoke */
            public final Object mo7invoke(a0 a0Var, p9.d<? super m> dVar) {
                return ((a) create(a0Var, dVar)).invokeSuspend(m.f9594a);
            }

            @Override // r9.a
            public final Object invokeSuspend(Object obj) throws Throwable {
                q9.a aVar = q9.a.COROUTINE_SUSPENDED;
                int r12 = this.f6724a;
                if (r12 == 0) {
                    w.F(obj);
                    gg.c cVar = this.f6725b.f6719h;
                    c.a aVar2 = new c.a();
                    this.f6724a = 1;
                    if (cVar.d(aVar2, this) == aVar) {
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

        public c(p9.d<? super c> dVar) {
            super(2, dVar);
        }

        @Override // r9.a
        public final p9.d<m> create(Object obj, p9.d<?> dVar) {
            c cVar = b.this.new c(dVar);
            cVar.f6722b = obj;
            return cVar;
        }

        @Override // x9.p
        /* renamed from: invoke */
        public final Object mo7invoke(a0 a0Var, p9.d<? super m> dVar) {
            return ((c) create(a0Var, dVar)).invokeSuspend(m.f9594a);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            q9.a aVar = q9.a.COROUTINE_SUSPENDED;
            int r12 = this.f6721a;
            if (r12 == 0) {
                w.F(obj);
                a0 a0Var = (a0) this.f6722b;
                b bVar = b.this;
                f0 f0VarN = v.n(a0Var, bVar.f6719h.f6730c, new a(bVar, null), 2);
                this.f6721a = 1;
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

    @r9.e(c = "tr.gov.turkiye.edevlet.kapisi.profile.contact.ProfileContactViewModel$fetchContactInfo$3", f = "ProfileContactViewModel.kt", l = {}, m = "invokeSuspend")
    public static final class d extends i implements p<f<? extends Result<ProfileContactModel>>, p9.d<? super m>, Object> {

        /* renamed from: a, reason: collision with root package name */
        public /* synthetic */ Object f6726a;

        public static final class a extends j implements p<e, r0.b<? extends Result<ProfileContactModel>>, e> {

            /* renamed from: a, reason: collision with root package name */
            public static final a f6728a = new a();

            public a() {
                super(2);
            }

            @Override // x9.p
            /* renamed from: invoke */
            public final e mo7invoke(e eVar, r0.b<? extends Result<ProfileContactModel>> bVar) {
                e execute = eVar;
                r0.b<? extends Result<ProfileContactModel>> result = bVar;
                h.f(execute, "$this$execute");
                h.f(result, "result");
                try {
                    Result<ProfileContactModel> resultA = result.a();
                    ProfileContactModel orThrow = resultA != null ? resultA.getOrThrow() : null;
                    return orThrow != null ? e.copy$default(execute, null, null, result, null, orThrow, true, 11, null) : e.copy$default(execute, null, null, result, null, null, true, 27, null);
                } catch (Throwable th2) {
                    return e.copy$default(execute, null, null, new r0.i(null, th2), null, null, true, 27, null);
                }
            }
        }

        public d(p9.d<? super d> dVar) {
            super(2, dVar);
        }

        @Override // r9.a
        public final p9.d<m> create(Object obj, p9.d<?> dVar) {
            d dVar2 = b.this.new d(dVar);
            dVar2.f6726a = obj;
            return dVar2;
        }

        @Override // x9.p
        /* renamed from: invoke */
        public final Object mo7invoke(f<? extends Result<ProfileContactModel>> fVar, p9.d<? super m> dVar) {
            return ((d) create(fVar, dVar)).invokeSuspend(m.f9594a);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            w.F(obj);
            z.a(b.this, (f) this.f6726a, a.f6728a);
            return m.f9594a;
        }
    }

    static {
        new a(null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(e state, gg.c profileWork) {
        super(state);
        h.f(state, "state");
        h.f(profileWork, "profileWork");
        this.f6719h = profileWork;
    }

    public final void d() {
        c(C0115b.f6720a);
        c cVar = new c(null);
        a0 a0Var = this.f13883c;
        v.C(a0Var, null, 0, cVar, 3);
        v.D(a0Var, this.f6719h, new d(null));
    }
}
