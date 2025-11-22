package be;

import j7.p;
import java.util.List;
import nc.j0;
import tr.gov.turkiye.edevlet.kapisi.data.barcode.BarcodeVerifyAPI;
import tr.gov.turkiye.edevlet.kapisi.data.barcode.BarcodeVerifyFieldData;
import tr.gov.turkiye.edevlet.kapisi.data.barcode.BarcodeVerifyFieldListModel;
import tr.gov.turkiye.edevlet.kapisi.data.barcode.BarcodeVerifyFieldModel;
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
public final class n extends gf.f<a, Result<List<? extends BarcodeVerifyFieldModel>>> {

    /* renamed from: b, reason: collision with root package name */
    public final f f1263b;

    /* renamed from: c, reason: collision with root package name */
    public final kotlinx.coroutines.scheduling.b f1264c;

    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        public final String f1265a;

        /* renamed from: b, reason: collision with root package name */
        public final boolean f1266b;

        public a(String barcodeNo, boolean z10) {
            kotlin.jvm.internal.h.f(barcodeNo, "barcodeNo");
            this.f1265a = barcodeNo;
            this.f1266b = z10;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return kotlin.jvm.internal.h.a(this.f1265a, aVar.f1265a) && this.f1266b == aVar.f1266b;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final int hashCode() {
            int r02 = this.f1265a.hashCode() * 31;
            boolean z10 = this.f1266b;
            int r12 = z10;
            if (z10 != 0) {
                r12 = 1;
            }
            return r02 + r12;
        }

        public final String toString() {
            StringBuilder sb2 = new StringBuilder("Params(barcodeNo=");
            sb2.append(this.f1265a);
            sb2.append(", callFromLogin=");
            return androidx.browser.browseractions.b.f(sb2, this.f1266b, ')');
        }
    }

    public n(f manualDynamicFieldRepository) {
        kotlin.jvm.internal.h.f(manualDynamicFieldRepository, "manualDynamicFieldRepository");
        this.f1263b = manualDynamicFieldRepository;
        this.f1264c = j0.f10809b;
    }

