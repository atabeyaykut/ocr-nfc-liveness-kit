package tr.gov.turkiye.edevlet.kapisi.data.service;

import kotlin.Metadata;
import kotlin.jvm.internal.h;

@Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\u001a\u0012\u0010\u0000\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003\u001a\n\u0010\u0004\u001a\u00020\u0001*\u00020\u0001¨\u0006\u0005"}, d2 = {"convertNormalStatus", "Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;", "isFavorite", "", "convertProgressItem", "data_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class ServiceListDBModelKt {
    public static final ServiceModelRealm convertNormalStatus(ServiceModelRealm serviceModelRealm, boolean z10) {
        h.f(serviceModelRealm, "<this>");
        ServiceModelRealm serviceModelRealm2 = new ServiceModelRealm();
        serviceModelRealm2.setServiceCode(serviceModelRealm.getServiceCode());
        serviceModelRealm2.setServiceName(serviceModelRealm.getServiceName());
        serviceModelRealm2.setConfigPath(serviceModelRealm.getConfigPath());
        serviceModelRealm2.setInstitutionCode(serviceModelRealm.getInstitutionCode());
        serviceModelRealm2.setInstitutionName(serviceModelRealm.getInstitutionName());
        serviceModelRealm2.setExplanation(serviceModelRealm.getExplanation());
        serviceModelRealm2.setIconName(serviceModelRealm.getIconName());
        serviceModelRealm2.setLink(serviceModelRealm.getLink());
        serviceModelRealm2.setFavorite(z10);
        serviceModelRealm2.setBaseUrlCode(serviceModelRealm.getBaseUrlCode());
        serviceModelRealm2.setBaseUrl(serviceModelRealm.getBaseUrl());
        serviceModelRealm2.setFavoriteProgress(false);
        return serviceModelRealm2;
    }

    public static final ServiceModelRealm convertProgressItem(ServiceModelRealm serviceModelRealm) {
        h.f(serviceModelRealm, "<this>");
        ServiceModelRealm serviceModelRealm2 = new ServiceModelRealm();
        serviceModelRealm2.setServiceCode(serviceModelRealm.getServiceCode());
        serviceModelRealm2.setServiceName(serviceModelRealm.getServiceName());
        serviceModelRealm2.setConfigPath(serviceModelRealm.getConfigPath());
        serviceModelRealm2.setInstitutionCode(serviceModelRealm.getInstitutionCode());
        serviceModelRealm2.setInstitutionName(serviceModelRealm.getInstitutionName());
        serviceModelRealm2.setExplanation(serviceModelRealm.getExplanation());
        serviceModelRealm2.setIconName(serviceModelRealm.getIconName());
        serviceModelRealm2.setLink(serviceModelRealm.getLink());
        serviceModelRealm2.setFavorite(serviceModelRealm.isFavorite());
        serviceModelRealm2.setBaseUrlCode(serviceModelRealm.getBaseUrlCode());
        serviceModelRealm2.setBaseUrl(serviceModelRealm.getBaseUrl());
        serviceModelRealm2.setFavoriteProgress(true);
        return serviceModelRealm2;
    }
}
