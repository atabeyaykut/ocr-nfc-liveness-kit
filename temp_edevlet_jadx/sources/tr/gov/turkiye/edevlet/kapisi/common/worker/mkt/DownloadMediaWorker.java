package tr.gov.turkiye.edevlet.kapisi.common.worker.mkt;

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

@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001Bk\b\u0007\u0012\b\b\u0001\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0001\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0001\u0010\u0007\u001a\u00020\u0006\u0012\b\b\u0001\u0010\b\u001a\u00020\u0006\u0012\b\b\u0001\u0010\t\u001a\u00020\u0006\u0012\b\b\u0001\u0010\n\u001a\u00020\u0006\u0012\b\b\u0001\u0010\f\u001a\u00020\u000b\u0012\b\b\u0001\u0010\r\u001a\u00020\u000b\u0012\b\b\u0001\u0010\u000e\u001a\u00020\u000b\u0012\u0006\u0010\u0010\u001a\u00020\u000f¢\u0006\u0004\b\u0011\u0010\u0012¨\u0006\u0013"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/common/worker/mkt/DownloadMediaWorker;", "Landroidx/work/CoroutineWorker;", "Landroid/content/Context;", "appContext", "Landroidx/work/WorkerParameters;", "params", "Lud/d0;", "apiClientSession", "apiClientLogin", "apiClientRegister", "apiOTPClient", "", "appVersion", "appLanguage", "appMode", "Landroid/content/SharedPreferences$Editor;", "sharedPreferencesEditor", "<init>", "(Landroid/content/Context;Landroidx/work/WorkerParameters;Lud/d0;Lud/d0;Lud/d0;Lud/d0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)V", "common-worker_release"}, k = 1, mv = {1, 8, 0})
/* loaded from: classes3.dex */
public final class DownloadMediaWorker extends CoroutineWorker {

    /* renamed from: a, reason: collision with root package name */
    public final d0 f15987a;

    /* renamed from: b, reason: collision with root package name */
    public final String f15988b;

    /* renamed from: c, reason: collision with root package name */
    public final String f15989c;

    /* renamed from: d, reason: collision with root package name */
    public final String f15990d;

    @e(c = "tr.gov.turkiye.edevlet.kapisi.common.worker.mkt.DownloadMediaWorker", f = "DownloadMediaWorker.kt", l = {32}, m = "doWork")
    public static final class a extends c {

        /* renamed from: a, reason: collision with root package name */
        public /* synthetic */ Object f15991a;

        /* renamed from: c, reason: collision with root package name */
        public int f15993c;

        public a(d<? super a> dVar) {
            super(dVar);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) {
            this.f15991a = obj;
            this.f15993c |= Integer.MIN_VALUE;
            return DownloadMediaWorker.this.doWork(this);
        }
    }

    @e(c = "tr.gov.turkiye.edevlet.kapisi.common.worker.mkt.DownloadMediaWorker$doWork$2", f = "DownloadMediaWorker.kt", l = {33}, m = "invokeSuspend")
    public static final class b extends i implements p<a0, d<? super ListenableWorker.Result>, Object> {

        /* renamed from: a, reason: collision with root package name */
        public int f15994a;

        @e(c = "tr.gov.turkiye.edevlet.kapisi.common.worker.mkt.DownloadMediaWorker$doWork$2$1", f = "DownloadMediaWorker.kt", l = {}, m = "invokeSuspend")
        public static final class a extends i implements p<a0, d<? super ListenableWorker.Result>, Object> {

            /* renamed from: a, reason: collision with root package name */
            public final /* synthetic */ DownloadMediaWorker f15996a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(DownloadMediaWorker downloadMediaWorker, d<? super a> dVar) {
                super(2, dVar);
                this.f15996a = downloadMediaWorker;
            }

            @Override // r9.a
            public final d<m> create(Object obj, d<?> dVar) {
                return new a(this.f15996a, dVar);
            }

            @Override // x9.p
            /* renamed from: invoke */
            public final Object mo7invoke(a0 a0Var, d<? super ListenableWorker.Result> dVar) {
                return ((a) create(a0Var, dVar)).invokeSuspend(m.f9594a);
            }

