package tr.gov.turkiye.edevlet.kapisi.common.worker.service;

import android.content.Context;
import android.content.SharedPreferences;
import androidx.work.CoroutineWorker;
import androidx.work.ListenableWorker;
import androidx.work.WorkerParameters;
import c5.v;
import c5.w;
import io.realm.RealmQuery;
import io.realm.g0;
import kotlin.Metadata;
import kotlin.jvm.internal.h;
import l9.m;
import nc.a0;
import nc.j0;
import nc.k1;
import p9.d;
import r9.c;
import r9.e;
import r9.i;
import tr.gov.turkiye.edevlet.kapisi.data.extension.BaseUrlExtensionKt;
import tr.gov.turkiye.edevlet.kapisi.data.extension.EmptyResult;
import tr.gov.turkiye.edevlet.kapisi.data.extension.ErrorResult;
import tr.gov.turkiye.edevlet.kapisi.data.extension.LoginFail;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Result;
import tr.gov.turkiye.edevlet.kapisi.data.extension.RetrofitExtensionsKt;
import tr.gov.turkiye.edevlet.kapisi.data.extension.ServiceListExtensionKt;
import tr.gov.turkiye.edevlet.kapisi.data.extension.ServiceResult;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Success;
import tr.gov.turkiye.edevlet.kapisi.data.extension.SuccessResult;
import tr.gov.turkiye.edevlet.kapisi.data.service.ServiceDetailModel;
import tr.gov.turkiye.edevlet.kapisi.data.service.ServiceListAPI;
import tr.gov.turkiye.edevlet.kapisi.data.service.ServiceModelRealm;
import ud.c0;
import ud.d0;
import x9.p;

@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001Bk\b\u0007\u0012\b\b\u0001\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0001\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0001\u0010\u0007\u001a\u00020\u0006\u0012\b\b\u0001\u0010\b\u001a\u00020\u0006\u0012\b\b\u0001\u0010\t\u001a\u00020\u0006\u0012\b\b\u0001\u0010\n\u001a\u00020\u0006\u0012\b\b\u0001\u0010\f\u001a\u00020\u000b\u0012\b\b\u0001\u0010\r\u001a\u00020\u000b\u0012\b\b\u0001\u0010\u000e\u001a\u00020\u000b\u0012\u0006\u0010\u0010\u001a\u00020\u000f¢\u0006\u0004\b\u0011\u0010\u0012¨\u0006\u0013"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/common/worker/service/ServiceDetailWorker;", "Landroidx/work/CoroutineWorker;", "Landroid/content/Context;", "appContext", "Landroidx/work/WorkerParameters;", "params", "Lud/d0;", "apiClientSession", "apiClientLogin", "apiClientRegister", "apiOTPClient", "", "appVersion", "appLanguage", "appMode", "Landroid/content/SharedPreferences$Editor;", "sharedPreferencesEditor", "<init>", "(Landroid/content/Context;Landroidx/work/WorkerParameters;Lud/d0;Lud/d0;Lud/d0;Lud/d0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)V", "common-worker_release"}, k = 1, mv = {1, 8, 0})
/* loaded from: classes3.dex */
public final class ServiceDetailWorker extends CoroutineWorker {

    /* renamed from: a, reason: collision with root package name */
    public final d0 f16110a;

    /* renamed from: b, reason: collision with root package name */
    public final String f16111b;

    /* renamed from: c, reason: collision with root package name */
    public final String f16112c;

    /* renamed from: d, reason: collision with root package name */
    public final String f16113d;

    @e(c = "tr.gov.turkiye.edevlet.kapisi.common.worker.service.ServiceDetailWorker", f = "ServiceDetailWorker.kt", l = {35}, m = "doWork")
    public static final class a extends c {

        /* renamed from: a, reason: collision with root package name */
        public /* synthetic */ Object f16114a;

        /* renamed from: c, reason: collision with root package name */
        public int f16116c;

        public a(d<? super a> dVar) {
            super(dVar);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) {
            this.f16114a = obj;
            this.f16116c |= Integer.MIN_VALUE;
            return ServiceDetailWorker.this.doWork(this);
        }
    }

    @e(c = "tr.gov.turkiye.edevlet.kapisi.common.worker.service.ServiceDetailWorker$doWork$2", f = "ServiceDetailWorker.kt", l = {36}, m = "invokeSuspend")
    public static final class b extends i implements p<a0, d<? super ListenableWorker.Result>, Object> {

