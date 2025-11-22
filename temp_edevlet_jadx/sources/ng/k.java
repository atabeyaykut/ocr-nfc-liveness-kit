package ng;

import c5.v;
import c5.w;
import java.util.List;
import l9.m;
import nc.a0;
import nc.f0;
import nc.j0;
import ng.a;
import ng.l;
import r0.z;
import tr.gov.turkiye.edevlet.kapisi.core.di.viewmodel.DaggerMvRxViewModelFactory;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Result;
import tr.gov.turkiye.edevlet.kapisi.data.service.SearchServiceContent;
import tr.gov.turkiye.edevlet.kapisi.data.service.ServiceModelRealm;
import x9.p;

/* loaded from: classes3.dex */
public final class k extends af.c<i> {

    /* renamed from: h, reason: collision with root package name */
    public final ng.a f10973h;

    /* renamed from: i, reason: collision with root package name */
    public final l f10974i;

    @r9.e(c = "tr.gov.turkiye.edevlet.kapisi.search.SearchViewModel$1", f = "SearchViewModel.kt", l = {27}, m = "invokeSuspend")
    public static final class a extends r9.i implements p<a0, p9.d<? super m>, Object> {

        /* renamed from: a, reason: collision with root package name */
        public int f10975a;

        /* renamed from: b, reason: collision with root package name */
        public /* synthetic */ Object f10976b;

        @r9.e(c = "tr.gov.turkiye.edevlet.kapisi.search.SearchViewModel$1$job$1", f = "SearchViewModel.kt", l = {25}, m = "invokeSuspend")
        /* renamed from: ng.k$a$a, reason: collision with other inner class name */
        public static final class C0208a extends r9.i implements p<a0, p9.d<? super m>, Object> {

            /* renamed from: a, reason: collision with root package name */
            public int f10978a;

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ k f10979b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C0208a(k kVar, p9.d<? super C0208a> dVar) {
                super(2, dVar);
                this.f10979b = kVar;
            }

            @Override // r9.a
            public final p9.d<m> create(Object obj, p9.d<?> dVar) {
                return new C0208a(this.f10979b, dVar);
            }

            @Override // x9.p
            /* renamed from: invoke */
            public final Object mo7invoke(a0 a0Var, p9.d<? super m> dVar) {
                return ((C0208a) create(a0Var, dVar)).invokeSuspend(m.f9594a);
            }

