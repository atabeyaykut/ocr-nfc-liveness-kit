package hg;

import kotlin.Metadata;
import tr.gov.turkiye.edevlet.kapisi.data.profile.ProfileContactModel;
import tr.gov.turkiye.edevlet.kapisi.data.profile.ProfileServiceModel;
import ud.b;
import xd.c;
import xd.e;
import xd.o;

@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J6\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u00072\b\b\u0001\u0010\u0003\u001a\u00020\u00022\b\b\u0001\u0010\u0004\u001a\u00020\u00022\b\b\u0001\u0010\u0005\u001a\u00020\u00022\b\b\u0001\u0010\u0006\u001a\u00020\u0002H'J@\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\b0\u00072\b\b\u0001\u0010\n\u001a\u00020\u00022\b\b\u0001\u0010\u0003\u001a\u00020\u00022\b\b\u0001\u0010\u0004\u001a\u00020\u00022\b\b\u0001\u0010\u0005\u001a\u00020\u00022\b\b\u0001\u0010\u0006\u001a\u00020\u0002H'J@\u0010\r\u001a\b\u0012\u0004\u0012\u00020\f0\u00072\b\b\u0001\u0010\n\u001a\u00020\u00022\b\b\u0001\u0010\u0003\u001a\u00020\u00022\b\b\u0001\u0010\u0004\u001a\u00020\u00022\b\b\u0001\u0010\u0005\u001a\u00020\u00022\b\b\u0001\u0010\u0006\u001a\u00020\u0002H'¨\u0006\u000e"}, d2 = {"Lhg/a;", "", "", "appVersion", "osVersion", "language", "mode", "Lud/b;", "Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileServiceModel;", "b", "action", "a", "Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactModel;", "c", "ui-profile_release"}, k = 1, mv = {1, 8, 0})
/* loaded from: classes3.dex */
public interface a {
    @e
    @o("kisisel-bilgiler")
    b<ProfileServiceModel> a(@c("refresh") String action, @c("appVersion") String appVersion, @c("operatingSystem") String osVersion, @c("language") String language, @c("mode") String mode);

    @e
    @o("kisisel-bilgiler")
    b<ProfileServiceModel> b(@c("appVersion") String appVersion, @c("operatingSystem") String osVersion, @c("language") String language, @c("mode") String mode);

    @e
    @o("kisisel-bilgiler")
    b<ProfileContactModel> c(@c("contact") String action, @c("appVersion") String appVersion, @c("operatingSystem") String osVersion, @c("language") String language, @c("mode") String mode);
}
