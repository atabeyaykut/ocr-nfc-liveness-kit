package tr.gov.turkiye.edevlet.kapisi.data.mkt;

import androidx.core.app.NotificationCompat;
import androidx.room.util.a;
import kotlin.Metadata;
import kotlin.jvm.internal.h;
import l8.k;

@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u001f\b\u0086\b\u0018\u00002\u00020\u0001BM\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u0003\u0012\u0006\u0010\u000b\u001a\u00020\f\u0012\u0006\u0010\r\u001a\u00020\u0003\u0012\u0006\u0010\u000e\u001a\u00020\u0003¢\u0006\u0002\u0010\u000fJ\t\u0010\u001d\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001e\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001f\u001a\u00020\u0003HÆ\u0003J\t\u0010 \u001a\u00020\u0007HÆ\u0003J\t\u0010!\u001a\u00020\tHÆ\u0003J\t\u0010\"\u001a\u00020\u0003HÆ\u0003J\t\u0010#\u001a\u00020\fHÆ\u0003J\t\u0010$\u001a\u00020\u0003HÆ\u0003J\t\u0010%\u001a\u00020\u0003HÆ\u0003Jc\u0010&\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\t2\b\b\u0002\u0010\n\u001a\u00020\u00032\b\b\u0002\u0010\u000b\u001a\u00020\f2\b\b\u0002\u0010\r\u001a\u00020\u00032\b\b\u0002\u0010\u000e\u001a\u00020\u0003HÆ\u0001J\u0013\u0010'\u001a\u00020\u00072\b\u0010(\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010)\u001a\u00020\fHÖ\u0001J\t\u0010*\u001a\u00020\u0003HÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0011R\u0016\u0010\u0005\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0011R\u0016\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015R\u0016\u0010\b\u001a\u00020\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0017R\u0016\u0010\n\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0011R\u0016\u0010\u000b\u001a\u00020\f8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u001aR\u0016\u0010\r\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u0011R\u0016\u0010\u000e\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u0011¨\u0006+"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/data/mkt/CompletedReportItem;", "", "accidentCity", "", "accidentDate", "accidentDistrict", "hasPdf", "", "reportNumber", "", NotificationCompat.CATEGORY_STATUS, "vehicleCount", "", "vehiclePlateCityCode", "vehiclePlateNumber", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJLjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V", "getAccidentCity", "()Ljava/lang/String;", "getAccidentDate", "getAccidentDistrict", "getHasPdf", "()Z", "getReportNumber", "()J", "getStatus", "getVehicleCount", "()I", "getVehiclePlateCityCode", "getVehiclePlateNumber", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "equals", "other", "hashCode", "toString", "data_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes3.dex */
public final /* data */ class CompletedReportItem {

    @k(name = "accidentCity")
    private final String accidentCity;

    @k(name = "accidentDate")
    private final String accidentDate;

    @k(name = "accidentDistrict")
    private final String accidentDistrict;

    @k(name = "hasPdf")
    private final boolean hasPdf;

    @k(name = "reportNumber")
    private final long reportNumber;

    @k(name = NotificationCompat.CATEGORY_STATUS)
    private final String status;

    @k(name = "vehicleCount")
    private final int vehicleCount;

    @k(name = "vehiclePlateCityCode")
    private final String vehiclePlateCityCode;

    @k(name = "vehiclePlateNumber")
    private final String vehiclePlateNumber;

    public CompletedReportItem(String accidentCity, String accidentDate, String accidentDistrict, boolean z10, long j10, String status, int r92, String vehiclePlateCityCode, String vehiclePlateNumber) {
        h.f(accidentCity, "accidentCity");
        h.f(accidentDate, "accidentDate");
        h.f(accidentDistrict, "accidentDistrict");
        h.f(status, "status");
        h.f(vehiclePlateCityCode, "vehiclePlateCityCode");
        h.f(vehiclePlateNumber, "vehiclePlateNumber");
        this.accidentCity = accidentCity;
        this.accidentDate = accidentDate;
        this.accidentDistrict = accidentDistrict;
        this.hasPdf = z10;
        this.reportNumber = j10;
        this.status = status;
        this.vehicleCount = r92;
        this.vehiclePlateCityCode = vehiclePlateCityCode;
        this.vehiclePlateNumber = vehiclePlateNumber;
    }

    /* renamed from: component1, reason: from getter */
    public final String getAccidentCity() {
        return this.accidentCity;
    }

    /* renamed from: component2, reason: from getter */
    public final String getAccidentDate() {
        return this.accidentDate;
    }

    /* renamed from: component3, reason: from getter */
    public final String getAccidentDistrict() {
        return this.accidentDistrict;
    }

    /* renamed from: component4, reason: from getter */
    public final boolean getHasPdf() {
        return this.hasPdf;
    }

    /* renamed from: component5, reason: from getter */
    public final long getReportNumber() {
        return this.reportNumber;
    }

    /* renamed from: component6, reason: from getter */
    public final String getStatus() {
        return this.status;
    }

    /* renamed from: component7, reason: from getter */
    public final int getVehicleCount() {
        return this.vehicleCount;
    }

    /* renamed from: component8, reason: from getter */
    public final String getVehiclePlateCityCode() {
        return this.vehiclePlateCityCode;
    }

    /* renamed from: component9, reason: from getter */
    public final String getVehiclePlateNumber() {
        return this.vehiclePlateNumber;
    }

    public final CompletedReportItem copy(String accidentCity, String accidentDate, String accidentDistrict, boolean hasPdf, long reportNumber, String status, int vehicleCount, String vehiclePlateCityCode, String vehiclePlateNumber) {
        h.f(accidentCity, "accidentCity");
        h.f(accidentDate, "accidentDate");
        h.f(accidentDistrict, "accidentDistrict");
        h.f(status, "status");
        h.f(vehiclePlateCityCode, "vehiclePlateCityCode");
        h.f(vehiclePlateNumber, "vehiclePlateNumber");
        return new CompletedReportItem(accidentCity, accidentDate, accidentDistrict, hasPdf, reportNumber, status, vehicleCount, vehiclePlateCityCode, vehiclePlateNumber);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof CompletedReportItem)) {
            return false;
        }
        CompletedReportItem completedReportItem = (CompletedReportItem) other;
        return h.a(this.accidentCity, completedReportItem.accidentCity) && h.a(this.accidentDate, completedReportItem.accidentDate) && h.a(this.accidentDistrict, completedReportItem.accidentDistrict) && this.hasPdf == completedReportItem.hasPdf && this.reportNumber == completedReportItem.reportNumber && h.a(this.status, completedReportItem.status) && this.vehicleCount == completedReportItem.vehicleCount && h.a(this.vehiclePlateCityCode, completedReportItem.vehiclePlateCityCode) && h.a(this.vehiclePlateNumber, completedReportItem.vehiclePlateNumber);
    }

    public final String getAccidentCity() {
        return this.accidentCity;
    }

    public final String getAccidentDate() {
        return this.accidentDate;
    }

    public final String getAccidentDistrict() {
        return this.accidentDistrict;
    }

    public final boolean getHasPdf() {
        return this.hasPdf;
    }

    public final long getReportNumber() {
        return this.reportNumber;
    }

    public final String getStatus() {
        return this.status;
    }

    public final int getVehicleCount() {
        return this.vehicleCount;
    }

    public final String getVehiclePlateCityCode() {
        return this.vehiclePlateCityCode;
    }

    public final String getVehiclePlateNumber() {
        return this.vehiclePlateNumber;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int r02 = a.a(this.accidentDistrict, a.a(this.accidentDate, this.accidentCity.hashCode() * 31, 31), 31);
        boolean z10 = this.hasPdf;
        int r12 = z10;
        if (z10 != 0) {
            r12 = 1;
        }
        int r03 = (r02 + r12) * 31;
        long j10 = this.reportNumber;
        return this.vehiclePlateNumber.hashCode() + a.a(this.vehiclePlateCityCode, (a.a(this.status, (r03 + ((int) (j10 ^ (j10 >>> 32)))) * 31, 31) + this.vehicleCount) * 31, 31);
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("CompletedReportItem(accidentCity=");
        sb2.append(this.accidentCity);
        sb2.append(", accidentDate=");
        sb2.append(this.accidentDate);
        sb2.append(", accidentDistrict=");
        sb2.append(this.accidentDistrict);
        sb2.append(", hasPdf=");
        sb2.append(this.hasPdf);
        sb2.append(", reportNumber=");
        sb2.append(this.reportNumber);
        sb2.append(", status=");
        sb2.append(this.status);
        sb2.append(", vehicleCount=");
        sb2.append(this.vehicleCount);
        sb2.append(", vehiclePlateCityCode=");
        sb2.append(this.vehiclePlateCityCode);
        sb2.append(", vehiclePlateNumber=");
        return android.support.v4.media.a.h(sb2, this.vehiclePlateNumber, ')');
    }
}