        /* renamed from: a, reason: collision with root package name */
        public int f16117a;

        @e(c = "tr.gov.turkiye.edevlet.kapisi.common.worker.service.ServiceDetailWorker$doWork$2$1", f = "ServiceDetailWorker.kt", l = {46, 78}, m = "invokeSuspend")
        public static final class a extends i implements p<a0, d<? super ListenableWorker.Result>, Object> {

            /* renamed from: a, reason: collision with root package name */
            public int f16119a;

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ServiceDetailWorker f16120b;

            @e(c = "tr.gov.turkiye.edevlet.kapisi.common.worker.service.ServiceDetailWorker$doWork$2$1$1", f = "ServiceDetailWorker.kt", l = {}, m = "invokeSuspend")
            /* renamed from: tr.gov.turkiye.edevlet.kapisi.common.worker.service.ServiceDetailWorker$b$a$a, reason: collision with other inner class name */
            public static final class C0267a extends i implements p<a0, d<? super m>, Object> {

                /* renamed from: a, reason: collision with root package name */
                public final /* synthetic */ ServiceDetailWorker f16121a;

                /* renamed from: b, reason: collision with root package name */
                public final /* synthetic */ int f16122b;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public C0267a(ServiceDetailWorker serviceDetailWorker, int r22, d<? super C0267a> dVar) {
                    super(2, dVar);
                    this.f16121a = serviceDetailWorker;
                    this.f16122b = r22;
                }

                @Override // r9.a
                public final d<m> create(Object obj, d<?> dVar) {
                    return new C0267a(this.f16121a, this.f16122b, dVar);
                }

                @Override // x9.p
                /* renamed from: invoke */
                public final Object mo7invoke(a0 a0Var, d<? super m> dVar) {
                    return ((C0267a) create(a0Var, dVar)).invokeSuspend(m.f9594a);
                }

                @Override // r9.a
                public final Object invokeSuspend(Object obj) throws Throwable {
                    w.F(obj);
                    ServiceDetailWorker.a(this.f16121a, this.f16122b);
                    return m.f9594a;
                }
            }

            @e(c = "tr.gov.turkiye.edevlet.kapisi.common.worker.service.ServiceDetailWorker$doWork$2$1$2", f = "ServiceDetailWorker.kt", l = {}, m = "invokeSuspend")
            /* renamed from: tr.gov.turkiye.edevlet.kapisi.common.worker.service.ServiceDetailWorker$b$a$b, reason: collision with other inner class name */
            public static final class C0268b extends i implements p<a0, d<? super m>, Object> {

                /* renamed from: a, reason: collision with root package name */
                public final /* synthetic */ ServiceDetailWorker f16123a;

                /* renamed from: b, reason: collision with root package name */
                public final /* synthetic */ int f16124b;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public C0268b(ServiceDetailWorker serviceDetailWorker, int r22, d<? super C0268b> dVar) {
                    super(2, dVar);
                    this.f16123a = serviceDetailWorker;
                    this.f16124b = r22;
                }

                @Override // r9.a
                public final d<m> create(Object obj, d<?> dVar) {
                    return new C0268b(this.f16123a, this.f16124b, dVar);
                }

                @Override // x9.p
                /* renamed from: invoke */
                public final Object mo7invoke(a0 a0Var, d<? super m> dVar) {
                    return ((C0268b) create(a0Var, dVar)).invokeSuspend(m.f9594a);
                }

