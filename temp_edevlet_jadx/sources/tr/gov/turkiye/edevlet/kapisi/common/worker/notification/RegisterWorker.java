package tr.gov.turkiye.edevlet.kapisi.common.worker.notification;

import android.content.Context;
import android.content.SharedPreferences;
import androidx.work.CoroutineWorker;
import androidx.work.ListenableWorker;
import androidx.work.WorkerParameters;
import c5.v;
import c5.w;
import kotlin.Metadata;
import kotlin.jvm.internal.h;
import l9.m;
import mc.j;
import nc.a0;
import nc.j0;
import org.json.JSONException;
import org.json.JSONObject;
import p9.d;
import r9.c;
import r9.e;
import r9.i;
import tr.gov.turkiye.edevlet.kapisi.data.extension.ErrorResult;
import tr.gov.turkiye.edevlet.kapisi.data.extension.RegisterExtensionKt;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Result;
import tr.gov.turkiye.edevlet.kapisi.data.extension.RetrofitExtensionsKt;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Success;
import tr.gov.turkiye.edevlet.kapisi.data.extension.SuccessResult;
import tr.gov.turkiye.edevlet.kapisi.data.notification.RegisterAPI;
import tr.gov.turkiye.edevlet.kapisi.data.notification.RegisterModel;
import ud.c0;
import ud.d0;
import x9.p;

@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001Bk\b\u0007\u0012\b\b\u0001\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0001\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0001\u0010\u0007\u001a\u00020\u0006\u0012\b\b\u0001\u0010\b\u001a\u00020\u0006\u0012\b\b\u0001\u0010\t\u001a\u00020\u0006\u0012\b\b\u0001\u0010\n\u001a\u00020\u0006\u0012\b\b\u0001\u0010\f\u001a\u00020\u000b\u0012\b\b\u0001\u0010\r\u001a\u00020\u000b\u0012\b\b\u0001\u0010\u000e\u001a\u00020\u000b\u0012\u0006\u0010\u0010\u001a\u00020\u000f¢\u0006\u0004\b\u0011\u0010\u0012¨\u0006\u0013"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/common/worker/notification/RegisterWorker;", "Landroidx/work/CoroutineWorker;", "Landroid/content/Context;", "appContext", "Landroidx/work/WorkerParameters;", "params", "Lud/d0;", "apiClientSession", "apiClientLogin", "apiClientRegister", "apiOTPClient", "", "appVersion", "appLanguage", "appMode", "Landroid/content/SharedPreferences$Editor;", "sharedPreferencesEditor", "<init>", "(Landroid/content/Context;Landroidx/work/WorkerParameters;Lud/d0;Lud/d0;Lud/d0;Lud/d0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)V", "common-worker_release"}, k = 1, mv = {1, 8, 0})
/* loaded from: classes3.dex */
public final class RegisterWorker extends CoroutineWorker {

    /* renamed from: a, reason: collision with root package name */
    public final d0 f16045a;

    /* renamed from: b, reason: collision with root package name */
    public final String f16046b;

    /* renamed from: c, reason: collision with root package name */
    public final String f16047c;

    /* renamed from: d, reason: collision with root package name */
    public final String f16048d;

    /* renamed from: e, reason: collision with root package name */
    public final SharedPreferences.Editor f16049e;

    @e(c = "tr.gov.turkiye.edevlet.kapisi.common.worker.notification.RegisterWorker", f = "RegisterWorker.kt", l = {33}, m = "doWork")
    public static final class a extends c {

        /* renamed from: a, reason: collision with root package name */
        public /* synthetic */ Object f16050a;

        /* renamed from: c, reason: collision with root package name */
        public int f16052c;

        public a(d<? super a> dVar) {
            super(dVar);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) {
            this.f16050a = obj;
            this.f16052c |= Integer.MIN_VALUE;
            return RegisterWorker.this.doWork(this);
        }
    }

    @e(c = "tr.gov.turkiye.edevlet.kapisi.common.worker.notification.RegisterWorker$doWork$2", f = "RegisterWorker.kt", l = {34}, m = "invokeSuspend")
    public static final class b extends i implements p<a0, d<? super ListenableWorker.Result>, Object> {

        /* renamed from: a, reason: collision with root package name */
        public int f16053a;

        @e(c = "tr.gov.turkiye.edevlet.kapisi.common.worker.notification.RegisterWorker$doWork$2$1", f = "RegisterWorker.kt", l = {}, m = "invokeSuspend")
        public static final class a extends i implements p<a0, d<? super ListenableWorker.Result>, Object> {

            /* renamed from: a, reason: collision with root package name */
            public final /* synthetic */ RegisterWorker f16055a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(RegisterWorker registerWorker, d<? super a> dVar) {
                super(2, dVar);
                this.f16055a = registerWorker;
            }

            @Override // r9.a
            public final d<m> create(Object obj, d<?> dVar) {
                return new a(this.f16055a, dVar);
            }

            @Override // x9.p
            /* renamed from: invoke */
            public final Object mo7invoke(a0 a0Var, d<? super ListenableWorker.Result> dVar) {
                return ((a) create(a0Var, dVar)).invokeSuspend(m.f9594a);
            }

