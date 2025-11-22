package zg;

import c5.v;
import c5.w;
import nc.a0;
import nc.f0;
import r0.z;
import tr.gov.turkiye.edevlet.kapisi.core.di.viewmodel.DaggerMvRxViewModelFactory;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Result;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.MediaListModel;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.SaveReportModel;
import zg.h;
import zg.j;

/* loaded from: classes3.dex */
public final class l extends af.c<k> {

    /* renamed from: h, reason: collision with root package name */
    public final u f20369h;

    /* renamed from: i, reason: collision with root package name */
    public final f f20370i;

    /* renamed from: j, reason: collision with root package name */
    public final h f20371j;

    /* renamed from: k, reason: collision with root package name */
    public final zg.c f20372k;

    /* renamed from: l, reason: collision with root package name */
    public final zg.b f20373l;

    /* renamed from: m, reason: collision with root package name */
    public final j f20374m;

    public static final class a extends DaggerMvRxViewModelFactory<l, k> {
        public a(kotlin.jvm.internal.d dVar) {
            super(l.class);
        }
    }

    @r9.e(c = "tr.gov.turkiye.edevlet.kapisi.ui.accident.approve.MobileAccidentApproveViewModel$provideImageList$1", f = "MobileAccidentApproveViewModel.kt", l = {84}, m = "invokeSuspend")
    public static final class b extends r9.i implements x9.p<a0, p9.d<? super l9.m>, Object> {

        /* renamed from: a, reason: collision with root package name */
        public int f20375a;

        /* renamed from: b, reason: collision with root package name */
        public /* synthetic */ Object f20376b;

        @r9.e(c = "tr.gov.turkiye.edevlet.kapisi.ui.accident.approve.MobileAccidentApproveViewModel$provideImageList$1$job$1", f = "MobileAccidentApproveViewModel.kt", l = {82}, m = "invokeSuspend")
        public static final class a extends r9.i implements x9.p<a0, p9.d<? super l9.m>, Object> {

            /* renamed from: a, reason: collision with root package name */
            public int f20378a;

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ l f20379b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(l lVar, p9.d<? super a> dVar) {
                super(2, dVar);
                this.f20379b = lVar;
            }

            @Override // r9.a
            public final p9.d<l9.m> create(Object obj, p9.d<?> dVar) {
                return new a(this.f20379b, dVar);
            }

            @Override // x9.p
            /* renamed from: invoke */
            public final Object mo7invoke(a0 a0Var, p9.d<? super l9.m> dVar) {
                return ((a) create(a0Var, dVar)).invokeSuspend(l9.m.f9594a);
            }

            @Override // r9.a
            public final Object invokeSuspend(Object obj) throws Throwable {
                q9.a aVar = q9.a.COROUTINE_SUSPENDED;
                int r12 = this.f20378a;
                if (r12 == 0) {
                    w.F(obj);
                    h hVar = this.f20379b.f20371j;
                    h.a aVar2 = new h.a();
                    this.f20378a = 1;
                    if (hVar.d(aVar2, this) == aVar) {
                        return aVar;
                    }
                } else {
                    if (r12 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    w.F(obj);
                }
                return l9.m.f9594a;
            }
        }

        public b(p9.d<? super b> dVar) {
            super(2, dVar);
        }

        @Override // r9.a
        public final p9.d<l9.m> create(Object obj, p9.d<?> dVar) {
            b bVar = l.this.new b(dVar);
            bVar.f20376b = obj;
            return bVar;
        }

        @Override // x9.p
        /* renamed from: invoke */
        public final Object mo7invoke(a0 a0Var, p9.d<? super l9.m> dVar) {
            return ((b) create(a0Var, dVar)).invokeSuspend(l9.m.f9594a);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            q9.a aVar = q9.a.COROUTINE_SUSPENDED;
            int r12 = this.f20375a;
            if (r12 == 0) {
                w.F(obj);
                a0 a0Var = (a0) this.f20376b;
                l lVar = l.this;
                f0 f0VarN = v.n(a0Var, lVar.f20371j.f20309c, new a(lVar, null), 2);
                this.f20375a = 1;
                if (f0VarN.m0(this) == aVar) {
                    return aVar;
                }
            } else {
                if (r12 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                w.F(obj);
            }
            return l9.m.f9594a;
        }
    }

