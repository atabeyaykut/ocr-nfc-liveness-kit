package eg;

/* loaded from: classes3.dex */
public final class x {

    @l8.k(name = "map")
    private final t reportVehicleInfo;

    public x(t reportVehicleInfo) {
        kotlin.jvm.internal.h.f(reportVehicleInfo, "reportVehicleInfo");
        this.reportVehicleInfo = reportVehicleInfo;
    }

    public final t a() {
        return this.reportVehicleInfo;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof x) && kotlin.jvm.internal.h.a(this.reportVehicleInfo, ((x) obj).reportVehicleInfo);
    }

    public final int hashCode() {
        return this.reportVehicleInfo.hashCode();
    }

    public final String toString() {
        return "Vehicle(reportVehicleInfo=" + this.reportVehicleInfo + ')';
    }
}
