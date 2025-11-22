package hh;

import c5.v;
import c5.w;
import hh.a;
import hh.c;
import hh.h;
import kotlin.jvm.internal.j;
import l9.m;
import nc.a0;
import nc.f0;
import r0.z;
import tr.gov.turkiye.edevlet.kapisi.core.di.viewmodel.DaggerMvRxViewModelFactory;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Result;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.DescriptionSaveModel;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.LocationSaveModel;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.PhotoSaveModel;
import x9.p;

/* loaded from: classes3.dex */
public final class g extends af.c<hh.f> {

    /* renamed from: h, reason: collision with root package name */
    public final h f7148h;

    /* renamed from: i, reason: collision with root package name */
    public final hh.c f7149i;

    /* renamed from: j, reason: collision with root package name */
    public final hh.a f7150j;

    public static final class a extends DaggerMvRxViewModelFactory<g, hh.f> {
        public a(kotlin.jvm.internal.d dVar) {
            super(g.class);
        }
    }

    @r9.e(c = "tr.gov.turkiye.edevlet.kapisi.ui.accident.information.MobileAccidentInformationViewModel$saveDescription$1", f = "MobileAccidentInformationViewModel.kt", l = {69}, m = "invokeSuspend")
    public static final class b extends r9.i implements p<a0, p9.d<? super m>, Object> {

        /* renamed from: a, reason: collision with root package name */
        public int f7151a;

        /* renamed from: b, reason: collision with root package name */
        public /* synthetic */ Object f7152b;

        /* renamed from: d, reason: collision with root package name */
        public final /* synthetic */ String f7154d;

        @r9.e(c = "tr.gov.turkiye.edevlet.kapisi.ui.accident.information.MobileAccidentInformationViewModel$saveDescription$1$job$1", f = "MobileAccidentInformationViewModel.kt", l = {63}, m = "invokeSuspend")
        public static final class a extends r9.i implements p<a0, p9.d<? super m>, Object> {

            /* renamed from: a, reason: collision with root package name */
            public int f7155a;

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ g f7156b;

            /* renamed from: c, reason: collision with root package name */
            public final /* synthetic */ String f7157c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(g gVar, String str, p9.d<? super a> dVar) {
                super(2, dVar);
                this.f7156b = gVar;
                this.f7157c = str;
            }

            @Override // r9.a
            public final p9.d<m> create(Object obj, p9.d<?> dVar) {
                return new a(this.f7156b, this.f7157c, dVar);
            }

            @Override // x9.p
            /* renamed from: invoke */
            public final Object mo7invoke(a0 a0Var, p9.d<? super m> dVar) {
                return ((a) create(a0Var, dVar)).invokeSuspend(m.f9594a);
            }

