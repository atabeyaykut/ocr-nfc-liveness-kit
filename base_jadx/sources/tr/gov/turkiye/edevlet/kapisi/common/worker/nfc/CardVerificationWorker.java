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
import tr.gov.turkiye.edevlet.kapisi.data.nfc.CardVerificationModel;
import tr.gov.turkiye.edevlet.kapisi.data.nfc.IdScanOperation;
import ud.d0;
import x9.p;

@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001Bk\b\u0007\u0012\b\b\u0001\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0001\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0001\u0010\u0007\u001a\u00020\u0006\u0012\b\b\u0001\u0010\b\u001a\u00020\u0006\u0012\b\b\u0001\u0010\t\u001a\u00020\u0006\u0012\b\b\u0001\u0010\n\u001a\u00020\u0006\u0012\b\b\u0001\u0010\f\u001a\u00020\u000b\u0012\b\b\u0001\u0010\r\u001a\u00020\u000b\u0012\b\b\u0001\u0010\u000e\u001a\u00020\u000b\u0012\u0006\u0010\u0010\u001a\u00020\u000f¢\u0006\u0004\b\u0011\u0010\u0012¨\u0006\u0013"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/common/worker/nfc/CardVerificationWorker;", "Landroidx/work/CoroutineWorker;", "Landroid/content/Context;", "appContext", "Landroidx/work/WorkerParameters;", "params", "Lud/d0;", "apiClientSession", "apiClientLogin", "apiClientRegister", "apiOTPClient", "", "appVersion", "appLanguage", "appMode", "Landroid/content/SharedPreferences$Editor;", "sharedPreferencesEditor", "<init>", "(Landroid/content/Context;Landroidx/work/WorkerParameters;Lud/d0;Lud/d0;Lud/d0;Lud/d0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)V", "common-worker_release"}, k = 1, mv = {1, 8, 0})
/* loaded from: classes3.dex */
public final class CardVerificationWorker extends CoroutineWorker {

    /* renamed from: a, reason: collision with root package name */
    public final d0 f15997a;

    /* renamed from: b, reason: collision with root package name */
    public final String f15998b;

    /* renamed from: c, reason: collision with root package name */
    public final String f15999c;

    /* renamed from: d, reason: collision with root package name */
    public final String f16000d;

    @e(c = "tr.gov.turkiye.edevlet.kapisi.common.worker.nfc.CardVerificationWorker", f = "CardVerificationWorker.kt", l = {33}, m = "doWork")
    public static final class a extends c {

        /* renamed from: a, reason: collision with root package name */
        public /* synthetic */ Object f16001a;

        /* renamed from: c, reason: collision with root package name */
        public int f16003c;

        public a(d<? super a> dVar) {
            super(dVar);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) {
            this.f16001a = obj;
            this.f16003c |= Integer.MIN_VALUE;
            return CardVerificationWorker.this.doWork(this);
        }
    }

    @e(c = "tr.gov.turkiye.edevlet.kapisi.common.worker.nfc.CardVerificationWorker$doWork$2", f = "CardVerificationWorker.kt", l = {34}, m = "invokeSuspend")
    public static final class b extends i implements p<a0, d<? super ListenableWorker.Result>, Object> {

        /* renamed from: a, reason: collision with root package name */
        public int f16004a;

        @e(c = "tr.gov.turkiye.edevlet.kapisi.common.worker.nfc.CardVerificationWorker$doWork$2$1", f = "CardVerificationWorker.kt", l = {57}, m = "invokeSuspend")
        public static final class a extends i implements p<a0, d<? super ListenableWorker.Result>, Object> {

            /* renamed from: a, reason: collision with root package name */
            public int f16006a;

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ CardVerificationWorker f16007b;

            @e(c = "tr.gov.turkiye.edevlet.kapisi.common.worker.nfc.CardVerificationWorker$doWork$2$1$1", f = "CardVerificationWorker.kt", l = {}, m = "invokeSuspend")
            /* renamed from: tr.gov.turkiye.edevlet.kapisi.common.worker.nfc.CardVerificationWorker$b$a$a, reason: collision with other inner class name */
            public static final class C0261a extends i implements p<a0, d<? super m>, Object> {

                /* renamed from: a, reason: collision with root package name */
                public final /* synthetic */ Result<CardVerificationModel> f16008a;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public C0261a(Result<CardVerificationModel> result, d<? super C0261a> dVar) {
                    super(2, dVar);
                    this.f16008a = result;
                }

                @Override // r9.a
                public final d<m> create(Object obj, d<?> dVar) {
                    return new C0261a(this.f16008a, dVar);
                }

                @Override // x9.p
                /* renamed from: invoke */
                public final Object mo7invoke(a0 a0Var, d<? super m> dVar) {
                    return ((C0261a) create(a0Var, dVar)).invokeSuspend(m.f9594a);
                }

