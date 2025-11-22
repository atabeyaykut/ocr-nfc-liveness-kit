package eg;

/* loaded from: classes3.dex */
public final class r {

    @l8.k(name = "map")
    private final s reportScenarioMap;

    public r(s reportScenarioMap) {
        kotlin.jvm.internal.h.f(reportScenarioMap, "reportScenarioMap");
        this.reportScenarioMap = reportScenarioMap;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof r) && kotlin.jvm.internal.h.a(this.reportScenarioMap, ((r) obj).reportScenarioMap);
    }

    public final int hashCode() {
        return this.reportScenarioMap.hashCode();
    }

    public final String toString() {
        return "ReportScenario(reportScenarioMap=" + this.reportScenarioMap + ')';
    }
}
