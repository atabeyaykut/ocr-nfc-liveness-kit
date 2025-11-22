package tr.gov.turkiye.edevlet.kapisi.common.worker.otp;

import android.content.Context;
import android.content.SharedPreferences;
import androidx.work.CoroutineWorker;
import androidx.work.ListenableWorker;
import androidx.work.WorkerParameters;
import c5.v;
import c5.w;
import kotlin.Metadata;
import l9.m;
import nc.a0;
import nc.j0;
import p9.d;
import r9.c;
import r9.e;
import r9.i;
import ud.d0;
import x9.p;

@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001Bk\b\u0007\u0012\b\b\u0001\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0001\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0001\u0010\u0007\u001a\u00020\u0006\u0012\b\b\u0001\u0010\b\u001a\u00020\u0006\u0012\b\b\u0001\u0010\t\u001a\u00020\u0006\u0012\b\b\u0001\u0010\n\u001a\u00020\u0006\u0012\b\b\u0001\u0010\f\u001a\u00020\u000b\u0012\b\b\u0001\u0010\r\u001a\u00020\u000b\u0012\b\b\u0001\u0010\u000e\u001a\u00020\u000b\u0012\u0006\u0010\u0010\u001a\u00020\u000f¢\u0006\u0004\b\u0011\u0010\u0012¨\u0006\u0013"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/common/worker/otp/UpdateTokenWorker;", "Landroidx/work/CoroutineWorker;", "Landroid/content/Context;", "appContext", "Landroidx/work/WorkerParameters;", "params", "Lud/d0;", "apiClientSession", "apiClientLogin", "apiClientRegister", "apiOTPClient", "", "appVersion", "appLanguage", "appMode", "Landroid/content/SharedPreferences$Editor;", "sharedPreferencesEditor", "<init>", "(Landroid/content/Context;Landroidx/work/WorkerParameters;Lud/d0;Lud/d0;Lud/d0;Lud/d0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)V", "common-worker_release"}, k = 1, mv = {1, 8, 0})
/* loaded from: classes3.dex */
public final class UpdateTokenWorker extends CoroutineWorker {

    /* renamed from: a, reason: collision with root package name */
    public final Context f16089a;

    /* renamed from: b, reason: collision with root package name */
    public final d0 f16090b;

    /* renamed from: c, reason: collision with root package name */
    public final String f16091c;

    /* renamed from: d, reason: collision with root package name */
    public final String f16092d;

    /* renamed from: e, reason: collision with root package name */
    public final String f16093e;

    @e(c = "tr.gov.turkiye.edevlet.kapisi.common.worker.otp.UpdateTokenWorker", f = "UpdateTokenWorker.kt", l = {31}, m = "doWork")
    public static final class a extends c {

        /* renamed from: a, reason: collision with root package name */
        public /* synthetic */ Object f16094a;

        /* renamed from: c, reason: collision with root package name */
        public int f16096c;

        public a(d<? super a> dVar) {
            super(dVar);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) {
            this.f16094a = obj;
            this.f16096c |= Integer.MIN_VALUE;
            return UpdateTokenWorker.this.doWork(this);
        }
    }

    @e(c = "tr.gov.turkiye.edevlet.kapisi.common.worker.otp.UpdateTokenWorker$doWork$2", f = "UpdateTokenWorker.kt", l = {32}, m = "invokeSuspend")
    public static final class b extends i implements p<a0, d<? super ListenableWorker.Result>, Object> {

        /* renamed from: a, reason: collision with root package name */
        public int f16097a;

        @e(c = "tr.gov.turkiye.edevlet.kapisi.common.worker.otp.UpdateTokenWorker$doWork$2$1", f = "UpdateTokenWorker.kt", l = {}, m = "invokeSuspend")
        public static final class a extends i implements p<a0, d<? super ListenableWorker.Result>, Object> {

            /* renamed from: a, reason: collision with root package name */
            public final /* synthetic */ UpdateTokenWorker f16099a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(UpdateTokenWorker updateTokenWorker, d<? super a> dVar) {
                super(2, dVar);
                this.f16099a = updateTokenWorker;
            }

            @Override // r9.a
            public final d<m> create(Object obj, d<?> dVar) {
                return new a(this.f16099a, dVar);
            }

            @Override // x9.p
            /* renamed from: invoke */
            public final Object mo7invoke(a0 a0Var, d<? super ListenableWorker.Result> dVar) {
                return ((a) create(a0Var, dVar)).invokeSuspend(m.f9594a);
            }

