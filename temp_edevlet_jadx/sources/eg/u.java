package eg;

/* loaded from: classes3.dex */
public final class u {

    @l8.k(name = "map")
    private final v scenarioInfo;

    public u(v scenarioInfo) {
        kotlin.jvm.internal.h.f(scenarioInfo, "scenarioInfo");
        this.scenarioInfo = scenarioInfo;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof u) && kotlin.jvm.internal.h.a(this.scenarioInfo, ((u) obj).scenarioInfo);
    }

    public final int hashCode() {
        return this.scenarioInfo.hashCode();
    }

    public final String toString() {
        return "ScenarioData(scenarioInfo=" + this.scenarioInfo + ')';
    }
}