            @Override // r9.a
            public final Object invokeSuspend(Object obj) throws Throwable {
                q9.a aVar = q9.a.COROUTINE_SUSPENDED;
                int r12 = this.f7155a;
                if (r12 == 0) {
                    w.F(obj);
                    hh.a aVar2 = this.f7156b.f7150j;
                    a.C0123a c0123a = new a.C0123a(this.f7157c);
                    this.f7155a = 1;
                    if (aVar2.d(c0123a, this) == aVar) {
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
        public b(String str, p9.d<? super b> dVar) {
            super(2, dVar);
            this.f7154d = str;
        }

        @Override // r9.a
        public final p9.d<m> create(Object obj, p9.d<?> dVar) {
            b bVar = g.this.new b(this.f7154d, dVar);
            bVar.f7152b = obj;
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
            int r12 = this.f7151a;
            if (r12 == 0) {
                w.F(obj);
                a0 a0Var = (a0) this.f7152b;
                g gVar = g.this;
                f0 f0VarN = v.n(a0Var, gVar.f7150j.f7112c, new a(gVar, this.f7154d, null), 2);
                this.f7151a = 1;
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

    @r9.e(c = "tr.gov.turkiye.edevlet.kapisi.ui.accident.information.MobileAccidentInformationViewModel$saveDescription$2", f = "MobileAccidentInformationViewModel.kt", l = {}, m = "invokeSuspend")
    public static final class c extends r9.i implements p<kotlinx.coroutines.flow.f<? extends Result<DescriptionSaveModel>>, p9.d<? super m>, Object> {

        /* renamed from: a, reason: collision with root package name */
        public /* synthetic */ Object f7158a;

        public static final class a extends j implements p<hh.f, r0.b<? extends Result<DescriptionSaveModel>>, hh.f> {

            /* renamed from: a, reason: collision with root package name */
            public static final a f7160a = new a();

            public a() {
                super(2);
            }

            @Override // x9.p
            /* renamed from: invoke */
            public final hh.f mo7invoke(hh.f fVar, r0.b<? extends Result<DescriptionSaveModel>> bVar) {
                hh.f execute = fVar;
                r0.b<? extends Result<DescriptionSaveModel>> result = bVar;
                kotlin.jvm.internal.h.f(execute, "$this$execute");
                kotlin.jvm.internal.h.f(result, "result");
                try {
                    Result<DescriptionSaveModel> resultA = result.a();
                    DescriptionSaveModel orThrow = resultA != null ? resultA.getOrThrow() : null;
                    if (orThrow == null) {
                        return hh.f.copy$default(execute, null, result, null, null, null, null, null, "saveDescription", 125, null);
                    }
                    yd.a.f19652a.c("success description", new Object[0]);
                    return hh.f.copy$default(execute, null, result, null, null, null, orThrow, null, "saveDescription", 93, null);
                } catch (Throwable th2) {
                    return hh.f.copy$default(execute, null, new r0.i(null, th2), null, null, null, null, null, "saveDescription", 125, null);
                }
            }
        }

        public c(p9.d<? super c> dVar) {
            super(2, dVar);
        }

        @Override // r9.a
        public final p9.d<m> create(Object obj, p9.d<?> dVar) {
            c cVar = g.this.new c(dVar);
            cVar.f7158a = obj;
            return cVar;
        }

        @Override // x9.p
        /* renamed from: invoke */
        public final Object mo7invoke(kotlinx.coroutines.flow.f<? extends Result<DescriptionSaveModel>> fVar, p9.d<? super m> dVar) {
            return ((c) create(fVar, dVar)).invokeSuspend(m.f9594a);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            w.F(obj);
            z.a(g.this, (kotlinx.coroutines.flow.f) this.f7158a, a.f7160a);
            return m.f9594a;
        }
    }

    @r9.e(c = "tr.gov.turkiye.edevlet.kapisi.ui.accident.information.MobileAccidentInformationViewModel$saveLocation$1", f = "MobileAccidentInformationViewModel.kt", l = {112}, m = "invokeSuspend")
    public static final class d extends r9.i implements p<a0, p9.d<? super m>, Object> {

        /* renamed from: a, reason: collision with root package name */
        public int f7161a;

        /* renamed from: b, reason: collision with root package name */
        public /* synthetic */ Object f7162b;

        /* renamed from: d, reason: collision with root package name */
        public final /* synthetic */ String f7164d;

        /* renamed from: e, reason: collision with root package name */
        public final /* synthetic */ String f7165e;

        @r9.e(c = "tr.gov.turkiye.edevlet.kapisi.ui.accident.information.MobileAccidentInformationViewModel$saveLocation$1$job$1", f = "MobileAccidentInformationViewModel.kt", l = {106}, m = "invokeSuspend")
        public static final class a extends r9.i implements p<a0, p9.d<? super m>, Object> {

            /* renamed from: a, reason: collision with root package name */
            public int f7166a;

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ g f7167b;

            /* renamed from: c, reason: collision with root package name */
            public final /* synthetic */ String f7168c;

            /* renamed from: d, reason: collision with root package name */
            public final /* synthetic */ String f7169d;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(g gVar, String str, String str2, p9.d<? super a> dVar) {
                super(2, dVar);
                this.f7167b = gVar;
                this.f7168c = str;
                this.f7169d = str2;
            }

            @Override // r9.a
            public final p9.d<m> create(Object obj, p9.d<?> dVar) {
                return new a(this.f7167b, this.f7168c, this.f7169d, dVar);
            }

            @Override // x9.p
            /* renamed from: invoke */
            public final Object mo7invoke(a0 a0Var, p9.d<? super m> dVar) {
                return ((a) create(a0Var, dVar)).invokeSuspend(m.f9594a);
            }

            @Override // r9.a
            public final Object invokeSuspend(Object obj) throws Throwable {
                q9.a aVar = q9.a.COROUTINE_SUSPENDED;
                int r12 = this.f7166a;
                if (r12 == 0) {
                    w.F(obj);
                    hh.c cVar = this.f7167b.f7149i;
                    c.a aVar2 = new c.a(this.f7168c, this.f7169d);
                    this.f7166a = 1;
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

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(String str, String str2, p9.d<? super d> dVar) {
            super(2, dVar);
            this.f7164d = str;
            this.f7165e = str2;
        }

        @Override // r9.a
        public final p9.d<m> create(Object obj, p9.d<?> dVar) {
            d dVar2 = g.this.new d(this.f7164d, this.f7165e, dVar);
            dVar2.f7162b = obj;
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
            int r12 = this.f7161a;
            if (r12 == 0) {
                w.F(obj);
                a0 a0Var = (a0) this.f7162b;
                g gVar = g.this;
                f0 f0VarN = v.n(a0Var, gVar.f7149i.f7116c, new a(gVar, this.f7164d, this.f7165e, null), 2);
                this.f7161a = 1;
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

    @r9.e(c = "tr.gov.turkiye.edevlet.kapisi.ui.accident.information.MobileAccidentInformationViewModel$saveLocation$2", f = "MobileAccidentInformationViewModel.kt", l = {}, m = "invokeSuspend")
    public static final class e extends r9.i implements p<kotlinx.coroutines.flow.f<? extends Result<LocationSaveModel>>, p9.d<? super m>, Object> {

        /* renamed from: a, reason: collision with root package name */
        public /* synthetic */ Object f7170a;

        public static final class a extends j implements p<hh.f, r0.b<? extends Result<LocationSaveModel>>, hh.f> {

            /* renamed from: a, reason: collision with root package name */
            public static final a f7172a = new a();

            public a() {
                super(2);
            }

            @Override // x9.p
            /* renamed from: invoke */
            public final hh.f mo7invoke(hh.f fVar, r0.b<? extends Result<LocationSaveModel>> bVar) {
                hh.f execute = fVar;
                r0.b<? extends Result<LocationSaveModel>> result = bVar;
                kotlin.jvm.internal.h.f(execute, "$this$execute");
                kotlin.jvm.internal.h.f(result, "result");
                try {
                    Result<LocationSaveModel> resultA = result.a();
                    LocationSaveModel orThrow = resultA != null ? resultA.getOrThrow() : null;
                    return orThrow != null ? hh.f.copy$default(execute, null, null, result, null, orThrow, null, null, "saveLocation", 107, null) : hh.f.copy$default(execute, null, null, result, null, null, null, null, "saveLocation", 123, null);
                } catch (Throwable th2) {
                    return hh.f.copy$default(execute, null, null, new r0.i(null, th2), null, null, null, null, "saveLocation", 123, null);
                }
            }
        }

        public e(p9.d<? super e> dVar) {
            super(2, dVar);
        }

        @Override // r9.a
        public final p9.d<m> create(Object obj, p9.d<?> dVar) {
            e eVar = g.this.new e(dVar);
            eVar.f7170a = obj;
            return eVar;
        }

        @Override // x9.p
        /* renamed from: invoke */
        public final Object mo7invoke(kotlinx.coroutines.flow.f<? extends Result<LocationSaveModel>> fVar, p9.d<? super m> dVar) {
            return ((e) create(fVar, dVar)).invokeSuspend(m.f9594a);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            w.F(obj);
            z.a(g.this, (kotlinx.coroutines.flow.f) this.f7170a, a.f7172a);
            return m.f9594a;
        }
    }

    @r9.e(c = "tr.gov.turkiye.edevlet.kapisi.ui.accident.information.MobileAccidentInformationViewModel$saveMedia$1", f = "MobileAccidentInformationViewModel.kt", l = {27}, m = "invokeSuspend")
    public static final class f extends r9.i implements p<a0, p9.d<? super m>, Object> {

        /* renamed from: a, reason: collision with root package name */
        public int f7173a;

        /* renamed from: b, reason: collision with root package name */
        public /* synthetic */ Object f7174b;

        /* renamed from: d, reason: collision with root package name */
        public final /* synthetic */ i f7176d;

        @r9.e(c = "tr.gov.turkiye.edevlet.kapisi.ui.accident.information.MobileAccidentInformationViewModel$saveMedia$1$job$1", f = "MobileAccidentInformationViewModel.kt", l = {25}, m = "invokeSuspend")
        public static final class a extends r9.i implements p<a0, p9.d<? super m>, Object> {

            /* renamed from: a, reason: collision with root package name */
            public int f7177a;

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ g f7178b;

            /* renamed from: c, reason: collision with root package name */
            public final /* synthetic */ i f7179c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(g gVar, i iVar, p9.d<? super a> dVar) {
                super(2, dVar);
                this.f7178b = gVar;
                this.f7179c = iVar;
            }

            @Override // r9.a
            public final p9.d<m> create(Object obj, p9.d<?> dVar) {
                return new a(this.f7178b, this.f7179c, dVar);
            }

            @Override // x9.p
            /* renamed from: invoke */
            public final Object mo7invoke(a0 a0Var, p9.d<? super m> dVar) {
                return ((a) create(a0Var, dVar)).invokeSuspend(m.f9594a);
            }

            @Override // r9.a
            public final Object invokeSuspend(Object obj) throws Throwable {
                q9.a aVar = q9.a.COROUTINE_SUSPENDED;
                int r12 = this.f7177a;
                if (r12 == 0) {
                    w.F(obj);
                    h hVar = this.f7178b.f7148h;
                    h.a aVar2 = new h.a(this.f7179c);
                    this.f7177a = 1;
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
        public f(i iVar, p9.d<? super f> dVar) {
            super(2, dVar);
            this.f7176d = iVar;
        }

        @Override // r9.a
        public final p9.d<m> create(Object obj, p9.d<?> dVar) {
            f fVar = g.this.new f(this.f7176d, dVar);
            fVar.f7174b = obj;
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
            int r12 = this.f7173a;
            if (r12 == 0) {
                w.F(obj);
                a0 a0Var = (a0) this.f7174b;
                g gVar = g.this;
                f0 f0VarN = v.n(a0Var, gVar.f7148h.f7185c, new a(gVar, this.f7176d, null), 2);
                this.f7173a = 1;
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

    @r9.e(c = "tr.gov.turkiye.edevlet.kapisi.ui.accident.information.MobileAccidentInformationViewModel$saveMedia$2", f = "MobileAccidentInformationViewModel.kt", l = {}, m = "invokeSuspend")
    /* renamed from: hh.g$g, reason: collision with other inner class name */
    public static final class C0124g extends r9.i implements p<kotlinx.coroutines.flow.f<? extends Result<PhotoSaveModel>>, p9.d<? super m>, Object> {

        /* renamed from: a, reason: collision with root package name */
        public /* synthetic */ Object f7180a;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ int f7182c;

        /* renamed from: hh.g$g$a */
        public static final class a extends j implements p<hh.f, r0.b<? extends Result<PhotoSaveModel>>, hh.f> {

            /* renamed from: a, reason: collision with root package name */
            public final /* synthetic */ int f7183a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(int r12) {
                super(2);
                this.f7183a = r12;
            }

            @Override // x9.p
            /* renamed from: invoke */
            public final hh.f mo7invoke(hh.f fVar, r0.b<? extends Result<PhotoSaveModel>> bVar) {
                hh.f execute = fVar;
                r0.b<? extends Result<PhotoSaveModel>> result = bVar;
                int r14 = this.f7183a;
                kotlin.jvm.internal.h.f(execute, "$this$execute");
                kotlin.jvm.internal.h.f(result, "result");
                try {
                    Result<PhotoSaveModel> resultA = result.a();
                    PhotoSaveModel orThrow = resultA != null ? resultA.getOrThrow() : null;
                    return orThrow != null ? hh.f.copy$default(execute, result, null, null, orThrow, null, null, Integer.valueOf(r14), "saveMedia", 54, null) : hh.f.copy$default(execute, result, null, null, null, null, null, Integer.valueOf(r14), "saveMedia", 62, null);
                } catch (Throwable th2) {
                    return hh.f.copy$default(execute, new r0.i(null, th2), null, null, null, null, null, Integer.valueOf(r14), "saveMedia", 62, null);
                }
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0124g(int r22, p9.d<? super C0124g> dVar) {
            super(2, dVar);
            this.f7182c = r22;
        }

        @Override // r9.a
        public final p9.d<m> create(Object obj, p9.d<?> dVar) {
            C0124g c0124g = g.this.new C0124g(this.f7182c, dVar);
            c0124g.f7180a = obj;
            return c0124g;
        }

        @Override // x9.p
        /* renamed from: invoke */
        public final Object mo7invoke(kotlinx.coroutines.flow.f<? extends Result<PhotoSaveModel>> fVar, p9.d<? super m> dVar) {
            return ((C0124g) create(fVar, dVar)).invokeSuspend(m.f9594a);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            w.F(obj);
            z.a(g.this, (kotlinx.coroutines.flow.f) this.f7180a, new a(this.f7182c));
            return m.f9594a;
        }
    }

    static {
        new a(null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g(hh.f state, h mobileAccidentInformationWork, hh.c mobileAccidentInformationLocationWork, hh.a mobileAccidentInformationDescriptionWork) {
        super(state);
        kotlin.jvm.internal.h.f(state, "state");
        kotlin.jvm.internal.h.f(mobileAccidentInformationWork, "mobileAccidentInformationWork");
        kotlin.jvm.internal.h.f(mobileAccidentInformationLocationWork, "mobileAccidentInformationLocationWork");
        kotlin.jvm.internal.h.f(mobileAccidentInformationDescriptionWork, "mobileAccidentInformationDescriptionWork");
        this.f7148h = mobileAccidentInformationWork;
        this.f7149i = mobileAccidentInformationLocationWork;
        this.f7150j = mobileAccidentInformationDescriptionWork;
    }

    public final void d(String str) {
        b bVar = new b(str, null);
        a0 a0Var = this.f13883c;
        v.C(a0Var, null, 0, bVar, 3);
        v.D(a0Var, this.f7150j, new c(null));
    }

    public final void e(String str, String str2) {
        d dVar = new d(str, str2, null);
        a0 a0Var = this.f13883c;
        v.C(a0Var, null, 0, dVar, 3);
        v.D(a0Var, this.f7149i, new e(null));
    }

    public final void f(i item, int r6) {
        kotlin.jvm.internal.h.f(item, "item");
        f fVar = new f(item, null);
        a0 a0Var = this.f13883c;
        v.C(a0Var, null, 0, fVar, 3);
        v.D(a0Var, this.f7148h, new C0124g(r6, null));
    }
}
