package tr.gov.turkiye.edevlet.kapisi.common.worker.barcode;

import android.content.Context;
import android.content.SharedPreferences;
import androidx.work.CoroutineWorker;
import androidx.work.ListenableWorker;
import androidx.work.WorkerParameters;
import c5.v;
import c5.w;
import java.util.List;
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
import tr.gov.turkiye.edevlet.kapisi.data.barcode.BarcodeVerifyAPI;
import tr.gov.turkiye.edevlet.kapisi.data.barcode.BarcodeVerifyModel;
import tr.gov.turkiye.edevlet.kapisi.data.extension.ErrorResult;
import tr.gov.turkiye.edevlet.kapisi.data.extension.LoginException;
import tr.gov.turkiye.edevlet.kapisi.data.extension.LoginFail;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Result;
import tr.gov.turkiye.edevlet.kapisi.data.extension.RetrofitExtensionsKt;
import tr.gov.turkiye.edevlet.kapisi.data.extension.ServiceErrorException;
import tr.gov.turkiye.edevlet.kapisi.data.extension.ServiceErrorExceptionWithMessage;
import tr.gov.turkiye.edevlet.kapisi.data.extension.ServiceListExtensionKt;
import tr.gov.turkiye.edevlet.kapisi.data.extension.ServiceResult;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Success;
import tr.gov.turkiye.edevlet.kapisi.data.extension.SuccessResult;
import ud.c0;
import ud.d0;
import x9.p;

@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001Bk\b\u0007\u0012\b\b\u0001\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0001\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0001\u0010\u0007\u001a\u00020\u0006\u0012\b\b\u0001\u0010\b\u001a\u00020\u0006\u0012\b\b\u0001\u0010\t\u001a\u00020\u0006\u0012\b\b\u0001\u0010\n\u001a\u00020\u0006\u0012\b\b\u0001\u0010\f\u001a\u00020\u000b\u0012\b\b\u0001\u0010\r\u001a\u00020\u000b\u0012\b\b\u0001\u0010\u000e\u001a\u00020\u000b\u0012\u0006\u0010\u0010\u001a\u00020\u000f¢\u0006\u0004\b\u0011\u0010\u0012¨\u0006\u0013"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/common/worker/barcode/BarcodeVerifyWorker;", "Landroidx/work/CoroutineWorker;", "Landroid/content/Context;", "appContext", "Landroidx/work/WorkerParameters;", "params", "Lud/d0;", "apiClientSession", "apiClientLogin", "apiClientRegister", "apiOTPClient", "", "appVersion", "appLanguage", "appMode", "Landroid/content/SharedPreferences$Editor;", "sharedPreferencesEditor", "<init>", "(Landroid/content/Context;Landroidx/work/WorkerParameters;Lud/d0;Lud/d0;Lud/d0;Lud/d0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)V", "common-worker_release"}, k = 1, mv = {1, 8, 0})
/* loaded from: classes3.dex */
public final class BarcodeVerifyWorker extends CoroutineWorker {

    /* renamed from: a, reason: collision with root package name */
    public final d0 f15909a;

    /* renamed from: b, reason: collision with root package name */
    public final String f15910b;

    /* renamed from: c, reason: collision with root package name */
    public final String f15911c;

    /* renamed from: d, reason: collision with root package name */
    public final String f15912d;

    @e(c = "tr.gov.turkiye.edevlet.kapisi.common.worker.barcode.BarcodeVerifyWorker", f = "BarcodeVerifyWorker.kt", l = {32}, m = "doWork")
    public static final class a extends c {

        /* renamed from: a, reason: collision with root package name */
        public /* synthetic */ Object f15913a;

        /* renamed from: c, reason: collision with root package name */
        public int f15915c;

        public a(d<? super a> dVar) {
            super(dVar);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) {
            this.f15913a = obj;
            this.f15915c |= Integer.MIN_VALUE;
            return BarcodeVerifyWorker.this.doWork(this);
        }
    }

    @e(c = "tr.gov.turkiye.edevlet.kapisi.common.worker.barcode.BarcodeVerifyWorker$doWork$2", f = "BarcodeVerifyWorker.kt", l = {33}, m = "invokeSuspend")
    public static final class b extends i implements p<a0, d<? super ListenableWorker.Result>, Object> {

        /* renamed from: a, reason: collision with root package name */
        public int f15916a;

        @e(c = "tr.gov.turkiye.edevlet.kapisi.common.worker.barcode.BarcodeVerifyWorker$doWork$2$1", f = "BarcodeVerifyWorker.kt", l = {50}, m = "invokeSuspend")
        public static final class a extends i implements p<a0, d<? super ListenableWorker.Result>, Object> {

