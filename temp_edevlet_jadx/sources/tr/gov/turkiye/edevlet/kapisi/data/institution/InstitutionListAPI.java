package tr.gov.turkiye.edevlet.kapisi.data.institution;

import kotlin.Metadata;
import ud.b;
import xd.c;
import xd.e;
import xd.o;

@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\bf\u0018\u00002\u00020\u0001JJ\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\n2\b\b\u0001\u0010\u0003\u001a\u00020\u00022\b\b\u0001\u0010\u0005\u001a\u00020\u00042\b\b\u0001\u0010\u0006\u001a\u00020\u00022\b\b\u0001\u0010\u0007\u001a\u00020\u00022\b\b\u0001\u0010\b\u001a\u00020\u00022\b\b\u0001\u0010\t\u001a\u00020\u0002H'JT\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u000b0\n2\b\b\u0001\u0010\u0003\u001a\u00020\u00022\b\b\u0001\u0010\u0005\u001a\u00020\u00042\b\b\u0001\u0010\r\u001a\u00020\u00042\b\b\u0001\u0010\u0006\u001a\u00020\u00022\b\b\u0001\u0010\u0007\u001a\u00020\u00022\b\b\u0001\u0010\b\u001a\u00020\u00022\b\b\u0001\u0010\t\u001a\u00020\u0002H'¨\u0006\u000f"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionListAPI;", "", "", "serviceType", "", "categoryCode", "appVersion", "osVersion", "language", "mode", "Lud/b;", "Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionListModel;", "fetchInstitutionList", "cityCode", "fetchInstitutionListWithCity", "data_release"}, k = 1, mv = {1, 8, 0})
/* loaded from: classes3.dex */
public interface InstitutionListAPI {
    @e
    @o("kurumlar")
    b<InstitutionListModel> fetchInstitutionList(@c("get") String serviceType, @c("categoryCode") int categoryCode, @c("appVersion") String appVersion, @c("operatingSystem") String osVersion, @c("language") String language, @c("mode") String mode);

    @e
    @o("kurumlar")
    b<InstitutionListModel> fetchInstitutionListWithCity(@c("get") String serviceType, @c("categoryCode") int categoryCode, @c("cityCode") int cityCode, @c("appVersion") String appVersion, @c("operatingSystem") String osVersion, @c("language") String language, @c("mode") String mode);
}