    @r9.e(c = "tr.gov.turkiye.edevlet.kapisi.ui.accident.approve.MobileAccidentApproveViewModel$provideImageList$2", f = "MobileAccidentApproveViewModel.kt", l = {}, m = "invokeSuspend")
    public static final class c extends r9.i implements x9.p<kotlinx.coroutines.flow.f<? extends Result<MediaListModel>>, p9.d<? super l9.m>, Object> {

        /* renamed from: a, reason: collision with root package name */
        public /* synthetic */ Object f20380a;

        public static final class a extends kotlin.jvm.internal.j implements x9.p<k, r0.b<? extends Result<MediaListModel>>, k> {

            /* renamed from: a, reason: collision with root package name */
            public static final a f20382a = new a();

            public a() {
                super(2);
            }

            @Override // x9.p
            /* renamed from: invoke */
            public final k mo7invoke(k kVar, r0.b<? extends Result<MediaListModel>> bVar) {
                k kVar2;
                MediaListModel orThrow;
                k kVarCopy$default;
                k execute = kVar;
                r0.b<? extends Result<MediaListModel>> result = bVar;
                kotlin.jvm.internal.h.f(execute, "$this$execute");
                kotlin.jvm.internal.h.f(result, "result");
                try {
                    Result<MediaListModel> resultA = result.a();
                    orThrow = resultA != null ? resultA.getOrThrow() : null;
                    kVar2 = null;
                } catch (Throwable th2) {
                    th = th2;
                    kVar2 = execute;
                }
                try {
                    if (orThrow != null) {
                        kVar2 = execute;
                        kVarCopy$default = k.copy$default(execute, null, null, null, null, result, orThrow, null, null, null, null, null, null, null, null, null, 32719, null);
                    } else {
                        kVar2 = execute;
                        kVarCopy$default = k.copy$default(kVar2, null, null, null, null, result, null, null, null, null, null, null, null, null, null, null, 32751, null);
                    }
                    return kVarCopy$default;
                } catch (Throwable th3) {
                    th = th3;
                    return k.copy$default(kVar2, null, null, null, null, new r0.i(null, th), null, null, null, null, null, null, null, null, null, null, 32751, null);
                }
            }
        }

        public c(p9.d<? super c> dVar) {
            super(2, dVar);
        }

        @Override // r9.a
        public final p9.d<l9.m> create(Object obj, p9.d<?> dVar) {
            c cVar = l.this.new c(dVar);
            cVar.f20380a = obj;
            return cVar;
        }

        @Override // x9.p
        /* renamed from: invoke */
        public final Object mo7invoke(kotlinx.coroutines.flow.f<? extends Result<MediaListModel>> fVar, p9.d<? super l9.m> dVar) {
            return ((c) create(fVar, dVar)).invokeSuspend(l9.m.f9594a);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            w.F(obj);
            z.a(l.this, (kotlinx.coroutines.flow.f) this.f20380a, a.f20382a);
            return l9.m.f9594a;
        }
    }

    @r9.e(c = "tr.gov.turkiye.edevlet.kapisi.ui.accident.approve.MobileAccidentApproveViewModel$saveReport$1", f = "MobileAccidentApproveViewModel.kt", l = {169}, m = "invokeSuspend")
    public static final class d extends r9.i implements x9.p<a0, p9.d<? super l9.m>, Object> {

        /* renamed from: a, reason: collision with root package name */
        public int f20383a;

        /* renamed from: b, reason: collision with root package name */
        public /* synthetic */ Object f20384b;

        /* renamed from: d, reason: collision with root package name */
        public final /* synthetic */ String f20386d;

        /* renamed from: e, reason: collision with root package name */
        public final /* synthetic */ String f20387e;
        public final /* synthetic */ String f;

        @r9.e(c = "tr.gov.turkiye.edevlet.kapisi.ui.accident.approve.MobileAccidentApproveViewModel$saveReport$1$job$1", f = "MobileAccidentApproveViewModel.kt", l = {161}, m = "invokeSuspend")
        public static final class a extends r9.i implements x9.p<a0, p9.d<? super l9.m>, Object> {

            /* renamed from: a, reason: collision with root package name */
            public int f20388a;

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ l f20389b;