                @Override // r9.a
                public final Object invokeSuspend(Object obj) throws Throwable {
                    w.F(obj);
                    qd.b.b().i(new IdScanOperation(true, ((CardVerificationModel) ((Success) this.f16008a).getData()).getVerificationData(), null));
                    return m.f9594a;
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(CardVerificationWorker cardVerificationWorker, d<? super a> dVar) {
                super(2, dVar);
                this.f16007b = cardVerificationWorker;
            }

            @Override // r9.a
            public final d<m> create(Object obj, d<?> dVar) {
                return new a(this.f16007b, dVar);
            }

            @Override // x9.p
            /* renamed from: invoke */
            public final Object mo7invoke(a0 a0Var, d<? super ListenableWorker.Result> dVar) {
                return ((a) create(a0Var, dVar)).invokeSuspend(m.f9594a);
            }

            /* JADX WARN: Removed duplicated region for block: B:94:0x018f A[Catch: Exception -> 0x019a, TRY_LEAVE, TryCatch #0 {Exception -> 0x019a, blocks: (B:5:0x000d, B:72:0x0129, B:10:0x001d, B:12:0x0065, B:19:0x0073, B:26:0x0081, B:33:0x008f, B:40:0x009d, B:47:0x00ab, B:54:0x00b9, B:60:0x00c5, B:65:0x0101, B:67:0x0105, B:69:0x0117, B:73:0x012f, B:75:0x0133, B:77:0x0141, B:79:0x0147, B:84:0x0151, B:85:0x015b, B:87:0x016a, B:86:0x015f, B:88:0x016f, B:89:0x017a, B:91:0x017e, B:92:0x0189, B:93:0x018e, B:64:0x00f9, B:94:0x018f, B:61:0x00e5), top: B:99:0x0009, inners: #1 }] */
            @Override // r9.a
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final java.lang.Object invokeSuspend(java.lang.Object r19) throws java.lang.Throwable {
                /*
                    Method dump skipped, instructions count: 433
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: tr.gov.turkiye.edevlet.kapisi.common.worker.nfc.CardVerificationWorker.b.a.invokeSuspend(java.lang.Object):java.lang.Object");
            }
        }

        public b(d<? super b> dVar) {
            super(2, dVar);
        }

        @Override // r9.a
        public final d<m> create(Object obj, d<?> dVar) {
            return CardVerificationWorker.this.new b(dVar);
        }

        @Override // x9.p
        /* renamed from: invoke */
        public final Object mo7invoke(a0 a0Var, d<? super ListenableWorker.Result> dVar) {
            return ((b) create(a0Var, dVar)).invokeSuspend(m.f9594a);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            q9.a aVar = q9.a.COROUTINE_SUSPENDED;
            int r12 = this.f16004a;
            if (r12 == 0) {
                w.F(obj);
                kotlinx.coroutines.scheduling.b bVar = j0.f10809b;
                a aVar2 = new a(CardVerificationWorker.this, null);
                this.f16004a = 1;
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
    public CardVerificationWorker(Context context, WorkerParameters workerParameters, d0 d0Var, d0 d0Var2, d0 d0Var3, d0 d0Var4, String str, String str2, String str3, SharedPreferences.Editor editor) {
        super(context, workerParameters);
        androidx.room.util.a.h(context, "appContext", workerParameters, "params", d0Var, "apiClientSession", d0Var2, "apiClientLogin", d0Var3, "apiClientRegister", d0Var4, "apiOTPClient", str, "appVersion", str2, "appLanguage", str3, "appMode", editor, "sharedPreferencesEditor");
        this.f15997a = d0Var2;
        this.f15998b = str;
        this.f15999c = str2;
        this.f16000d = str3;
    }

    public static final void a(CardVerificationWorker cardVerificationWorker, ErrorResult errorResult) {
        cardVerificationWorker.getClass();
        qd.b.b().i(new IdScanOperation(false, null, errorResult));
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
            boolean r0 = r5 instanceof tr.gov.turkiye.edevlet.kapisi.common.worker.nfc.CardVerificationWorker.a
            if (r0 == 0) goto L13
            r0 = r5
            tr.gov.turkiye.edevlet.kapisi.common.worker.nfc.CardVerificationWorker$a r0 = (tr.gov.turkiye.edevlet.kapisi.common.worker.nfc.CardVerificationWorker.a) r0
            int r1 = r0.f16003c
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f16003c = r1
            goto L18
        L13:
            tr.gov.turkiye.edevlet.kapisi.common.worker.nfc.CardVerificationWorker$a r0 = new tr.gov.turkiye.edevlet.kapisi.common.worker.nfc.CardVerificationWorker$a
            r0.<init>(r5)
        L18:
            java.lang.Object r5 = r0.f16001a
            q9.a r1 = q9.a.COROUTINE_SUSPENDED
            int r2 = r0.f16003c
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
            tr.gov.turkiye.edevlet.kapisi.common.worker.nfc.CardVerificationWorker$b r5 = new tr.gov.turkiye.edevlet.kapisi.common.worker.nfc.CardVerificationWorker$b
            r2 = 0
            r5.<init>(r2)
            r0.f16003c = r3
            java.lang.Object r5 = b8.f.t(r5, r0)
            if (r5 != r1) goto L41
            return r1
        L41:
            java.lang.String r0 = "override suspend fun doW…        }\n        }\n    }"
            kotlin.jvm.internal.h.e(r5, r0)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: tr.gov.turkiye.edevlet.kapisi.common.worker.nfc.CardVerificationWorker.doWork(p9.d):java.lang.Object");
    }
}
