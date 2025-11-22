package tr.gov.turkiye.edevlet.kapisi.data.nfc;

import kotlin.Metadata;
import ud.b;
import xd.c;
import xd.e;
import xd.o;

@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001J|\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000e2\b\b\u0001\u0010\u0003\u001a\u00020\u00022\b\b\u0001\u0010\u0004\u001a\u00020\u00022\b\b\u0001\u0010\u0005\u001a\u00020\u00022\b\b\u0001\u0010\u0006\u001a\u00020\u00022\b\b\u0001\u0010\u0007\u001a\u00020\u00022\b\b\u0001\u0010\b\u001a\u00020\u00022\b\b\u0001\u0010\t\u001a\u00020\u00022\b\b\u0001\u0010\n\u001a\u00020\u00022\b\b\u0001\u0010\u000b\u001a\u00020\u00022\b\b\u0001\u0010\f\u001a\u00020\u00022\b\b\u0001\u0010\r\u001a\u00020\u0002H'JJ\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000e2\b\b\u0001\u0010\u0004\u001a\u00020\u00022\b\b\u0001\u0010\u0005\u001a\u00020\u00022\b\b\u0001\u0010\n\u001a\u00020\u00022\b\b\u0001\u0010\u000b\u001a\u00020\u00022\b\b\u0001\u0010\f\u001a\u00020\u00022\b\b\u0001\u0010\r\u001a\u00020\u0002H'¨\u0006\u0012"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/data/nfc/CardVerificationAPI;", "", "", "serialNo", "token", "uuid", "file1", "file2", "file3", "signedData", "osVersion", "appVersion", "language", "mode", "Lud/b;", "Ltr/gov/turkiye/edevlet/kapisi/data/nfc/CardVerificationModel;", "fetchIDVerificationController", "sendSMSVerificationCode", "data_release"}, k = 1, mv = {1, 8, 0})
/* loaded from: classes3.dex */
public interface CardVerificationAPI {
    @e
    @o("nfc-kimlik-dogrulama?verifyKimlik")
    b<CardVerificationModel> fetchIDVerificationController(@c("seriNo") String serialNo, @c("token") String token, @c("uuid") String uuid, @c("file1") String file1, @c("file2") String file2, @c("file3") String file3, @c("signedData") String signedData, @c("operatingSystem") String osVersion, @c("appVersion") String appVersion, @c("language") String language, @c("mode") String mode);

    @e
    @o("nfc-kimlik-dogrulama?resendSMS")
    b<CardVerificationModel> sendSMSVerificationCode(@c("token") String token, @c("uuid") String uuid, @c("operatingSystem") String osVersion, @c("appVersion") String appVersion, @c("language") String language, @c("mode") String mode);
}
