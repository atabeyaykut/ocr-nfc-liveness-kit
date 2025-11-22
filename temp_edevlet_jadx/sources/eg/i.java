package eg;

import androidx.core.app.NotificationCompat;
import l8.u;
import tr.gov.turkiye.edevlet.kapisi.mkt.data.SpecifiedTypeOrNull;

/* loaded from: classes3.dex */
public final class i {

    @l8.k(name = "accidentComment")
    private final String accidentComment;

    @l8.k(name = "consolidatedStatus")
    private final String consolidatedStatus;

    @l8.k(name = "createDate")
    private final String createDate;

    @l8.k(name = "dashPoint")
    private final Object dashPoint;

    @l8.k(name = "driver")
    private final a driver;

    @l8.k(name = "expireDate")
    private final String expireDate;

    /* renamed from: id, reason: collision with root package name */
    @l8.k(name = "id")
    private final String f5370id;

    @l8.k(name = "location")
    private final c location;

    @l8.k(name = "media")
    private final d media;

    @l8.k(name = "nameSurname")
    private final String nameSurname;

    @l8.k(name = "phoneNumber")
    private final String phoneNumber;

    @l8.k(name = "policies")
    private final q policies;

    @l8.k(name = "questionAnswers")
    private final f questionAnswers;

    @l8.k(name = "report")
    private final g report;

    @l8.k(name = "role")
    private final String role;

    @l8.k(name = NotificationCompat.CATEGORY_STATUS)
    private final String status;

    @l8.k(name = "updateDate")
    private final String updateDate;

    @l8.k(name = "vehicle")
    private final x vehicle;

    @l8.k(name = "witnesses")
    private final z witnesses;

    public i(@SpecifiedTypeOrNull(token = u.b.STRING) String str, String consolidatedStatus, String createDate, Object obj, a driver, String expireDate, String id2, c cVar, d media, String nameSurname, String phoneNumber, q policies, f questionAnswers, @SpecifiedTypeOrNull(token = u.b.BEGIN_OBJECT) g gVar, String role, String status, String updateDate, x vehicle, z witnesses) {
        kotlin.jvm.internal.h.f(consolidatedStatus, "consolidatedStatus");
        kotlin.jvm.internal.h.f(createDate, "createDate");
        kotlin.jvm.internal.h.f(driver, "driver");
        kotlin.jvm.internal.h.f(expireDate, "expireDate");
        kotlin.jvm.internal.h.f(id2, "id");
        kotlin.jvm.internal.h.f(media, "media");
        kotlin.jvm.internal.h.f(nameSurname, "nameSurname");
        kotlin.jvm.internal.h.f(phoneNumber, "phoneNumber");
        kotlin.jvm.internal.h.f(policies, "policies");
        kotlin.jvm.internal.h.f(questionAnswers, "questionAnswers");
        kotlin.jvm.internal.h.f(role, "role");
        kotlin.jvm.internal.h.f(status, "status");
        kotlin.jvm.internal.h.f(updateDate, "updateDate");
        kotlin.jvm.internal.h.f(vehicle, "vehicle");
        kotlin.jvm.internal.h.f(witnesses, "witnesses");
        this.accidentComment = str;
        this.consolidatedStatus = consolidatedStatus;
        this.createDate = createDate;
        this.dashPoint = obj;
        this.driver = driver;
        this.expireDate = expireDate;
        this.f5370id = id2;
        this.location = cVar;
        this.media = media;
        this.nameSurname = nameSurname;
        this.phoneNumber = phoneNumber;
        this.policies = policies;
        this.questionAnswers = questionAnswers;
        this.report = gVar;
        this.role = role;
        this.status = status;
        this.updateDate = updateDate;
        this.vehicle = vehicle;
        this.witnesses = witnesses;
    }

    public final String a() {
        return this.accidentComment;
    }

    public final String b() {
        return this.consolidatedStatus;
    }

    public final String c() {
        return this.createDate;
    }

    public final String d() {
        return this.f5370id;
    }

