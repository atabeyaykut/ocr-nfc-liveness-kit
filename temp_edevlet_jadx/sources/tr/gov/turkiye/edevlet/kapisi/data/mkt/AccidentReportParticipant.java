package tr.gov.turkiye.edevlet.kapisi.data.mkt;

import androidx.core.app.NotificationCompat;
import io.realm.internal.n;
import io.realm.v0;
import io.realm.z1;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u001e\b\u0017\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u001e\u0010\u001fR$\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR$\u0010\t\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\t\u0010\u0004\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR$\u0010\f\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\f\u0010\u0004\u001a\u0004\b\r\u0010\u0006\"\u0004\b\u000e\u0010\bR$\u0010\u000f\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000f\u0010\u0004\u001a\u0004\b\u0010\u0010\u0006\"\u0004\b\u0011\u0010\bR$\u0010\u0012\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0012\u0010\u0004\u001a\u0004\b\u0013\u0010\u0006\"\u0004\b\u0014\u0010\bR$\u0010\u0015\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0015\u0010\u0004\u001a\u0004\b\u0016\u0010\u0006\"\u0004\b\u0017\u0010\bR$\u0010\u0018\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0018\u0010\u0004\u001a\u0004\b\u0019\u0010\u0006\"\u0004\b\u001a\u0010\bR$\u0010\u001b\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001b\u0010\u0004\u001a\u0004\b\u001c\u0010\u0006\"\u0004\b\u001d\u0010\b¨\u0006 "}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportParticipant;", "Lio/realm/v0;", "", "reportPartyId", "Ljava/lang/String;", "getReportPartyId", "()Ljava/lang/String;", "setReportPartyId", "(Ljava/lang/String;)V", "identityType", "getIdentityType", "setIdentityType", "identityNumber", "getIdentityNumber", "setIdentityNumber", "partyRole", "getPartyRole", "setPartyRole", "name", "getName", "setName", "plate", "getPlate", "setPlate", "comment", "getComment", "setComment", NotificationCompat.CATEGORY_STATUS, "getStatus", "setStatus", "<init>", "()V", "data_release"}, k = 1, mv = {1, 8, 0})
/* loaded from: classes3.dex */
public class AccidentReportParticipant extends v0 implements z1 {
    private String comment;
    private String identityNumber;
    private String identityType;
    private String name;
    private String partyRole;
    private String plate;
    private String reportPartyId;
    private String status;

    /* JADX WARN: Multi-variable type inference failed */
    public AccidentReportParticipant() {
        if (this instanceof n) {
            ((n) this).a();
        }
    }

    public final String getComment() {
        return getComment();
    }

    public final String getIdentityNumber() {
        return getIdentityNumber();
    }

    public final String getIdentityType() {
        return getIdentityType();
    }

    public final String getName() {
        return getName();
    }

    public final String getPartyRole() {
        return getPartyRole();
    }

    public final String getPlate() {
        return getPlate();
    }

    public final String getReportPartyId() {
        return getReportPartyId();
    }

    public final String getStatus() {
        return getStatus();
    }

    /* renamed from: realmGet$comment, reason: from getter */
    public String getComment() {
        return this.comment;
    }

    /* renamed from: realmGet$identityNumber, reason: from getter */
    public String getIdentityNumber() {
        return this.identityNumber;
    }

    /* renamed from: realmGet$identityType, reason: from getter */
    public String getIdentityType() {
        return this.identityType;
    }

    /* renamed from: realmGet$name, reason: from getter */
    public String getName() {
        return this.name;
    }

    /* renamed from: realmGet$partyRole, reason: from getter */
    public String getPartyRole() {
        return this.partyRole;
    }

    /* renamed from: realmGet$plate, reason: from getter */
    public String getPlate() {
        return this.plate;
    }

    /* renamed from: realmGet$reportPartyId, reason: from getter */
    public String getReportPartyId() {
        return this.reportPartyId;
    }

    /* renamed from: realmGet$status, reason: from getter */
    public String getStatus() {
        return this.status;
    }

    public void realmSet$comment(String str) {
        this.comment = str;
    }

    public void realmSet$identityNumber(String str) {
        this.identityNumber = str;
    }

    public void realmSet$identityType(String str) {
        this.identityType = str;
    }

    public void realmSet$name(String str) {
        this.name = str;
    }

    public void realmSet$partyRole(String str) {
        this.partyRole = str;
    }

    public void realmSet$plate(String str) {
        this.plate = str;
    }

    public void realmSet$reportPartyId(String str) {
        this.reportPartyId = str;
    }

    public void realmSet$status(String str) {
        this.status = str;
    }

    public final void setComment(String str) {
        realmSet$comment(str);
    }

    public final void setIdentityNumber(String str) {
        realmSet$identityNumber(str);
    }

    public final void setIdentityType(String str) {
        realmSet$identityType(str);
    }

    public final void setName(String str) {
        realmSet$name(str);
    }

    public final void setPartyRole(String str) {
        realmSet$partyRole(str);
    }

    public final void setPlate(String str) {
        realmSet$plate(str);
    }

    public final void setReportPartyId(String str) {
        realmSet$reportPartyId(str);
    }

    public final void setStatus(String str) {
        realmSet$status(str);
    }
}
