package tr.gov.turkiye.edevlet.kapisi.data.update;

import kotlin.Metadata;
import ud.b;
import xd.c;
import xd.e;
import xd.o;

@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J@\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\b2\b\b\u0001\u0010\u0003\u001a\u00020\u00022\b\b\u0001\u0010\u0004\u001a\u00020\u00022\b\b\u0001\u0010\u0005\u001a\u00020\u00022\b\b\u0001\u0010\u0006\u001a\u00020\u00022\b\b\u0001\u0010\u0007\u001a\u00020\u0002H'J,\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u000e0\b2\b\b\u0001\u0010\u000b\u001a\u00020\u00022\b\b\u0001\u0010\f\u001a\u00020\u00022\b\b\u0001\u0010\r\u001a\u00020\u0002H'J@\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00100\b2\b\b\u0001\u0010\u0003\u001a\u00020\u00022\b\b\u0001\u0010\u0004\u001a\u00020\u00022\b\b\u0001\u0010\u0005\u001a\u00020\u00022\b\b\u0001\u0010\u0006\u001a\u00020\u00022\b\b\u0001\u0010\u0007\u001a\u00020\u0002H'¨\u0006\u0012"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateCheckerAPI;", "", "", "appVersion", "osVersion", "language", "mode", "appId", "Lud/b;", "Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateServiceModel;", "checkAppUpdate", "os", "message", "version", "Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateLogModel;", "updateLog", "Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateModuleSpecificServiceModel;", "checkModuleSpecificUpdate", "data_release"}, k = 1, mv = {1, 8, 0})
/* loaded from: classes3.dex */
public interface UpdateCheckerAPI {
    @e
    @o("?ForceUpdate")
    b<UpdateServiceModel> checkAppUpdate(@c("appVersion") String appVersion, @c("operatingSystem") String osVersion, @c("language") String language, @c("mode") String mode, @c("id") String appId);

    @e
    @o("?ModuleInfo")
    b<UpdateModuleSpecificServiceModel> checkModuleSpecificUpdate(@c("appVersion") String appVersion, @c("operatingSystem") String osVersion, @c("language") String language, @c("mode") String mode, @c("id") String appId);

    @e
    @o("&errorLog")
    b<UpdateLogModel> updateLog(@c("os") String os, @c("message") String message, @c("level") String version);
}