            /* renamed from: c, reason: collision with root package name */
            public final /* synthetic */ String f20390c;

            /* renamed from: d, reason: collision with root package name */
            public final /* synthetic */ String f20391d;

            /* renamed from: e, reason: collision with root package name */
            public final /* synthetic */ String f20392e;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(l lVar, String str, String str2, String str3, p9.d<? super a> dVar) {
                super(2, dVar);
                this.f20389b = lVar;
                this.f20390c = str;
                this.f20391d = str2;
                this.f20392e = str3;
            }

            @Override // r9.a
            public final p9.d<l9.m> create(Object obj, p9.d<?> dVar) {
                return new a(this.f20389b, this.f20390c, this.f20391d, this.f20392e, dVar);
            }

            @Override // x9.p
            /* renamed from: invoke */
            public final Object mo7invoke(a0 a0Var, p9.d<? super l9.m> dVar) {
                return ((a) create(a0Var, dVar)).invokeSuspend(l9.m.f9594a);
            }

            @Override // r9.a
            public final Object invokeSuspend(Object obj) throws Throwable {
                q9.a aVar = q9.a.COROUTINE_SUSPENDED;
                int r12 = this.f20388a;
                if (r12 == 0) {
                    w.F(obj);
                    j jVar = this.f20389b.f20374m;
                    j.a aVar2 = new j.a(this.f20390c, this.f20391d, this.f20392e);
                    this.f20388a = 1;
                    if (jVar.d(aVar2, this) == aVar) {
                        return aVar;
                    }
                } else {
                    if (r12 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    w.F(obj);
                }
                return l9.m.f9594a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(String str, String str2, String str3, p9.d<? super d> dVar) {
            super(2, dVar);
            this.f20386d = str;
            this.f20387e = str2;
            this.f = str3;
        }

        @Override // r9.a
        public final p9.d<l9.m> create(Object obj, p9.d<?> dVar) {
            d dVar2 = l.this.new d(this.f20386d, this.f20387e, this.f, dVar);
            dVar2.f20384b = obj;
            return dVar2;
        }

        @Override // x9.p
        /* renamed from: invoke */
        public final Object mo7invoke(a0 a0Var, p9.d<? super l9.m> dVar) {
            return ((d) create(a0Var, dVar)).invokeSuspend(l9.m.f9594a);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            q9.a aVar = q9.a.COROUTINE_SUSPENDED;
            int r12 = this.f20383a;
            if (r12 == 0) {
                w.F(obj);
                a0 a0Var = (a0) this.f20384b;
                l lVar = l.this;
                f0 f0VarN = v.n(a0Var, lVar.f20374m.f20351c, new a(lVar, this.f20386d, this.f20387e, this.f, null), 2);
                this.f20383a = 1;
                if (f0VarN.m0(this) == aVar) {
                    return aVar;
                }
            } else {
                if (r12 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                w.F(obj);
            }
            return l9.m.f9594a;
        }
    }

    @r9.e(c = "tr.gov.turkiye.edevlet.kapisi.ui.accident.approve.MobileAccidentApproveViewModel$saveReport$2", f = "MobileAccidentApproveViewModel.kt", l = {}, m = "invokeSuspend")
    public static final class e extends r9.i implements x9.p<kotlinx.coroutines.flow.f<? extends Result<SaveReportModel>>, p9.d<? super l9.m>, Object> {

        /* renamed from: a, reason: collision with root package name */
        public /* synthetic */ Object f20393a;

        public static final class a extends kotlin.jvm.internal.j implements x9.p<k, r0.b<? extends Result<SaveReportModel>>, k> {

            /* renamed from: a, reason: collision with root package name */
            public static final a f20395a = new a();

            public a() {
                super(2);
            }

            @Override // x9.p
            /* renamed from: invoke */
            public final k mo7invoke(k kVar, r0.b<? extends Result<SaveReportModel>> bVar) {
                k kVar2;
                SaveReportModel orThrow;
                k kVarCopy$default;
                k execute = kVar;
                r0.b<? extends Result<SaveReportModel>> result = bVar;
                kotlin.jvm.internal.h.f(execute, "$this$execute");
                kotlin.jvm.internal.h.f(result, "result");
                try {
                    Result<SaveReportModel> resultA = result.a();
                    orThrow = resultA != null ? resultA.getOrThrow() : null;
                    kVar2 = null;
                } catch (Throwable th2) {
                    th = th2;
                    kVar2 = execute;
                }
                try {
                    if (orThrow != null) {
                        kVar2 = execute;
                        kVarCopy$default = k.copy$default(execute, null, null, null, null, null, null, result, orThrow, null, null, null, null, null, null, null, 32575, null);
                    } else {
                        kVar2 = execute;
                        kVarCopy$default = k.copy$default(kVar2, null, null, null, null, null, null, result, null, null, null, null, null, null, null, null, 32703, null);
                    }
                    return kVarCopy$default;
                } catch (Throwable th3) {
                    th = th3;
                    return k.copy$default(kVar2, null, null, null, null, null, null, new r0.i(null, th), null, null, null, null, null, null, null, null, 32703, null);
                }
            }
        }

        public e(p9.d<? super e> dVar) {
            super(2, dVar);
        }

        @Override // r9.a
        public final p9.d<l9.m> create(Object obj, p9.d<?> dVar) {
            e eVar = l.this.new e(dVar);
            eVar.f20393a = obj;
            return eVar;
        }

        @Override // x9.p
        /* renamed from: invoke */
        public final Object mo7invoke(kotlinx.coroutines.flow.f<? extends Result<SaveReportModel>> fVar, p9.d<? super l9.m> dVar) {
            return ((e) create(fVar, dVar)).invokeSuspend(l9.m.f9594a);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            w.F(obj);
            z.a(l.this, (kotlinx.coroutines.flow.f) this.f20393a, a.f20395a);
            return l9.m.f9594a;
        }
    }

    static {
        new a(null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public l(k state, u mobileAccidentApproveWork, f mobileAccidentApproveHostAccidentAddressWork, h mobileAccidentApproveMediaListWork, g mobileAccidentApproveMediaDownloadWork, zg.c mobileAccidentApproveConfirmationWork, zg.b mobileAccidentApproveConfirmationGuestWork, j mobileAccidentApproveSaveReportWork) {
        super(state);
        kotlin.jvm.internal.h.f(state, "state");
        kotlin.jvm.internal.h.f(mobileAccidentApproveWork, "mobileAccidentApproveWork");
        kotlin.jvm.internal.h.f(mobileAccidentApproveHostAccidentAddressWork, "mobileAccidentApproveHostAccidentAddressWork");
        kotlin.jvm.internal.h.f(mobileAccidentApproveMediaListWork, "mobileAccidentApproveMediaListWork");
        kotlin.jvm.internal.h.f(mobileAccidentApproveMediaDownloadWork, "mobileAccidentApproveMediaDownloadWork");
        kotlin.jvm.internal.h.f(mobileAccidentApproveConfirmationWork, "mobileAccidentApproveConfirmationWork");
        kotlin.jvm.internal.h.f(mobileAccidentApproveConfirmationGuestWork, "mobileAccidentApproveConfirmationGuestWork");
        kotlin.jvm.internal.h.f(mobileAccidentApproveSaveReportWork, "mobileAccidentApproveSaveReportWork");
        this.f20369h = mobileAccidentApproveWork;
        this.f20370i = mobileAccidentApproveHostAccidentAddressWork;
        this.f20371j = mobileAccidentApproveMediaListWork;
        this.f20372k = mobileAccidentApproveConfirmationWork;
        this.f20373l = mobileAccidentApproveConfirmationGuestWork;
        this.f20374m = mobileAccidentApproveSaveReportWork;
        s sVar = new s(this, null);
        a0 a0Var = this.f13883c;
        v.C(a0Var, null, 0, sVar, 3);
        v.D(a0Var, mobileAccidentApproveWork, new t(this, null));
    }

    public final void d() {
        b bVar = new b(null);
        a0 a0Var = this.f13883c;
        v.C(a0Var, null, 0, bVar, 3);
        v.D(a0Var, this.f20371j, new c(null));
    }

    public final void e(String str, String str2, String str3) {
        d dVar = new d(str, str2, str3, null);
        a0 a0Var = this.f13883c;
        v.C(a0Var, null, 0, dVar, 3);
        v.D(a0Var, this.f20374m, new e(null));
    }
}
