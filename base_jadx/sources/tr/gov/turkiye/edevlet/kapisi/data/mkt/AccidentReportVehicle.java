package tr.gov.turkiye.edevlet.kapisi.data.mkt;

import io.realm.d2;
import io.realm.internal.n;
import io.realm.q0;
import io.realm.v0;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\t\b\u0017\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b*\u0010+R$\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR$\u0010\t\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\t\u0010\u0004\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR$\u0010\f\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\f\u0010\u0004\u001a\u0004\b\r\u0010\u0006\"\u0004\b\u000e\u0010\bR\"\u0010\u0010\u001a\u00020\u000f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R$\u0010\u0016\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0016\u0010\u0004\u001a\u0004\b\u0017\u0010\u0006\"\u0004\b\u0018\u0010\bR$\u0010\u0019\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0019\u0010\u0004\u001a\u0004\b\u001a\u0010\u0006\"\u0004\b\u001b\u0010\bR$\u0010\u001c\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001c\u0010\u0004\u001a\u0004\b\u001d\u0010\u0006\"\u0004\b\u001e\u0010\bR$\u0010\u001f\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001f\u0010\u0004\u001a\u0004\b \u0010\u0006\"\u0004\b!\u0010\bR*\u0010$\u001a\n\u0012\u0004\u0012\u00020#\u0018\u00010\"8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b$\u0010%\u001a\u0004\b&\u0010'\"\u0004\b(\u0010)¨\u0006,"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportVehicle;", "Lio/realm/v0;", "", "id", "Ljava/lang/String;", "getId", "()Ljava/lang/String;", "setId", "(Ljava/lang/String;)V", "plateCityCode", "getPlateCityCode", "setPlateCityCode", "plateNumber", "getPlateNumber", "setPlateNumber", "", "ownerDifferentFromDriver", "Z", "getOwnerDifferentFromDriver", "()Z", "setOwnerDifferentFromDriver", "(Z)V", "documentSerialCode", "getDocumentSerialCode", "setDocumentSerialCode", "documentSerialNumber", "getDocumentSerialNumber", "setDocumentSerialNumber", "ownerIdentityNumber", "getOwnerIdentityNumber", "setOwnerIdentityNumber", "updatedDate", "getUpdatedDate", "setUpdatedDate", "Lio/realm/q0;", "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportPolicy;", "policies", "Lio/realm/q0;", "getPolicies", "()Lio/realm/q0;", "setPolicies", "(Lio/realm/q0;)V", "<init>", "()V", "data_release"}, k = 1, mv = {1, 8, 0})
/* loaded from: classes3.dex */
public class AccidentReportVehicle extends v0 implements d2 {
    private String documentSerialCode;
    private String documentSerialNumber;
    private String id;
    private boolean ownerDifferentFromDriver;
    private String ownerIdentityNumber;
    private String plateCityCode;
    private String plateNumber;
    private q0<AccidentReportPolicy> policies;
    private String updatedDate;

    /* JADX WARN: Multi-variable type inference failed */
    public AccidentReportVehicle() {
        if (this instanceof n) {
            ((n) this).a();
        }
    }

    public final String getDocumentSerialCode() {
        return getDocumentSerialCode();
    }

    public final String getDocumentSerialNumber() {
        return getDocumentSerialNumber();
    }

    public final String getId() {
        return getId();
    }

    public final boolean getOwnerDifferentFromDriver() {
        return getOwnerDifferentFromDriver();
    }

    public final String getOwnerIdentityNumber() {
        return getOwnerIdentityNumber();
    }

    public final String getPlateCityCode() {
        return getPlateCityCode();
    }

    public final String getPlateNumber() {
        return getPlateNumber();
    }

    public final q0<AccidentReportPolicy> getPolicies() {
        return getPolicies();
    }

    public final String getUpdatedDate() {
        return getUpdatedDate();
    }

    /* renamed from: realmGet$documentSerialCode, reason: from getter */
    public String getDocumentSerialCode() {
        return this.documentSerialCode;
    }

    /* renamed from: realmGet$documentSerialNumber, reason: from getter */
    public String getDocumentSerialNumber() {
        return this.documentSerialNumber;
    }

    /* renamed from: realmGet$id, reason: from getter */
    public String getId() {
        return this.id;
    }

    /* renamed from: realmGet$ownerDifferentFromDriver, reason: from getter */
    public boolean getOwnerDifferentFromDriver() {
        return this.ownerDifferentFromDriver;
    }

    /* renamed from: realmGet$ownerIdentityNumber, reason: from getter */
    public String getOwnerIdentityNumber() {
        return this.ownerIdentityNumber;
    }

    /* renamed from: realmGet$plateCityCode, reason: from getter */
    public String getPlateCityCode() {
        return this.plateCityCode;
    }

    /* renamed from: realmGet$plateNumber, reason: from getter */
    public String getPlateNumber() {
        return this.plateNumber;
    }

    /* renamed from: realmGet$policies, reason: from getter */
    public q0 getPolicies() {
        return this.policies;
    }

    /* renamed from: realmGet$updatedDate, reason: from getter */
    public String getUpdatedDate() {
        return this.updatedDate;
    }

    public void realmSet$documentSerialCode(String str) {
        this.documentSerialCode = str;
    }

    public void realmSet$documentSerialNumber(String str) {
        this.documentSerialNumber = str;
    }

    public void realmSet$id(String str) {
        this.id = str;
    }

    public void realmSet$ownerDifferentFromDriver(boolean z10) {
        this.ownerDifferentFromDriver = z10;
    }

    public void realmSet$ownerIdentityNumber(String str) {
        this.ownerIdentityNumber = str;
    }

    public void realmSet$plateCityCode(String str) {
        this.plateCityCode = str;
    }

    public void realmSet$plateNumber(String str) {
        this.plateNumber = str;
    }

    public void realmSet$policies(q0 q0Var) {
        this.policies = q0Var;
    }

    public void realmSet$updatedDate(String str) {
        this.updatedDate = str;
    }

    public final void setDocumentSerialCode(String str) {
        realmSet$documentSerialCode(str);
    }

    public final void setDocumentSerialNumber(String str) {
        realmSet$documentSerialNumber(str);
    }

    public final void setId(String str) {
        realmSet$id(str);
    }

    public final void setOwnerDifferentFromDriver(boolean z10) {
        realmSet$ownerDifferentFromDriver(z10);
    }

    public final void setOwnerIdentityNumber(String str) {
        realmSet$ownerIdentityNumber(str);
    }

    public final void setPlateCityCode(String str) {
        realmSet$plateCityCode(str);
    }

    public final void setPlateNumber(String str) {
        realmSet$plateNumber(str);
    }

    public final void setPolicies(q0<AccidentReportPolicy> q0Var) {
        realmSet$policies(q0Var);
    }

    public final void setUpdatedDate(String str) {
        realmSet$updatedDate(str);
    }
}
