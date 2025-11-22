package eg;

/* loaded from: classes3.dex */
public final class j {

    @l8.k(name = "map")
    private final k reportDevicePointInfo;

    public j(k reportDevicePointInfo) {
        kotlin.jvm.internal.h.f(reportDevicePointInfo, "reportDevicePointInfo");
        this.reportDevicePointInfo = reportDevicePointInfo;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof j) && kotlin.jvm.internal.h.a(this.reportDevicePointInfo, ((j) obj).reportDevicePointInfo);
    }

    public final int hashCode() {
        return this.reportDevicePointInfo.hashCode();
    }

    public final String toString() {
        return "ReportDevicePoint(reportDevicePointInfo=" + this.reportDevicePointInfo + ')';
    }
}
