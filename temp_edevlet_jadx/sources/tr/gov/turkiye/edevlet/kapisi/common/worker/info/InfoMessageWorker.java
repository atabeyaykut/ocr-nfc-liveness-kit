package tr.gov.turkiye.edevlet.kapisi.common.worker.info;

import android.content.Context;
import android.content.SharedPreferences;
import androidx.work.CoroutineWorker;
import androidx.work.ListenableWorker;
import androidx.work.WorkerParameters;
import c5.v;
import c5.w;
import io.realm.RealmQuery;
import io.realm.g0;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.h;
import l9.m;
import nc.a0;
import nc.j0;
import p9.d;
import r9.c;
import r9.e;
import r9.i;
import tr.gov.turkiye.edevlet.kapisi.data.extension.EmptyResult;
import tr.gov.turkiye.edevlet.kapisi.data.extension.ErrorResult;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Result;
import tr.gov.turkiye.edevlet.kapisi.data.extension.RetrofitExtensionsKt;
import tr.gov.turkiye.edevlet.kapisi.data.extension.ServiceListExtensionKt;
import tr.gov.turkiye.edevlet.kapisi.data.extension.ServiceResult;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Success;
import tr.gov.turkiye.edevlet.kapisi.data.extension.SuccessResult;
import tr.gov.turkiye.edevlet.kapisi.data.info.InfoMessageAPI;
import tr.gov.turkiye.edevlet.kapisi.data.info.InfoMessageData;
import tr.gov.turkiye.edevlet.kapisi.data.info.InfoMessageModel;
import tr.gov.turkiye.edevlet.kapisi.data.info.InfoMessageModelKt;
import tr.gov.turkiye.edevlet.kapisi.data.info.InfoMessageModelRealm;
import ud.c0;
import ud.d0;
import x9.p;
import yd.a;

@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001Bk\b\u0007\u0012\b\b\u0001\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0001\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0001\u0010\u0007\u001a\u00020\u0006\u0012\b\b\u0001\u0010\b\u001a\u00020\u0006\u0012\b\b\u0001\u0010\t\u001a\u00020\u0006\u0012\b\b\u0001\u0010\n\u001a\u00020\u0006\u0012\b\b\u0001\u0010\f\u001a\u00020\u000b\u0012\b\b\u0001\u0010\r\u001a\u00020\u000b\u0012\b\b\u0001\u0010\u000e\u001a\u00020\u000b\u0012\u0006\u0010\u0010\u001a\u00020\u000f¢\u0006\u0004\b\u0011\u0010\u0012¨\u0006\u0013"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/common/worker/info/InfoMessageWorker;", "Landroidx/work/CoroutineWorker;", "Landroid/content/Context;", "appContext", "Landroidx/work/WorkerParameters;", "params", "Lud/d0;", "apiClientSession", "apiClientLogin", "apiClientRegister", "apiOTPClient", "", "appVersion", "appLanguage", "appMode", "Landroid/content/SharedPreferences$Editor;", "sharedPreferencesEditor", "<init>", "(Landroid/content/Context;Landroidx/work/WorkerParameters;Lud/d0;Lud/d0;Lud/d0;Lud/d0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)V", "common-worker_release"}, k = 1, mv = {1, 8, 0})
/* loaded from: classes3.dex */
public final class InfoMessageWorker extends CoroutineWorker {

    /* renamed from: a, reason: collision with root package name */
    public final d0 f15966a;

    /* renamed from: b, reason: collision with root package name */
    public final String f15967b;

    /* renamed from: c, reason: collision with root package name */
    public final String f15968c;

    /* renamed from: d, reason: collision with root package name */
    public final String f15969d;

    @e(c = "tr.gov.turkiye.edevlet.kapisi.common.worker.info.InfoMessageWorker", f = "InfoMessageWorker.kt", l = {37}, m = "doWork")
    public static final class a extends c {

        /* renamed from: a, reason: collision with root package name */
        public /* synthetic */ Object f15970a;

        /* renamed from: c, reason: collision with root package name */
        public int f15972c;

        public a(d<? super a> dVar) {
            super(dVar);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) {
            this.f15970a = obj;
            this.f15972c |= Integer.MIN_VALUE;
            return InfoMessageWorker.this.doWork(this);
        }
    }

