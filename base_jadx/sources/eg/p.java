package eg;

import java.util.List;

/* loaded from: classes3.dex */
public final class p {

    @l8.k(name = "myArrayList")
    private final List<o> reportParticipantList;

    public p(List<o> reportParticipantList) {
        kotlin.jvm.internal.h.f(reportParticipantList, "reportParticipantList");
        this.reportParticipantList = reportParticipantList;
    }

    public final List<o> a() {
        return this.reportParticipantList;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof p) && kotlin.jvm.internal.h.a(this.reportParticipantList, ((p) obj).reportParticipantList);
    }

    public final int hashCode() {
        return this.reportParticipantList.hashCode();
    }

    public final String toString() {
        return android.support.v4.media.a.j(new StringBuilder("ReportParticipants(reportParticipantList="), this.reportParticipantList, ')');
    }
}
