package eg;

/* loaded from: classes3.dex */
public final class c {

    @l8.k(name = "map")
    private final m locationInfo;

    public c(m locationInfo) {
        kotlin.jvm.internal.h.f(locationInfo, "locationInfo");
        this.locationInfo = locationInfo;
    }

    public final m a() {
        return this.locationInfo;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof c) && kotlin.jvm.internal.h.a(this.locationInfo, ((c) obj).locationInfo);
    }

    public final int hashCode() {
        return this.locationInfo.hashCode();
    }

    public final String toString() {
        return "Location(locationInfo=" + this.locationInfo + ')';
    }
}
