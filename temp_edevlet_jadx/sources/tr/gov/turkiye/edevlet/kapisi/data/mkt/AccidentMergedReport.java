package tr.gov.turkiye.edevlet.kapisi.data.mkt;

import androidx.core.app.NotificationCompat;
import io.realm.internal.n;
import io.realm.q0;
import io.realm.r1;
import io.realm.v0;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b0\n\u0002\u0010\b\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\t\b\u0017\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\bO\u0010PR$\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR$\u0010\t\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\t\u0010\u0004\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR$\u0010\f\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\f\u0010\u0004\u001a\u0004\b\r\u0010\u0006\"\u0004\b\u000e\u0010\bR$\u0010\u000f\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000f\u0010\u0004\u001a\u0004\b\u0010\u0010\u0006\"\u0004\b\u0011\u0010\bR$\u0010\u0012\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0012\u0010\u0004\u001a\u0004\b\u0013\u0010\u0006\"\u0004\b\u0014\u0010\bR$\u0010\u0015\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0015\u0010\u0004\u001a\u0004\b\u0016\u0010\u0006\"\u0004\b\u0017\u0010\bR$\u0010\u0018\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0018\u0010\u0004\u001a\u0004\b\u0019\u0010\u0006\"\u0004\b\u001a\u0010\bR$\u0010\u001b\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001b\u0010\u0004\u001a\u0004\b\u001c\u0010\u0006\"\u0004\b\u001d\u0010\bR$\u0010\u001e\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001e\u0010\u0004\u001a\u0004\b\u001f\u0010\u0006\"\u0004\b \u0010\bR$\u0010!\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b!\u0010\u0004\u001a\u0004\b\"\u0010\u0006\"\u0004\b#\u0010\bR$\u0010$\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b$\u0010\u0004\u001a\u0004\b%\u0010\u0006\"\u0004\b&\u0010\bR$\u0010'\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b'\u0010\u0004\u001a\u0004\b(\u0010\u0006\"\u0004\b)\u0010\bR$\u0010*\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b*\u0010\u0004\u001a\u0004\b+\u0010\u0006\"\u0004\b,\u0010\bR$\u0010-\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b-\u0010\u0004\u001a\u0004\b.\u0010\u0006\"\u0004\b/\u0010\bR$\u00100\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b0\u0010\u0004\u001a\u0004\b1\u0010\u0006\"\u0004\b2\u0010\bR$\u00104\u001a\u0004\u0018\u0001038\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b4\u00105\u001a\u0004\b6\u00107\"\u0004\b8\u00109R$\u0010:\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b:\u0010\u0004\u001a\u0004\b;\u0010\u0006\"\u0004\b<\u0010\bR$\u0010=\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b=\u0010\u0004\u001a\u0004\b>\u0010\u0006\"\u0004\b?\u0010\bR\"\u0010A\u001a\u00020@8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bA\u0010B\u001a\u0004\bC\u0010D\"\u0004\bE\u0010FR*\u0010I\u001a\n\u0012\u0004\u0012\u00020H\u0018\u00010G8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bI\u0010J\u001a\u0004\bK\u0010L\"\u0004\bM\u0010N¨\u0006Q"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;", "Lio/realm/v0;", "", "reportPartyStatus", "Ljava/lang/String;", "getReportPartyStatus", "()Ljava/lang/String;", "setReportPartyStatus", "(Ljava/lang/String;)V", "accidentDate", "getAccidentDate", "setAccidentDate", "role", "getRole", "setRole", "reportId", "getReportId", "setReportId", "city", "getCity", "setCity", "district", "getDistrict", "setDistrict", "reportStatus", "getReportStatus", "setReportStatus", "plate", "getPlate", "setPlate", "expireDate", "getExpireDate", "setExpireDate", "reportPartyId", "getReportPartyId", "setReportPartyId", "id", "getId", "setId", "consolidatedStatus", "getConsolidatedStatus", "setConsolidatedStatus", "updateDate", "getUpdateDate", "setUpdateDate", "createDate", "getCreateDate", "setCreateDate", NotificationCompat.CATEGORY_STATUS, "getStatus", "setStatus", "", "reportNumber", "Ljava/lang/Integer;", "getReportNumber", "()Ljava/lang/Integer;", "setReportNumber", "(Ljava/lang/Integer;)V", "vehiclePlateNumber", "getVehiclePlateNumber", "setVehiclePlateNumber", "vehiclePlateCityCode", "getVehiclePlateCityCode", "setVehiclePlateCityCode", "", "hasPdf", "Z", "getHasPdf", "()Z", "setHasPdf", "(Z)V", "Lio/realm/q0;", "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportParticipant;", "participants", "Lio/realm/q0;", "getParticipants", "()Lio/realm/q0;", "setParticipants", "(Lio/realm/q0;)V", "<init>", "()V", "data_release"}, k = 1, mv = {1, 8, 0})
/* loaded from: classes3.dex */
public class AccidentMergedReport extends v0 implements r1 {
    private String accidentDate;
    private String city;
    private String consolidatedStatus;
    private String createDate;
    private String district;
    private String expireDate;
    private boolean hasPdf;
    private String id;
    private q0<AccidentReportParticipant> participants;
    private String plate;
    private String reportId;
    private Integer reportNumber;
    private String reportPartyId;
    private String reportPartyStatus;
    private String reportStatus;
    private String role;
    private String status;
    private String updateDate;
    private String vehiclePlateCityCode;
    private String vehiclePlateNumber;