            @Override // r9.a
            public final Object invokeSuspend(Object obj) throws Throwable {
                q9.a aVar = q9.a.COROUTINE_SUSPENDED;
                int r12 = this.f10978a;
                if (r12 == 0) {
                    w.F(obj);
                    ng.a aVar2 = this.f10979b.f10973h;
                    a.C0207a c0207a = new a.C0207a();
                    this.f10978a = 1;
                    if (aVar2.d(c0207a, this) == aVar) {
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

        public a(p9.d<? super a> dVar) {
            super(2, dVar);
        }

        @Override // r9.a
        public final p9.d<m> create(Object obj, p9.d<?> dVar) {
            a aVar = k.this.new a(dVar);
            aVar.f10976b = obj;
            return aVar;
        }

        @Override // x9.p
        /* renamed from: invoke */
        public final Object mo7invoke(a0 a0Var, p9.d<? super m> dVar) {
            return ((a) create(a0Var, dVar)).invokeSuspend(m.f9594a);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            q9.a aVar = q9.a.COROUTINE_SUSPENDED;
            int r12 = this.f10975a;
            if (r12 == 0) {
                w.F(obj);
                a0 a0Var = (a0) this.f10976b;
                k kVar = k.this;
                f0 f0VarN = v.n(a0Var, kVar.f10973h.f10948c, new C0208a(kVar, null), 2);
                this.f10975a = 1;
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

    @r9.e(c = "tr.gov.turkiye.edevlet.kapisi.search.SearchViewModel$2", f = "SearchViewModel.kt", l = {}, m = "invokeSuspend")
    public static final class b extends r9.i implements p<kotlinx.coroutines.flow.f<? extends Result<List<? extends ServiceModelRealm>>>, p9.d<? super m>, Object> {

        /* renamed from: a, reason: collision with root package name */
        public /* synthetic */ Object f10980a;

        public static final class a extends kotlin.jvm.internal.j implements p<i, r0.b<? extends Result<List<? extends ServiceModelRealm>>>, i> {

            /* renamed from: a, reason: collision with root package name */
            public static final a f10982a = new a();

            public a() {
                super(2);
            }

            @Override // x9.p
            /* renamed from: invoke */
            public final i mo7invoke(i iVar, r0.b<? extends Result<List<? extends ServiceModelRealm>>> bVar) {
                i execute = iVar;
                r0.b<? extends Result<List<? extends ServiceModelRealm>>> result = bVar;
                m9.v vVar = m9.v.f10173a;
                kotlin.jvm.internal.h.f(execute, "$this$execute");
                kotlin.jvm.internal.h.f(result, "result");
                try {
                    Result<List<? extends ServiceModelRealm>> resultA = result.a();
                    List<? extends ServiceModelRealm> orThrow = resultA != null ? resultA.getOrThrow() : null;
                    return orThrow != null ? i.copy$default(execute, null, result, null, orThrow, false, 5, null) : i.copy$default(execute, null, new r0.k(null), null, vVar, false, 5, null);
                } catch (Throwable th2) {
                    return i.copy$default(execute, null, new r0.i(null, th2), null, vVar, false, 5, null);
                }
            }
        }

        public b(p9.d<? super b> dVar) {
            super(2, dVar);
        }

        @Override // r9.a
        public final p9.d<m> create(Object obj, p9.d<?> dVar) {
            b bVar = k.this.new b(dVar);
            bVar.f10980a = obj;
            return bVar;
        }

        @Override // x9.p
        /* renamed from: invoke */
        public final Object mo7invoke(kotlinx.coroutines.flow.f<? extends Result<List<? extends ServiceModelRealm>>> fVar, p9.d<? super m> dVar) {
            return ((b) create(fVar, dVar)).invokeSuspend(m.f9594a);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            w.F(obj);
            z.a(k.this, (kotlinx.coroutines.flow.f) this.f10980a, a.f10982a);
            return m.f9594a;
        }
    }

    public static final class c extends DaggerMvRxViewModelFactory<k, i> {
        public c(kotlin.jvm.internal.d dVar) {
            super(k.class);
        }
    }

    public static final class d extends kotlin.jvm.internal.j implements x9.l<i, i> {

        /* renamed from: a, reason: collision with root package name */
        public static final d f10983a = new d();

        public d() {
            super(1);
        }

        @Override // x9.l
        public final i invoke(i iVar) {
            i setState = iVar;
            kotlin.jvm.internal.h.f(setState, "$this$setState");
            return i.copy$default(setState, new r0.k(null), null, m9.v.f10173a, null, true, 10, null);
        }
    }

    @r9.e(c = "tr.gov.turkiye.edevlet.kapisi.search.SearchViewModel$search$2", f = "SearchViewModel.kt", l = {71}, m = "invokeSuspend")
    public static final class e extends r9.i implements p<a0, p9.d<? super m>, Object> {

        /* renamed from: a, reason: collision with root package name */
        public int f10984a;

        /* renamed from: b, reason: collision with root package name */
        public /* synthetic */ Object f10985b;

        /* renamed from: d, reason: collision with root package name */
        public final /* synthetic */ String f10987d;

        @r9.e(c = "tr.gov.turkiye.edevlet.kapisi.search.SearchViewModel$search$2$job$1", f = "SearchViewModel.kt", l = {69}, m = "invokeSuspend")
        public static final class a extends r9.i implements p<a0, p9.d<? super m>, Object> {

            /* renamed from: a, reason: collision with root package name */
            public int f10988a;

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ k f10989b;

            /* renamed from: c, reason: collision with root package name */
            public final /* synthetic */ String f10990c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(k kVar, String str, p9.d<? super a> dVar) {
                super(2, dVar);
                this.f10989b = kVar;
                this.f10990c = str;
            }

            @Override // r9.a
            public final p9.d<m> create(Object obj, p9.d<?> dVar) {
                return new a(this.f10989b, this.f10990c, dVar);
            }

            @Override // x9.p
            /* renamed from: invoke */
            public final Object mo7invoke(a0 a0Var, p9.d<? super m> dVar) {
                return ((a) create(a0Var, dVar)).invokeSuspend(m.f9594a);
            }

            @Override // r9.a
            public final Object invokeSuspend(Object obj) throws Throwable {
                q9.a aVar = q9.a.COROUTINE_SUSPENDED;
                int r12 = this.f10988a;
                if (r12 == 0) {
                    w.F(obj);
                    l lVar = this.f10989b.f10974i;
                    l.a aVar2 = new l.a(this.f10990c);
                    this.f10988a = 1;
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
        public e(String str, p9.d<? super e> dVar) {
            super(2, dVar);
            this.f10987d = str;
        }

        @Override // r9.a
        public final p9.d<m> create(Object obj, p9.d<?> dVar) {
            e eVar = k.this.new e(this.f10987d, dVar);
            eVar.f10985b = obj;
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
            int r12 = this.f10984a;
            if (r12 == 0) {
                w.F(obj);
                f0 f0VarN = v.n((a0) this.f10985b, j0.f10809b, new a(k.this, this.f10987d, null), 2);
                this.f10984a = 1;
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

    @r9.e(c = "tr.gov.turkiye.edevlet.kapisi.search.SearchViewModel$search$3", f = "SearchViewModel.kt", l = {}, m = "invokeSuspend")
    public static final class f extends r9.i implements p<kotlinx.coroutines.flow.f<? extends Result<List<? extends SearchServiceContent>>>, p9.d<? super m>, Object> {

        /* renamed from: a, reason: collision with root package name */
        public /* synthetic */ Object f10991a;

        public static final class a extends kotlin.jvm.internal.j implements p<i, r0.b<? extends Result<List<? extends SearchServiceContent>>>, i> {

            /* renamed from: a, reason: collision with root package name */
            public static final a f10993a = new a();

            public a() {
                super(2);
            }

            @Override // x9.p
            /* renamed from: invoke */
            public final i mo7invoke(i iVar, r0.b<? extends Result<List<? extends SearchServiceContent>>> bVar) {
                i execute = iVar;
                r0.b<? extends Result<List<? extends SearchServiceContent>>> result = bVar;
                kotlin.jvm.internal.h.f(execute, "$this$execute");
                kotlin.jvm.internal.h.f(result, "result");
                try {
                    Result<List<? extends SearchServiceContent>> resultA = result.a();
                    List<? extends SearchServiceContent> orThrow = resultA != null ? resultA.getOrThrow() : null;
                    List<? extends SearchServiceContent> list = orThrow;
                    return !(list == null || list.isEmpty()) ? i.copy$default(execute, result, null, orThrow, null, true, 10, null) : i.copy$default(execute, result, null, m9.v.f10173a, null, true, 10, null);
                } catch (Throwable th2) {
                    return i.copy$default(execute, new r0.i(null, th2), null, null, null, true, 14, null);
                }
            }
        }

        public f(p9.d<? super f> dVar) {
            super(2, dVar);
        }

        @Override // r9.a
        public final p9.d<m> create(Object obj, p9.d<?> dVar) {
            f fVar = k.this.new f(dVar);
            fVar.f10991a = obj;
            return fVar;
        }

        @Override // x9.p
        /* renamed from: invoke */
        public final Object mo7invoke(kotlinx.coroutines.flow.f<? extends Result<List<? extends SearchServiceContent>>> fVar, p9.d<? super m> dVar) {
            return ((f) create(fVar, dVar)).invokeSuspend(m.f9594a);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            w.F(obj);
            z.a(k.this, (kotlinx.coroutines.flow.f) this.f10991a, a.f10993a);
            return m.f9594a;
        }
    }

    static {
        new c(null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public k(i state, ng.a editorChoiceWork, l searchWork) {
        super(state);
        kotlin.jvm.internal.h.f(state, "state");
        kotlin.jvm.internal.h.f(editorChoiceWork, "editorChoiceWork");
        kotlin.jvm.internal.h.f(searchWork, "searchWork");
        this.f10973h = editorChoiceWork;
        this.f10974i = searchWork;
        v.C(this.f13883c, null, 0, new a(null), 3);
        v.D(this.f13883c, editorChoiceWork, new b(null));
    }

    public final void d(String str) {
        c(d.f10983a);
        e eVar = new e(str, null);
        a0 a0Var = this.f13883c;
        v.C(a0Var, null, 0, eVar, 3);
        v.D(a0Var, this.f10974i, new f(null));
    }
}
