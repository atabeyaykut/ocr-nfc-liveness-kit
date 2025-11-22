package ze;

import android.content.Intent;
import android.os.Build;
import kotlin.jvm.internal.h;

/* loaded from: classes3.dex */
public final class a {
    public static void a(Intent intent) {
        if (Build.VERSION.SDK_INT >= 34) {
            intent.setPackage("tr.gov.turkiye.edevlet.kapisi");
        }
    }

    public static Intent b(String str, String str2, boolean z10, String str3, boolean z11) {
        Intent intent = new Intent("action.paymentpage.open");
        intent.putExtra("folderUrl", str);
        intent.putExtra("serviceName", str2);
        intent.putExtra("isCustomPage", true);
        intent.putExtra("isFavMenuActive", false);
        intent.putExtra("isEdkFolder", false);
        intent.putExtra("popupMessage", str3);
        intent.putExtra("isClosable", z10);
        intent.putExtra("hasRedirection", z11);
        a(intent);
        return intent;
    }

    public static Intent c(String folderUrl, int r6, String serviceUrl, String serviceName, boolean z10, boolean z11, String str, int r12, boolean z12) {
        h.f(folderUrl, "folderUrl");
        h.f(serviceUrl, "serviceUrl");
        h.f(serviceName, "serviceName");
        Intent intent = new Intent("action.servicepage.open");
        intent.putExtra("folderUrl", folderUrl);
        intent.putExtra("serviceCode", r6);
        intent.putExtra("serviceUrl", serviceUrl);
        intent.putExtra("serviceName", serviceName);
        intent.putExtra("isOpenService", false);
        intent.putExtra("isFavoriteService", z10);
        intent.putExtra("isFavMenuActive", z11);
        intent.putExtra("serviceDomainType", r12);
        intent.putExtra("baseUrl", str);
        intent.putExtra("isCallingFromLogin", z12);
        a(intent);
        return intent;
    }

    public static Intent d(String baseUrl, String folderUrl, String serviceUrl, String serviceName, int r10) {
        h.f(baseUrl, "baseUrl");
        h.f(folderUrl, "folderUrl");
        h.f(serviceUrl, "serviceUrl");
        h.f(serviceName, "serviceName");
        Intent intent = new Intent("action.servicepage.open");
        intent.putExtra("baseUrl", baseUrl);
        intent.putExtra("folderUrl", folderUrl);
        intent.putExtra("serviceUrl", serviceUrl);
        intent.putExtra("serviceName", serviceName);
        intent.putExtra("isOpenService", true);
        intent.putExtra("isFavMenuActive", false);
        intent.putExtra("serviceDomainType", r10);
        a(intent);
        return intent;
    }

    public static Intent e(String link, String str, String str2) {
        h.f(link, "link");
        Intent intent = new Intent("action.servicepage.open");
        intent.putExtra("fullUrl", link);
        intent.putExtra("isPartOfService", true);
        intent.putExtra("shouldSendNativeCall", true);
        intent.putExtra("nativeCallMethod", "mktAccidentScenarioPrepation");
        intent.putExtra("nativeCallParam", str);
        intent.putExtra("serviceName", str2);
        intent.putExtra("isCustomPage", true);
        intent.putExtra("isFavMenuActive", false);
        a(intent);
        return intent;
    }

    public static Intent f(String str, String str2, String str3, String str4, String str5, String str6) {
        Intent intent = new Intent("action.verification.open");
        intent.putExtra("operationType", str);
        intent.putExtra("challenge", str2);
        intent.putExtra("token", str3);
        intent.putExtra("uuid", str4);
        intent.putExtra("phoneNumber", str5);
        intent.putExtra("countyCode", str6);
        a(intent);
        return intent;
    }
}
