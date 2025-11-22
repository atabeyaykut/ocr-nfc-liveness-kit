package tr.gov.turkiye.edevlet.kapisi.common.worker.favorite;

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
import tr.gov.turkiye.edevlet.kapisi.data.extension.ErrorResult;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Result;
import tr.gov.turkiye.edevlet.kapisi.data.extension.RetrofitExtensionsKt;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Success;
import tr.gov.turkiye.edevlet.kapisi.data.service.ServiceListAPI;
import tr.gov.turkiye.edevlet.kapisi.data.service.ServiceListModel;
import tr.gov.turkiye.edevlet.kapisi.data.service.ServiceModelRealm;
import ud.c0;
import ud.d0;
import x9.p;

@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001Bk\b\u0007\u0012\b\b\u0001\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0001\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0001\u0010\u0007\u001a\u00020\u0006\u0012\b\b\u0001\u0010\b\u001a\u00020\u0006\u0012\b\b\u0001\u0010\t\u001a\u00020\u0006\u0012\b\b\u0001\u0010\n\u001a\u00020\u0006\u0012\b\b\u0001\u0010\f\u001a\u00020\u000b\u0012\b\b\u0001\u0010\r\u001a\u00020\u000b\u0012\b\b\u0001\u0010\u000e\u001a\u00020\u000b\u0012\u0006\u0010\u0010\u001a\u00020\u000f¢\u0006\u0004\b\u0011\u0010\u0012¨\u0006\u0013"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/common/worker/favorite/FavoriteOperationWorker;", "Landroidx/work/CoroutineWorker;", "Landroid/content/Context;", "appContext", "Landroidx/work/WorkerParameters;", "params", "Lud/d0;", "apiClientSession", "apiClientLogin", "apiClientRegister", "apiOTPClient", "", "appVersion", "appLanguage", "appMode", "Landroid/content/SharedPreferences$Editor;", "sharedPreferencesEditor", "<init>", "(Landroid/content/Context;Landroidx/work/WorkerParameters;Lud/d0;Lud/d0;Lud/d0;Lud/d0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)V", "common-worker_release"}, k = 1, mv = {1, 8, 0})
/* loaded from: classes3.dex */
public final class FavoriteOperationWorker extends CoroutineWorker {

    /* renamed from: a, reason: collision with root package name */
    public final d0 f15942a;

    /* renamed from: b, reason: collision with root package name */
    public final String f15943b;

    /* renamed from: c, reason: collision with root package name */
    public final String f15944c;

    /* renamed from: d, reason: collision with root package name */
    public final String f15945d;

    @e(c = "tr.gov.turkiye.edevlet.kapisi.common.worker.favorite.FavoriteOperationWorker", f = "FavoriteOperationWorker.kt", l = {37}, m = "doWork")
    public static final class a extends c {

        /* renamed from: a, reason: collision with root package name */
        public /* synthetic */ Object f15946a;

        /* renamed from: c, reason: collision with root package name */
        public int f15948c;

        public a(d<? super a> dVar) {
            super(dVar);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) {
            this.f15946a = obj;
            this.f15948c |= Integer.MIN_VALUE;
            return FavoriteOperationWorker.this.doWork(this);
        }
    }

    @e(c = "tr.gov.turkiye.edevlet.kapisi.common.worker.favorite.FavoriteOperationWorker$doWork$2", f = "FavoriteOperationWorker.kt", l = {38}, m = "invokeSuspend")
    public static final class b extends i implements p<a0, d<? super ListenableWorker.Result>, Object> {

        /* renamed from: a, reason: collision with root package name */
        public int f15949a;

        @e(c = "tr.gov.turkiye.edevlet.kapisi.common.worker.favorite.FavoriteOperationWorker$doWork$2$1", f = "FavoriteOperationWorker.kt", l = {54}, m = "invokeSuspend")
        public static final class a extends i implements p<a0, d<? super ListenableWorker.Result>, Object> {

            /* renamed from: a, reason: collision with root package name */
            public int f15951a;

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ FavoriteOperationWorker f15952b;

