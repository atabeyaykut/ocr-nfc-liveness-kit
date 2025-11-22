package tr.gov.turkiye.edevlet.kapisi.data.mkt;

import androidx.room.util.a;
import kotlin.Metadata;
import kotlin.jvm.internal.h;
import l8.k;

@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u001e\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001BU\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\b\u001a\u00020\u0003\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\f\u0012\u0006\u0010\r\u001a\u00020\u0003\u0012\u0006\u0010\u000e\u001a\u00020\u0003\u0012\u0006\u0010\u000f\u001a\u00020\u0003¢\u0006\u0002\u0010\u0010J\t\u0010\u001f\u001a\u00020\u0003HÆ\u0003J\t\u0010 \u001a\u00020\u0003HÆ\u0003J\t\u0010!\u001a\u00020\u0005HÆ\u0003J\t\u0010\"\u001a\u00020\u0003HÆ\u0003J\t\u0010#\u001a\u00020\u0003HÆ\u0003J\t\u0010$\u001a\u00020\u0003HÆ\u0003J\t\u0010%\u001a\u00020\nHÆ\u0003J\t\u0010&\u001a\u00020\fHÆ\u0003J\t\u0010'\u001a\u00020\u0003HÆ\u0003J\t\u0010(\u001a\u00020\u0003HÆ\u0003Jm\u0010)\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00032\b\b\u0002\u0010\u0007\u001a\u00020\u00032\b\b\u0002\u0010\b\u001a\u00020\u00032\b\b\u0002\u0010\t\u001a\u00020\n2\b\b\u0002\u0010\u000b\u001a\u00020\f2\b\b\u0002\u0010\r\u001a\u00020\u00032\b\b\u0002\u0010\u000e\u001a\u00020\u00032\b\b\u0002\u0010\u000f\u001a\u00020\u0003HÆ\u0001J\u0013\u0010*\u001a\u00020+2\b\u0010,\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010-\u001a\u00020\fHÖ\u0001J\t\u0010.\u001a\u00020\u0003HÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u0016\u0010\u0006\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0012R\u0016\u0010\u0007\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0012R\u0016\u0010\b\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0012R\u0016\u0010\t\u001a\u00020\n8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0019R\u0016\u0010\u000b\u001a\u00020\f8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u001bR\u0016\u0010\r\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u0012R\u0016\u0010\u000e\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u0012R\u0016\u0010\u000f\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u0012¨\u0006/"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/data/mkt/LocationSaveInfo;", "", "accidentAddress", "", "accidentPoint", "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentLocationPoint;", "city", "createDate", "deviceAddress", "devicePoint", "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DeviceLocationPoint;", "deviceRadius", "", "district", "id", "updateDate", "(Ljava/lang/String;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentLocationPoint;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DeviceLocationPoint;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getAccidentAddress", "()Ljava/lang/String;", "getAccidentPoint", "()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentLocationPoint;", "getCity", "getCreateDate", "getDeviceAddress", "getDevicePoint", "()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DeviceLocationPoint;", "getDeviceRadius", "()I", "getDistrict", "getId", "getUpdateDate", "component1", "component10", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "equals", "", "other", "hashCode", "toString", "data_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes3.dex */
public final /* data */ class LocationSaveInfo {

    @k(name = "accidentAddress")
    private final String accidentAddress;

    @k(name = "accidentPoint")
    private final AccidentLocationPoint accidentPoint;

    @k(name = "city")
    private final String city;

    @k(name = "createDate")
    private final String createDate;

    @k(name = "deviceAddress")
    private final String deviceAddress;

    @k(name = "devicePoint")
    private final DeviceLocationPoint devicePoint;

    @k(name = "deviceRadius")
    private final int deviceRadius;

    @k(name = "district")
    private final String district;

    @k(name = "id")
    private final String id;

    @k(name = "updateDate")
    private final String updateDate;

    public LocationSaveInfo(String accidentAddress, AccidentLocationPoint accidentPoint, String city, String createDate, String deviceAddress, DeviceLocationPoint devicePoint, int r82, String district, String id2, String updateDate) {
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

    /* renamed from: component1, reason: from getter */
    public final String getAccidentAddress() {
        return this.accidentAddress;
    }

    /* renamed from: component10, reason: from getter */
    public final String getUpdateDate() {
        return this.updateDate;
    }

    /* renamed from: component2, reason: from getter */
    public final AccidentLocationPoint getAccidentPoint() {
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
    public final DeviceLocationPoint getDevicePoint() {
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

    public final LocationSaveInfo copy(String accidentAddress, AccidentLocationPoint accidentPoint, String city, String createDate, String deviceAddress, DeviceLocationPoint devicePoint, int deviceRadius, String district, String id2, String updateDate) {
        h.f(accidentAddress, "accidentAddress");
        h.f(accidentPoint, "accidentPoint");
        h.f(city, "city");
        h.f(createDate, "createDate");
        h.f(deviceAddress, "deviceAddress");
        h.f(devicePoint, "devicePoint");
        h.f(district, "district");
        h.f(id2, "id");
        h.f(updateDate, "updateDate");
        return new LocationSaveInfo(accidentAddress, accidentPoint, city, createDate, deviceAddress, devicePoint, deviceRadius, district, id2, updateDate);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof LocationSaveInfo)) {
            return false;
        }
        LocationSaveInfo locationSaveInfo = (LocationSaveInfo) other;
        return h.a(this.accidentAddress, locationSaveInfo.accidentAddress) && h.a(this.accidentPoint, locationSaveInfo.accidentPoint) && h.a(this.city, locationSaveInfo.city) && h.a(this.createDate, locationSaveInfo.createDate) && h.a(this.deviceAddress, locationSaveInfo.deviceAddress) && h.a(this.devicePoint, locationSaveInfo.devicePoint) && this.deviceRadius == locationSaveInfo.deviceRadius && h.a(this.district, locationSaveInfo.district) && h.a(this.id, locationSaveInfo.id) && h.a(this.updateDate, locationSaveInfo.updateDate);
    }

    public final String getAccidentAddress() {
        return this.accidentAddress;
    }

    public final AccidentLocationPoint getAccidentPoint() {
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

    public final DeviceLocationPoint getDevicePoint() {
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
        return this.updateDate.hashCode() + a.a(this.id, a.a(this.district, (((this.devicePoint.hashCode() + a.a(this.deviceAddress, a.a(this.createDate, a.a(this.city, (this.accidentPoint.hashCode() + (this.accidentAddress.hashCode() * 31)) * 31, 31), 31), 31)) * 31) + this.deviceRadius) * 31, 31), 31);
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("LocationSaveInfo(accidentAddress=");
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