    public final c e() {
        return this.location;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof i)) {
            return false;
        }
        i iVar = (i) obj;
        return kotlin.jvm.internal.h.a(this.accidentComment, iVar.accidentComment) && kotlin.jvm.internal.h.a(this.consolidatedStatus, iVar.consolidatedStatus) && kotlin.jvm.internal.h.a(this.createDate, iVar.createDate) && kotlin.jvm.internal.h.a(this.dashPoint, iVar.dashPoint) && kotlin.jvm.internal.h.a(this.driver, iVar.driver) && kotlin.jvm.internal.h.a(this.expireDate, iVar.expireDate) && kotlin.jvm.internal.h.a(this.f5370id, iVar.f5370id) && kotlin.jvm.internal.h.a(this.location, iVar.location) && kotlin.jvm.internal.h.a(this.media, iVar.media) && kotlin.jvm.internal.h.a(this.nameSurname, iVar.nameSurname) && kotlin.jvm.internal.h.a(this.phoneNumber, iVar.phoneNumber) && kotlin.jvm.internal.h.a(this.policies, iVar.policies) && kotlin.jvm.internal.h.a(this.questionAnswers, iVar.questionAnswers) && kotlin.jvm.internal.h.a(this.report, iVar.report) && kotlin.jvm.internal.h.a(this.role, iVar.role) && kotlin.jvm.internal.h.a(this.status, iVar.status) && kotlin.jvm.internal.h.a(this.updateDate, iVar.updateDate) && kotlin.jvm.internal.h.a(this.vehicle, iVar.vehicle) && kotlin.jvm.internal.h.a(this.witnesses, iVar.witnesses);
    }

    public final g f() {
        return this.report;
    }

    public final String g() {
        return this.role;
    }

    public final String h() {
        return this.status;
    }

    public final int hashCode() {
        String str = this.accidentComment;
        int r02 = androidx.room.util.a.a(this.createDate, androidx.room.util.a.a(this.consolidatedStatus, (str == null ? 0 : str.hashCode()) * 31, 31), 31);
        Object obj = this.dashPoint;
        int r03 = androidx.room.util.a.a(this.f5370id, androidx.room.util.a.a(this.expireDate, (this.driver.hashCode() + ((r02 + (obj == null ? 0 : obj.hashCode())) * 31)) * 31, 31), 31);
        c cVar = this.location;
        int r04 = (this.questionAnswers.hashCode() + ((this.policies.hashCode() + androidx.room.util.a.a(this.phoneNumber, androidx.room.util.a.a(this.nameSurname, (this.media.hashCode() + ((r03 + (cVar == null ? 0 : cVar.hashCode())) * 31)) * 31, 31), 31)) * 31)) * 31;
        g gVar = this.report;
        return this.witnesses.hashCode() + ((this.vehicle.hashCode() + androidx.room.util.a.a(this.updateDate, androidx.room.util.a.a(this.status, androidx.room.util.a.a(this.role, (r04 + (gVar != null ? gVar.hashCode() : 0)) * 31, 31), 31), 31)) * 31);
    }

    public final String i() {
        return this.updateDate;
    }

    public final x j() {
        return this.vehicle;
    }

    public final String toString() {
        return "ReportDetailMainInfo(accidentComment=" + this.accidentComment + ", consolidatedStatus=" + this.consolidatedStatus + ", createDate=" + this.createDate + ", dashPoint=" + this.dashPoint + ", driver=" + this.driver + ", expireDate=" + this.expireDate + ", id=" + this.f5370id + ", location=" + this.location + ", media=" + this.media + ", nameSurname=" + this.nameSurname + ", phoneNumber=" + this.phoneNumber + ", policies=" + this.policies + ", questionAnswers=" + this.questionAnswers + ", report=" + this.report + ", role=" + this.role + ", status=" + this.status + ", updateDate=" + this.updateDate + ", vehicle=" + this.vehicle + ", witnesses=" + this.witnesses + ')';
    }
}
