package tr.gov.turkiye.edevlet.kapisi.data.service;

import kotlin.Metadata;
import ud.b;
import xd.c;
import xd.e;
import xd.o;

@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001JJ\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\n2\b\b\u0001\u0010\u0003\u001a\u00020\u00022\b\b\u0001\u0010\u0005\u001a\u00020\u00042\b\b\u0001\u0010\u0006\u001a\u00020\u00042\b\b\u0001\u0010\u0007\u001a\u00020\u00042\b\b\u0001\u0010\b\u001a\u00020\u00042\b\b\u0001\u0010\t\u001a\u00020\u0004H'¨\u0006\r"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceListAPI;", "", "", "isMobile", "", "query", "appVersion", "osVersion", "language", "mode", "Lud/b;", "Ltr/gov/turkiye/edevlet/kapisi/data/service/SearchServiceList;", "searchService", "data_release"}, k = 1, mv = {1, 8, 0})
/* loaded from: classes3.dex */
public interface SearchServiceListAPI {
    @e
    @o("arama")
    b<SearchServiceList> searchService(@c("isMobile") boolean isMobile, @c("aranan") String query, @c("appVersion") String appVersion, @c("operatingSystem") String osVersion, @c("language") String language, @c("mode") String mode);
}
