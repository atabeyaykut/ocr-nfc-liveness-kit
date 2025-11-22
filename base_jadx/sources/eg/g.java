package eg;

/* loaded from: classes3.dex */
public final class g {

    @l8.k(name = "map")
    private final l reportInfo;

    public g(l lVar) {
        this.reportInfo = lVar;
    }

    public final l a() {
        return this.reportInfo;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof g) && kotlin.jvm.internal.h.a(this.reportInfo, ((g) obj).reportInfo);
    }

    public final int hashCode() {
        l lVar = this.reportInfo;
        if (lVar == null) {
            return 0;
        }
        return lVar.hashCode();
    }

    public final String toString() {
        return "Report(reportInfo=" + this.reportInfo + ')';
    }
}