    @Override // gf.d
    public final kotlinx.coroutines.scheduling.b b() {
        return this.f1264c;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v28 */
    /* JADX WARN: Type inference failed for: r1v38 */
    /* JADX WARN: Type inference failed for: r1v39 */
    /* JADX WARN: Type inference failed for: r1v40 */
    /* JADX WARN: Type inference failed for: r1v41 */
    /* JADX WARN: Type inference failed for: r1v9 */
    @Override // gf.f
    public final Object c(a aVar, p9.d<? super Result<List<? extends BarcodeVerifyFieldModel>>> dVar) {
        Success errorResult;
        Success errorResult2;
        a aVar2 = aVar;
        boolean z10 = aVar2.f1266b;
        boolean z11 = true;
        f fVar = this.f1263b;
        if (z10) {
            String str = aVar2.f1265a;
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
                String str2 = fVar.f1223b;
                if (str2 == null) {
                    kotlin.jvm.internal.h.n("mAppVersion");
                    throw null;
                }
                String str3 = fVar.f1225d;
                if (str3 == null) {
                    kotlin.jvm.internal.h.n("mLanguage");
                    throw null;
                }
                String str4 = fVar.f1224c;
                if (str4 == null) {
                    kotlin.jvm.internal.h.n("mAppMode");
                    throw null;
                }
                try {
                    c0<BarcodeVerifyFieldListModel> response = barcodeVerifyAPI.fetchValidationFields("type", str, "android", str2, str3, str4).execute();
                    kotlin.jvm.internal.h.e(response, "response");
                    errorResult2 = new Success(RetrofitExtensionsKt.bodyOrThrow(response));
                } catch (Exception e10) {
                    e10.printStackTrace();
                    errorResult2 = new ErrorResult(e10);
                }
                if (!(errorResult2 instanceof Success)) {
                    if (errorResult2 instanceof ErrorResult) {
                        return new ErrorResult(new ServiceErrorException());
                    }
                    throw new p();
                }
                if (ServiceListExtensionKt.completeRequestOnLogin((BarcodeVerifyFieldListModel) errorResult2.getData()) instanceof SuccessResult) {
                    BarcodeVerifyFieldData barcodeVerifyFieldData = ((BarcodeVerifyFieldListModel) errorResult2.getData()).getBarcodeVerifyFieldData();
                    return new Success(barcodeVerifyFieldData != null ? barcodeVerifyFieldData.getFields() : null);
                }
                List<String> messageArr = ((BarcodeVerifyFieldListModel) errorResult2.getData()).getMessageArr();
                String str5 = messageArr != null ? messageArr.get(0) : null;
                if (str5 != null && str5.length() != 0) {
                    z11 = false;
                }
                return z11 ? new ErrorResult(new ServiceErrorException()) : new ErrorResult(new ServiceErrorExceptionWithMessage(str5));
            } catch (Exception unused) {
                return new ErrorResult(new ServiceErrorException());
            }
        }
        String str6 = aVar2.f1265a;
        fVar.getClass();
        try {
            gf.b bVar2 = fVar.f1226e;
            if (bVar2 == null) {
                kotlin.jvm.internal.h.n("mNetworkHelper");
                throw null;
            }
            if (!bVar2.a()) {
                return new ErrorResult(new NetworkErrorException());
            }
            d0 d0Var2 = fVar.f1222a;
            if (d0Var2 == null) {
                kotlin.jvm.internal.h.n("mApiClient");
                throw null;
            }
            Object objB2 = d0Var2.b(BarcodeVerifyAPI.class);
            kotlin.jvm.internal.h.e(objB2, "mApiClient.create(BarcodeVerifyAPI::class.java)");
            BarcodeVerifyAPI barcodeVerifyAPI2 = (BarcodeVerifyAPI) objB2;
            String str7 = fVar.f1223b;
            if (str7 == null) {
                kotlin.jvm.internal.h.n("mAppVersion");
                throw null;
            }
            String str8 = fVar.f1225d;
            if (str8 == null) {
                kotlin.jvm.internal.h.n("mLanguage");
                throw null;
            }
            String str9 = fVar.f1224c;
            if (str9 == null) {
                kotlin.jvm.internal.h.n("mAppMode");
                throw null;
            }
            try {
                c0<BarcodeVerifyFieldListModel> response2 = barcodeVerifyAPI2.fetchValidationFields("type", str6, "android", str7, str8, str9).execute();
                kotlin.jvm.internal.h.e(response2, "response");
                errorResult = new Success(RetrofitExtensionsKt.bodyOrThrow(response2));
            } catch (Exception e11) {
                e11.printStackTrace();
                errorResult = new ErrorResult(e11);
            }
            if (!(errorResult instanceof Success)) {
                if (errorResult instanceof ErrorResult) {
                    return new ErrorResult(new ServiceErrorException());
                }
                throw new p();
            }
            ServiceResult<BarcodeVerifyFieldListModel> serviceResultCompleteRequest = ServiceListExtensionKt.completeRequest((BarcodeVerifyFieldListModel) errorResult.getData());
            if (serviceResultCompleteRequest instanceof SuccessResult) {
                BarcodeVerifyFieldData barcodeVerifyFieldData2 = ((BarcodeVerifyFieldListModel) errorResult.getData()).getBarcodeVerifyFieldData();
                return new Success(barcodeVerifyFieldData2 != null ? barcodeVerifyFieldData2.getFields() : null);
            }
            if (serviceResultCompleteRequest instanceof LoginFail) {
                return new ErrorResult(new LoginException());
            }
            List<String> messageArr2 = ((BarcodeVerifyFieldListModel) errorResult.getData()).getMessageArr();
            String str10 = messageArr2 != null ? messageArr2.get(0) : null;
            if (str10 != null && str10.length() != 0) {
                z11 = false;
            }
            return z11 ? new ErrorResult(new ServiceErrorException()) : new ErrorResult(new ServiceErrorExceptionWithMessage(str10));
        } catch (Exception unused2) {
            return new ErrorResult(new ServiceErrorException());
        }
    }
}
