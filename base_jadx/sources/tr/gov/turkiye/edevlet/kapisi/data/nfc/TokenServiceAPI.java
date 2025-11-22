package tr.gov.turkiye.edevlet.kapisi.data.nfc;

import kotlin.Metadata;
import ud.b;
import xd.c;
import xd.e;
import xd.o;

@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001JT\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\n2\b\b\u0001\u0010\u0003\u001a\u00020\u00022\b\b\u0001\u0010\u0004\u001a\u00020\u00022\b\b\u0001\u0010\u0005\u001a\u00020\u00022\b\b\u0001\u0010\u0006\u001a\u00020\u00022\b\b\u0001\u0010\u0007\u001a\u00020\u00022\b\b\u0001\u0010\b\u001a\u00020\u00022\b\b\u0001\u0010\t\u001a\u00020\u0002H'¨\u0006\r"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/data/nfc/TokenServiceAPI;", "", "", "uuidValue", "authCodeValue", "pinValue", "osVersion", "appVersion", "language", "mode", "Lud/b;", "Ltr/gov/turkiye/edevlet/kapisi/data/nfc/TokenServiceModel;", "fetchTokenValue", "data_release"}, k = 1, mv = {1, 8, 0})
/* loaded from: classes3.dex */
public interface TokenServiceAPI {
    @e
    @o("nfc-kimlik-dogrulama?getToken")
    b<TokenServiceModel> fetchTokenValue(@c("uuid") String uuidValue, @c("authCode") String authCodeValue, @c("pin") String pinValue, @c("operatingSystem") String osVersion, @c("appVersion") String appVersion, @c("language") String language, @c("mode") String mode);
}
