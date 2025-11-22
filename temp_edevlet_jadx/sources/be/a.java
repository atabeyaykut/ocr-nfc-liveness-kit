package be;

import j7.p;
import java.util.List;
import nc.j0;
import tr.gov.turkiye.edevlet.kapisi.data.barcode.BarcodeData;
import tr.gov.turkiye.edevlet.kapisi.data.barcode.BarcodeVerifyAPI;
import tr.gov.turkiye.edevlet.kapisi.data.barcode.BarcodeVerifyModel;
import tr.gov.turkiye.edevlet.kapisi.data.extension.ErrorResult;
import tr.gov.turkiye.edevlet.kapisi.data.extension.LoginException;
import tr.gov.turkiye.edevlet.kapisi.data.extension.LoginFail;
import tr.gov.turkiye.edevlet.kapisi.data.extension.NetworkErrorException;
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

/* loaded from: classes3.dex */
public final class a extends gf.f<C0047a, Result<BarcodeData>> {

    /* renamed from: b, reason: collision with root package name */
    public final f f1214b;

    /* renamed from: c, reason: collision with root package name */
    public final kotlinx.coroutines.scheduling.b f1215c;

    /* renamed from: be.a$a, reason: collision with other inner class name */
    public static final class C0047a {
        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C0047a)) {
                return false;
            }
            ((C0047a) obj).getClass();
            return kotlin.jvm.internal.h.a(null, null);
        }

        public final int hashCode() {
            throw null;
        }

        public final String toString() {
            return "Params(barcodeContent=null)";
        }
    }

    public a(f manualDynamicFieldRepository) {
        kotlin.jvm.internal.h.f(manualDynamicFieldRepository, "manualDynamicFieldRepository");
        this.f1214b = manualDynamicFieldRepository;
        this.f1215c = j0.f10809b;
    }

    @Override // gf.d
    public final kotlinx.coroutines.scheduling.b b() {
        return this.f1215c;
    }

    @Override // gf.f
    public final Object c(C0047a c0047a, p9.d<? super Result<BarcodeData>> dVar) {
        Result errorResult;
        c0047a.getClass();
        f fVar = this.f1214b;
        fVar.getClass();
        try {
            gf.b bVar = fVar.f1226e;
            if (bVar == null) {
                kotlin.jvm.internal.h.n("mNetworkHelper");
                throw null;
            }
            if (!bVar.a()) {
                return new ErrorResult(new NetworkErrorException());
            }
            d0 d0Var = fVar.f1222a;
            if (d0Var == null) {
                kotlin.jvm.internal.h.n("mApiClient");
                throw null;
            }
            Object objB = d0Var.b(BarcodeVerifyAPI.class);
            kotlin.jvm.internal.h.e(objB, "mApiClient.create(BarcodeVerifyAPI::class.java)");
            BarcodeVerifyAPI barcodeVerifyAPI = (BarcodeVerifyAPI) objB;
            String str = fVar.f1223b;
            if (str == null) {
                kotlin.jvm.internal.h.n("mAppVersion");
                throw null;
            }
            String str2 = fVar.f1225d;
            if (str2 == null) {
                kotlin.jvm.internal.h.n("mLanguage");
                throw null;
            }
            String str3 = fVar.f1224c;
            if (str3 == null) {
                kotlin.jvm.internal.h.n("mAppMode");
                throw null;
            }
            try {
                c0<BarcodeVerifyModel> response = barcodeVerifyAPI.verifyDocument(null, "android", str, str2, str3).execute();
                kotlin.jvm.internal.h.e(response, "response");
                errorResult = new Success(RetrofitExtensionsKt.bodyOrThrow(response));
            } catch (Exception e10) {
                e10.printStackTrace();
                errorResult = new ErrorResult(e10);
            }
            if (!(errorResult instanceof Success)) {
                if (errorResult instanceof ErrorResult) {
                    return new ErrorResult(new ServiceErrorException());
                }
                throw new p();
            }
            ServiceResult<BarcodeVerifyModel> serviceResultCompleteRequest = ServiceListExtensionKt.completeRequest((BarcodeVerifyModel) ((Success) errorResult).getData());
            if (serviceResultCompleteRequest instanceof SuccessResult) {
                return new Success(((BarcodeVerifyModel) ((Success) errorResult).getData()).getBarcodeData());
            }
            if (serviceResultCompleteRequest instanceof LoginFail) {
                return new ErrorResult(new LoginException());
            }
            List<String> messageArr = ((BarcodeVerifyModel) ((Success) errorResult).getData()).getMessageArr();
            String str4 = messageArr != null ? messageArr.get(0) : null;
            return str4 == null || str4.length() == 0 ? new ErrorResult(new ServiceErrorException()) : new ErrorResult(new ServiceErrorExceptionWithMessage(str4));
        } catch (Exception unused) {
            return new ErrorResult(new ServiceErrorException());
        }
    }
}
