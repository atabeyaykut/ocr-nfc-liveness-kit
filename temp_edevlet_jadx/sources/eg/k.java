package eg;

/* loaded from: classes3.dex */
public final class k {

    @l8.k(name = "latitude")
    private final double latitude;

    @l8.k(name = "longitude")
    private final double longitude;

    public k(double d10, double d11) {
        this.latitude = d10;
        this.longitude = d11;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof k)) {
            return false;
        }
        k kVar = (k) obj;
        return Double.compare(this.latitude, kVar.latitude) == 0 && Double.compare(this.longitude, kVar.longitude) == 0;
    }

    public final int hashCode() {
        long jDoubleToLongBits = Double.doubleToLongBits(this.latitude);
        int r12 = ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32))) * 31;
        long jDoubleToLongBits2 = Double.doubleToLongBits(this.longitude);
        return r12 + ((int) (jDoubleToLongBits2 ^ (jDoubleToLongBits2 >>> 32)));
    }

    public final String toString() {
        return "ReportDevicePointInfo(latitude=" + this.latitude + ", longitude=" + this.longitude + ')';
    }
}
