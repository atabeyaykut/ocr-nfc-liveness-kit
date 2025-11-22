package tr.gov.turkiye.edevlet.kapisi.data.extension;

import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.h;
import mc.i;
import tr.gov.turkiye.edevlet.kapisi.data.service.FavoriteServiceModel;
import tr.gov.turkiye.edevlet.kapisi.data.service.SearchServiceContent;
import tr.gov.turkiye.edevlet.kapisi.data.service.ServiceBaseUrl;
import tr.gov.turkiye.edevlet.kapisi.data.service.ServiceModel;
import tr.gov.turkiye.edevlet.kapisi.data.service.ServiceModelRealm;

@Metadata(d1 = {"\u0000:\n\u0000\n\u0002\u0010\u000e\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a#\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00022\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006\u001a \u0010\u0007\u001a\u00020\b*\u00020\t2\u0006\u0010\n\u001a\u00020\u00012\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u001a(\u0010\u0007\u001a\u00020\b*\u00020\f2\u0006\u0010\n\u001a\u00020\u00012\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u0010\r\u001a\u00020\u000e\u001a(\u0010\u000f\u001a\u00020\b*\u00020\f2\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u0001\u001a\u0012\u0010\u0011\u001a\u00020\b*\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0005¨\u0006\u0014"}, d2 = {"prepareBaseUrl", "", "", "Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceBaseUrl;", "code", "", "(Ljava/util/List;Ljava/lang/Integer;)Ljava/lang/String;", "prepareResult", "Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;", "Ltr/gov/turkiye/edevlet/kapisi/data/service/FavoriteServiceModel;", "iconBaseUrl", "baseUrlList", "Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModel;", "favoriteStatus", "", "prepareResultWithIconName", "iconName", "prepareSearchService", "Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceContent;", "serviceCode", "data_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class BaseUrlExtensionKt {
    public static final String prepareBaseUrl(List<ServiceBaseUrl> list, Integer num) {
        List<ServiceBaseUrl> list2 = list;
        String url = null;
        if (!(list2 == null || list2.isEmpty())) {
            for (ServiceBaseUrl serviceBaseUrl : list) {
                int code = serviceBaseUrl.getCode();
                if (num != null && code == num.intValue()) {
                    url = serviceBaseUrl.getUrl();
                }
            }
        }
        return url;
    }

    public static final ServiceModelRealm prepareResult(FavoriteServiceModel favoriteServiceModel, String iconBaseUrl, List<ServiceBaseUrl> baseUrlList) {
        h.f(favoriteServiceModel, "<this>");
        h.f(iconBaseUrl, "iconBaseUrl");
        h.f(baseUrlList, "baseUrlList");
        ServiceModelRealm serviceModelRealm = new ServiceModelRealm();
        serviceModelRealm.setServiceCode(Integer.valueOf(favoriteServiceModel.getServiceCode()));
        serviceModelRealm.setServiceName(favoriteServiceModel.getServiceName());
        serviceModelRealm.setConfigPath(favoriteServiceModel.getLink());
        serviceModelRealm.setInstitutionCode(Integer.valueOf(favoriteServiceModel.getInstitutionCode()));
        serviceModelRealm.setInstitutionName(favoriteServiceModel.getInstitutionName());
        serviceModelRealm.setExplanation(favoriteServiceModel.getExplanation());
        serviceModelRealm.setIconName(iconBaseUrl + favoriteServiceModel.getIconName());
        serviceModelRealm.setLink(favoriteServiceModel.getConfigPath());
        serviceModelRealm.setBaseUrlCode(favoriteServiceModel.getBaseUrlCode());
        serviceModelRealm.setBaseUrl(prepareBaseUrl(baseUrlList, favoriteServiceModel.getBaseUrlCode()));
        serviceModelRealm.setFavorite(true);
        return serviceModelRealm;
    }

    public static final ServiceModelRealm prepareResult(ServiceModel serviceModel, String iconBaseUrl, List<ServiceBaseUrl> baseUrlList, boolean z10) {
        h.f(serviceModel, "<this>");
        h.f(iconBaseUrl, "iconBaseUrl");
        h.f(baseUrlList, "baseUrlList");
        ServiceModelRealm serviceModelRealm = new ServiceModelRealm();
        serviceModelRealm.setServiceCode(Integer.valueOf(serviceModel.getServiceCode()));
        serviceModelRealm.setServiceName(serviceModel.getServiceName());
        serviceModelRealm.setConfigPath(serviceModel.getConfigPath());
        serviceModelRealm.setInstitutionCode(Integer.valueOf(serviceModel.getInstitutionCode()));
        serviceModelRealm.setInstitutionName(serviceModel.getInstitutionName());
        serviceModelRealm.setExplanation(serviceModel.getExplanation());
        serviceModelRealm.setIconName(iconBaseUrl + serviceModel.getIconName());
        serviceModelRealm.setLink(serviceModel.getLink());
        serviceModelRealm.setBaseUrlCode(serviceModel.getBaseUrlCode());
        serviceModelRealm.setBaseUrl(prepareBaseUrl(baseUrlList, serviceModel.getBaseUrlCode()));
        serviceModelRealm.setFavorite(z10);
        return serviceModelRealm;
    }

    public static final ServiceModelRealm prepareResultWithIconName(ServiceModel serviceModel, List<ServiceBaseUrl> baseUrlList, boolean z10, String iconName) {
        h.f(serviceModel, "<this>");
        h.f(baseUrlList, "baseUrlList");
        h.f(iconName, "iconName");
        ServiceModelRealm serviceModelRealm = new ServiceModelRealm();
        serviceModelRealm.setServiceCode(Integer.valueOf(serviceModel.getServiceCode()));
        serviceModelRealm.setServiceName(serviceModel.getServiceName());
        serviceModelRealm.setConfigPath(serviceModel.getConfigPath());
        serviceModelRealm.setInstitutionCode(Integer.valueOf(serviceModel.getInstitutionCode()));
        serviceModelRealm.setInstitutionName(serviceModel.getInstitutionName());
        serviceModelRealm.setExplanation(serviceModel.getExplanation());
        serviceModelRealm.setIconName(iconName);
        serviceModelRealm.setLink(serviceModel.getLink());
        serviceModelRealm.setBaseUrlCode(serviceModel.getBaseUrlCode());
        serviceModelRealm.setBaseUrl(prepareBaseUrl(baseUrlList, serviceModel.getBaseUrlCode()));
        serviceModelRealm.setFavorite(z10);
        return serviceModelRealm;
    }

    public static final ServiceModelRealm prepareSearchService(SearchServiceContent searchServiceContent, int r22) {
        h.f(searchServiceContent, "<this>");
        ServiceModelRealm serviceModelRealm = new ServiceModelRealm();
        serviceModelRealm.setServiceCode(Integer.valueOf(r22));
        serviceModelRealm.setServiceName(searchServiceContent.getServiceName());
        serviceModelRealm.setConfigPath(searchServiceContent.getServiceFolderName());
        serviceModelRealm.setInstitutionCode(i.t(searchServiceContent.getInstitutionCode()));
        serviceModelRealm.setInstitutionName(searchServiceContent.getInstitutionName());
        serviceModelRealm.setExplanation(null);
        serviceModelRealm.setIconName(searchServiceContent.getIconUrl());
        serviceModelRealm.setLink(searchServiceContent.getServiceURL());
        serviceModelRealm.setBaseUrlCode(searchServiceContent.getBaseUrlCode());
        serviceModelRealm.setBaseUrl(searchServiceContent.getBaseUrl());
        serviceModelRealm.setFavorite(false);
        return serviceModelRealm;
    }
}
