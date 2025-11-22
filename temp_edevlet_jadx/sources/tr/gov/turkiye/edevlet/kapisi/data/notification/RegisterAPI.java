package tr.gov.turkiye.edevlet.kapisi.data.notification;

import kotlin.Metadata;
import ud.b;
import xd.c;
import xd.e;
import xd.o;

@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001Jh\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u000e0\r2\b\b\u0001\u0010\u0003\u001a\u00020\u00022\b\b\u0001\u0010\u0005\u001a\u00020\u00042\b\b\u0001\u0010\u0006\u001a\u00020\u00042\b\b\u0001\u0010\u0007\u001a\u00020\u00042\b\b\u0001\u0010\b\u001a\u00020\u00042\b\b\u0001\u0010\t\u001a\u00020\u00042\b\b\u0001\u0010\n\u001a\u00020\u00042\b\b\u0001\u0010\u000b\u001a\u00020\u00042\b\b\u0001\u0010\f\u001a\u00020\u0004H'¨\u0006\u0010"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/data/notification/RegisterAPI;", "", "", "pnsCheck", "", "serviceType", "appPlatform", "registrationToken", "appId", "appVersion", "osVersion", "language", "mode", "Lud/b;", "Ltr/gov/turkiye/edevlet/kapisi/data/notification/RegisterModel;", "registerUserToPush", "data_release"}, k = 1, mv = {1, 8, 0})
/* loaded from: classes3.dex */
public interface RegisterAPI {
    @e
    @o("pns.php")
    b<RegisterModel> registerUserToPush(@c("pns") boolean pnsCheck, @c("op") String serviceType, @c("platform") String appPlatform, @c("platform_id") String registrationToken, @c("appid") String appId, @c("appver") String appVersion, @c("os") String osVersion, @c("language") String language, @c("mode") String mode);
}
