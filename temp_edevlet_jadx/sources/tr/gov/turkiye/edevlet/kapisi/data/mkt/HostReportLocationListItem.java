package tr.gov.turkiye.edevlet.kapisi.data.mkt;

import android.support.v4.media.a;
import kotlin.Metadata;
import kotlin.jvm.internal.h;
import l8.k;

@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\u0003¢\u0006\u0002\u0010\tJ\t\u0010\u0011\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0012\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0013\u001a\u00020\u0007HÆ\u0003J\t\u0010\u0014\u001a\u00020\u0003HÆ\u0003J1\u0010\u0015\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u0016\u001a\u00020\u00172\b\u0010\u0018\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0019\u001a\u00020\u001aHÖ\u0001J\t\u0010\u001b\u001a\u00020\u0003HÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0016\u0010\b\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000bR\u0016\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010¨\u0006\u001c"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/data/mkt/HostReportLocationListItem;", "", "accidentAddress", "", "accidentPoint", "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/HostReportLocationAccidentPoint;", "devicePoint", "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/HostReportLocationDevicePoint;", "deviceAddress", "(Ljava/lang/String;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/HostReportLocationAccidentPoint;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/HostReportLocationDevicePoint;Ljava/lang/String;)V", "getAccidentAddress", "()Ljava/lang/String;", "getAccidentPoint", "()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/HostReportLocationAccidentPoint;", "getDeviceAddress", "getDevicePoint", "()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/HostReportLocationDevicePoint;", "component1", "component2", "component3", "component4", "copy", "equals", "", "other", "hashCode", "", "toString", "data_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes3.dex */
public final /* data */ class HostReportLocationListItem {

    @k(name = "accidentAddress")
    private final String accidentAddress;

    @k(name = "accidentPoint")
    private final HostReportLocationAccidentPoint accidentPoint;

    @k(name = "deviceAddress")
    private final String deviceAddress;

    @k(name = "devicePoint")
    private final HostReportLocationDevicePoint devicePoint;

    public HostReportLocationListItem(String accidentAddress, HostReportLocationAccidentPoint accidentPoint, HostReportLocationDevicePoint devicePoint, String deviceAddress) {
        h.f(accidentAddress, "accidentAddress");
        h.f(accidentPoint, "accidentPoint");
        h.f(devicePoint, "devicePoint");
        h.f(deviceAddress, "deviceAddress");
        this.accidentAddress = accidentAddress;
        this.accidentPoint = accidentPoint;
        this.devicePoint = devicePoint;
        this.deviceAddress = deviceAddress;
    }

    public static /* synthetic */ HostReportLocationListItem copy$default(HostReportLocationListItem hostReportLocationListItem, String str, HostReportLocationAccidentPoint hostReportLocationAccidentPoint, HostReportLocationDevicePoint hostReportLocationDevicePoint, String str2, int r52, Object obj) {
        if ((r52 & 1) != 0) {
            str = hostReportLocationListItem.accidentAddress;
        }
        if ((r52 & 2) != 0) {
            hostReportLocationAccidentPoint = hostReportLocationListItem.accidentPoint;
        }
        if ((r52 & 4) != 0) {
            hostReportLocationDevicePoint = hostReportLocationListItem.devicePoint;
        }
        if ((r52 & 8) != 0) {
            str2 = hostReportLocationListItem.deviceAddress;
        }
        return hostReportLocationListItem.copy(str, hostReportLocationAccidentPoint, hostReportLocationDevicePoint, str2);
    }

    /* renamed from: component1, reason: from getter */
    public final String getAccidentAddress() {
        return this.accidentAddress;
    }

    /* renamed from: component2, reason: from getter */
    public final HostReportLocationAccidentPoint getAccidentPoint() {
        return this.accidentPoint;
    }

    /* renamed from: component3, reason: from getter */
    public final HostReportLocationDevicePoint getDevicePoint() {
        return this.devicePoint;
    }

    /* renamed from: component4, reason: from getter */
    public final String getDeviceAddress() {
        return this.deviceAddress;
    }

    public final HostReportLocationListItem copy(String accidentAddress, HostReportLocationAccidentPoint accidentPoint, HostReportLocationDevicePoint devicePoint, String deviceAddress) {
        h.f(accidentAddress, "accidentAddress");
        h.f(accidentPoint, "accidentPoint");
        h.f(devicePoint, "devicePoint");
        h.f(deviceAddress, "deviceAddress");
        return new HostReportLocationListItem(accidentAddress, accidentPoint, devicePoint, deviceAddress);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof HostReportLocationListItem)) {
            return false;
        }
        HostReportLocationListItem hostReportLocationListItem = (HostReportLocationListItem) other;
        return h.a(this.accidentAddress, hostReportLocationListItem.accidentAddress) && h.a(this.accidentPoint, hostReportLocationListItem.accidentPoint) && h.a(this.devicePoint, hostReportLocationListItem.devicePoint) && h.a(this.deviceAddress, hostReportLocationListItem.deviceAddress);
    }

    public final String getAccidentAddress() {
        return this.accidentAddress;
    }

    public final HostReportLocationAccidentPoint getAccidentPoint() {
        return this.accidentPoint;
    }

    public final String getDeviceAddress() {
        return this.deviceAddress;
    }

    public final HostReportLocationDevicePoint getDevicePoint() {
        return this.devicePoint;
    }

    public int hashCode() {
        return this.deviceAddress.hashCode() + ((this.devicePoint.hashCode() + ((this.accidentPoint.hashCode() + (this.accidentAddress.hashCode() * 31)) * 31)) * 31);
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("HostReportLocationListItem(accidentAddress=");
        sb2.append(this.accidentAddress);
        sb2.append(", accidentPoint=");
        sb2.append(this.accidentPoint);
        sb2.append(", devicePoint=");
        sb2.append(this.devicePoint);
        sb2.append(", deviceAddress=");
        return a.h(sb2, this.deviceAddress, ')');
    }
}
