package tr.gov.turkiye.edevlet.kapisi.data.mkt;

import androidx.core.app.NotificationCompat;
import io.realm.f2;
import io.realm.internal.n;
import io.realm.q0;
import io.realm.s0;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b'\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\t\b\u0017\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\bN\u0010OR$\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR$\u0010\t\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\t\u0010\u0004\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR$\u0010\f\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\f\u0010\u0004\u001a\u0004\b\r\u0010\u0006\"\u0004\b\u000e\u0010\bR$\u0010\u000f\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000f\u0010\u0004\u001a\u0004\b\u0010\u0010\u0006\"\u0004\b\u0011\u0010\bR$\u0010\u0012\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0012\u0010\u0004\u001a\u0004\b\u0013\u0010\u0006\"\u0004\b\u0014\u0010\bR$\u0010\u0015\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0015\u0010\u0004\u001a\u0004\b\u0016\u0010\u0006\"\u0004\b\u0017\u0010\bR$\u0010\u0018\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0018\u0010\u0004\u001a\u0004\b\u0019\u0010\u0006\"\u0004\b\u001a\u0010\bR$\u0010\u001b\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001b\u0010\u0004\u001a\u0004\b\u001c\u0010\u0006\"\u0004\b\u001d\u0010\bR$\u0010\u001e\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001e\u0010\u0004\u001a\u0004\b\u001f\u0010\u0006\"\u0004\b \u0010\bR$\u0010!\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b!\u0010\u0004\u001a\u0004\b\"\u0010\u0006\"\u0004\b#\u0010\bR$\u0010$\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b$\u0010\u0004\u001a\u0004\b%\u0010\u0006\"\u0004\b&\u0010\bR$\u0010'\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b'\u0010\u0004\u001a\u0004\b(\u0010\u0006\"\u0004\b)\u0010\bR$\u0010+\u001a\u0004\u0018\u00010*8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b+\u0010,\u001a\u0004\b-\u0010.\"\u0004\b/\u00100R$\u00102\u001a\u0004\u0018\u0001018\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b2\u00103\u001a\u0004\b4\u00105\"\u0004\b6\u00107R$\u00109\u001a\u0004\u0018\u0001088\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b9\u0010:\u001a\u0004\b;\u0010<\"\u0004\b=\u0010>R$\u0010@\u001a\u0004\u0018\u00010?8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b@\u0010A\u001a\u0004\bB\u0010C\"\u0004\bD\u0010ER*\u0010H\u001a\n\u0012\u0004\u0012\u00020G\u0018\u00010F8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bH\u0010I\u001a\u0004\bJ\u0010K\"\u0004\bL\u0010M¨\u0006P"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;", "Lio/realm/s0;", "", "id", "Ljava/lang/String;", "getId", "()Ljava/lang/String;", "setId", "(Ljava/lang/String;)V", "nameSurname", "getNameSurname", "setNameSurname", "phoneNumber", "getPhoneNumber", "setPhoneNumber", "role", "getRole", "setRole", "dashPointId", "getDashPointId", "setDashPointId", "dashPoint", "getDashPoint", "setDashPoint", "scenarioId", "getScenarioId", "setScenarioId", "accidentComment", "getAccidentComment", "setAccidentComment", NotificationCompat.CATEGORY_STATUS, "getStatus", "setStatus", "consolidatedStatus", "getConsolidatedStatus", "setConsolidatedStatus", "createdDate", "getCreatedDate", "setCreatedDate", "expiredDate", "getExpiredDate", "setExpiredDate", "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportDriver;", "driver", "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportDriver;", "getDriver", "()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportDriver;", "setDriver", "(Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportDriver;)V", "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;", "location", "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;", "getLocation", "()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;", "setLocation", "(Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportLocation;)V", "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportVehicle;", "vehicle", "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportVehicle;", "getVehicle", "()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportVehicle;", "setVehicle", "(Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportVehicle;)V", "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;", "report", "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;", "getReport", "()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;", "setReport", "(Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;)V", "Lio/realm/q0;", "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportMedia;", "media", "Lio/realm/q0;", "getMedia", "()Lio/realm/q0;", "setMedia", "(Lio/realm/q0;)V", "<init>", "()V", "data_release"}, k = 1, mv = {1, 8, 0})
/* loaded from: classes3.dex */
public class MKTAccidentReport implements s0, f2 {
    private String accidentComment;
    private String consolidatedStatus;
    private String createdDate;
    private String dashPoint;
    private String dashPointId;
    private AccidentReportDriver driver;
    private String expiredDate;
    private String id;
    private AccidentReportLocation location;
    private q0<AccidentReportMedia> media;
    private String nameSurname;
    private String phoneNumber;
    private AccidentMergedReport report;
    private String role;
    private String scenarioId;
    private String status;
    private AccidentReportVehicle vehicle;

