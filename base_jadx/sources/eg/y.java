package eg;

import java.util.List;

/* loaded from: classes3.dex */
public final class y {

    @l8.k(name = "myArrayList")
    private final List<Object> vehicleList;

    public y(List<Object> vehicleList) {
        kotlin.jvm.internal.h.f(vehicleList, "vehicleList");
        this.vehicleList = vehicleList;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof y) && kotlin.jvm.internal.h.a(this.vehicleList, ((y) obj).vehicleList);
    }

    public final int hashCode() {
        return this.vehicleList.hashCode();
    }

    public final String toString() {
        return android.support.v4.media.a.j(new StringBuilder("Vehicles(vehicleList="), this.vehicleList, ')');
    }
}
