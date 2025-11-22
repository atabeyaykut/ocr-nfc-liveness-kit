package eg;

import java.util.List;

/* loaded from: classes3.dex */
public final class z {

    @l8.k(name = "myArrayList")
    private final List<Object> witnessList;

    public z(List<? extends Object> witnessList) {
        kotlin.jvm.internal.h.f(witnessList, "witnessList");
        this.witnessList = witnessList;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof z) && kotlin.jvm.internal.h.a(this.witnessList, ((z) obj).witnessList);
    }

    public final int hashCode() {
        return this.witnessList.hashCode();
    }

    public final String toString() {
        return android.support.v4.media.a.j(new StringBuilder("Witnesses(witnessList="), this.witnessList, ')');
    }
}
