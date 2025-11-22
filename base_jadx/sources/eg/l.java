package eg;

import androidx.core.app.NotificationCompat;

/* loaded from: classes3.dex */
public final class l {

    @l8.k(name = "createDate")
    private final String createDate;

    /* renamed from: id, reason: collision with root package name */
    @l8.k(name = "id")
    private final String f5371id;

    @l8.k(name = "participants")
    private final p participants;

    @l8.k(name = "reportNumber")
    private final Object reportNumber;

    @l8.k(name = "scenario")
    private final r scenario;

    @l8.k(name = NotificationCompat.CATEGORY_STATUS)
    private final String status;

    @l8.k(name = "updateDate")
    private final String updateDate;

    public l(String createDate, String id2, p participants, Object obj, r scenario, String status, String updateDate) {
        kotlin.jvm.internal.h.f(createDate, "createDate");
        kotlin.jvm.internal.h.f(id2, "id");
        kotlin.jvm.internal.h.f(participants, "participants");
        kotlin.jvm.internal.h.f(scenario, "scenario");
        kotlin.jvm.internal.h.f(status, "status");
        kotlin.jvm.internal.h.f(updateDate, "updateDate");
        this.createDate = createDate;
        this.f5371id = id2;
        this.participants = participants;
        this.reportNumber = obj;
        this.scenario = scenario;
        this.status = status;
        this.updateDate = updateDate;
    }

    public final String a() {
        return this.f5371id;
    }

    public final p b() {
        return this.participants;
    }

    public final String c() {
        return this.status;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof l)) {
            return false;
        }
        l lVar = (l) obj;
        return kotlin.jvm.internal.h.a(this.createDate, lVar.createDate) && kotlin.jvm.internal.h.a(this.f5371id, lVar.f5371id) && kotlin.jvm.internal.h.a(this.participants, lVar.participants) && kotlin.jvm.internal.h.a(this.reportNumber, lVar.reportNumber) && kotlin.jvm.internal.h.a(this.scenario, lVar.scenario) && kotlin.jvm.internal.h.a(this.status, lVar.status) && kotlin.jvm.internal.h.a(this.updateDate, lVar.updateDate);
    }

    public final int hashCode() {
        int r12 = (this.participants.hashCode() + androidx.room.util.a.a(this.f5371id, this.createDate.hashCode() * 31, 31)) * 31;
        Object obj = this.reportNumber;
        return this.updateDate.hashCode() + androidx.room.util.a.a(this.status, (this.scenario.hashCode() + ((r12 + (obj == null ? 0 : obj.hashCode())) * 31)) * 31, 31);
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder("ReportInfo(createDate=");
        sb2.append(this.createDate);
        sb2.append(", id=");
        sb2.append(this.f5371id);
        sb2.append(", participants=");
        sb2.append(this.participants);
        sb2.append(", reportNumber=");
        sb2.append(this.reportNumber);
        sb2.append(", scenario=");
        sb2.append(this.scenario);
        sb2.append(", status=");
        sb2.append(this.status);
        sb2.append(", updateDate=");
        return android.support.v4.media.a.h(sb2, this.updateDate, ')');
    }
}
