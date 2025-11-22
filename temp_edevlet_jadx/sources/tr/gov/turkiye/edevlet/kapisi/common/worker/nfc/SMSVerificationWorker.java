package tr.gov.turkiye.edevlet.kapisi.common.worker.nfc;

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
import tr.gov.turkiye.edevlet.kapisi.data.extension.ErrorResult;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Result;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Success;
import tr.gov.turkiye.edevlet.kapisi.data.nfc.SMSVerificationModel;
import tr.gov.turkiye.edevlet.kapisi.data.nfc.SMSVerifyOperation;
import ud.d0;
import x9.p;

@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001Bk\b\u0007\u0012\b\b\u0001\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0001\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0001\u0010\u0007\u001a\u00020\u0006\u0012\b\b\u0001\u0010\b\u001a\u00020\u0006\u0012\b\b\u0001\u0010\t\u001a\u00020\u0006\u0012\b\b\u0001\u0010\n\u001a\u00020\u0006\u0012\b\b\u0001\u0010\f\u001a\u00020\u000b\u0012\b\b\u0001\u0010\r\u001a\u00020\u000b\u0012\b\b\u0001\u0010\u000e\u001a\u00020\u000b\u0012\u0006\u0010\u0010\u001a\u00020\u000f¢\u0006\u0004\b\u0011\u0010\u0012¨\u0006\u0013"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/common/worker/nfc/SMSVerificationWorker;", "Landroidx/work/CoroutineWorker;", "Landroid/content/Context;", "appContext", "Landroidx/work/WorkerParameters;", "params", "Lud/d0;", "apiClientSession", "apiClientLogin", "apiClientRegister", "apiOTPClient", "", "appVersion", "appLanguage", "appMode", "Landroid/content/SharedPreferences$Editor;", "sharedPreferencesEditor", "<init>", "(Landroid/content/Context;Landroidx/work/WorkerParameters;Lud/d0;Lud/d0;Lud/d0;Lud/d0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)V", "common-worker_release"}, k = 1, mv = {1, 8, 0})
/* loaded from: classes3.dex */
public final class SMSVerificationWorker extends CoroutineWorker {

    /* renamed from: a, reason: collision with root package name */
    public final d0 f16021a;

    /* renamed from: b, reason: collision with root package name */
    public final String f16022b;

    /* renamed from: c, reason: collision with root package name */
    public final String f16023c;

    /* renamed from: d, reason: collision with root package name */
    public final String f16024d;

    @e(c = "tr.gov.turkiye.edevlet.kapisi.common.worker.nfc.SMSVerificationWorker", f = "SMSVerificationWorker.kt", l = {33}, m = "doWork")
    public static final class a extends c {

        /* renamed from: a, reason: collision with root package name */
        public /* synthetic */ Object f16025a;

        /* renamed from: c, reason: collision with root package name */
        public int f16027c;

        public a(d<? super a> dVar) {
            super(dVar);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) {
            this.f16025a = obj;
            this.f16027c |= Integer.MIN_VALUE;
            return SMSVerificationWorker.this.doWork(this);
        }
    }

    @e(c = "tr.gov.turkiye.edevlet.kapisi.common.worker.nfc.SMSVerificationWorker$doWork$2", f = "SMSVerificationWorker.kt", l = {34}, m = "invokeSuspend")
    public static final class b extends i implements p<a0, d<? super ListenableWorker.Result>, Object> {

        /* renamed from: a, reason: collision with root package name */
        public int f16028a;

        @e(c = "tr.gov.turkiye.edevlet.kapisi.common.worker.nfc.SMSVerificationWorker$doWork$2$1", f = "SMSVerificationWorker.kt", l = {55}, m = "invokeSuspend")
        public static final class a extends i implements p<a0, d<? super ListenableWorker.Result>, Object> {

            /* renamed from: a, reason: collision with root package name */
            public int f16030a;

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ SMSVerificationWorker f16031b;

            @e(c = "tr.gov.turkiye.edevlet.kapisi.common.worker.nfc.SMSVerificationWorker$doWork$2$1$1", f = "SMSVerificationWorker.kt", l = {}, m = "invokeSuspend")
            /* renamed from: tr.gov.turkiye.edevlet.kapisi.common.worker.nfc.SMSVerificationWorker$b$a$a, reason: collision with other inner class name */
            public static final class C0263a extends i implements p<a0, d<? super m>, Object> {

                /* renamed from: a, reason: collision with root package name */
                public final /* synthetic */ Result<SMSVerificationModel> f16032a;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public C0263a(Result<SMSVerificationModel> result, d<? super C0263a> dVar) {
                    super(2, dVar);
                    this.f16032a = result;
                }

                @Override // r9.a
                public final d<m> create(Object obj, d<?> dVar) {
                    return new C0263a(this.f16032a, dVar);
                }

                @Override // x9.p
                /* renamed from: invoke */
                public final Object mo7invoke(a0 a0Var, d<? super m> dVar) {
                    return ((C0263a) create(a0Var, dVar)).invokeSuspend(m.f9594a);
                }

