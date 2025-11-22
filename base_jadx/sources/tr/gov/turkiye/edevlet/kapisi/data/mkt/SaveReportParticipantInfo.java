package tr.gov.turkiye.edevlet.kapisi.data.mkt;

import androidx.core.app.NotificationCompat;
import androidx.room.util.a;
import kotlin.Metadata;
import kotlin.jvm.internal.h;
import l8.k;

@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u001b\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001BE\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\b\u001a\u00020\u0003\u0012\u0006\u0010\t\u001a\u00020\u0003\u0012\u0006\u0010\n\u001a\u00020\u0003¢\u0006\u0002\u0010\u000bJ\t\u0010\u0015\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0016\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0017\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0018\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0019\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001a\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001b\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001c\u001a\u00020\u0003HÆ\u0003JY\u0010\u001d\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00032\b\b\u0002\u0010\u0007\u001a\u00020\u00032\b\b\u0002\u0010\b\u001a\u00020\u00032\b\b\u0002\u0010\t\u001a\u00020\u00032\b\b\u0002\u0010\n\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u001e\u001a\u00020\u001f2\b\u0010 \u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010!\u001a\u00020\"HÖ\u0001J\t\u0010#\u001a\u00020\u0003HÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\rR\u0016\u0010\u0005\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\rR\u0016\u0010\u0006\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\rR\u0016\u0010\u0007\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\rR\u0016\u0010\b\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\rR\u0016\u0010\t\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\rR\u0016\u0010\n\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\r¨\u0006$"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/data/mkt/SaveReportParticipantInfo;", "", "comment", "", "identityNumber", "identityType", "name", "partyRole", "plate", "reportPartyId", NotificationCompat.CATEGORY_STATUS, "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getComment", "()Ljava/lang/String;", "getIdentityNumber", "getIdentityType", "getName", "getPartyRole", "getPlate", "getReportPartyId", "getStatus", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "copy", "equals", "", "other", "hashCode", "", "toString", "data_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes3.dex */
public final /* data */ class SaveReportParticipantInfo {

    @k(name = "comment")
    private final String comment;

    @k(name = "identityNumber")
    private final String identityNumber;

    @k(name = "identityType")
    private final String identityType;

    @k(name = "name")
    private final String name;

    @k(name = "partyRole")
    private final String partyRole;

    @k(name = "plate")
    private final String plate;

    @k(name = "reportPartyId")
    private final String reportPartyId;

    @k(name = NotificationCompat.CATEGORY_STATUS)
    private final String status;

    public SaveReportParticipantInfo(String comment, String identityNumber, String identityType, String name, String partyRole, String plate, String reportPartyId, String status) {
        h.f(comment, "comment");
        h.f(identityNumber, "identityNumber");
        h.f(identityType, "identityType");
        h.f(name, "name");
        h.f(partyRole, "partyRole");
        h.f(plate, "plate");
        h.f(reportPartyId, "reportPartyId");
        h.f(status, "status");
        this.comment = comment;
        this.identityNumber = identityNumber;
        this.identityType = identityType;
        this.name = name;
        this.partyRole = partyRole;
        this.plate = plate;
        this.reportPartyId = reportPartyId;
        this.status = status;
    }

    /* renamed from: component1, reason: from getter */
    public final String getComment() {
        return this.comment;
    }

    /* renamed from: component2, reason: from getter */
    public final String getIdentityNumber() {
        return this.identityNumber;
    }

    /* renamed from: component3, reason: from getter */
    public final String getIdentityType() {
        return this.identityType;
    }

    /* renamed from: component4, reason: from getter */
    public final String getName() {
        return this.name;
    }

    /* renamed from: component5, reason: from getter */
    public final String getPartyRole() {
        return this.partyRole;
    }

    /* renamed from: component6, reason: from getter */
    public final String getPlate() {
        return this.plate;
    }

    /* renamed from: component7, reason: from getter */
    public final String getReportPartyId() {
        return this.reportPartyId;
    }

    /* renamed from: component8, reason: from getter */
    public final String getStatus() {
        return this.status;
    }

    public final SaveReportParticipantInfo copy(String comment, String identityNumber, String identityType, String name, String partyRole, String plate, String reportPartyId, String status) {
        h.f(comment, "comment");
        h.f(identityNumber, "identityNumber");
        h.f(identityType, "identityType");
        h.f(name, "name");
        h.f(partyRole, "partyRole");
        h.f(plate, "plate");
        h.f(reportPartyId, "reportPartyId");
        h.f(status, "status");
        return new SaveReportParticipantInfo(comment, identityNumber, identityType, name, partyRole, plate, reportPartyId, status);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof SaveReportParticipantInfo)) {
            return false;
        }
        SaveReportParticipantInfo saveReportParticipantInfo = (SaveReportParticipantInfo) other;
        return h.a(this.comment, saveReportParticipantInfo.comment) && h.a(this.identityNumber, saveReportParticipantInfo.identityNumber) && h.a(this.identityType, saveReportParticipantInfo.identityType) && h.a(this.name, saveReportParticipantInfo.name) && h.a(this.partyRole, saveReportParticipantInfo.partyRole) && h.a(this.plate, saveReportParticipantInfo.plate) && h.a(this.reportPartyId, saveReportParticipantInfo.reportPartyId) && h.a(this.status, saveReportParticipantInfo.status);
    }

    public final String getComment() {
        return this.comment;
    }

    public final String getIdentityNumber() {
        return this.identityNumber;
    }

    public final String getIdentityType() {
        return this.identityType;
    }

    public final String getName() {
        return this.name;
    }

    public final String getPartyRole() {
        return this.partyRole;
    }

    public final String getPlate() {
        return this.plate;
    }

    public final String getReportPartyId() {
        return this.reportPartyId;
    }

    public final String getStatus() {
        return this.status;
    }

    public int hashCode() {
        return this.status.hashCode() + a.a(this.reportPartyId, a.a(this.plate, a.a(this.partyRole, a.a(this.name, a.a(this.identityType, a.a(this.identityNumber, this.comment.hashCode() * 31, 31), 31), 31), 31), 31), 31);
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("SaveReportParticipantInfo(comment=");
        sb2.append(this.comment);
        sb2.append(", identityNumber=");
        sb2.append(this.identityNumber);
        sb2.append(", identityType=");
        sb2.append(this.identityType);
        sb2.append(", name=");
        sb2.append(this.name);
        sb2.append(", partyRole=");
        sb2.append(this.partyRole);
        sb2.append(", plate=");
        sb2.append(this.plate);
        sb2.append(", reportPartyId=");
        sb2.append(this.reportPartyId);
        sb2.append(", status=");
        return android.support.v4.media.a.h(sb2, this.status, ')');
    }
}