            /* renamed from: a, reason: collision with root package name */
            public int f15918a;

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ BarcodeVerifyWorker f15919b;

            @e(c = "tr.gov.turkiye.edevlet.kapisi.common.worker.barcode.BarcodeVerifyWorker$doWork$2$1$1", f = "BarcodeVerifyWorker.kt", l = {}, m = "invokeSuspend")
            /* renamed from: tr.gov.turkiye.edevlet.kapisi.common.worker.barcode.BarcodeVerifyWorker$b$a$a, reason: collision with other inner class name */
            public static final class C0258a extends i implements p<a0, d<? super m>, Object> {

                /* renamed from: a, reason: collision with root package name */
                public final /* synthetic */ Result<BarcodeVerifyModel> f15920a;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public C0258a(Result<BarcodeVerifyModel> result, d<? super C0258a> dVar) {
                    super(2, dVar);
                    this.f15920a = result;
                }

                @Override // r9.a
                public final d<m> create(Object obj, d<?> dVar) {
                    return new C0258a(this.f15920a, dVar);
                }

                @Override // x9.p
                /* renamed from: invoke */
                public final Object mo7invoke(a0 a0Var, d<? super m> dVar) {
                    return ((C0258a) create(a0Var, dVar)).invokeSuspend(m.f9594a);
                }

