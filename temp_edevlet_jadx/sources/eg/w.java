package eg;

import java.util.List;

/* loaded from: classes3.dex */
public final class w {

    @l8.k(name = "myArrayList")
    private final List<Object> trafficSignList;

    public w(List<? extends Object> trafficSignList) {
        kotlin.jvm.internal.h.f(trafficSignList, "trafficSignList");
        this.trafficSignList = trafficSignList;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof w) && kotlin.jvm.internal.h.a(this.trafficSignList, ((w) obj).trafficSignList);
    }

    public final int hashCode() {
        return this.trafficSignList.hashCode();
    }

    public final String toString() {
        return android.support.v4.media.a.j(new StringBuilder("TrafficSigns(trafficSignList="), this.trafficSignList, ')');
    }
}
