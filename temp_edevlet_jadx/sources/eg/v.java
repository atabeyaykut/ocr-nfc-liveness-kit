package eg;

/* loaded from: classes3.dex */
public final class v {

    @l8.k(name = "height")
    private final int height;

    @l8.k(name = "roadType")
    private final String roadType;

    @l8.k(name = "trafficSigns")
    private final w trafficSigns;

    @l8.k(name = "vehicles")
    private final y vehicles;

    @l8.k(name = "width")
    private final int width;

    public v(int r22, String roadType, w trafficSigns, y vehicles, int r6) {
        kotlin.jvm.internal.h.f(roadType, "roadType");
        kotlin.jvm.internal.h.f(trafficSigns, "trafficSigns");
        kotlin.jvm.internal.h.f(vehicles, "vehicles");
        this.height = r22;
        this.roadType = roadType;
        this.trafficSigns = trafficSigns;
        this.vehicles = vehicles;
        this.width = r6;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof v)) {
            return false;
        }
        v vVar = (v) obj;
        return this.height == vVar.height && kotlin.jvm.internal.h.a(this.roadType, vVar.roadType) && kotlin.jvm.internal.h.a(this.trafficSigns, vVar.trafficSigns) && kotlin.jvm.internal.h.a(this.vehicles, vVar.vehicles) && this.width == vVar.width;
    }

    public final int hashCode() {
        return ((this.vehicles.hashCode() + ((this.trafficSigns.hashCode() + androidx.room.util.a.a(this.roadType, this.height * 31, 31)) * 31)) * 31) + this.width;
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder("ScenarioInfo(height=");
        sb2.append(this.height);
        sb2.append(", roadType=");
        sb2.append(this.roadType);
        sb2.append(", trafficSigns=");
        sb2.append(this.trafficSigns);
        sb2.append(", vehicles=");
        sb2.append(this.vehicles);
        sb2.append(", width=");
        return androidx.constraintlayout.core.a.d(sb2, this.width, ')');
    }
}