            @Override // r9.a
            public final Object invokeSuspend(Object obj) throws Throwable {
                ListenableWorker.Result resultFailure;
                Result errorResult;
                RegisterWorker registerWorker = this.f16055a;
                w.F(obj);
                try {
                    String string = registerWorker.getInputData().getString("token");
                    if (string == null || string.length() == 0) {
                        resultFailure = ListenableWorker.Result.failure();
                    } else {
                        Object objB = registerWorker.f16045a.b(RegisterAPI.class);
                        h.e(objB, "apiClientRegister.create(RegisterAPI::class.java)");
                        try {
                            c0<RegisterModel> response = ((RegisterAPI) objB).registerUserToPush(true, "add", "gcm", string, "tr.gov.turkiye.edevlet.kapisi.v21", registerWorker.f16046b, "android", registerWorker.f16047c, registerWorker.f16048d).execute();
                            h.e(response, "response");
                            errorResult = new Success(RetrofitExtensionsKt.bodyOrThrow(response));
                        } catch (Exception e10) {
                            e10.printStackTrace();
                            errorResult = new ErrorResult(e10);
                        }
                        if (errorResult instanceof Success) {
                            if (RegisterExtensionKt.completeRequest((RegisterModel) ((Success) errorResult).getData()) instanceof SuccessResult) {
                                JSONObject jSONObject = new JSONObject(((RegisterModel) ((Success) errorResult).getData()).getRegisterData().toString());
                                if (j.x(jSONObject.getString("success"), "true")) {
                                    try {
                                        JSONObject jSONObject2 = jSONObject.getJSONObject("message");
                                        h.e(jSONObject2, "contentJSON.getJSONObject(\"message\")");
                                        String deviceID = jSONObject2.getString("device_id");
                                        RegisterWorker.b(registerWorker);
                                        h.e(deviceID, "deviceID");
                                        RegisterWorker.a(registerWorker, string, deviceID);
                                    } catch (JSONException unused) {
                                    }
                                } else {
                                    RegisterWorker.b(registerWorker);
                                }
                            }
                            resultFailure = ListenableWorker.Result.success();
                        } else {
                            if (!(errorResult instanceof ErrorResult)) {
                                throw new j7.p();
                            }
                            resultFailure = ListenableWorker.Result.failure();
                        }
                    }
                } catch (Exception unused2) {
                    resultFailure = ListenableWorker.Result.failure();
                }
                h.e(resultFailure, "try {\n                va…t.failure()\n            }");
                return resultFailure;
            }
        }

        public b(d<? super b> dVar) {
            super(2, dVar);
        }

        @Override // r9.a
        public final d<m> create(Object obj, d<?> dVar) {
            return RegisterWorker.this.new b(dVar);
        }

        @Override // x9.p
        /* renamed from: invoke */
        public final Object mo7invoke(a0 a0Var, d<? super ListenableWorker.Result> dVar) {
            return ((b) create(a0Var, dVar)).invokeSuspend(m.f9594a);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            q9.a aVar = q9.a.COROUTINE_SUSPENDED;
            int r12 = this.f16053a;
            if (r12 == 0) {
                w.F(obj);
                kotlinx.coroutines.scheduling.b bVar = j0.f10809b;
                a aVar2 = new a(RegisterWorker.this, null);
                this.f16053a = 1;
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
    public RegisterWorker(Context context, WorkerParameters workerParameters, d0 d0Var, d0 d0Var2, d0 d0Var3, d0 d0Var4, String str, String str2, String str3, SharedPreferences.Editor editor) {
        super(context, workerParameters);
        androidx.room.util.a.h(context, "appContext", workerParameters, "params", d0Var, "apiClientSession", d0Var2, "apiClientLogin", d0Var3, "apiClientRegister", d0Var4, "apiOTPClient", str, "appVersion", str2, "appLanguage", str3, "appMode", editor, "sharedPreferencesEditor");
        this.f16045a = d0Var3;
        this.f16046b = str;
        this.f16047c = str2;
        this.f16048d = str3;
        this.f16049e = editor;
    }

    public static final void a(RegisterWorker registerWorker, String str, String str2) {
        SharedPreferences.Editor editor = registerWorker.f16049e;
        editor.putString("gcm_token", str);
        editor.putString("device_id", str2);
        editor.putBoolean("user_push_registered", true);
        editor.apply();
    }

    public static final void b(RegisterWorker registerWorker) {
        SharedPreferences.Editor editor = registerWorker.f16049e;
        editor.putBoolean("user_push_registered", false);
        editor.apply();
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
            boolean r0 = r5 instanceof tr.gov.turkiye.edevlet.kapisi.common.worker.notification.RegisterWorker.a
            if (r0 == 0) goto L13
            r0 = r5
            tr.gov.turkiye.edevlet.kapisi.common.worker.notification.RegisterWorker$a r0 = (tr.gov.turkiye.edevlet.kapisi.common.worker.notification.RegisterWorker.a) r0
            int r1 = r0.f16052c
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f16052c = r1
            goto L18
        L13:
            tr.gov.turkiye.edevlet.kapisi.common.worker.notification.RegisterWorker$a r0 = new tr.gov.turkiye.edevlet.kapisi.common.worker.notification.RegisterWorker$a
            r0.<init>(r5)
        L18:
            java.lang.Object r5 = r0.f16050a
            q9.a r1 = q9.a.COROUTINE_SUSPENDED
            int r2 = r0.f16052c
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
            tr.gov.turkiye.edevlet.kapisi.common.worker.notification.RegisterWorker$b r5 = new tr.gov.turkiye.edevlet.kapisi.common.worker.notification.RegisterWorker$b
            r2 = 0
            r5.<init>(r2)
            r0.f16052c = r3
            java.lang.Object r5 = b8.f.t(r5, r0)
            if (r5 != r1) goto L41
            return r1
        L41:
            java.lang.String r0 = "override suspend fun doW…        }\n        }\n    }"
            kotlin.jvm.internal.h.e(r5, r0)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: tr.gov.turkiye.edevlet.kapisi.common.worker.notification.RegisterWorker.doWork(p9.d):java.lang.Object");
    }
}
