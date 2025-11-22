package tr.gov.turkiye.edevlet.kapisi.data.mkt;

import kotlin.Metadata;
import kotlin.jvm.internal.h;
import l8.k;

@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\f\u001a\u00020\rHÖ\u0001J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0010"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ConfirmationHostRequestObject;", "", "confirmationHostRequestInfo", "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ConfirmationHostRequestInfo;", "(Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ConfirmationHostRequestInfo;)V", "getConfirmationHostRequestInfo", "()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ConfirmationHostRequestInfo;", "component1", "copy", "equals", "", "other", "hashCode", "", "toString", "", "data_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes3.dex */
public final /* data */ class ConfirmationHostRequestObject {

    @k(name = "map")
    private final ConfirmationHostRequestInfo confirmationHostRequestInfo;

    public ConfirmationHostRequestObject(ConfirmationHostRequestInfo confirmationHostRequestInfo) {
        h.f(confirmationHostRequestInfo, "confirmationHostRequestInfo");
        this.confirmationHostRequestInfo = confirmationHostRequestInfo;
    }

    public static /* synthetic */ ConfirmationHostRequestObject copy$default(ConfirmationHostRequestObject confirmationHostRequestObject, ConfirmationHostRequestInfo confirmationHostRequestInfo, int r22, Object obj) {
        if ((r22 & 1) != 0) {
            confirmationHostRequestInfo = confirmationHostRequestObject.confirmationHostRequestInfo;
        }
        return confirmationHostRequestObject.copy(confirmationHostRequestInfo);
    }

    /* renamed from: component1, reason: from getter */
    public final ConfirmationHostRequestInfo getConfirmationHostRequestInfo() {
        return this.confirmationHostRequestInfo;
    }

    public final ConfirmationHostRequestObject copy(ConfirmationHostRequestInfo confirmationHostRequestInfo) {
        h.f(confirmationHostRequestInfo, "confirmationHostRequestInfo");
        return new ConfirmationHostRequestObject(confirmationHostRequestInfo);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof ConfirmationHostRequestObject) && h.a(this.confirmationHostRequestInfo, ((ConfirmationHostRequestObject) other).confirmationHostRequestInfo);
    }

    public final ConfirmationHostRequestInfo getConfirmationHostRequestInfo() {
        return this.confirmationHostRequestInfo;
    }

    public int hashCode() {
        return this.confirmationHostRequestInfo.hashCode();
    }

    public String toString() {
        return "ConfirmationHostRequestObject(confirmationHostRequestInfo=" + this.confirmationHostRequestInfo + ')';
    }
}
