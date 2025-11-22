package tr.gov.turkiye.edevlet.kapisi.data.mkt;

import androidx.browser.browseractions.b;
import kotlin.Metadata;
import l8.k;

@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\u00032\b\u0010\n\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u000b\u001a\u00020\fHÖ\u0001J\t\u0010\r\u001a\u00020\u000eHÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u000f"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ControlConfirmationRequestInfo;", "", "result", "", "(Z)V", "getResult", "()Z", "component1", "copy", "equals", "other", "hashCode", "", "toString", "", "data_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes3.dex */
public final /* data */ class ControlConfirmationRequestInfo {

    @k(name = "result")
    private final boolean result;

    public ControlConfirmationRequestInfo(boolean z10) {
        this.result = z10;
    }

    public static /* synthetic */ ControlConfirmationRequestInfo copy$default(ControlConfirmationRequestInfo controlConfirmationRequestInfo, boolean z10, int r22, Object obj) {
        if ((r22 & 1) != 0) {
            z10 = controlConfirmationRequestInfo.result;
        }
        return controlConfirmationRequestInfo.copy(z10);
    }

    /* renamed from: component1, reason: from getter */
    public final boolean getResult() {
        return this.result;
    }

    public final ControlConfirmationRequestInfo copy(boolean result) {
        return new ControlConfirmationRequestInfo(result);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof ControlConfirmationRequestInfo) && this.result == ((ControlConfirmationRequestInfo) other).result;
    }

    public final boolean getResult() {
        return this.result;
    }

    public int hashCode() {
        boolean z10 = this.result;
        if (z10) {
            return 1;
        }
        return z10 ? 1 : 0;
    }

    public String toString() {
        return b.f(new StringBuilder("ControlConfirmationRequestInfo(result="), this.result, ')');
    }
}
