package tr.gov.turkiye.edevlet.kapisi.data.mkt;

import androidx.core.app.NotificationCompat;
import kotlin.Metadata;
import kotlin.jvm.internal.d;
import kotlin.jvm.internal.h;
import l8.k;

@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b,\b\u0086\b\u0018\u00002\u00020\u0001B\u009b\u0001\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0001\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\b\b\u0002\u0010\n\u001a\u00020\u000b\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u0001\u0012\b\u0010\r\u001a\u0004\u0018\u00010\u0001\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\u0001\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u0010\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0012\u001a\u0004\u0018\u00010\u0001\u0012\b\u0010\u0013\u001a\u0004\u0018\u00010\u0001¢\u0006\u0002\u0010\u0014J\u000b\u0010(\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010)\u001a\u0004\u0018\u00010\u0001HÆ\u0003J\u000b\u0010*\u001a\u0004\u0018\u00010\u0001HÆ\u0003J\t\u0010+\u001a\u00020\u0010HÆ\u0003J\u000b\u0010,\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010-\u001a\u0004\u0018\u00010\u0001HÆ\u0003J\u000b\u0010.\u001a\u0004\u0018\u00010\u0001HÆ\u0003J\u000b\u0010/\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u00100\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u00101\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u00102\u001a\u0004\u0018\u00010\u0001HÆ\u0003J\u000b\u00103\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u00104\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u00105\u001a\u00020\u000bHÆ\u0003J\u000b\u00106\u001a\u0004\u0018\u00010\u0001HÆ\u0003J¹\u0001\u00107\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\n\u001a\u00020\u000b2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u00012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00012\b\b\u0002\u0010\u000f\u001a\u00020\u00102\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00012\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0001HÆ\u0001J\u0013\u00108\u001a\u00020\u000b2\b\u00109\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010:\u001a\u00020\u0010HÖ\u0001J\t\u0010;\u001a\u00020\u0003HÖ\u0001R\u0018\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016R\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0016R\u0018\u0010\t\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0016R\u0018\u0010\u000e\u001a\u0004\u0018\u00010\u00018\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u001aR\u0018\u0010\u0005\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u0016R\u0016\u0010\n\u001a\u00020\u000b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u001dR\u0018\u0010\u0013\u001a\u0004\u0018\u00010\u00018\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u001aR\u0018\u0010\u0007\u001a\u0004\u0018\u00010\u00018\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010\u001aR\u0018\u0010\f\u001a\u0004\u0018\u00010\u00018\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b \u0010\u001aR\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b!\u0010\u0016R\u0018\u0010\b\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\"\u0010\u0016R\u0018\u0010\r\u001a\u0004\u0018\u00010\u00018\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b#\u0010\u001aR\u0016\u0010\u000f\u001a\u00020\u00108\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b$\u0010%R\u0018\u0010\u0011\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b&\u0010\u0016R\u0018\u0010\u0012\u001a\u0004\u0018\u00010\u00018\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b'\u0010\u001a¨\u0006<"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InProgressReportItem;", "", "accidentCity", "", "accidentDate", "expireDate", "reportPartyId", "reportId", "role", "accidentDistrict", "hasPdf", "", "reportNumber", NotificationCompat.CATEGORY_STATUS, "consolidatedStatus", "vehicleCount", "", "vehiclePlateCityCode", "vehiclePlateNumber", "participants", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V", "getAccidentCity", "()Ljava/lang/String;", "getAccidentDate", "getAccidentDistrict", "getConsolidatedStatus", "()Ljava/lang/Object;", "getExpireDate", "getHasPdf", "()Z", "getParticipants", "getReportId", "getReportNumber", "getReportPartyId", "getRole", "getStatus", "getVehicleCount", "()I", "getVehiclePlateCityCode", "getVehiclePlateNumber", "component1", "component10", "component11", "component12", "component13", "component14", "component15", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "equals", "other", "hashCode", "toString", "data_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes3.dex */
public final /* data */ class InProgressReportItem {

    @k(name = "city")
    private final String accidentCity;

    @k(name = "accidentDate")
    private final String accidentDate;

    @k(name = "district")
    private final String accidentDistrict;

    @k(name = "consolidatedStatus")
    private final Object consolidatedStatus;

    @k(name = "expireDate")
    private final String expireDate;

    @k(name = "hasPdf")
    private final boolean hasPdf;

    @k(name = "participants")
    private final Object participants;

    @k(name = "reportId")
    private final Object reportId;

    @k(name = "reportNumber")
    private final Object reportNumber;

    @k(name = "reportPartyId")
    private final String reportPartyId;

    @k(name = "role")
    private final String role;

    @k(name = "reportStatus")
    private final Object status;

    @k(name = "vehicleCount")
    private final int vehicleCount;

    @k(name = "vehiclePlateCityCode")
    private final String vehiclePlateCityCode;

    @k(name = "plate")
    private final Object vehiclePlateNumber;

    public InProgressReportItem(String str, String str2, String str3, String str4, Object obj, String str5, String str6, boolean z10, Object obj2, Object obj3, Object obj4, int r12, String str7, Object obj5, Object obj6) {
        this.accidentCity = str;
        this.accidentDate = str2;
        this.expireDate = str3;
        this.reportPartyId = str4;
        this.reportId = obj;
        this.role = str5;
        this.accidentDistrict = str6;
        this.hasPdf = z10;
        this.reportNumber = obj2;
        this.status = obj3;
        this.consolidatedStatus = obj4;
        this.vehicleCount = r12;
        this.vehiclePlateCityCode = str7;
        this.vehiclePlateNumber = obj5;
        this.participants = obj6;
    }

    public /* synthetic */ InProgressReportItem(String str, String str2, String str3, String str4, Object obj, String str5, String str6, boolean z10, Object obj2, Object obj3, Object obj4, int r31, String str7, Object obj5, Object obj6, int r35, d dVar) {
        this(str, str2, str3, str4, obj, str5, str6, (r35 & 128) != 0 ? false : z10, obj2, obj3, obj4, (r35 & 2048) != 0 ? 0 : r31, str7, obj5, obj6);
    }

    /* renamed from: component1, reason: from getter */
    public final String getAccidentCity() {
        return this.accidentCity;
    }

    /* renamed from: component10, reason: from getter */
    public final Object getStatus() {
        return this.status;
    }

    /* renamed from: component11, reason: from getter */
    public final Object getConsolidatedStatus() {
        return this.consolidatedStatus;
    }

    /* renamed from: component12, reason: from getter */
    public final int getVehicleCount() {
        return this.vehicleCount;
    }

    /* renamed from: component13, reason: from getter */
    public final String getVehiclePlateCityCode() {
        return this.vehiclePlateCityCode;
    }

    /* renamed from: component14, reason: from getter */
    public final Object getVehiclePlateNumber() {
        return this.vehiclePlateNumber;
    }

    /* renamed from: component15, reason: from getter */
    public final Object getParticipants() {
        return this.participants;
    }

    /* renamed from: component2, reason: from getter */
    public final String getAccidentDate() {
        return this.accidentDate;
    }

    /* renamed from: component3, reason: from getter */
    public final String getExpireDate() {
        return this.expireDate;
    }

    /* renamed from: component4, reason: from getter */
    public final String getReportPartyId() {
        return this.reportPartyId;
    }

    /* renamed from: component5, reason: from getter */
    public final Object getReportId() {
        return this.reportId;
    }

    /* renamed from: component6, reason: from getter */
    public final String getRole() {
        return this.role;
    }

    /* renamed from: component7, reason: from getter */
    public final String getAccidentDistrict() {
        return this.accidentDistrict;
    }

    /* renamed from: component8, reason: from getter */
    public final boolean getHasPdf() {
        return this.hasPdf;
    }

    /* renamed from: component9, reason: from getter */
    public final Object getReportNumber() {
        return this.reportNumber;
    }

    public final InProgressReportItem copy(String accidentCity, String accidentDate, String expireDate, String reportPartyId, Object reportId, String role, String accidentDistrict, boolean hasPdf, Object reportNumber, Object status, Object consolidatedStatus, int vehicleCount, String vehiclePlateCityCode, Object vehiclePlateNumber, Object participants) {
        return new InProgressReportItem(accidentCity, accidentDate, expireDate, reportPartyId, reportId, role, accidentDistrict, hasPdf, reportNumber, status, consolidatedStatus, vehicleCount, vehiclePlateCityCode, vehiclePlateNumber, participants);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof InProgressReportItem)) {
            return false;
        }
        InProgressReportItem inProgressReportItem = (InProgressReportItem) other;
        return h.a(this.accidentCity, inProgressReportItem.accidentCity) && h.a(this.accidentDate, inProgressReportItem.accidentDate) && h.a(this.expireDate, inProgressReportItem.expireDate) && h.a(this.reportPartyId, inProgressReportItem.reportPartyId) && h.a(this.reportId, inProgressReportItem.reportId) && h.a(this.role, inProgressReportItem.role) && h.a(this.accidentDistrict, inProgressReportItem.accidentDistrict) && this.hasPdf == inProgressReportItem.hasPdf && h.a(this.reportNumber, inProgressReportItem.reportNumber) && h.a(this.status, inProgressReportItem.status) && h.a(this.consolidatedStatus, inProgressReportItem.consolidatedStatus) && this.vehicleCount == inProgressReportItem.vehicleCount && h.a(this.vehiclePlateCityCode, inProgressReportItem.vehiclePlateCityCode) && h.a(this.vehiclePlateNumber, inProgressReportItem.vehiclePlateNumber) && h.a(this.participants, inProgressReportItem.participants);
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

    public final Object getConsolidatedStatus() {
        return this.consolidatedStatus;
    }

    public final String getExpireDate() {
        return this.expireDate;
    }

    public final boolean getHasPdf() {
        return this.hasPdf;
    }

    public final Object getParticipants() {
        return this.participants;
    }

    public final Object getReportId() {
        return this.reportId;
    }

    public final Object getReportNumber() {
        return this.reportNumber;
    }

    public final String getReportPartyId() {
        return this.reportPartyId;
    }

    public final String getRole() {
        return this.role;
    }

    public final Object getStatus() {
        return this.status;
    }

    public final int getVehicleCount() {
        return this.vehicleCount;
    }

    public final String getVehiclePlateCityCode() {
        return this.vehiclePlateCityCode;
    }

    public final Object getVehiclePlateNumber() {
        return this.vehiclePlateNumber;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        String str = this.accidentCity;
        int r02 = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.accidentDate;
        int r03 = (r02 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.expireDate;
        int r04 = (r03 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.reportPartyId;
        int r05 = (r04 + (str4 == null ? 0 : str4.hashCode())) * 31;
        Object obj = this.reportId;
        int r06 = (r05 + (obj == null ? 0 : obj.hashCode())) * 31;
        String str5 = this.role;
        int r07 = (r06 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.accidentDistrict;
        int r08 = (r07 + (str6 == null ? 0 : str6.hashCode())) * 31;
        boolean z10 = this.hasPdf;
        int r22 = z10;
        if (z10 != 0) {
            r22 = 1;
        }
        int r09 = (r08 + r22) * 31;
        Object obj2 = this.reportNumber;
        int r010 = (r09 + (obj2 == null ? 0 : obj2.hashCode())) * 31;
        Object obj3 = this.status;
        int r011 = (r010 + (obj3 == null ? 0 : obj3.hashCode())) * 31;
        Object obj4 = this.consolidatedStatus;
        int r012 = (((r011 + (obj4 == null ? 0 : obj4.hashCode())) * 31) + this.vehicleCount) * 31;
        String str7 = this.vehiclePlateCityCode;
        int r013 = (r012 + (str7 == null ? 0 : str7.hashCode())) * 31;
        Object obj5 = this.vehiclePlateNumber;
        int r014 = (r013 + (obj5 == null ? 0 : obj5.hashCode())) * 31;
        Object obj6 = this.participants;
        return r014 + (obj6 != null ? obj6.hashCode() : 0);
    }

    public String toString() {
        return "InProgressReportItem(accidentCity=" + this.accidentCity + ", accidentDate=" + this.accidentDate + ", expireDate=" + this.expireDate + ", reportPartyId=" + this.reportPartyId + ", reportId=" + this.reportId + ", role=" + this.role + ", accidentDistrict=" + this.accidentDistrict + ", hasPdf=" + this.hasPdf + ", reportNumber=" + this.reportNumber + ", status=" + this.status + ", consolidatedStatus=" + this.consolidatedStatus + ", vehicleCount=" + this.vehicleCount + ", vehiclePlateCityCode=" + this.vehiclePlateCityCode + ", vehiclePlateNumber=" + this.vehiclePlateNumber + ", participants=" + this.participants + ')';
    }
}
