package tr.gov.turkiye.edevlet.kapisi.data.service;

import kotlin.Metadata;
import ud.b;
import xd.c;
import xd.e;
import xd.o;

@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J@\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\b2\b\b\u0001\u0010\u0003\u001a\u00020\u00022\b\b\u0001\u0010\u0004\u001a\u00020\u00022\b\b\u0001\u0010\u0005\u001a\u00020\u00022\b\b\u0001\u0010\u0006\u001a\u00020\u00022\b\b\u0001\u0010\u0007\u001a\u00020\u0002H'JJ\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\r0\b2\b\b\u0001\u0010\u0003\u001a\u00020\u00022\b\b\u0001\u0010\f\u001a\u00020\u000b2\b\b\u0001\u0010\u0004\u001a\u00020\u00022\b\b\u0001\u0010\u0005\u001a\u00020\u00022\b\b\u0001\u0010\u0006\u001a\u00020\u00022\b\b\u0001\u0010\u0007\u001a\u00020\u0002H'J@\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u000f0\b2\b\b\u0001\u0010\u0003\u001a\u00020\u00022\b\b\u0001\u0010\u0004\u001a\u00020\u00022\b\b\u0001\u0010\u0005\u001a\u00020\u00022\b\b\u0001\u0010\u0006\u001a\u00020\u00022\b\b\u0001\u0010\u0007\u001a\u00020\u0002H'JJ\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\t0\b2\b\b\u0001\u0010\u0003\u001a\u00020\u00022\b\b\u0001\u0010\f\u001a\u00020\u000b2\b\b\u0001\u0010\u0004\u001a\u00020\u00022\b\b\u0001\u0010\u0005\u001a\u00020\u00022\b\b\u0001\u0010\u0006\u001a\u00020\u00022\b\b\u0001\u0010\u0007\u001a\u00020\u0002H'J6\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00120\b2\b\b\u0001\u0010\u0004\u001a\u00020\u00022\b\b\u0001\u0010\u0005\u001a\u00020\u00022\b\b\u0001\u0010\u0006\u001a\u00020\u00022\b\b\u0001\u0010\u0007\u001a\u00020\u0002H'¨\u0006\u0014"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceListAPI;", "", "", "serviceType", "appVersion", "osVersion", "language", "mode", "Lud/b;", "Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceListModel;", "fetchServiceList", "", "serviceCode", "Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceDetailModel;", "fetchServiceDetail", "Ltr/gov/turkiye/edevlet/kapisi/data/service/FavoriteServiceListModel;", "fetchFavoriteServiceList", "makeFavoriteOperation", "Ltr/gov/turkiye/edevlet/kapisi/data/service/AboutPageModel;", "fetchAboutPages", "data_release"}, k = 1, mv = {1, 8, 0})
/* loaded from: classes3.dex */
public interface ServiceListAPI {
    @e
    @o("bilgilendirme")
    b<AboutPageModel> fetchAboutPages(@c("appVersion") String appVersion, @c("operatingSystem") String osVersion, @c("language") String language, @c("mode") String mode);

    @e
    @o("hizmetler")
    b<FavoriteServiceListModel> fetchFavoriteServiceList(@c("get") String serviceType, @c("appVersion") String appVersion, @c("operatingSystem") String osVersion, @c("language") String language, @c("mode") String mode);

    @e
    @o("hizmetler")
    b<ServiceDetailModel> fetchServiceDetail(@c("get") String serviceType, @c("serviceCode") int serviceCode, @c("appVersion") String appVersion, @c("operatingSystem") String osVersion, @c("language") String language, @c("mode") String mode);

    @e
    @o("hizmetler")
    b<ServiceListModel> fetchServiceList(@c("get") String serviceType, @c("appVersion") String appVersion, @c("operatingSystem") String osVersion, @c("language") String language, @c("mode") String mode);

    @e
    @o("favori-hizmetlerim")
    b<ServiceListModel> makeFavoriteOperation(@c("favori") String serviceType, @c("hizmetKodu") int serviceCode, @c("appVersion") String appVersion, @c("operatingSystem") String osVersion, @c("language") String language, @c("mode") String mode);
}