    /* JADX WARN: Multi-variable type inference failed */
    public AccidentMergedReport() {
        if (this instanceof n) {
            ((n) this).a();
        }
        realmSet$participants(new q0());
    }

    public final String getAccidentDate() {
        return getAccidentDate();
    }

    public final String getCity() {
        return getCity();
    }

    public final String getConsolidatedStatus() {
        return getConsolidatedStatus();
    }

    public final String getCreateDate() {
        return getCreateDate();
    }

    public final String getDistrict() {
        return getDistrict();
    }

    public final String getExpireDate() {
        return getExpireDate();
    }

    public final boolean getHasPdf() {
        return getHasPdf();
    }

    public final String getId() {
        return getId();
    }

    public final q0<AccidentReportParticipant> getParticipants() {
        return getParticipants();
    }

    public final String getPlate() {
        return getPlate();
    }

    public final String getReportId() {
        return getReportId();
    }

    public final Integer getReportNumber() {
        return getReportNumber();
    }

    public final String getReportPartyId() {
        return getReportPartyId();
    }

    public final String getReportPartyStatus() {
        return getReportPartyStatus();
    }

    public final String getReportStatus() {
        return getReportStatus();
    }

    public final String getRole() {
        return getRole();
    }

    public final String getStatus() {
        return getStatus();
    }

    public final String getUpdateDate() {
        return getUpdateDate();
    }

    public final String getVehiclePlateCityCode() {
        return getVehiclePlateCityCode();
    }

    public final String getVehiclePlateNumber() {
        return getVehiclePlateNumber();
    }

    /* renamed from: realmGet$accidentDate, reason: from getter */
    public String getAccidentDate() {
        return this.accidentDate;
    }

    /* renamed from: realmGet$city, reason: from getter */
    public String getCity() {
        return this.city;
    }

    /* renamed from: realmGet$consolidatedStatus, reason: from getter */
    public String getConsolidatedStatus() {
        return this.consolidatedStatus;
    }

    /* renamed from: realmGet$createDate, reason: from getter */
    public String getCreateDate() {
        return this.createDate;
    }

    /* renamed from: realmGet$district, reason: from getter */
    public String getDistrict() {
        return this.district;
    }

    /* renamed from: realmGet$expireDate, reason: from getter */
    public String getExpireDate() {
        return this.expireDate;
    }

    /* renamed from: realmGet$hasPdf, reason: from getter */
    public boolean getHasPdf() {
        return this.hasPdf;
    }

    /* renamed from: realmGet$id, reason: from getter */
    public String getId() {
        return this.id;
    }

    /* renamed from: realmGet$participants, reason: from getter */
    public q0 getParticipants() {
        return this.participants;
    }

    /* renamed from: realmGet$plate, reason: from getter */
    public String getPlate() {
        return this.plate;
    }

    /* renamed from: realmGet$reportId, reason: from getter */
    public String getReportId() {
        return this.reportId;
    }

    /* renamed from: realmGet$reportNumber, reason: from getter */
    public Integer getReportNumber() {
        return this.reportNumber;
    }

    /* renamed from: realmGet$reportPartyId, reason: from getter */
    public String getReportPartyId() {
        return this.reportPartyId;
    }