                @Override // r9.a
                public final Object invokeSuspend(Object obj) throws Throwable {
                    w.F(obj);
                    qd.b.b().i(new me.c(true, ((BarcodeVerifyModel) ((Success) this.f15920a).getData()).getBarcodeData(), null));
                    return m.f9594a;
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(BarcodeVerifyWorker barcodeVerifyWorker, d<? super a> dVar) {
                super(2, dVar);
                this.f15919b = barcodeVerifyWorker;
            }

            @Override // r9.a
            public final d<m> create(Object obj, d<?> dVar) {
                return new a(this.f15919b, dVar);
            }

            @Override // x9.p
            /* renamed from: invoke */
            public final Object mo7invoke(a0 a0Var, d<? super ListenableWorker.Result> dVar) {
                return ((a) create(a0Var, dVar)).invokeSuspend(m.f9594a);
            }

            @Override // r9.a
            public final Object invokeSuspend(Object obj) throws Throwable {
                ListenableWorker.Result resultFailure;
                ErrorResult errorResult;
                Result errorResult2;
                q9.a aVar = q9.a.COROUTINE_SUSPENDED;
                int r12 = this.f15918a;
                boolean z10 = true;
                BarcodeVerifyWorker barcodeVerifyWorker = this.f15919b;
                try {
                } catch (Exception unused) {
                    BarcodeVerifyWorker.a(barcodeVerifyWorker, new ErrorResult(new ServiceErrorException()));
                    resultFailure = ListenableWorker.Result.failure();
                }
                if (r12 == 0) {
                    w.F(obj);
                    String string = barcodeVerifyWorker.getInputData().getString("qrContent");
                    if (string == null || string.length() == 0) {
                        errorResult = new ErrorResult(new ServiceErrorException());
                    } else {
                        Object objB = barcodeVerifyWorker.f15909a.b(BarcodeVerifyAPI.class);
                        h.e(objB, "apiClientSession.create(…odeVerifyAPI::class.java)");
                        try {
                            c0<BarcodeVerifyModel> response = ((BarcodeVerifyAPI) objB).verifyDocument(string, "android", barcodeVerifyWorker.f15910b, barcodeVerifyWorker.f15911c, barcodeVerifyWorker.f15912d).execute();
                            h.e(response, "response");
                            errorResult2 = new Success(RetrofitExtensionsKt.bodyOrThrow(response));
                        } catch (Exception e10) {
                            e10.printStackTrace();
                            errorResult2 = new ErrorResult(e10);
                        }
                        if (errorResult2 instanceof Success) {
                            ServiceResult<BarcodeVerifyModel> serviceResultCompleteRequest = ServiceListExtensionKt.completeRequest((BarcodeVerifyModel) ((Success) errorResult2).getData());
                            if (serviceResultCompleteRequest instanceof SuccessResult) {
                                kotlinx.coroutines.scheduling.c cVar = j0.f10808a;
                                k1 k1Var = kotlinx.coroutines.internal.m.f9167a;
                                C0258a c0258a = new C0258a(errorResult2, null);
                                this.f15918a = 1;
                                if (v.N(k1Var, c0258a, this) == aVar) {
                                    return aVar;
                                }
                            } else if (serviceResultCompleteRequest instanceof LoginFail) {
                                errorResult = new ErrorResult(new LoginException());
                            } else {
                                List<String> messageArr = ((BarcodeVerifyModel) ((Success) errorResult2).getData()).getMessageArr();
                                String str = messageArr != null ? messageArr.get(0) : null;
                                if (str != null && str.length() != 0) {
                                    z10 = false;
                                }
                                errorResult = z10 ? new ErrorResult(new ServiceErrorException()) : new ErrorResult(new ServiceErrorExceptionWithMessage(str));
                            }
                        } else {
                            if (!(errorResult2 instanceof ErrorResult)) {
                                throw new j7.p();
                            }
                            errorResult = new ErrorResult(new ServiceErrorException());
                        }
                    }
                    BarcodeVerifyWorker.a(barcodeVerifyWorker, errorResult);
                    resultFailure = ListenableWorker.Result.failure();
                    h.e(resultFailure, "try {\n                va…t.failure()\n            }");
                    return resultFailure;
                }
                if (r12 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                w.F(obj);
                resultFailure = ListenableWorker.Result.success();
                h.e(resultFailure, "try {\n                va…t.failure()\n            }");
                return resultFailure;
            }
        }

        public b(d<? super b> dVar) {
            super(2, dVar);
        }

        @Override // r9.a
        public final d<m> create(Object obj, d<?> dVar) {
            return BarcodeVerifyWorker.this.new b(dVar);
        }

        @Override // x9.p
        /* renamed from: invoke */
        public final Object mo7invoke(a0 a0Var, d<? super ListenableWorker.Result> dVar) {
            return ((b) create(a0Var, dVar)).invokeSuspend(m.f9594a);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            q9.a aVar = q9.a.COROUTINE_SUSPENDED;
            int r12 = this.f15916a;
            if (r12 == 0) {
                w.F(obj);
                kotlinx.coroutines.scheduling.b bVar = j0.f10809b;
                a aVar2 = new a(BarcodeVerifyWorker.this, null);
                this.f15916a = 1;
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
    public BarcodeVerifyWorker(Context context, WorkerParameters workerParameters, d0 d0Var, d0 d0Var2, d0 d0Var3, d0 d0Var4, String str, String str2, String str3, SharedPreferences.Editor editor) {
        super(context, workerParameters);
        androidx.room.util.a.h(context, "appContext", workerParameters, "params", d0Var, "apiClientSession", d0Var2, "apiClientLogin", d0Var3, "apiClientRegister", d0Var4, "apiOTPClient", str, "appVersion", str2, "appLanguage", str3, "appMode", editor, "sharedPreferencesEditor");
        this.f15909a = d0Var;
        this.f15910b = str;
        this.f15911c = str2;
        this.f15912d = str3;
    }

    public static final void a(BarcodeVerifyWorker barcodeVerifyWorker, ErrorResult errorResult) {
        barcodeVerifyWorker.getClass();
        qd.b.b().i(new me.c(false, null, errorResult));
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
            boolean r0 = r5 instanceof tr.gov.turkiye.edevlet.kapisi.common.worker.barcode.BarcodeVerifyWorker.a
            if (r0 == 0) goto L13
            r0 = r5
            tr.gov.turkiye.edevlet.kapisi.common.worker.barcode.BarcodeVerifyWorker$a r0 = (tr.gov.turkiye.edevlet.kapisi.common.worker.barcode.BarcodeVerifyWorker.a) r0
            int r1 = r0.f15915c
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f15915c = r1
            goto L18
        L13:
            tr.gov.turkiye.edevlet.kapisi.common.worker.barcode.BarcodeVerifyWorker$a r0 = new tr.gov.turkiye.edevlet.kapisi.common.worker.barcode.BarcodeVerifyWorker$a
            r0.<init>(r5)
        L18:
            java.lang.Object r5 = r0.f15913a
            q9.a r1 = q9.a.COROUTINE_SUSPENDED
            int r2 = r0.f15915c
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
            tr.gov.turkiye.edevlet.kapisi.common.worker.barcode.BarcodeVerifyWorker$b r5 = new tr.gov.turkiye.edevlet.kapisi.common.worker.barcode.BarcodeVerifyWorker$b
            r2 = 0
            r5.<init>(r2)
            r0.f15915c = r3
            java.lang.Object r5 = b8.f.t(r5, r0)
            if (r5 != r1) goto L41
            return r1
        L41:
            java.lang.String r0 = "override suspend fun doW…        }\n        }\n    }"
            kotlin.jvm.internal.h.e(r5, r0)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: tr.gov.turkiye.edevlet.kapisi.common.worker.barcode.BarcodeVerifyWorker.doWork(p9.d):java.lang.Object");
    }
}
