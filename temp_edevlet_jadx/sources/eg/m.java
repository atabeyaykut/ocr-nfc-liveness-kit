package eg;

import l8.u;
import tr.gov.turkiye.edevlet.kapisi.mkt.data.SpecifiedTypeOrNull;

/* loaded from: classes3.dex */
public final class m {

    @l8.k(name = "accidentAddress")
    private final String accidentAddress;

    @l8.k(name = "city")
    private final String city;

    @l8.k(name = "createDate")
    private final String createDate;

    @l8.k(name = "deviceAddress")
    private final String deviceAddress;

    @l8.k(name = "devicePoint")
    private final j devicePoint;

    @l8.k(name = "deviceRadius")
    private final int deviceRadius;

    @l8.k(name = "district")
    private final String district;

    /* renamed from: id, reason: collision with root package name */
    @l8.k(name = "id")
    private final String f5372id;

    @l8.k(name = "updateDate")
    private final String updateDate;

    public m(@SpecifiedTypeOrNull(token = u.b.STRING) String str, String city, String createDate, String deviceAddress, j devicePoint, int r72, String district, String id2, String updateDate) {
        kotlin.jvm.internal.h.f(city, "city");
        kotlin.jvm.internal.h.f(createDate, "createDate");
        kotlin.jvm.internal.h.f(deviceAddress, "deviceAddress");
        kotlin.jvm.internal.h.f(devicePoint, "devicePoint");
        kotlin.jvm.internal.h.f(district, "district");
        kotlin.jvm.internal.h.f(id2, "id");
        kotlin.jvm.internal.h.f(updateDate, "updateDate");
        this.accidentAddress = str;
        this.city = city;
        this.createDate = createDate;
        this.deviceAddress = deviceAddress;
        this.devicePoint = devicePoint;
        this.deviceRadius = r72;
        this.district = district;
        this.f5372id = id2;
        this.updateDate = updateDate;
    }

    public final String a() {
        return this.accidentAddress;
    }

    public final String b() {
        return this.city;
    }

    public final String c() {
        return this.deviceAddress;
    }

    public final String d() {
        return this.district;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof m)) {
            return false;
        }
        m mVar = (m) obj;
        return kotlin.jvm.internal.h.a(this.accidentAddress, mVar.accidentAddress) && kotlin.jvm.internal.h.a(this.city, mVar.city) && kotlin.jvm.internal.h.a(this.createDate, mVar.createDate) && kotlin.jvm.internal.h.a(this.deviceAddress, mVar.deviceAddress) && kotlin.jvm.internal.h.a(this.devicePoint, mVar.devicePoint) && this.deviceRadius == mVar.deviceRadius && kotlin.jvm.internal.h.a(this.district, mVar.district) && kotlin.jvm.internal.h.a(this.f5372id, mVar.f5372id) && kotlin.jvm.internal.h.a(this.updateDate, mVar.updateDate);
    }

    public final int hashCode() {
        String str = this.accidentAddress;
        return this.updateDate.hashCode() + androidx.room.util.a.a(this.f5372id, androidx.room.util.a.a(this.district, (((this.devicePoint.hashCode() + androidx.room.util.a.a(this.deviceAddress, androidx.room.util.a.a(this.createDate, androidx.room.util.a.a(this.city, (str == null ? 0 : str.hashCode()) * 31, 31), 31), 31)) * 31) + this.deviceRadius) * 31, 31), 31);
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder("ReportLocationInfo(accidentAddress=");
        sb2.append(this.accidentAddress);
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
        sb2.append(this.f5372id);
        sb2.append(", updateDate=");
        return android.support.v4.media.a.h(sb2, this.updateDate, ')');
    }
}
