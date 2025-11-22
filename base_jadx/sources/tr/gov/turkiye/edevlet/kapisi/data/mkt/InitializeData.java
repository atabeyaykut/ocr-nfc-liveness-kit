package tr.gov.turkiye.edevlet.kapisi.data.mkt;

import androidx.camera.camera2.internal.c;
import androidx.core.app.NotificationCompat;
import androidx.room.util.a;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.h;
import l8.k;

@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b'\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u009f\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00010\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\b\u001a\u00020\u0003\u0012\u0006\u0010\t\u001a\u00020\u0003\u0012\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00010\u0006\u0012\u0006\u0010\u000b\u001a\u00020\u0003\u0012\u0006\u0010\f\u001a\u00020\u0003\u0012\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00010\u0006\u0012\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00010\u0006\u0012\u0006\u0010\u000f\u001a\u00020\u0010\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0012\u001a\u0004\u0018\u00010\u0003\u0012\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00010\u0006¢\u0006\u0002\u0010\u0014J\t\u0010'\u001a\u00020\u0003HÆ\u0003J\u000f\u0010(\u001a\b\u0012\u0004\u0012\u00020\u00010\u0006HÆ\u0003J\u000f\u0010)\u001a\b\u0012\u0004\u0012\u00020\u00010\u0006HÆ\u0003J\t\u0010*\u001a\u00020\u0010HÆ\u0003J\u000b\u0010+\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010,\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000f\u0010-\u001a\b\u0012\u0004\u0012\u00020\u00010\u0006HÆ\u0003J\t\u0010.\u001a\u00020\u0003HÆ\u0003J\u000f\u0010/\u001a\b\u0012\u0004\u0012\u00020\u00010\u0006HÆ\u0003J\t\u00100\u001a\u00020\u0003HÆ\u0003J\t\u00101\u001a\u00020\u0003HÆ\u0003J\t\u00102\u001a\u00020\u0003HÆ\u0003J\u000f\u00103\u001a\b\u0012\u0004\u0012\u00020\u00010\u0006HÆ\u0003J\t\u00104\u001a\u00020\u0003HÆ\u0003J\t\u00105\u001a\u00020\u0003HÆ\u0003JÁ\u0001\u00106\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\u000e\b\u0002\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00010\u00062\b\b\u0002\u0010\u0007\u001a\u00020\u00032\b\b\u0002\u0010\b\u001a\u00020\u00032\b\b\u0002\u0010\t\u001a\u00020\u00032\u000e\b\u0002\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00010\u00062\b\b\u0002\u0010\u000b\u001a\u00020\u00032\b\b\u0002\u0010\f\u001a\u00020\u00032\u000e\b\u0002\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00010\u00062\u000e\b\u0002\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00010\u00062\b\b\u0002\u0010\u000f\u001a\u00020\u00102\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00032\u000e\b\u0002\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00010\u0006HÆ\u0001J\u0013\u00107\u001a\u0002082\b\u00109\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010:\u001a\u00020;HÖ\u0001J\t\u0010<\u001a\u00020\u0003HÖ\u0001R\u001c\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00010\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016R\u0016\u0010\u000b\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0018R\u0016\u0010\f\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u0018R\u001c\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00010\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u0016R\u001c\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00010\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u0016R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u0018R\u0016\u0010\u000f\u001a\u00020\u00108\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u001eR\u0018\u0010\u0012\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010\u0018R\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b \u0010\u0018R\u0018\u0010\u0011\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b!\u0010\u0018R\u001c\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00010\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\"\u0010\u0016R\u0016\u0010\u0007\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b#\u0010\u0018R\u0016\u0010\b\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b$\u0010\u0018R\u0016\u0010\t\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b%\u0010\u0018R\u001c\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00010\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b&\u0010\u0016¨\u0006="}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InitializeData;", "", "expireDate", "", "partyId", "report", "", "role", NotificationCompat.CATEGORY_STATUS, "updateDate", "accidentComment", "consolidatedStatus", "createDate", "dashPoint", "driver", "location", "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/LocationRootObject;", "phoneNumber", "nameSurname", "vehicle", "(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/LocationRootObject;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V", "getAccidentComment", "()Ljava/util/List;", "getConsolidatedStatus", "()Ljava/lang/String;", "getCreateDate", "getDashPoint", "getDriver", "getExpireDate", "getLocation", "()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/LocationRootObject;", "getNameSurname", "getPartyId", "getPhoneNumber", "getReport", "getRole", "getStatus", "getUpdateDate", "getVehicle", "component1", "component10", "component11", "component12", "component13", "component14", "component15", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "equals", "", "other", "hashCode", "", "toString", "data_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes3.dex */
public final /* data */ class InitializeData {

    @k(name = "accidentComment")
    private final List<Object> accidentComment;

    @k(name = "consolidatedStatus")
    private final String consolidatedStatus;

    @k(name = "createDate")
    private final String createDate;

    @k(name = "dashPoint")
    private final List<Object> dashPoint;

    @k(name = "driver")
    private final List<Object> driver;

    @k(name = "expireDate")
    private final String expireDate;

    @k(name = "location")
    private final LocationRootObject location;

    @k(name = "nameSurname")
    private final String nameSurname;

    @k(name = "id")
    private final String partyId;

    @k(name = "phoneNumber")
    private final String phoneNumber;

    @k(name = "report")
    private final List<Object> report;

    @k(name = "role")
    private final String role;

    @k(name = NotificationCompat.CATEGORY_STATUS)
    private final String status;

    @k(name = "updateDate")
    private final String updateDate;

    @k(name = "vehicle")
    private final List<Object> vehicle;

    public InitializeData(String expireDate, String partyId, List<? extends Object> report, String role, String status, String updateDate, List<? extends Object> accidentComment, String consolidatedStatus, String createDate, List<? extends Object> dashPoint, List<? extends Object> driver, LocationRootObject location, String str, String str2, List<? extends Object> vehicle) {
        h.f(expireDate, "expireDate");
        h.f(partyId, "partyId");
        h.f(report, "report");
        h.f(role, "role");
        h.f(status, "status");
        h.f(updateDate, "updateDate");
        h.f(accidentComment, "accidentComment");
        h.f(consolidatedStatus, "consolidatedStatus");
        h.f(createDate, "createDate");
        h.f(dashPoint, "dashPoint");
        h.f(driver, "driver");
        h.f(location, "location");
        h.f(vehicle, "vehicle");
        this.expireDate = expireDate;
        this.partyId = partyId;
        this.report = report;
        this.role = role;
        this.status = status;
        this.updateDate = updateDate;
        this.accidentComment = accidentComment;
        this.consolidatedStatus = consolidatedStatus;
        this.createDate = createDate;
        this.dashPoint = dashPoint;
        this.driver = driver;
        this.location = location;
        this.phoneNumber = str;
        this.nameSurname = str2;
        this.vehicle = vehicle;
    }

    /* renamed from: component1, reason: from getter */
    public final String getExpireDate() {
        return this.expireDate;
    }

    public final List<Object> component10() {
        return this.dashPoint;
    }

    public final List<Object> component11() {
        return this.driver;
    }

    /* renamed from: component12, reason: from getter */
    public final LocationRootObject getLocation() {
        return this.location;
    }

    /* renamed from: component13, reason: from getter */
    public final String getPhoneNumber() {
        return this.phoneNumber;
    }

    /* renamed from: component14, reason: from getter */
    public final String getNameSurname() {
        return this.nameSurname;
    }

    public final List<Object> component15() {
        return this.vehicle;
    }

    /* renamed from: component2, reason: from getter */
    public final String getPartyId() {
        return this.partyId;
    }

    public final List<Object> component3() {
        return this.report;
    }

    /* renamed from: component4, reason: from getter */
    public final String getRole() {
        return this.role;
    }

    /* renamed from: component5, reason: from getter */
    public final String getStatus() {
        return this.status;
    }

    /* renamed from: component6, reason: from getter */
    public final String getUpdateDate() {
        return this.updateDate;
    }

    public final List<Object> component7() {
        return this.accidentComment;
    }

    /* renamed from: component8, reason: from getter */
    public final String getConsolidatedStatus() {
        return this.consolidatedStatus;
    }

    /* renamed from: component9, reason: from getter */
    public final String getCreateDate() {
        return this.createDate;
    }

    public final InitializeData copy(String expireDate, String partyId, List<? extends Object> report, String role, String status, String updateDate, List<? extends Object> accidentComment, String consolidatedStatus, String createDate, List<? extends Object> dashPoint, List<? extends Object> driver, LocationRootObject location, String phoneNumber, String nameSurname, List<? extends Object> vehicle) {
        h.f(expireDate, "expireDate");
        h.f(partyId, "partyId");
        h.f(report, "report");
        h.f(role, "role");
        h.f(status, "status");
        h.f(updateDate, "updateDate");
        h.f(accidentComment, "accidentComment");
        h.f(consolidatedStatus, "consolidatedStatus");
        h.f(createDate, "createDate");
        h.f(dashPoint, "dashPoint");
        h.f(driver, "driver");
        h.f(location, "location");
        h.f(vehicle, "vehicle");
        return new InitializeData(expireDate, partyId, report, role, status, updateDate, accidentComment, consolidatedStatus, createDate, dashPoint, driver, location, phoneNumber, nameSurname, vehicle);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof InitializeData)) {
            return false;
        }
        InitializeData initializeData = (InitializeData) other;
        return h.a(this.expireDate, initializeData.expireDate) && h.a(this.partyId, initializeData.partyId) && h.a(this.report, initializeData.report) && h.a(this.role, initializeData.role) && h.a(this.status, initializeData.status) && h.a(this.updateDate, initializeData.updateDate) && h.a(this.accidentComment, initializeData.accidentComment) && h.a(this.consolidatedStatus, initializeData.consolidatedStatus) && h.a(this.createDate, initializeData.createDate) && h.a(this.dashPoint, initializeData.dashPoint) && h.a(this.driver, initializeData.driver) && h.a(this.location, initializeData.location) && h.a(this.phoneNumber, initializeData.phoneNumber) && h.a(this.nameSurname, initializeData.nameSurname) && h.a(this.vehicle, initializeData.vehicle);
    }

    public final List<Object> getAccidentComment() {
        return this.accidentComment;
    }

    public final String getConsolidatedStatus() {
        return this.consolidatedStatus;
    }

    public final String getCreateDate() {
        return this.createDate;
    }

    public final List<Object> getDashPoint() {
        return this.dashPoint;
    }

    public final List<Object> getDriver() {
        return this.driver;
    }

    public final String getExpireDate() {
        return this.expireDate;
    }

    public final LocationRootObject getLocation() {
        return this.location;
    }

    public final String getNameSurname() {
        return this.nameSurname;
    }

    public final String getPartyId() {
        return this.partyId;
    }

    public final String getPhoneNumber() {
        return this.phoneNumber;
    }

    public final List<Object> getReport() {
        return this.report;
    }

    public final String getRole() {
        return this.role;
    }

    public final String getStatus() {
        return this.status;
    }

    public final String getUpdateDate() {
        return this.updateDate;
    }

    public final List<Object> getVehicle() {
        return this.vehicle;
    }

    public int hashCode() {
        int r12 = (this.location.hashCode() + c.c(this.driver, c.c(this.dashPoint, a.a(this.createDate, a.a(this.consolidatedStatus, c.c(this.accidentComment, a.a(this.updateDate, a.a(this.status, a.a(this.role, c.c(this.report, a.a(this.partyId, this.expireDate.hashCode() * 31, 31), 31), 31), 31), 31), 31), 31), 31), 31), 31)) * 31;
        String str = this.phoneNumber;
        int r13 = (r12 + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.nameSurname;
        return this.vehicle.hashCode() + ((r13 + (str2 != null ? str2.hashCode() : 0)) * 31);
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("InitializeData(expireDate=");
        sb2.append(this.expireDate);
        sb2.append(", partyId=");
        sb2.append(this.partyId);
        sb2.append(", report=");
        sb2.append(this.report);
        sb2.append(", role=");
        sb2.append(this.role);
        sb2.append(", status=");
        sb2.append(this.status);
        sb2.append(", updateDate=");
        sb2.append(this.updateDate);
        sb2.append(", accidentComment=");
        sb2.append(this.accidentComment);
        sb2.append(", consolidatedStatus=");
        sb2.append(this.consolidatedStatus);
        sb2.append(", createDate=");
        sb2.append(this.createDate);
        sb2.append(", dashPoint=");
        sb2.append(this.dashPoint);
        sb2.append(", driver=");
        sb2.append(this.driver);
        sb2.append(", location=");
        sb2.append(this.location);
        sb2.append(", phoneNumber=");
        sb2.append(this.phoneNumber);
        sb2.append(", nameSurname=");
        sb2.append(this.nameSurname);
        sb2.append(", vehicle=");
        return android.support.v4.media.a.j(sb2, this.vehicle, ')');
    }
}
