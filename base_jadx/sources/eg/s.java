package eg;

/* loaded from: classes3.dex */
public final class s {

    @l8.k(name = "createDate")
    private final String createDate;

    /* renamed from: id, reason: collision with root package name */
    @l8.k(name = "id")
    private final String f5373id;

    @l8.k(name = "scenarioData")
    private final u scenarioData;

    @l8.k(name = "updateDate")
    private final String updateDate;

    public s(String createDate, String id2, u scenarioData, String updateDate) {
        kotlin.jvm.internal.h.f(createDate, "createDate");
        kotlin.jvm.internal.h.f(id2, "id");
        kotlin.jvm.internal.h.f(scenarioData, "scenarioData");
        kotlin.jvm.internal.h.f(updateDate, "updateDate");
        this.createDate = createDate;
        this.f5373id = id2;
        this.scenarioData = scenarioData;
        this.updateDate = updateDate;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof s)) {
            return false;
        }
        s sVar = (s) obj;
        return kotlin.jvm.internal.h.a(this.createDate, sVar.createDate) && kotlin.jvm.internal.h.a(this.f5373id, sVar.f5373id) && kotlin.jvm.internal.h.a(this.scenarioData, sVar.scenarioData) && kotlin.jvm.internal.h.a(this.updateDate, sVar.updateDate);
    }

    public final int hashCode() {
        return this.updateDate.hashCode() + ((this.scenarioData.hashCode() + androidx.room.util.a.a(this.f5373id, this.createDate.hashCode() * 31, 31)) * 31);
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder("ReportScenarioMap(createDate=");
        sb2.append(this.createDate);
        sb2.append(", id=");
        sb2.append(this.f5373id);
        sb2.append(", scenarioData=");
        sb2.append(this.scenarioData);
        sb2.append(", updateDate=");
        return android.support.v4.media.a.h(sb2, this.updateDate, ')');
    }
}