                @Override // r9.a
                public final Object invokeSuspend(Object obj) throws Throwable {
                    w.F(obj);
                    qd.b.b().i(new SMSVerifyOperation(true, ((SMSVerificationModel) ((Success) this.f16032a).getData()).getSmsCodeVerifyData(), null));
                    return m.f9594a;
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(SMSVerificationWorker sMSVerificationWorker, d<? super a> dVar) {
                super(2, dVar);
                this.f16031b = sMSVerificationWorker;
            }

            @Override // r9.a
            public final d<m> create(Object obj, d<?> dVar) {
                return new a(this.f16031b, dVar);
            }

            @Override // x9.p
            /* renamed from: invoke */
            public final Object mo7invoke(a0 a0Var, d<? super ListenableWorker.Result> dVar) {
                return ((a) create(a0Var, dVar)).invokeSuspend(m.f9594a);
            }

            /* JADX WARN: Removed duplicated region for block: B:77:0x0145 A[Catch: Exception -> 0x0010, TRY_LEAVE, TryCatch #0 {Exception -> 0x0010, blocks: (B:5:0x000b, B:46:0x00c7, B:12:0x001e, B:14:0x003f, B:21:0x004d, B:28:0x005b, B:34:0x0067, B:39:0x009f, B:41:0x00a3, B:43:0x00b5, B:47:0x00cd, B:49:0x00dc, B:51:0x00e2, B:53:0x00f0, B:55:0x00f6, B:62:0x0104, B:68:0x010f, B:69:0x0119, B:71:0x0128, B:70:0x011d, B:72:0x012d, B:74:0x0131, B:75:0x013f, B:76:0x0144, B:38:0x0097, B:77:0x0145, B:35:0x0083), top: B:82:0x0007, inners: #1 }] */
            @Override // r9.a
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final java.lang.Object invokeSuspend(java.lang.Object r13) throws java.lang.Throwable {
                /*
                    Method dump skipped, instructions count: 365
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: tr.gov.turkiye.edevlet.kapisi.common.worker.nfc.SMSVerificationWorker.b.a.invokeSuspend(java.lang.Object):java.lang.Object");
            }
        }

        public b(d<? super b> dVar) {
            super(2, dVar);
        }

        @Override // r9.a
        public final d<m> create(Object obj, d<?> dVar) {
            return SMSVerificationWorker.this.new b(dVar);
        }

        @Override // x9.p
        /* renamed from: invoke */
        public final Object mo7invoke(a0 a0Var, d<? super ListenableWorker.Result> dVar) {
            return ((b) create(a0Var, dVar)).invokeSuspend(m.f9594a);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            q9.a aVar = q9.a.COROUTINE_SUSPENDED;
            int r12 = this.f16028a;
            if (r12 == 0) {
                w.F(obj);
                kotlinx.coroutines.scheduling.b bVar = j0.f10809b;
                a aVar2 = new a(SMSVerificationWorker.this, null);
                this.f16028a = 1;
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
    public SMSVerificationWorker(Context context, WorkerParameters workerParameters, d0 d0Var, d0 d0Var2, d0 d0Var3, d0 d0Var4, String str, String str2, String str3, SharedPreferences.Editor editor) {
        super(context, workerParameters);
        androidx.room.util.a.h(context, "appContext", workerParameters, "params", d0Var, "apiClientSession", d0Var2, "apiClientLogin", d0Var3, "apiClientRegister", d0Var4, "apiOTPClient", str, "appVersion", str2, "appLanguage", str3, "appMode", editor, "sharedPreferencesEditor");
        this.f16021a = d0Var2;
        this.f16022b = str;
        this.f16023c = str2;
        this.f16024d = str3;
    }

    public static final void a(SMSVerificationWorker sMSVerificationWorker, ErrorResult errorResult) {
        sMSVerificationWorker.getClass();
        qd.b.b().i(new SMSVerifyOperation(false, null, errorResult));
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
            boolean r0 = r5 instanceof tr.gov.turkiye.edevlet.kapisi.common.worker.nfc.SMSVerificationWorker.a
            if (r0 == 0) goto L13
            r0 = r5
            tr.gov.turkiye.edevlet.kapisi.common.worker.nfc.SMSVerificationWorker$a r0 = (tr.gov.turkiye.edevlet.kapisi.common.worker.nfc.SMSVerificationWorker.a) r0
            int r1 = r0.f16027c
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f16027c = r1
            goto L18
        L13:
            tr.gov.turkiye.edevlet.kapisi.common.worker.nfc.SMSVerificationWorker$a r0 = new tr.gov.turkiye.edevlet.kapisi.common.worker.nfc.SMSVerificationWorker$a
            r0.<init>(r5)
        L18:
            java.lang.Object r5 = r0.f16025a
            q9.a r1 = q9.a.COROUTINE_SUSPENDED
            int r2 = r0.f16027c
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
            tr.gov.turkiye.edevlet.kapisi.common.worker.nfc.SMSVerificationWorker$b r5 = new tr.gov.turkiye.edevlet.kapisi.common.worker.nfc.SMSVerificationWorker$b
            r2 = 0
            r5.<init>(r2)
            r0.f16027c = r3
            java.lang.Object r5 = b8.f.t(r5, r0)
            if (r5 != r1) goto L41
            return r1
        L41:
            java.lang.String r0 = "override suspend fun doW…        }\n        }\n    }"
            kotlin.jvm.internal.h.e(r5, r0)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: tr.gov.turkiye.edevlet.kapisi.common.worker.nfc.SMSVerificationWorker.doWork(p9.d):java.lang.Object");
    }
}
