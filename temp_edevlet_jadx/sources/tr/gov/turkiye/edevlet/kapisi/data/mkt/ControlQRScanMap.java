package tr.gov.turkiye.edevlet.kapisi.data.mkt;

import kotlin.Metadata;
import kotlin.jvm.internal.h;
import l8.k;

@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\f\u001a\u00020\rHÖ\u0001J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0010"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ControlQRScanMap;", "", "controlQRScanSubData", "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ControlQRScanSubData;", "(Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ControlQRScanSubData;)V", "getControlQRScanSubData", "()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ControlQRScanSubData;", "component1", "copy", "equals", "", "other", "hashCode", "", "toString", "", "data_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes3.dex */
public final /* data */ class ControlQRScanMap {

    @k(name = "data")
    private final ControlQRScanSubData controlQRScanSubData;

    public ControlQRScanMap(ControlQRScanSubData controlQRScanSubData) {
        h.f(controlQRScanSubData, "controlQRScanSubData");
        this.controlQRScanSubData = controlQRScanSubData;
    }

    public static /* synthetic */ ControlQRScanMap copy$default(ControlQRScanMap controlQRScanMap, ControlQRScanSubData controlQRScanSubData, int r22, Object obj) {
        if ((r22 & 1) != 0) {
            controlQRScanSubData = controlQRScanMap.controlQRScanSubData;
        }
        return controlQRScanMap.copy(controlQRScanSubData);
    }

    /* renamed from: component1, reason: from getter */
    public final ControlQRScanSubData getControlQRScanSubData() {
        return this.controlQRScanSubData;
    }

    public final ControlQRScanMap copy(ControlQRScanSubData controlQRScanSubData) {
        h.f(controlQRScanSubData, "controlQRScanSubData");
        return new ControlQRScanMap(controlQRScanSubData);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof ControlQRScanMap) && h.a(this.controlQRScanSubData, ((ControlQRScanMap) other).controlQRScanSubData);
    }

    public final ControlQRScanSubData getControlQRScanSubData() {
        return this.controlQRScanSubData;
    }

    public int hashCode() {
        return this.controlQRScanSubData.hashCode();
    }

    public String toString() {
        return "ControlQRScanMap(controlQRScanSubData=" + this.controlQRScanSubData + ')';
    }
}
