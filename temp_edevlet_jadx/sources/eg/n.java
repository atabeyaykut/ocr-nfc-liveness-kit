package eg;

import androidx.core.app.NotificationCompat;

/* loaded from: classes3.dex */
public final class n {

    @l8.k(name = "comment")
    private final String comment;

    @l8.k(name = "identityNumber")
    private final String identityNumber;

    @l8.k(name = "identityType")
    private final String identityType;

    @l8.k(name = "name")
    private final String name;

    @l8.k(name = "partyRole")
    private final String partyRole;

    @l8.k(name = "plate")
    private final String plate;

    @l8.k(name = "reportPartyId")
    private final String reportPartyId;

    @l8.k(name = NotificationCompat.CATEGORY_STATUS)
    private final String status;

    public n(String comment, String identityNumber, String identityType, String name, String partyRole, String plate, String reportPartyId, String status) {
        kotlin.jvm.internal.h.f(comment, "comment");
        kotlin.jvm.internal.h.f(identityNumber, "identityNumber");
        kotlin.jvm.internal.h.f(identityType, "identityType");
        kotlin.jvm.internal.h.f(name, "name");
        kotlin.jvm.internal.h.f(partyRole, "partyRole");
        kotlin.jvm.internal.h.f(plate, "plate");
        kotlin.jvm.internal.h.f(reportPartyId, "reportPartyId");
        kotlin.jvm.internal.h.f(status, "status");
        this.comment = comment;
        this.identityNumber = identityNumber;
        this.identityType = identityType;
        this.name = name;
        this.partyRole = partyRole;
        this.plate = plate;
        this.reportPartyId = reportPartyId;
        this.status = status;
    }

    public final String a() {
        return this.comment;
    }

    public final String b() {
        return this.identityNumber;
    }

    public final String c() {
        return this.identityType;
    }

    public final String d() {
        return this.name;
    }

    public final String e() {
        return this.partyRole;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof n)) {
            return false;
        }
        n nVar = (n) obj;
        return kotlin.jvm.internal.h.a(this.comment, nVar.comment) && kotlin.jvm.internal.h.a(this.identityNumber, nVar.identityNumber) && kotlin.jvm.internal.h.a(this.identityType, nVar.identityType) && kotlin.jvm.internal.h.a(this.name, nVar.name) && kotlin.jvm.internal.h.a(this.partyRole, nVar.partyRole) && kotlin.jvm.internal.h.a(this.plate, nVar.plate) && kotlin.jvm.internal.h.a(this.reportPartyId, nVar.reportPartyId) && kotlin.jvm.internal.h.a(this.status, nVar.status);
    }

    public final String f() {
        return this.plate;
    }

    public final String g() {
        return this.reportPartyId;
    }

    public final int hashCode() {
        return this.status.hashCode() + androidx.room.util.a.a(this.reportPartyId, androidx.room.util.a.a(this.plate, androidx.room.util.a.a(this.partyRole, androidx.room.util.a.a(this.name, androidx.room.util.a.a(this.identityType, androidx.room.util.a.a(this.identityNumber, this.comment.hashCode() * 31, 31), 31), 31), 31), 31), 31);
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder("ReportParticipantInfo(comment=");
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