            /* JADX WARN: Removed duplicated region for block: B:58:0x011e A[Catch: Exception -> 0x012f, TryCatch #0 {Exception -> 0x012f, blocks: (B:3:0x0006, B:5:0x0028, B:12:0x0036, B:18:0x0042, B:23:0x007c, B:25:0x0080, B:27:0x0091, B:29:0x009f, B:31:0x00a5, B:33:0x00ab, B:36:0x00b3, B:40:0x00bc, B:41:0x00ce, B:52:0x0106, B:60:0x012a, B:42:0x00d8, B:44:0x00dc, B:45:0x00e6, B:47:0x00ea, B:48:0x00f4, B:50:0x00f8, B:51:0x00fd, B:53:0x010a, B:55:0x010e, B:59:0x0127, B:56:0x0118, B:57:0x011d, B:22:0x0074, B:58:0x011e, B:19:0x0060), top: B:65:0x0006, inners: #1 }] */
            @Override // r9.a
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final java.lang.Object invokeSuspend(java.lang.Object r15) throws java.lang.Throwable {
                /*
                    Method dump skipped, instructions count: 325
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: tr.gov.turkiye.edevlet.kapisi.common.worker.mkt.DownloadMediaWorker.b.a.invokeSuspend(java.lang.Object):java.lang.Object");
            }
        }

        public b(d<? super b> dVar) {
            super(2, dVar);
        }

        @Override // r9.a
        public final d<m> create(Object obj, d<?> dVar) {
            return DownloadMediaWorker.this.new b(dVar);
        }

        @Override // x9.p
        /* renamed from: invoke */
        public final Object mo7invoke(a0 a0Var, d<? super ListenableWorker.Result> dVar) {
            return ((b) create(a0Var, dVar)).invokeSuspend(m.f9594a);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            q9.a aVar = q9.a.COROUTINE_SUSPENDED;
            int r12 = this.f15994a;
            if (r12 == 0) {
                w.F(obj);
                kotlinx.coroutines.scheduling.b bVar = j0.f10809b;
                a aVar2 = new a(DownloadMediaWorker.this, null);
                this.f15994a = 1;
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
    public DownloadMediaWorker(Context context, WorkerParameters workerParameters, d0 d0Var, d0 d0Var2, d0 d0Var3, d0 d0Var4, String str, String str2, String str3, SharedPreferences.Editor editor) {
        super(context, workerParameters);
        androidx.room.util.a.h(context, "appContext", workerParameters, "params", d0Var, "apiClientSession", d0Var2, "apiClientLogin", d0Var3, "apiClientRegister", d0Var4, "apiOTPClient", str, "appVersion", str2, "appLanguage", str3, "appMode", editor, "sharedPreferencesEditor");
        this.f15987a = d0Var;
        this.f15988b = str;
        this.f15989c = str2;
        this.f15990d = str3;
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
            boolean r0 = r5 instanceof tr.gov.turkiye.edevlet.kapisi.common.worker.mkt.DownloadMediaWorker.a
            if (r0 == 0) goto L13
            r0 = r5
            tr.gov.turkiye.edevlet.kapisi.common.worker.mkt.DownloadMediaWorker$a r0 = (tr.gov.turkiye.edevlet.kapisi.common.worker.mkt.DownloadMediaWorker.a) r0
            int r1 = r0.f15993c
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f15993c = r1
            goto L18
        L13:
            tr.gov.turkiye.edevlet.kapisi.common.worker.mkt.DownloadMediaWorker$a r0 = new tr.gov.turkiye.edevlet.kapisi.common.worker.mkt.DownloadMediaWorker$a
            r0.<init>(r5)
        L18:
            java.lang.Object r5 = r0.f15991a
            q9.a r1 = q9.a.COROUTINE_SUSPENDED
            int r2 = r0.f15993c
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
            tr.gov.turkiye.edevlet.kapisi.common.worker.mkt.DownloadMediaWorker$b r5 = new tr.gov.turkiye.edevlet.kapisi.common.worker.mkt.DownloadMediaWorker$b
            r2 = 0
            r5.<init>(r2)
            r0.f15993c = r3
            java.lang.Object r5 = b8.f.t(r5, r0)
            if (r5 != r1) goto L41
            return r1
        L41:
            java.lang.String r0 = "override suspend fun doW…       }\n\n        }\n    }"
            kotlin.jvm.internal.h.e(r5, r0)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: tr.gov.turkiye.edevlet.kapisi.common.worker.mkt.DownloadMediaWorker.doWork(p9.d):java.lang.Object");
    }
}