    @e(c = "tr.gov.turkiye.edevlet.kapisi.common.worker.info.InfoMessageWorker$doWork$2", f = "InfoMessageWorker.kt", l = {38}, m = "invokeSuspend")
    public static final class b extends i implements p<a0, d<? super ListenableWorker.Result>, Object> {

        /* renamed from: a, reason: collision with root package name */
        public int f15973a;

        @e(c = "tr.gov.turkiye.edevlet.kapisi.common.worker.info.InfoMessageWorker$doWork$2$1", f = "InfoMessageWorker.kt", l = {}, m = "invokeSuspend")
        public static final class a extends i implements p<a0, d<? super ListenableWorker.Result>, Object> {

            /* renamed from: a, reason: collision with root package name */
            public /* synthetic */ Object f15975a;

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ InfoMessageWorker f15976b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(InfoMessageWorker infoMessageWorker, d<? super a> dVar) {
                super(2, dVar);
                this.f15976b = infoMessageWorker;
            }

            @Override // r9.a
            public final d<m> create(Object obj, d<?> dVar) {
                a aVar = new a(this.f15976b, dVar);
                aVar.f15975a = obj;
                return aVar;
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
                qd.b bVarB;
                qe.a aVar;
                InfoMessageWorker infoMessageWorker = this.f15976b;
                w.F(obj);
                try {
                    Object objB = infoMessageWorker.f15966a.b(InfoMessageAPI.class);
                    h.e(objB, "apiClientSession.create(…foMessageAPI::class.java)");
                    try {
                        c0<InfoMessageModel> response = ((InfoMessageAPI) objB).fetchInfoMessage(infoMessageWorker.f15967b, "android", infoMessageWorker.f15968c, infoMessageWorker.f15969d).execute();
                        h.e(response, "response");
                        errorResult = new Success(RetrofitExtensionsKt.bodyOrThrow(response));
                    } catch (Exception e10) {
                        e10.printStackTrace();
                        errorResult = new ErrorResult(e10);
                    }
                } catch (Exception unused) {
                    qd.b.b().i(new qe.a(false, null));
                    resultFailure = ListenableWorker.Result.failure();
                }
                if (errorResult instanceof Success) {
                    ServiceResult<InfoMessageModel> serviceResultCompleteRequest = ServiceListExtensionKt.completeRequest((InfoMessageModel) ((Success) errorResult).getData());
                    if (serviceResultCompleteRequest instanceof SuccessResult) {
                        List<InfoMessageData> infoMessageData = ((InfoMessageModel) ((Success) errorResult).getData()).getInfoMessageData();
                        List<InfoMessageData> list = infoMessageData;
                        if (!(list == null || list.isEmpty())) {
                            Iterator<T> it = infoMessageData.iterator();
                            while (true) {
                                if (!it.hasNext()) {
                                    break;
                                }
                                InfoMessageData infoMessageData2 = (InfoMessageData) it.next();
                                if (!InfoMessageWorker.a(infoMessageWorker, infoMessageData2.getId()) && InfoMessageModelKt.checkMessageType(infoMessageData2)) {
                                    qd.b.b().i(new qe.a(true, infoMessageData2));
                                    break;
                                }
                            }
                        } else {
                            infoMessageWorker.getClass();
                            g0.t().r(InfoMessageModelRealm.class);
                        }
                        resultFailure = ListenableWorker.Result.success();
                        h.e(resultFailure, "try {\n                va…t.failure()\n            }");
                        return resultFailure;
                    }
                    if (serviceResultCompleteRequest instanceof EmptyResult) {
                        bVarB = qd.b.b();
                        aVar = new qe.a(false, null);
                    } else {
                        bVarB = qd.b.b();
                        aVar = new qe.a(false, null);
                    }
                } else {
                    if (!(errorResult instanceof ErrorResult)) {
                        throw new j7.p();
                    }
                    bVarB = qd.b.b();
                    aVar = new qe.a(false, null);
                }
                bVarB.i(aVar);
                resultFailure = ListenableWorker.Result.failure();
                h.e(resultFailure, "try {\n                va…t.failure()\n            }");
                return resultFailure;
            }
        }

        public b(d<? super b> dVar) {
            super(2, dVar);
        }

