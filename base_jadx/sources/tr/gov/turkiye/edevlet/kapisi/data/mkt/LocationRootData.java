package tr.gov.turkiye.edevlet.kapisi.data.mkt;

import androidx.camera.camera2.internal.c;
import androidx.room.util.a;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.h;
import l8.k;

@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u001e\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001Ba\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00010\u0003\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00010\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\b\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\f\u0012\u0006\u0010\r\u001a\u00020\u0006\u0012\u0006\u0010\u000e\u001a\u00020\u0006\u0012\u0006\u0010\u000f\u001a\u00020\u0006¢\u0006\u0002\u0010\u0010J\u000f\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u00010\u0003HÆ\u0003J\t\u0010 \u001a\u00020\u0006HÆ\u0003J\u000f\u0010!\u001a\b\u0012\u0004\u0012\u00020\u00010\u0003HÆ\u0003J\t\u0010\"\u001a\u00020\u0006HÆ\u0003J\t\u0010#\u001a\u00020\u0006HÆ\u0003J\t\u0010$\u001a\u00020\u0006HÆ\u0003J\t\u0010%\u001a\u00020\nHÆ\u0003J\t\u0010&\u001a\u00020\fHÆ\u0003J\t\u0010'\u001a\u00020\u0006HÆ\u0003J\t\u0010(\u001a\u00020\u0006HÆ\u0003Jy\u0010)\u001a\u00020\u00002\u000e\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00010\u00032\u000e\b\u0002\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00010\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\u00062\b\b\u0002\u0010\b\u001a\u00020\u00062\b\b\u0002\u0010\t\u001a\u00020\n2\b\b\u0002\u0010\u000b\u001a\u00020\f2\b\b\u0002\u0010\r\u001a\u00020\u00062\b\b\u0002\u0010\u000e\u001a\u00020\u00062\b\b\u0002\u0010\u000f\u001a\u00020\u0006HÆ\u0001J\u0013\u0010*\u001a\u00020+2\b\u0010,\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010-\u001a\u00020\fHÖ\u0001J\t\u0010.\u001a\u00020\u0006HÖ\u0001R\u001c\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u001c\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0012R\u0016\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015R\u0016\u0010\u0007\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0015R\u0016\u0010\b\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0015R\u0016\u0010\t\u001a\u00020\n8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0019R\u0016\u0010\u000b\u001a\u00020\f8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u001bR\u0016\u0010\r\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u0015R\u0016\u0010\u000e\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u0015R\u0016\u0010\u000f\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u0015¨\u0006/"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/data/mkt/LocationRootData;", "", "accidentAddress", "", "accidentPoint", "city", "", "createDate", "deviceAddress", "devicePoint", "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DevicePoint;", "deviceRadius", "", "district", "id", "updateDate", "(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DevicePoint;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getAccidentAddress", "()Ljava/util/List;", "getAccidentPoint", "getCity", "()Ljava/lang/String;", "getCreateDate", "getDeviceAddress", "getDevicePoint", "()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DevicePoint;", "getDeviceRadius", "()I", "getDistrict", "getId", "getUpdateDate", "component1", "component10", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "equals", "", "other", "hashCode", "toString", "data_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes3.dex */
public final /* data */ class LocationRootData {

    @k(name = "accidentAddress")
    private final List<Object> accidentAddress;

    @k(name = "accidentPoint")
    private final List<Object> accidentPoint;

    @k(name = "city")
    private final String city;

    @k(name = "createDate")
    private final String createDate;

    @k(name = "deviceAddress")
    private final String deviceAddress;

    @k(name = "devicePoint")
    private final DevicePoint devicePoint;

    @k(name = "deviceRadius")
    private final int deviceRadius;

    @k(name = "district")
    private final String district;

    @k(name = "id")
    private final String id;

    @k(name = "updateDate")
    private final String updateDate;

    public LocationRootData(List<? extends Object> accidentAddress, List<? extends Object> accidentPoint, String city, String createDate, String deviceAddress, DevicePoint devicePoint, int r82, String district, String id2, String updateDate) {
        h.f(accidentAddress, "accidentAddress");
        h.f(accidentPoint, "accidentPoint");
        h.f(city, "city");
        h.f(createDate, "createDate");
        h.f(deviceAddress, "deviceAddress");
        h.f(devicePoint, "devicePoint");
        h.f(district, "district");
        h.f(id2, "id");
        h.f(updateDate, "updateDate");
        this.accidentAddress = accidentAddress;
        this.accidentPoint = accidentPoint;
        this.city = city;
        this.createDate = createDate;
        this.deviceAddress = deviceAddress;
        this.devicePoint = devicePoint;
        this.deviceRadius = r82;
        this.district = district;
        this.id = id2;
        this.updateDate = updateDate;
    }

    public final List<Object> component1() {
        return this.accidentAddress;
    }

    /* renamed from: component10, reason: from getter */
    public final String getUpdateDate() {
        return this.updateDate;
    }

    public final List<Object> component2() {
        return this.accidentPoint;
    }

    /* renamed from: component3, reason: from getter */
    public final String getCity() {
        return this.city;
    }

    /* renamed from: component4, reason: from getter */
    public final String getCreateDate() {
        return this.createDate;
    }

    /* renamed from: component5, reason: from getter */
    public final String getDeviceAddress() {
        return this.deviceAddress;
    }

    /* renamed from: component6, reason: from getter */
    public final DevicePoint getDevicePoint() {
        return this.devicePoint;
    }

    /* renamed from: component7, reason: from getter */
    public final int getDeviceRadius() {
        return this.deviceRadius;
    }

    /* renamed from: component8, reason: from getter */
    public final String getDistrict() {
        return this.district;
    }

    /* renamed from: component9, reason: from getter */
    public final String getId() {
        return this.id;
    }

    public final LocationRootData copy(List<? extends Object> accidentAddress, List<? extends Object> accidentPoint, String city, String createDate, String deviceAddress, DevicePoint devicePoint, int deviceRadius, String district, String id2, String updateDate) {
        h.f(accidentAddress, "accidentAddress");
        h.f(accidentPoint, "accidentPoint");
        h.f(city, "city");
        h.f(createDate, "createDate");
        h.f(deviceAddress, "deviceAddress");
        h.f(devicePoint, "devicePoint");
        h.f(district, "district");
        h.f(id2, "id");
        h.f(updateDate, "updateDate");
        return new LocationRootData(accidentAddress, accidentPoint, city, createDate, deviceAddress, devicePoint, deviceRadius, district, id2, updateDate);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof LocationRootData)) {
            return false;
        }
        LocationRootData locationRootData = (LocationRootData) other;
        return h.a(this.accidentAddress, locationRootData.accidentAddress) && h.a(this.accidentPoint, locationRootData.accidentPoint) && h.a(this.city, locationRootData.city) && h.a(this.createDate, locationRootData.createDate) && h.a(this.deviceAddress, locationRootData.deviceAddress) && h.a(this.devicePoint, locationRootData.devicePoint) && this.deviceRadius == locationRootData.deviceRadius && h.a(this.district, locationRootData.district) && h.a(this.id, locationRootData.id) && h.a(this.updateDate, locationRootData.updateDate);
    }

    public final List<Object> getAccidentAddress() {
        return this.accidentAddress;
    }

    public final List<Object> getAccidentPoint() {
        return this.accidentPoint;
    }

    public final String getCity() {
        return this.city;
    }

    public final String getCreateDate() {
        return this.createDate;
    }

    public final String getDeviceAddress() {
        return this.deviceAddress;
    }

    public final DevicePoint getDevicePoint() {
        return this.devicePoint;
    }

    public final int getDeviceRadius() {
        return this.deviceRadius;
    }

    public final String getDistrict() {
        return this.district;
    }

    public final String getId() {
        return this.id;
    }

    public final String getUpdateDate() {
        return this.updateDate;
    }

    public int hashCode() {
        return this.updateDate.hashCode() + a.a(this.id, a.a(this.district, (((this.devicePoint.hashCode() + a.a(this.deviceAddress, a.a(this.createDate, a.a(this.city, c.c(this.accidentPoint, this.accidentAddress.hashCode() * 31, 31), 31), 31), 31)) * 31) + this.deviceRadius) * 31, 31), 31);
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("LocationRootData(accidentAddress=");
        sb2.append(this.accidentAddress);
        sb2.append(", accidentPoint=");
        sb2.append(this.accidentPoint);
        sb2.append(", city=");
        sb2.append(this.city);
        sb2.append(", createDate=");
        sb2.append(this.createDate);
        sb2.append(", deviceAddress=");
        sb2.append(this.deviceAddress);
        sb2.append(", devicePoint=");
        sb2.append(this.devicePoint);
        sb2.append(", deviceRadius=");
        sb2.append(this.deviceRadius);
        sb2.append(", district=");
        sb2.append(this.district);
        sb2.append(", id=");
        sb2.append(this.id);
        sb2.append(", updateDate=");
        return android.support.v4.media.a.h(sb2, this.updateDate, ')');
    }
}