            /* JADX WARN: Removed duplicated region for block: B:26:0x008a A[Catch: Exception -> 0x009a, TryCatch #0 {Exception -> 0x009a, blocks: (B:3:0x0005, B:5:0x0022, B:12:0x0030, B:16:0x0039, B:21:0x0071, B:23:0x0075, B:25:0x0085, B:27:0x008f, B:30:0x0094, B:31:0x0099, B:20:0x0069, B:26:0x008a, B:17:0x0055), top: B:35:0x0005, inners: #1 }] */
            @Override // r9.a
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final java.lang.Object invokeSuspend(java.lang.Object r10) throws java.lang.Throwable {
                /*
                    r9 = this;
                    tr.gov.turkiye.edevlet.kapisi.common.worker.otp.UpdateTokenWorker r0 = r9.f16099a
                    c5.w.F(r10)
                    androidx.work.Data r10 = r0.getInputData()     // Catch: java.lang.Exception -> L9a
                    java.lang.String r1 = "token"
                    java.lang.String r3 = r10.getString(r1)     // Catch: java.lang.Exception -> L9a
                    android.content.Context r10 = r0.f16089a     // Catch: java.lang.Exception -> L9a
                    java.lang.String r1 = "settings"
                    r2 = 0
                    android.content.SharedPreferences r10 = r10.getSharedPreferences(r1, r2)     // Catch: java.lang.Exception -> L9a
                    java.lang.String r1 = "did"
                    r4 = 0
                    java.lang.String r4 = r10.getString(r1, r4)     // Catch: java.lang.Exception -> L9a
                    r10 = 1
                    if (r3 == 0) goto L2b
                    int r1 = r3.length()     // Catch: java.lang.Exception -> L9a
                    if (r1 != 0) goto L29
                    goto L2b
                L29:
                    r1 = 0
                    goto L2c
                L2b:
                    r1 = 1
                L2c:
                    if (r1 != 0) goto L8a
                    if (r4 == 0) goto L36
                    int r1 = r4.length()     // Catch: java.lang.Exception -> L9a
                    if (r1 != 0) goto L37
                L36:
                    r2 = 1
                L37:
                    if (r2 != 0) goto L8a
                    ud.d0 r10 = r0.f16090b     // Catch: java.lang.Exception -> L9a
                    java.lang.Class<tr.gov.turkiye.edevlet.kapisi.data.otp.TwoFactorAuthAPI> r1 = tr.gov.turkiye.edevlet.kapisi.data.otp.TwoFactorAuthAPI.class
                    java.lang.Object r10 = r10.b(r1)     // Catch: java.lang.Exception -> L9a
                    java.lang.String r1 = "apiOTPClient.create(TwoFactorAuthAPI::class.java)"
                    kotlin.jvm.internal.h.e(r10, r1)     // Catch: java.lang.Exception -> L9a
                    r2 = r10
                    tr.gov.turkiye.edevlet.kapisi.data.otp.TwoFactorAuthAPI r2 = (tr.gov.turkiye.edevlet.kapisi.data.otp.TwoFactorAuthAPI) r2     // Catch: java.lang.Exception -> L9a
                    java.lang.String r5 = "android"
                    java.lang.String r6 = r0.f16091c     // Catch: java.lang.Exception -> L9a
                    java.lang.String r7 = r0.f16092d     // Catch: java.lang.Exception -> L9a
                    java.lang.String r8 = r0.f16093e     // Catch: java.lang.Exception -> L9a
                    ud.b r10 = r2.updatePushToken(r3, r4, r5, r6, r7, r8)     // Catch: java.lang.Exception -> L9a
                    ud.c0 r10 = r10.execute()     // Catch: java.lang.Exception -> L68
                    tr.gov.turkiye.edevlet.kapisi.data.extension.Success r0 = new tr.gov.turkiye.edevlet.kapisi.data.extension.Success     // Catch: java.lang.Exception -> L68
                    java.lang.String r1 = "response"
                    kotlin.jvm.internal.h.e(r10, r1)     // Catch: java.lang.Exception -> L68
                    java.lang.Object r10 = tr.gov.turkiye.edevlet.kapisi.data.extension.RetrofitExtensionsKt.bodyOrThrow(r10)     // Catch: java.lang.Exception -> L68
                    r0.<init>(r10)     // Catch: java.lang.Exception -> L68
                    goto L71
                L68:
                    r10 = move-exception
                    r10.printStackTrace()     // Catch: java.lang.Exception -> L9a
                    tr.gov.turkiye.edevlet.kapisi.data.extension.ErrorResult r0 = new tr.gov.turkiye.edevlet.kapisi.data.extension.ErrorResult     // Catch: java.lang.Exception -> L9a
                    r0.<init>(r10)     // Catch: java.lang.Exception -> L9a
                L71:
                    boolean r10 = r0 instanceof tr.gov.turkiye.edevlet.kapisi.data.extension.Success     // Catch: java.lang.Exception -> L9a
                    if (r10 == 0) goto L8f
                    tr.gov.turkiye.edevlet.kapisi.data.extension.Success r0 = (tr.gov.turkiye.edevlet.kapisi.data.extension.Success) r0     // Catch: java.lang.Exception -> L9a
                    java.lang.Object r10 = r0.getData()     // Catch: java.lang.Exception -> L9a
                    tr.gov.turkiye.edevlet.kapisi.data.otp.TokenUpdateModel r10 = (tr.gov.turkiye.edevlet.kapisi.data.otp.TokenUpdateModel) r10     // Catch: java.lang.Exception -> L9a
                    tr.gov.turkiye.edevlet.kapisi.data.extension.ServiceResult r10 = tr.gov.turkiye.edevlet.kapisi.data.extension.ServiceListExtensionKt.completeRequest(r10)     // Catch: java.lang.Exception -> L9a
                    boolean r10 = r10 instanceof tr.gov.turkiye.edevlet.kapisi.data.extension.SuccessResult     // Catch: java.lang.Exception -> L9a
                    if (r10 == 0) goto L8a
                    androidx.work.ListenableWorker$Result r10 = androidx.work.ListenableWorker.Result.success()     // Catch: java.lang.Exception -> L9a
                    goto L9e
                L8a:
                    androidx.work.ListenableWorker$Result r10 = androidx.work.ListenableWorker.Result.failure()     // Catch: java.lang.Exception -> L9a
                    goto L9e
                L8f:
                    boolean r10 = r0 instanceof tr.gov.turkiye.edevlet.kapisi.data.extension.ErrorResult     // Catch: java.lang.Exception -> L9a
                    if (r10 == 0) goto L94
                    goto L8a
                L94:
                    j7.p r10 = new j7.p     // Catch: java.lang.Exception -> L9a
                    r10.<init>()     // Catch: java.lang.Exception -> L9a
                    throw r10     // Catch: java.lang.Exception -> L9a
                L9a:
                    androidx.work.ListenableWorker$Result r10 = androidx.work.ListenableWorker.Result.failure()
                L9e:
                    java.lang.String r0 = "try {\n                va…t.failure()\n            }"
                    kotlin.jvm.internal.h.e(r10, r0)
                    return r10
                */
                throw new UnsupportedOperationException("Method not decompiled: tr.gov.turkiye.edevlet.kapisi.common.worker.otp.UpdateTokenWorker.b.a.invokeSuspend(java.lang.Object):java.lang.Object");
            }
        }