    /* JADX WARN: Multi-variable type inference failed */
    public MKTAccidentReport() {
        if (this instanceof n) {
            ((n) this).a();
        }
    }

    public final String getAccidentComment() {
        return getAccidentComment();
    }

    public final String getConsolidatedStatus() {
        return getConsolidatedStatus();
    }

    public final String getCreatedDate() {
        return getCreatedDate();
    }

    public final String getDashPoint() {
        return getDashPoint();
    }

    public final String getDashPointId() {
        return getDashPointId();
    }

    public final AccidentReportDriver getDriver() {
        return getDriver();
    }

    public final String getExpiredDate() {
        return getExpiredDate();
    }

    public final String getId() {
        return getId();
    }

    public final AccidentReportLocation getLocation() {
        return getLocation();
    }

    public final q0<AccidentReportMedia> getMedia() {
        return getMedia();
    }

    public final String getNameSurname() {
        return getNameSurname();
    }

    public final String getPhoneNumber() {
        return getPhoneNumber();
    }

    public final AccidentMergedReport getReport() {
        return getReport();
    }

    public final String getRole() {
        return getRole();
    }

    public final String getScenarioId() {
        return getScenarioId();
    }

    public final String getStatus() {
        return getStatus();
    }

    public final AccidentReportVehicle getVehicle() {
        return getVehicle();
    }

    /* renamed from: realmGet$accidentComment, reason: from getter */
    public String getAccidentComment() {
        return this.accidentComment;
    }

    /* renamed from: realmGet$consolidatedStatus, reason: from getter */
    public String getConsolidatedStatus() {
        return this.consolidatedStatus;
    }

    /* renamed from: realmGet$createdDate, reason: from getter */
    public String getCreatedDate() {
        return this.createdDate;
    }

    /* renamed from: realmGet$dashPoint, reason: from getter */
    public String getDashPoint() {
        return this.dashPoint;
    }

    /* renamed from: realmGet$dashPointId, reason: from getter */
    public String getDashPointId() {
        return this.dashPointId;
    }

    /* renamed from: realmGet$driver, reason: from getter */
    public AccidentReportDriver getDriver() {
        return this.driver;
    }

    /* renamed from: realmGet$expiredDate, reason: from getter */
    public String getExpiredDate() {
        return this.expiredDate;
    }

    /* renamed from: realmGet$id, reason: from getter */
    public String getId() {
        return this.id;
    }

    /* renamed from: realmGet$location, reason: from getter */
    public AccidentReportLocation getLocation() {
        return this.location;
    }

    /* renamed from: realmGet$media, reason: from getter */
    public q0 getMedia() {
        return this.media;
    }

    /* renamed from: realmGet$nameSurname, reason: from getter */
    public String getNameSurname() {
        return this.nameSurname;
    }

    /* renamed from: realmGet$phoneNumber, reason: from getter */
    public String getPhoneNumber() {
        return this.phoneNumber;
    }