        @Override // r9.a
        public final d<m> create(Object obj, d<?> dVar) {
            return InfoMessageWorker.this.new b(dVar);
        }

        @Override // x9.p
        /* renamed from: invoke */
        public final Object mo7invoke(a0 a0Var, d<? super ListenableWorker.Result> dVar) {
            return ((b) create(a0Var, dVar)).invokeSuspend(m.f9594a);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            q9.a aVar = q9.a.COROUTINE_SUSPENDED;
            int r12 = this.f15973a;
            if (r12 == 0) {
                w.F(obj);
                kotlinx.coroutines.scheduling.b bVar = j0.f10809b;
                a aVar2 = new a(InfoMessageWorker.this, null);
                this.f15973a = 1;
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
    public InfoMessageWorker(Context context, WorkerParameters workerParameters, d0 d0Var, d0 d0Var2, d0 d0Var3, d0 d0Var4, String str, String str2, String str3, SharedPreferences.Editor editor) {
        super(context, workerParameters);
        androidx.room.util.a.h(context, "appContext", workerParameters, "params", d0Var, "apiClientSession", d0Var2, "apiClientLogin", d0Var3, "apiClientRegister", d0Var4, "apiOTPClient", str, "appVersion", str2, "appLanguage", str3, "appMode", editor, "sharedPreferencesEditor");
        this.f15966a = d0Var;
        this.f15967b = str;
        this.f15968c = str2;
        this.f15969d = str3;
    }

    public static final boolean a(InfoMessageWorker infoMessageWorker, int r52) {
        infoMessageWorker.getClass();
        g0 realm = g0.t();
        h.e(realm, "realm");
        RealmQuery realmQueryJ = realm.J(InfoMessageModelRealm.class);
        realmQueryJ.b(Integer.valueOf(r52), "messageId");
        InfoMessageModelRealm infoMessageModelRealm = (InfoMessageModelRealm) realmQueryJ.e();
        a.C0306a c0306a = yd.a.f19652a;
        c0306a.c(android.support.v4.media.a.d("message id ", r52), new Object[0]);
        StringBuilder sb2 = new StringBuilder("id: ");
        sb2.append(infoMessageModelRealm != null ? infoMessageModelRealm.getMessageId() : null);
        sb2.append(" status: ");
        sb2.append(infoMessageModelRealm != null ? Boolean.valueOf(infoMessageModelRealm.isMessageShown()) : null);
        c0306a.c(sb2.toString(), new Object[0]);
        if (infoMessageModelRealm != null) {
            return infoMessageModelRealm.isMessageShown();
        }
        return false;
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
            boolean r0 = r5 instanceof tr.gov.turkiye.edevlet.kapisi.common.worker.info.InfoMessageWorker.a
            if (r0 == 0) goto L13
            r0 = r5
            tr.gov.turkiye.edevlet.kapisi.common.worker.info.InfoMessageWorker$a r0 = (tr.gov.turkiye.edevlet.kapisi.common.worker.info.InfoMessageWorker.a) r0
            int r1 = r0.f15972c
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f15972c = r1
            goto L18
        L13:
            tr.gov.turkiye.edevlet.kapisi.common.worker.info.InfoMessageWorker$a r0 = new tr.gov.turkiye.edevlet.kapisi.common.worker.info.InfoMessageWorker$a
            r0.<init>(r5)
        L18:
            java.lang.Object r5 = r0.f15970a
            q9.a r1 = q9.a.COROUTINE_SUSPENDED
            int r2 = r0.f15972c
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
            tr.gov.turkiye.edevlet.kapisi.common.worker.info.InfoMessageWorker$b r5 = new tr.gov.turkiye.edevlet.kapisi.common.worker.info.InfoMessageWorker$b
            r2 = 0
            r5.<init>(r2)
            r0.f15972c = r3
            java.lang.Object r5 = b8.f.t(r5, r0)
            if (r5 != r1) goto L41
            return r1
        L41:
            java.lang.String r0 = "override suspend fun doW…        }\n        }\n    }"
            kotlin.jvm.internal.h.e(r5, r0)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: tr.gov.turkiye.edevlet.kapisi.common.worker.info.InfoMessageWorker.doWork(p9.d):java.lang.Object");
    }
}