                @Override // r9.a
                public final Object invokeSuspend(Object obj) throws Throwable {
                    w.F(obj);
                    ServiceDetailWorker.a(this.f16123a, this.f16124b);
                    return m.f9594a;
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(ServiceDetailWorker serviceDetailWorker, d<? super a> dVar) {
                super(2, dVar);
                this.f16120b = serviceDetailWorker;
            }

            @Override // r9.a
            public final d<m> create(Object obj, d<?> dVar) {
                return new a(this.f16120b, dVar);
            }

            @Override // x9.p
            /* renamed from: invoke */
            public final Object mo7invoke(a0 a0Var, d<? super ListenableWorker.Result> dVar) {
                return ((a) create(a0Var, dVar)).invokeSuspend(m.f9594a);
            }

            @Override // r9.a
            public final Object invokeSuspend(Object obj) throws Throwable {
                ListenableWorker.Result resultFailure;
                qd.b bVarB;
                xe.a aVar;
                Result errorResult;
                ServiceDetailWorker serviceDetailWorker = this.f16120b;
                q9.a aVar2 = q9.a.COROUTINE_SUSPENDED;
                int r42 = this.f16119a;
                boolean z10 = true;
                try {
                } catch (Exception unused) {
                    qd.b.b().i(new xe.a(null, false));
                    resultFailure = ListenableWorker.Result.failure();
                }
                if (r42 == 0) {
                    w.F(obj);
                    int r43 = serviceDetailWorker.getInputData().getInt("serviceCode", -1);
                    if (r43 != -1) {
                        g0 realm = g0.t();
                        h.e(realm, "realm");
                        RealmQuery realmQueryJ = realm.J(ServiceModelRealm.class);
                        realmQueryJ.b(new Integer(r43), "serviceCode");
                        if (((ServiceModelRealm) realmQueryJ.e()) != null) {
                            kotlinx.coroutines.scheduling.c cVar = j0.f10808a;
                            k1 k1Var = kotlinx.coroutines.internal.m.f9167a;
                            C0267a c0267a = new C0267a(serviceDetailWorker, r43, null);
                            this.f16119a = 1;
                            if (v.N(k1Var, c0267a, this) == aVar2) {
                                return aVar2;
                            }
                        } else {
                            Object objB = serviceDetailWorker.f16110a.b(ServiceListAPI.class);
                            h.e(objB, "apiClientLogin.create(ServiceListAPI::class.java)");
                            try {
                                c0<ServiceDetailModel> response = ((ServiceListAPI) objB).fetchServiceDetail("ServiceDetail", r43, serviceDetailWorker.f16111b, "android", serviceDetailWorker.f16112c, serviceDetailWorker.f16113d).execute();
                                h.e(response, "response");
                                errorResult = new Success(RetrofitExtensionsKt.bodyOrThrow(response));
                            } catch (Exception e10) {
                                e10.printStackTrace();
                                errorResult = new ErrorResult(e10);
                            }
                            if (errorResult instanceof Success) {
                                ServiceResult<ServiceDetailModel> serviceResultCompleteRequest = ServiceListExtensionKt.completeRequest((ServiceDetailModel) ((Success) errorResult).getData());
                                if (!(serviceResultCompleteRequest instanceof SuccessResult)) {
                                    z10 = serviceResultCompleteRequest instanceof LoginFail;
                                }
                                if (z10) {
                                    ServiceModelRealm serviceModelRealmPrepareResult = BaseUrlExtensionKt.prepareResult(((ServiceDetailModel) ((Success) errorResult).getData()).getServiceList().getContent(), ((ServiceDetailModel) ((Success) errorResult).getData()).getServiceList().getBaseUrl(), ((ServiceDetailModel) ((Success) errorResult).getData()).getServiceList().getBaseUrls(), false);
                                    realm.beginTransaction();
                                    realm.B(serviceModelRealmPrepareResult);
                                    realm.c();
                                    kotlinx.coroutines.scheduling.c cVar2 = j0.f10808a;
                                    k1 k1Var2 = kotlinx.coroutines.internal.m.f9167a;
                                    C0268b c0268b = new C0268b(serviceDetailWorker, r43, null);
                                    this.f16119a = 2;
                                    if (v.N(k1Var2, c0268b, this) == aVar2) {
                                        return aVar2;
                                    }
                                } else if (serviceResultCompleteRequest instanceof EmptyResult) {
                                    bVarB = qd.b.b();
                                    aVar = new xe.a(null, false);
                                } else {
                                    bVarB = qd.b.b();
                                    aVar = new xe.a(null, false);
                                }
                            } else {
                                if (!(errorResult instanceof ErrorResult)) {
                                    throw new j7.p();
                                }
                                bVarB = qd.b.b();
                                aVar = new xe.a(null, false);
                            }
                        }
                    } else {
                        bVarB = qd.b.b();
                        aVar = new xe.a(null, false);
                    }
                    bVarB.i(aVar);
                    resultFailure = ListenableWorker.Result.failure();
                    h.e(resultFailure, "override suspend fun doW…        }\n        }\n    }");
                    return resultFailure;
                }
                if (r42 != 1 && r42 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                w.F(obj);
                resultFailure = ListenableWorker.Result.success();
                h.e(resultFailure, "override suspend fun doW…        }\n        }\n    }");
                return resultFailure;
            }
        }

        public b(d<? super b> dVar) {
            super(2, dVar);
        }

        @Override // r9.a
        public final d<m> create(Object obj, d<?> dVar) {
            return ServiceDetailWorker.this.new b(dVar);
        }

        @Override // x9.p
        /* renamed from: invoke */
        public final Object mo7invoke(a0 a0Var, d<? super ListenableWorker.Result> dVar) {
            return ((b) create(a0Var, dVar)).invokeSuspend(m.f9594a);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            q9.a aVar = q9.a.COROUTINE_SUSPENDED;
            int r12 = this.f16117a;
            if (r12 == 0) {
                w.F(obj);
                kotlinx.coroutines.scheduling.b bVar = j0.f10809b;
                a aVar2 = new a(ServiceDetailWorker.this, null);
                this.f16117a = 1;
                obj = v.N(bVar, aVar2, this);
                if (obj == aVar) {
                    return aVar;
                }
            } else {
                if (r12 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                w.F(obj);
            }
            return obj;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ServiceDetailWorker(Context context, WorkerParameters workerParameters, d0 d0Var, d0 d0Var2, d0 d0Var3, d0 d0Var4, String str, String str2, String str3, SharedPreferences.Editor editor) {
        super(context, workerParameters);
        androidx.room.util.a.h(context, "appContext", workerParameters, "params", d0Var, "apiClientSession", d0Var2, "apiClientLogin", d0Var3, "apiClientRegister", d0Var4, "apiOTPClient", str, "appVersion", str2, "appLanguage", str3, "appMode", editor, "sharedPreferencesEditor");
        this.f16110a = d0Var2;
        this.f16111b = str;
        this.f16112c = str2;
        this.f16113d = str3;
    }

    public static final void a(ServiceDetailWorker serviceDetailWorker, int r32) {
        serviceDetailWorker.getClass();
        g0 realm = g0.t();
        h.e(realm, "realm");
        RealmQuery realmQueryJ = realm.J(ServiceModelRealm.class);
        realmQueryJ.b(Integer.valueOf(r32), "serviceCode");
        qd.b.b().i(new xe.a((ServiceModelRealm) realmQueryJ.e(), true));
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    @Override // androidx.work.CoroutineWorker
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object doWork(p9.d<? super androidx.work.ListenableWorker.Result> r5) throws java.lang.Throwable {
        /*
            r4 = this;
            boolean r0 = r5 instanceof tr.gov.turkiye.edevlet.kapisi.common.worker.service.ServiceDetailWorker.a
            if (r0 == 0) goto L13
            r0 = r5
            tr.gov.turkiye.edevlet.kapisi.common.worker.service.ServiceDetailWorker$a r0 = (tr.gov.turkiye.edevlet.kapisi.common.worker.service.ServiceDetailWorker.a) r0
            int r1 = r0.f16116c
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f16116c = r1
            goto L18
        L13:
            tr.gov.turkiye.edevlet.kapisi.common.worker.service.ServiceDetailWorker$a r0 = new tr.gov.turkiye.edevlet.kapisi.common.worker.service.ServiceDetailWorker$a
            r0.<init>(r5)
        L18:
            java.lang.Object r5 = r0.f16114a
            q9.a r1 = q9.a.COROUTINE_SUSPENDED
            int r2 = r0.f16116c
            r3 = 1
            if (r2 == 0) goto L2f
            if (r2 != r3) goto L27
            c5.w.F(r5)
            goto L41
        L27:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r0)
            throw r5
        L2f:
            c5.w.F(r5)
            tr.gov.turkiye.edevlet.kapisi.common.worker.service.ServiceDetailWorker$b r5 = new tr.gov.turkiye.edevlet.kapisi.common.worker.service.ServiceDetailWorker$b
            r2 = 0
            r5.<init>(r2)
            r0.f16116c = r3
            java.lang.Object r5 = b8.f.t(r5, r0)
            if (r5 != r1) goto L41
            return r1
        L41:
            java.lang.String r0 = "override suspend fun doW…        }\n        }\n    }"
            kotlin.jvm.internal.h.e(r5, r0)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: tr.gov.turkiye.edevlet.kapisi.common.worker.service.ServiceDetailWorker.doWork(p9.d):java.lang.Object");
    }
}