            @e(c = "tr.gov.turkiye.edevlet.kapisi.common.worker.favorite.FavoriteOperationWorker$doWork$2$1$1", f = "FavoriteOperationWorker.kt", l = {}, m = "invokeSuspend")
            /* renamed from: tr.gov.turkiye.edevlet.kapisi.common.worker.favorite.FavoriteOperationWorker$b$a$a, reason: collision with other inner class name */
            public static final class C0259a extends i implements p<a0, d<? super ListenableWorker.Result>, Object> {

                /* renamed from: a, reason: collision with root package name */
                public final /* synthetic */ int f15953a;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public C0259a(int r12, d<? super C0259a> dVar) {
                    super(2, dVar);
                    this.f15953a = r12;
                }

                @Override // r9.a
                public final d<m> create(Object obj, d<?> dVar) {
                    return new C0259a(this.f15953a, dVar);
                }

                @Override // x9.p
                /* renamed from: invoke */
                public final Object mo7invoke(a0 a0Var, d<? super ListenableWorker.Result> dVar) {
                    return ((C0259a) create(a0Var, dVar)).invokeSuspend(m.f9594a);
                }

                @Override // r9.a
                public final Object invokeSuspend(Object obj) throws Throwable {
                    w.F(obj);
                    g0 realmMain = g0.t();
                    h.e(realmMain, "realmMain");
                    RealmQuery realmQueryJ = realmMain.J(ServiceModelRealm.class);
                    realmQueryJ.b(new Integer(this.f15953a), "serviceCode");
                    ServiceModelRealm serviceModelRealm = (ServiceModelRealm) realmQueryJ.e();
                    if (serviceModelRealm == null) {
                        qd.b.b().i(new pe.e(false, "ADD"));
                        return ListenableWorker.Result.failure();
                    }
                    realmMain.s(new androidx.camera.core.impl.utils.futures.a(4, serviceModelRealm));
                    realmMain.m();
                    qd.b.b().i(new pe.e(true, "ADD"));
                    return ListenableWorker.Result.success();
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(FavoriteOperationWorker favoriteOperationWorker, d<? super a> dVar) {
                super(2, dVar);
                this.f15952b = favoriteOperationWorker;
            }

            @Override // r9.a
            public final d<m> create(Object obj, d<?> dVar) {
                return new a(this.f15952b, dVar);
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
                pe.e eVar;
                Result errorResult;
                FavoriteOperationWorker favoriteOperationWorker = this.f15952b;
                q9.a aVar = q9.a.COROUTINE_SUSPENDED;
                int r22 = this.f15951a;
                try {
                } catch (Exception unused) {
                    qd.b.b().i(new pe.e(false, "ADD"));
                    resultFailure = ListenableWorker.Result.failure();
                }
                if (r22 == 0) {
                    w.F(obj);
                    int r15 = favoriteOperationWorker.getInputData().getInt("serviceCode", -1);
                    if (r15 != -1) {
                        Object objB = favoriteOperationWorker.f15942a.b(ServiceListAPI.class);
                        h.e(objB, "apiClientSession.create(…rviceListAPI::class.java)");
                        try {
                            c0<ServiceListModel> response = ((ServiceListAPI) objB).makeFavoriteOperation("ekle", r15, favoriteOperationWorker.f15943b, "android", favoriteOperationWorker.f15944c, favoriteOperationWorker.f15945d).execute();
                            h.e(response, "response");
                            errorResult = new Success(RetrofitExtensionsKt.bodyOrThrow(response));
                        } catch (Exception e10) {
                            e10.printStackTrace();
                            errorResult = new ErrorResult(e10);
                        }
                        if (errorResult instanceof Success) {
                            kotlinx.coroutines.scheduling.c cVar = j0.f10808a;
                            k1 k1Var = kotlinx.coroutines.internal.m.f9167a;
                            C0259a c0259a = new C0259a(r15, null);
                            this.f15951a = 1;
                            obj = v.N(k1Var, c0259a, this);
                            if (obj == aVar) {
                                return aVar;
                            }
                        } else {
                            if (!(errorResult instanceof ErrorResult)) {
                                throw new j7.p();
                            }
                            bVarB = qd.b.b();
                            eVar = new pe.e(false, "ADD");
                        }
                    } else {
                        bVarB = qd.b.b();
                        eVar = new pe.e(false, "ADD");
                    }
                    bVarB.i(eVar);
                    resultFailure = ListenableWorker.Result.failure();
                    h.e(resultFailure, "try {\n                va…t.failure()\n            }");
                    return resultFailure;
                }
                if (r22 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                w.F(obj);
                resultFailure = (ListenableWorker.Result) obj;
                h.e(resultFailure, "try {\n                va…t.failure()\n            }");
                return resultFailure;
            }
        }

        public b(d<? super b> dVar) {
            super(2, dVar);
        }

        @Override // r9.a
        public final d<m> create(Object obj, d<?> dVar) {
            return FavoriteOperationWorker.this.new b(dVar);
        }

        @Override // x9.p
        /* renamed from: invoke */
        public final Object mo7invoke(a0 a0Var, d<? super ListenableWorker.Result> dVar) {
            return ((b) create(a0Var, dVar)).invokeSuspend(m.f9594a);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            q9.a aVar = q9.a.COROUTINE_SUSPENDED;
            int r12 = this.f15949a;
            if (r12 == 0) {
                w.F(obj);
                kotlinx.coroutines.scheduling.b bVar = j0.f10809b;
                a aVar2 = new a(FavoriteOperationWorker.this, null);
                this.f15949a = 1;
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
    public FavoriteOperationWorker(Context context, WorkerParameters workerParameters, d0 d0Var, d0 d0Var2, d0 d0Var3, d0 d0Var4, String str, String str2, String str3, SharedPreferences.Editor editor) {
        super(context, workerParameters);
        androidx.room.util.a.h(context, "appContext", workerParameters, "params", d0Var, "apiClientSession", d0Var2, "apiClientLogin", d0Var3, "apiClientRegister", d0Var4, "apiOTPClient", str, "appVersion", str2, "appLanguage", str3, "appMode", editor, "sharedPreferencesEditor");
        this.f15942a = d0Var;
        this.f15943b = str;
        this.f15944c = str2;
        this.f15945d = str3;
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
            boolean r0 = r5 instanceof tr.gov.turkiye.edevlet.kapisi.common.worker.favorite.FavoriteOperationWorker.a
            if (r0 == 0) goto L13
            r0 = r5
            tr.gov.turkiye.edevlet.kapisi.common.worker.favorite.FavoriteOperationWorker$a r0 = (tr.gov.turkiye.edevlet.kapisi.common.worker.favorite.FavoriteOperationWorker.a) r0
            int r1 = r0.f15948c
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f15948c = r1
            goto L18
        L13:
            tr.gov.turkiye.edevlet.kapisi.common.worker.favorite.FavoriteOperationWorker$a r0 = new tr.gov.turkiye.edevlet.kapisi.common.worker.favorite.FavoriteOperationWorker$a
            r0.<init>(r5)
        L18:
            java.lang.Object r5 = r0.f15946a
            q9.a r1 = q9.a.COROUTINE_SUSPENDED
            int r2 = r0.f15948c
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
            tr.gov.turkiye.edevlet.kapisi.common.worker.favorite.FavoriteOperationWorker$b r5 = new tr.gov.turkiye.edevlet.kapisi.common.worker.favorite.FavoriteOperationWorker$b
            r2 = 0
            r5.<init>(r2)
            r0.f15948c = r3
            java.lang.Object r5 = b8.f.t(r5, r0)
            if (r5 != r1) goto L41
            return r1
        L41:
            java.lang.String r0 = "override suspend fun doW…        }\n        }\n    }"
            kotlin.jvm.internal.h.e(r5, r0)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: tr.gov.turkiye.edevlet.kapisi.common.worker.favorite.FavoriteOperationWorker.doWork(p9.d):java.lang.Object");
    }
}
