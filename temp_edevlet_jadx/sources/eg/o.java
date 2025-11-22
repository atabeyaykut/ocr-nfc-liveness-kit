package eg;

/* loaded from: classes3.dex */
public final class o {

    @l8.k(name = "map")
    private final n map;

    public o(n map) {
        kotlin.jvm.internal.h.f(map, "map");
        this.map = map;
    }

    public final n a() {
        return this.map;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof o) && kotlin.jvm.internal.h.a(this.map, ((o) obj).map);
    }

    public final int hashCode() {
        return this.map.hashCode();
    }

    public final String toString() {
        return "ReportParticipantItem(map=" + this.map + ')';
    }
}
