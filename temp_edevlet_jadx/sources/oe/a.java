package oe;

import android.content.Intent;
import android.os.Build;
import kotlin.jvm.internal.h;
import tr.gov.turkiye.edevlet.kapisi.data.service.ConceptServiceModelRealm;
import tr.gov.turkiye.edevlet.kapisi.data.service.SearchServiceContent;
import tr.gov.turkiye.edevlet.kapisi.data.service.ServiceModelRealm;

/* loaded from: classes3.dex */
public final class a {
    public static final Intent a(ConceptServiceModelRealm conceptServiceModelRealm) {
        h.f(conceptServiceModelRealm, "<this>");
        String configPath = conceptServiceModelRealm.getConfigPath();
        String link = conceptServiceModelRealm.getLink();
        String serviceName = conceptServiceModelRealm.getServiceName();
        Integer serviceCode = conceptServiceModelRealm.getServiceCode();
        Integer baseUrlCode = conceptServiceModelRealm.getBaseUrlCode();
        String baseUrl = conceptServiceModelRealm.getBaseUrl();
        if (configPath != null && link != null && serviceName != null && serviceCode != null && baseUrl != null && baseUrlCode != null) {
            if (!a6.a.r(configPath)) {
                return ze.a.c(configPath, serviceCode.intValue(), link, serviceName, false, false, baseUrl, baseUrlCode.intValue(), false);
            }
            if (a6.a.q(link)) {
                Intent intent = new Intent("action.mobile.accident");
                intent.putExtra("isCallingFromLogin", false);
                if (Build.VERSION.SDK_INT < 34) {
                    return intent;
                }
                intent.setPackage("tr.gov.turkiye.edevlet.kapisi");
                return intent;
            }
        }
        return null;
    }

    public static final Intent b(SearchServiceContent searchServiceContent, int r11, boolean z10) {
        h.f(searchServiceContent, "<this>");
        String serviceFolderName = searchServiceContent.getServiceFolderName();
        String serviceURL = searchServiceContent.getServiceURL();
        String serviceName = searchServiceContent.getServiceName();
        Integer baseUrlCode = searchServiceContent.getBaseUrlCode();
        String baseUrl = searchServiceContent.getBaseUrl();
        if (baseUrl == null || baseUrlCode == null) {
            return null;
        }
        return ze.a.c(serviceFolderName, r11, serviceURL, serviceName, false, z10, baseUrl, baseUrlCode.intValue(), false);
    }

    public static final Intent c(ServiceModelRealm serviceModelRealm, boolean z10) {
        h.f(serviceModelRealm, "<this>");
        String configPath = serviceModelRealm.getConfigPath();
        String link = serviceModelRealm.getLink();
        String serviceName = serviceModelRealm.getServiceName();
        Integer serviceCode = serviceModelRealm.getServiceCode();
        Integer baseUrlCode = serviceModelRealm.getBaseUrlCode();
        String baseUrl = serviceModelRealm.getBaseUrl();
        if (configPath != null && link != null && serviceName != null && serviceCode != null && baseUrl != null && baseUrlCode != null) {
            if (!a6.a.r(configPath)) {
                return ze.a.c(configPath, serviceCode.intValue(), link, serviceName, z10, true, baseUrl, baseUrlCode.intValue(), false);
            }
            if (a6.a.q(link)) {
                Intent intent = new Intent("action.mobile.accident");
                intent.putExtra("isCallingFromLogin", false);
                if (Build.VERSION.SDK_INT < 34) {
                    return intent;
                }
                intent.setPackage("tr.gov.turkiye.edevlet.kapisi");
                return intent;
            }
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0044  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final android.content.Intent d(tr.gov.turkiye.edevlet.kapisi.data.service.SearchServiceContent r9, int r10, boolean r11) {
        /*
            r5 = 0
            java.lang.String r0 = "<this>"
            kotlin.jvm.internal.h.f(r9, r0)
            r0 = 1
            r1 = 0
            if (r11 == 0) goto Lb
            goto L25
        Lb:
            java.lang.String r2 = r9.getServiceFolderNameEng()
            if (r2 == 0) goto L1a
            int r2 = r2.length()
            if (r2 != 0) goto L18
            goto L1a
        L18:
            r2 = 0
            goto L1b
        L1a:
            r2 = 1
        L1b:
            if (r2 != 0) goto L25
            java.lang.String r2 = r9.getServiceFolderNameEng()
            kotlin.jvm.internal.h.c(r2)
            goto L29
        L25:
            java.lang.String r2 = r9.getServiceFolderName()
        L29:
            if (r11 == 0) goto L2c
            goto L44
        L2c:
            java.lang.String r11 = r9.getServiceNameEng()
            if (r11 == 0) goto L3a
            int r11 = r11.length()
            if (r11 != 0) goto L39
            goto L3a
        L39:
            r0 = 0
        L3a:
            if (r0 != 0) goto L44
            java.lang.String r11 = r9.getServiceNameEng()
            kotlin.jvm.internal.h.c(r11)
            goto L48
        L44:
            java.lang.String r11 = r9.getServiceName()
        L48:
            r3 = r11
            java.lang.String r11 = r9.getServiceURL()
            java.lang.Integer r0 = r9.getBaseUrlCode()
            java.lang.String r6 = r9.getBaseUrl()
            if (r6 == 0) goto L67
            if (r0 == 0) goto L67
            r4 = 0
            int r7 = r0.intValue()
            r8 = 0
            r0 = r2
            r1 = r10
            r2 = r11
            android.content.Intent r9 = ze.a.c(r0, r1, r2, r3, r4, r5, r6, r7, r8)
            goto L68
        L67:
            r9 = 0
        L68:
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: oe.a.d(tr.gov.turkiye.edevlet.kapisi.data.service.SearchServiceContent, int, boolean):android.content.Intent");
    }
}
