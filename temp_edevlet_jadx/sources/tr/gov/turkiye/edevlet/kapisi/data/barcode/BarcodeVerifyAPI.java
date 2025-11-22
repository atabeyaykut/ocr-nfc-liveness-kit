package tr.gov.turkiye.edevlet.kapisi.data.barcode;

import kotlin.Metadata;
import ud.b;
import xd.c;
import xd.e;
import xd.o;

@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J@\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\b2\b\b\u0001\u0010\u0003\u001a\u00020\u00022\b\b\u0001\u0010\u0004\u001a\u00020\u00022\b\b\u0001\u0010\u0005\u001a\u00020\u00022\b\b\u0001\u0010\u0006\u001a\u00020\u00022\b\b\u0001\u0010\u0007\u001a\u00020\u0002H'JJ\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\r0\b2\b\b\u0001\u0010\u000b\u001a\u00020\u00022\b\b\u0001\u0010\f\u001a\u00020\u00022\b\b\u0001\u0010\u0004\u001a\u00020\u00022\b\b\u0001\u0010\u0005\u001a\u00020\u00022\b\b\u0001\u0010\u0006\u001a\u00020\u00022\b\b\u0001\u0010\u0007\u001a\u00020\u0002H'¨\u0006\u000f"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/data/barcode/BarcodeVerifyAPI;", "", "", "qrResult", "platform", "appVersion", "language", "mode", "Lud/b;", "Ltr/gov/turkiye/edevlet/kapisi/data/barcode/BarcodeVerifyModel;", "verifyDocument", "type", "barcode", "Ltr/gov/turkiye/edevlet/kapisi/data/barcode/BarcodeVerifyFieldListModel;", "fetchValidationFields", "data_release"}, k = 1, mv = {1, 8, 0})
/* loaded from: classes3.dex */
public interface BarcodeVerifyAPI {
    @e
    @o("belge-dogrulama")
    b<BarcodeVerifyFieldListModel> fetchValidationFields(@c("field") String type, @c("sorgulananBarkod") String barcode, @c("os") String platform, @c("appVersion") String appVersion, @c("language") String language, @c("mode") String mode);

    @e
    @o("belge-dogrulama")
    b<BarcodeVerifyModel> verifyDocument(@c("qr") String qrResult, @c("os") String platform, @c("appVersion") String appVersion, @c("language") String language, @c("mode") String mode);
}