    /* renamed from: realmGet$report, reason: from getter */
    public AccidentMergedReport getReport() {
        return this.report;
    }

    /* renamed from: realmGet$role, reason: from getter */
    public String getRole() {
        return this.role;
    }

    /* renamed from: realmGet$scenarioId, reason: from getter */
    public String getScenarioId() {
        return this.scenarioId;
    }

    /* renamed from: realmGet$status, reason: from getter */
    public String getStatus() {
        return this.status;
    }

    /* renamed from: realmGet$vehicle, reason: from getter */
    public AccidentReportVehicle getVehicle() {
        return this.vehicle;
    }

    public void realmSet$accidentComment(String str) {
        this.accidentComment = str;
    }

    public void realmSet$consolidatedStatus(String str) {
        this.consolidatedStatus = str;
    }

    public void realmSet$createdDate(String str) {
        this.createdDate = str;
    }

    public void realmSet$dashPoint(String str) {
        this.dashPoint = str;
    }

    public void realmSet$dashPointId(String str) {
        this.dashPointId = str;
    }

    public void realmSet$driver(AccidentReportDriver accidentReportDriver) {
        this.driver = accidentReportDriver;
    }

    public void realmSet$expiredDate(String str) {
        this.expiredDate = str;
    }

    public void realmSet$id(String str) {
        this.id = str;
    }

    public void realmSet$location(AccidentReportLocation accidentReportLocation) {
        this.location = accidentReportLocation;
    }

    public void realmSet$media(q0 q0Var) {
        this.media = q0Var;
    }

    public void realmSet$nameSurname(String str) {
        this.nameSurname = str;
    }

    public void realmSet$phoneNumber(String str) {
        this.phoneNumber = str;
    }

    public void realmSet$report(AccidentMergedReport accidentMergedReport) {
        this.report = accidentMergedReport;
    }

    public void realmSet$role(String str) {
        this.role = str;
    }

    public void realmSet$scenarioId(String str) {
        this.scenarioId = str;
    }

    public void realmSet$status(String str) {
        this.status = str;
    }

    public void realmSet$vehicle(AccidentReportVehicle accidentReportVehicle) {
        this.vehicle = accidentReportVehicle;
    }

    public final void setAccidentComment(String str) {
        realmSet$accidentComment(str);
    }

    public final void setConsolidatedStatus(String str) {
        realmSet$consolidatedStatus(str);
    }

    public final void setCreatedDate(String str) {
        realmSet$createdDate(str);
    }

    public final void setDashPoint(String str) {
        realmSet$dashPoint(str);
    }

    public final void setDashPointId(String str) {
        realmSet$dashPointId(str);
    }

    public final void setDriver(AccidentReportDriver accidentReportDriver) {
        realmSet$driver(accidentReportDriver);
    }

    public final void setExpiredDate(String str) {
        realmSet$expiredDate(str);
    }

    public final void setId(String str) {
        realmSet$id(str);
    }

    public final void setLocation(AccidentReportLocation accidentReportLocation) {
        realmSet$location(accidentReportLocation);
    }

    public final void setMedia(q0<AccidentReportMedia> q0Var) {
        realmSet$media(q0Var);
    }

    public final void setNameSurname(String str) {
        realmSet$nameSurname(str);
    }

    public final void setPhoneNumber(String str) {
        realmSet$phoneNumber(str);
    }

    public final void setReport(AccidentMergedReport accidentMergedReport) {
        realmSet$report(accidentMergedReport);
    }

    public final void setRole(String str) {
        realmSet$role(str);
    }

    public final void setScenarioId(String str) {
        realmSet$scenarioId(str);
    }

    public final void setStatus(String str) {
        realmSet$status(str);
    }

    public final void setVehicle(AccidentReportVehicle accidentReportVehicle) {
        realmSet$vehicle(accidentReportVehicle);
    }
}
