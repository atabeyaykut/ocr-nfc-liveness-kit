package eg;

/* loaded from: classes3.dex */
public final class a {

    @l8.k(name = "map")
    private final b driverInfo;

    public a(b driverInfo) {
        kotlin.jvm.internal.h.f(driverInfo, "driverInfo");
        this.driverInfo = driverInfo;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof a) && kotlin.jvm.internal.h.a(this.driverInfo, ((a) obj).driverInfo);
    }

    public final int hashCode() {
        return this.driverInfo.hashCode();
    }

    public final String toString() {
        return "Driver(driverInfo=" + this.driverInfo + ')';
    }
}
