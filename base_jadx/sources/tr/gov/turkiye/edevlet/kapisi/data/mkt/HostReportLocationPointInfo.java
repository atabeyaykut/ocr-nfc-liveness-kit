package tr.gov.turkiye.edevlet.kapisi.data.mkt;

import kotlin.Metadata;
import l8.k;

@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0006\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005J\t\u0010\t\u001a\u00020\u0003HÆ\u0003J\t\u0010\n\u001a\u00020\u0003HÆ\u0003J\u001d\u0010\u000b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001J\t\u0010\u0011\u001a\u00020\u0012HÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\u0007¨\u0006\u0013"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/data/mkt/HostReportLocationPointInfo;", "", "latitude", "", "longitude", "(DD)V", "getLatitude", "()D", "getLongitude", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "", "data_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes3.dex */
public final /* data */ class HostReportLocationPointInfo {

    @k(name = "latitude")
    private final double latitude;

    @k(name = "longitude")
    private final double longitude;

    public HostReportLocationPointInfo(double d10, double d11) {
        this.latitude = d10;
        this.longitude = d11;
    }

    public static /* synthetic */ HostReportLocationPointInfo copy$default(HostReportLocationPointInfo hostReportLocationPointInfo, double d10, double d11, int r52, Object obj) {
        if ((r52 & 1) != 0) {
            d10 = hostReportLocationPointInfo.latitude;
        }
        if ((r52 & 2) != 0) {
            d11 = hostReportLocationPointInfo.longitude;
        }
        return hostReportLocationPointInfo.copy(d10, d11);
    }

    /* renamed from: component1, reason: from getter */
    public final double getLatitude() {
        return this.latitude;
    }

    /* renamed from: component2, reason: from getter */
    public final double getLongitude() {
        return this.longitude;
    }

    public final HostReportLocationPointInfo copy(double latitude, double longitude) {
        return new HostReportLocationPointInfo(latitude, longitude);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof HostReportLocationPointInfo)) {
            return false;
        }
        HostReportLocationPointInfo hostReportLocationPointInfo = (HostReportLocationPointInfo) other;
        return Double.compare(this.latitude, hostReportLocationPointInfo.latitude) == 0 && Double.compare(this.longitude, hostReportLocationPointInfo.longitude) == 0;
    }

    public final double getLatitude() {
        return this.latitude;
    }

    public final double getLongitude() {
        return this.longitude;
    }

    public int hashCode() {
        long jDoubleToLongBits = Double.doubleToLongBits(this.latitude);
        int r12 = ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32))) * 31;
        long jDoubleToLongBits2 = Double.doubleToLongBits(this.longitude);
        return r12 + ((int) (jDoubleToLongBits2 ^ (jDoubleToLongBits2 >>> 32)));
    }

    public String toString() {
        return "HostReportLocationPointInfo(latitude=" + this.latitude + ", longitude=" + this.longitude + ')';
    }
}
