package tr.gov.turkiye.edevlet.kapisi.data.otp;

import kotlin.Metadata;
import ud.b;
import xd.c;
import xd.e;
import xd.o;

@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0004\bf\u0018\u00002\u00020\u0001J6\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u00072\b\b\u0001\u0010\u0003\u001a\u00020\u00022\b\b\u0001\u0010\u0004\u001a\u00020\u00022\b\b\u0001\u0010\u0005\u001a\u00020\u00022\b\b\u0001\u0010\u0006\u001a\u00020\u0002H'JJ\u0010\r\u001a\b\u0012\u0004\u0012\u00020\f0\u00072\b\b\u0001\u0010\n\u001a\u00020\u00022\b\b\u0001\u0010\u000b\u001a\u00020\u00022\b\b\u0001\u0010\u0003\u001a\u00020\u00022\b\b\u0001\u0010\u0004\u001a\u00020\u00022\b\b\u0001\u0010\u0005\u001a\u00020\u00022\b\b\u0001\u0010\u0006\u001a\u00020\u0002H'Jr\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\b0\u00072\b\b\u0001\u0010\u000b\u001a\u00020\u00022\b\b\u0001\u0010\u000e\u001a\u00020\u00022\b\b\u0001\u0010\u000f\u001a\u00020\u00022\b\b\u0001\u0010\u0010\u001a\u00020\u00022\b\b\u0001\u0010\u0011\u001a\u00020\u00022\b\b\u0001\u0010\u0013\u001a\u00020\u00122\b\b\u0001\u0010\u0003\u001a\u00020\u00022\b\b\u0001\u0010\u0004\u001a\u00020\u00022\b\b\u0001\u0010\u0005\u001a\u00020\u00022\b\b\u0001\u0010\u0006\u001a\u00020\u0002H'J@\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\b0\u00072\b\b\u0001\u0010\u000e\u001a\u00020\u00022\b\b\u0001\u0010\u0003\u001a\u00020\u00022\b\b\u0001\u0010\u0004\u001a\u00020\u00022\b\b\u0001\u0010\u0005\u001a\u00020\u00022\b\b\u0001\u0010\u0006\u001a\u00020\u0002H'¨\u0006\u0016"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/data/otp/TwoFactorAuthAPI;", "", "", "osVersion", "appVersion", "language", "mode", "Lud/b;", "Ltr/gov/turkiye/edevlet/kapisi/data/otp/ServerTimeModel;", "fetchServerTime", "pidParam", "didParam", "Ltr/gov/turkiye/edevlet/kapisi/data/otp/TokenUpdateModel;", "updatePushToken", "tidParam", "tokenParam", "otpParam", "actionParam", "", "approvalType", "approveOperation", "deleteActivatedDevice", "data_release"}, k = 1, mv = {1, 8, 0})
/* loaded from: classes3.dex */
public interface TwoFactorAuthAPI {
    @e
    @o("Giris/PushOtpService/Approval")
    b<ServerTimeModel> approveOperation(@c("did") String didParam, @c("tid") String tidParam, @c("t") String tokenParam, @c("otp") String otpParam, @c("op") String actionParam, @c("approvalType") int approvalType, @c("operatingSystem") String osVersion, @c("appVersion") String appVersion, @c("language") String language, @c("mode") String mode);

    @e
    @o("Giris/PushOtpService/DeleteActivatedDevice")
    b<ServerTimeModel> deleteActivatedDevice(@c("tid") String tidParam, @c("operatingSystem") String osVersion, @c("appVersion") String appVersion, @c("language") String language, @c("mode") String mode);

    @e
    @o("Giris/NTPService")
    b<ServerTimeModel> fetchServerTime(@c("operatingSystem") String osVersion, @c("appVersion") String appVersion, @c("language") String language, @c("mode") String mode);

    @e
    @o("Giris/UpdateActivationService")
    b<TokenUpdateModel> updatePushToken(@c("pid") String pidParam, @c("did") String didParam, @c("operatingSystem") String osVersion, @c("appVersion") String appVersion, @c("language") String language, @c("mode") String mode);
}
