package th;

import kotlin.jvm.internal.h;
import tr.gov.turkiye.edevlet.kapisi.data.extension.EmptyListException;
import tr.gov.turkiye.edevlet.kapisi.data.extension.EmptyResult;
import tr.gov.turkiye.edevlet.kapisi.data.extension.ErrorResult;
import tr.gov.turkiye.edevlet.kapisi.data.extension.LoginException;
import tr.gov.turkiye.edevlet.kapisi.data.extension.LoginFail;
import tr.gov.turkiye.edevlet.kapisi.data.extension.NetworkErrorException;
import tr.gov.turkiye.edevlet.kapisi.data.extension.QueueResult;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Result;
import tr.gov.turkiye.edevlet.kapisi.data.extension.RetrofitExtensionsKt;
import tr.gov.turkiye.edevlet.kapisi.data.extension.ServiceErrorException;
import tr.gov.turkiye.edevlet.kapisi.data.extension.ServiceErrorExceptionWithMessage;
import tr.gov.turkiye.edevlet.kapisi.data.extension.ServiceListExtensionKt;
import tr.gov.turkiye.edevlet.kapisi.data.extension.ServiceResult;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Success;
import tr.gov.turkiye.edevlet.kapisi.data.extension.SuccessResult;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.MobileAccidentReportAPI;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.ResultMessage;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.TwoFactorData;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.TwoFactorModel;
import ud.c0;
import ud.d0;

/* loaded from: classes3.dex */
public final class b {

    /* renamed from: a, reason: collision with root package name */
    public d0 f15725a;

    /* renamed from: b, reason: collision with root package name */
    public String f15726b;

    /* renamed from: c, reason: collision with root package name */
    public String f15727c;

    /* renamed from: d, reason: collision with root package name */
    public String f15728d;

    /* renamed from: e, reason: collision with root package name */
    public gf.b f15729e;

    @r9.e(c = "tr.gov.turkiye.edevlet.kapisi.ui.accident.onboarding.MobileAccidentOnboardingRepository", f = "MobileAccidentOnboardingRepository.kt", l = {125, 126}, m = "checkControlClarification")
    public static final class a extends r9.c {

        /* renamed from: a, reason: collision with root package name */
        public b f15730a;

        /* renamed from: b, reason: collision with root package name */
        public /* synthetic */ Object f15731b;

        /* renamed from: d, reason: collision with root package name */
        public int f15733d;

        public a(p9.d<? super a> dVar) {
            super(dVar);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) {
            this.f15731b = obj;
            this.f15733d |= Integer.MIN_VALUE;
            return b.this.a(this);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(p9.d<? super tr.gov.turkiye.edevlet.kapisi.data.extension.Result<tr.gov.turkiye.edevlet.kapisi.data.mkt.CheckClarificationModel>> r15) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 326
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: th.b.a(p9.d):java.lang.Object");
    }

    public final Result<TwoFactorModel> b() {
        Result errorResult;
        ResultMessage resultMessage;
        try {
            gf.b bVar = this.f15729e;
            String messageText = null;
            if (bVar == null) {
                h.n("mNetworkHelper");
                throw null;
            }
            if (!bVar.a()) {
                return new ErrorResult(new NetworkErrorException());
            }
            d0 d0Var = this.f15725a;
            if (d0Var == null) {
                h.n("mApiClient");
                throw null;
            }
            Object objB = d0Var.b(MobileAccidentReportAPI.class);
            h.e(objB, "mApiClient.create(Mobile…entReportAPI::class.java)");
            MobileAccidentReportAPI mobileAccidentReportAPI = (MobileAccidentReportAPI) objB;
            String str = this.f15726b;
            if (str == null) {
                h.n("mAppVersion");
                throw null;
            }
            String str2 = this.f15728d;
            if (str2 == null) {
                h.n("mLanguage");
                throw null;
            }
            String str3 = this.f15727c;
            if (str3 == null) {
                h.n("mAppMode");
                throw null;
            }
            try {
                c0 response = MobileAccidentReportAPI.DefaultImpls.checkLoginLevel$default(mobileAccidentReportAPI, null, str, "android", str2, str3, 1, null).execute();
                h.e(response, "response");
                errorResult = new Success(RetrofitExtensionsKt.bodyOrThrow(response));
            } catch (Exception e10) {
                e10.printStackTrace();
                errorResult = new ErrorResult(e10);
            }
            if (!(errorResult instanceof Success)) {
                return errorResult instanceof ErrorResult ? new ErrorResult(new ServiceErrorException()) : new ErrorResult(new ServiceErrorException());
            }
            ServiceResult<TwoFactorModel> serviceResultCompleteRequest = ServiceListExtensionKt.completeRequest((TwoFactorModel) ((Success) errorResult).getData());
            if (serviceResultCompleteRequest instanceof SuccessResult) {
                return new Success(((Success) errorResult).getData());
            }
            if (serviceResultCompleteRequest instanceof LoginFail) {
                return new ErrorResult(new LoginException());
            }
            if (serviceResultCompleteRequest instanceof EmptyResult) {
                return new ErrorResult(new EmptyListException());
            }
            if (serviceResultCompleteRequest instanceof QueueResult) {
                return b();
            }
            TwoFactorData twoFactorData = ((TwoFactorModel) ((Success) errorResult).getData()).getTwoFactorData();
            if (twoFactorData != null && (resultMessage = twoFactorData.getResultMessage()) != null) {
                messageText = resultMessage.getMessageText();
            }
            return messageText == null || messageText.length() == 0 ? new ErrorResult(new ServiceErrorException()) : new ErrorResult(new ServiceErrorExceptionWithMessage(messageText));
        } catch (Exception unused) {
            return new ErrorResult(new ServiceErrorException());
        }
    }
}