        public b(d<? super b> dVar) {
            super(2, dVar);
        }

        @Override // r9.a
        public final d<m> create(Object obj, d<?> dVar) {
            return UpdateTokenWorker.this.new b(dVar);
        }

        @Override // x9.p
        /* renamed from: invoke */
        public final Object mo7invoke(a0 a0Var, d<? super ListenableWorker.Result> dVar) {
            return ((b) create(a0Var, dVar)).invokeSuspend(m.f9594a);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            q9.a aVar = q9.a.COROUTINE_SUSPENDED;
            int r12 = this.f16097a;
            if (r12 == 0) {
                w.F(obj);
                kotlinx.coroutines.scheduling.b bVar = j0.f10809b;
                a aVar2 = new a(UpdateTokenWorker.this, null);
                this.f16097a = 1;
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
    public UpdateTokenWorker(Context context, WorkerParameters workerParameters, d0 d0Var, d0 d0Var2, d0 d0Var3, d0 d0Var4, String str, String str2, String str3, SharedPreferences.Editor editor) {
        super(context, workerParameters);
        androidx.room.util.a.h(context, "appContext", workerParameters, "params", d0Var, "apiClientSession", d0Var2, "apiClientLogin", d0Var3, "apiClientRegister", d0Var4, "apiOTPClient", str, "appVersion", str2, "appLanguage", str3, "appMode", editor, "sharedPreferencesEditor");
        this.f16089a = context;
        this.f16090b = d0Var4;
        this.f16091c = str;
        this.f16092d = str2;
        this.f16093e = str3;
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
            boolean r0 = r5 instanceof tr.gov.turkiye.edevlet.kapisi.common.worker.otp.UpdateTokenWorker.a
            if (r0 == 0) goto L13
            r0 = r5
            tr.gov.turkiye.edevlet.kapisi.common.worker.otp.UpdateTokenWorker$a r0 = (tr.gov.turkiye.edevlet.kapisi.common.worker.otp.UpdateTokenWorker.a) r0
            int r1 = r0.f16096c
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f16096c = r1
            goto L18
        L13:
            tr.gov.turkiye.edevlet.kapisi.common.worker.otp.UpdateTokenWorker$a r0 = new tr.gov.turkiye.edevlet.kapisi.common.worker.otp.UpdateTokenWorker$a
            r0.<init>(r5)
        L18:
            java.lang.Object r5 = r0.f16094a
            q9.a r1 = q9.a.COROUTINE_SUSPENDED
            int r2 = r0.f16096c
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
            tr.gov.turkiye.edevlet.kapisi.common.worker.otp.UpdateTokenWorker$b r5 = new tr.gov.turkiye.edevlet.kapisi.common.worker.otp.UpdateTokenWorker$b
            r2 = 0
            r5.<init>(r2)
            r0.f16096c = r3
            java.lang.Object r5 = b8.f.t(r5, r0)
            if (r5 != r1) goto L41
            return r1
        L41:
            java.lang.String r0 = "override suspend fun doW…        }\n        }\n    }"
            kotlin.jvm.internal.h.e(r5, r0)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: tr.gov.turkiye.edevlet.kapisi.common.worker.otp.UpdateTokenWorker.doWork(p9.d):java.lang.Object");
    }
}