    /* renamed from: realmGet$reportPartyStatus, reason: from getter */
    public String getReportPartyStatus() {
        return this.reportPartyStatus;
    }

    /* renamed from: realmGet$reportStatus, reason: from getter */
    public String getReportStatus() {
        return this.reportStatus;
    }

    /* renamed from: realmGet$role, reason: from getter */
    public String getRole() {
        return this.role;
    }

    /* renamed from: realmGet$status, reason: from getter */
    public String getStatus() {
        return this.status;
    }

    /* renamed from: realmGet$updateDate, reason: from getter */
    public String getUpdateDate() {
        return this.updateDate;
    }

    /* renamed from: realmGet$vehiclePlateCityCode, reason: from getter */
    public String getVehiclePlateCityCode() {
        return this.vehiclePlateCityCode;
    }

    /* renamed from: realmGet$vehiclePlateNumber, reason: from getter */
    public String getVehiclePlateNumber() {
        return this.vehiclePlateNumber;
    }

    public void realmSet$accidentDate(String str) {
        this.accidentDate = str;
    }

    public void realmSet$city(String str) {
        this.city = str;
    }

    public void realmSet$consolidatedStatus(String str) {
        this.consolidatedStatus = str;
    }

    public void realmSet$createDate(String str) {
        this.createDate = str;
    }

    public void realmSet$district(String str) {
        this.district = str;
    }

    public void realmSet$expireDate(String str) {
        this.expireDate = str;
    }

    public void realmSet$hasPdf(boolean z10) {
        this.hasPdf = z10;
    }

    public void realmSet$id(String str) {
        this.id = str;
    }

    public void realmSet$participants(q0 q0Var) {
        this.participants = q0Var;
    }

    public void realmSet$plate(String str) {
        this.plate = str;
    }

    public void realmSet$reportId(String str) {
        this.reportId = str;
    }

    public void realmSet$reportNumber(Integer num) {
        this.reportNumber = num;
    }

    public void realmSet$reportPartyId(String str) {
        this.reportPartyId = str;
    }

    public void realmSet$reportPartyStatus(String str) {
        this.reportPartyStatus = str;
    }

    public void realmSet$reportStatus(String str) {
        this.reportStatus = str;
    }

    public void realmSet$role(String str) {
        this.role = str;
    }

    public void realmSet$status(String str) {
        this.status = str;
    }

    public void realmSet$updateDate(String str) {
        this.updateDate = str;
    }

    public void realmSet$vehiclePlateCityCode(String str) {
        this.vehiclePlateCityCode = str;
    }

    public void realmSet$vehiclePlateNumber(String str) {
        this.vehiclePlateNumber = str;
    }

    public final void setAccidentDate(String str) {
        realmSet$accidentDate(str);
    }

    public final void setCity(String str) {
        realmSet$city(str);
    }

    public final void setConsolidatedStatus(String str) {
        realmSet$consolidatedStatus(str);
    }

    public final void setCreateDate(String str) {
        realmSet$createDate(str);
    }

    public final void setDistrict(String str) {
        realmSet$district(str);
    }

    public final void setExpireDate(String str) {
        realmSet$expireDate(str);
    }

    public final void setHasPdf(boolean z10) {
        realmSet$hasPdf(z10);
    }

    public final void setId(String str) {
        realmSet$id(str);
    }

    public final void setParticipants(q0<AccidentReportParticipant> q0Var) {
        realmSet$participants(q0Var);
    }

    public final void setPlate(String str) {
        realmSet$plate(str);
    }

    public final void setReportId(String str) {
        realmSet$reportId(str);
    }

    public final void setReportNumber(Integer num) {
        realmSet$reportNumber(num);
    }

    public final void setReportPartyId(String str) {
        realmSet$reportPartyId(str);
    }

    public final void setReportPartyStatus(String str) {
        realmSet$reportPartyStatus(str);
    }

    public final void setReportStatus(String str) {
        realmSet$reportStatus(str);
    }

    public final void setRole(String str) {
        realmSet$role(str);
    }

    public final void setStatus(String str) {
        realmSet$status(str);
    }

    public final void setUpdateDate(String str) {
        realmSet$updateDate(str);
    }

    public final void setVehiclePlateCityCode(String str) {
        realmSet$vehiclePlateCityCode(str);
    }

    public final void setVehiclePlateNumber(String str) {
        realmSet$vehiclePlateNumber(str);
    }
}
