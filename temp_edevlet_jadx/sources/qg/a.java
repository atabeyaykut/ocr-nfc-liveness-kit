package qg;

import kotlin.Metadata;
import tr.gov.turkiye.edevlet.kapisi.data.city.InstitutionCityListModel;
import xd.o;

@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001JJ\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\n2\b\b\u0001\u0010\u0003\u001a\u00020\u00022\b\b\u0001\u0010\u0005\u001a\u00020\u00042\b\b\u0001\u0010\u0006\u001a\u00020\u00022\b\b\u0001\u0010\u0007\u001a\u00020\u00022\b\b\u0001\u0010\b\u001a\u00020\u00022\b\b\u0001\u0010\t\u001a\u00020\u0002H'¨\u0006\r"}, d2 = {"Lqg/a;", "", "", "serviceType", "", "categoryCode", "version", "osVersion", "language", "mode", "Lud/b;", "Ltr/gov/turkiye/edevlet/kapisi/data/city/InstitutionCityListModel;", "a", "ui-services_release"}, k = 1, mv = {1, 8, 0})
/* loaded from: classes3.dex */
public interface a {
    @xd.e
    @o("kurumlar")
    ud.b<InstitutionCityListModel> a(@xd.c("get") String serviceType, @xd.c("categoryCode") int categoryCode, @xd.c("appVersion") String version, @xd.c("operatingSystem") String osVersion, @xd.c("language") String language, @xd.c("mode") String mode);
}
