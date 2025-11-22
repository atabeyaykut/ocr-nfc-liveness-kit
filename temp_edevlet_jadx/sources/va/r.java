package va;

/* loaded from: classes2.dex */
public final class r {

    /* renamed from: d, reason: collision with root package name */
    public static final r f18366d = new r(b0.STRICT, 6);

    /* renamed from: a, reason: collision with root package name */
    public final b0 f18367a;

    /* renamed from: b, reason: collision with root package name */
    public final l9.d f18368b;

    /* renamed from: c, reason: collision with root package name */
    public final b0 f18369c;

    public r(b0 b0Var, int r52) {
        this(b0Var, (r52 & 2) != 0 ? new l9.d(0, 0) : null, (r52 & 4) != 0 ? b0Var : null);
    }

    public r(b0 b0Var, l9.d dVar, b0 reportLevelAfter) {
        kotlin.jvm.internal.h.f(reportLevelAfter, "reportLevelAfter");
        this.f18367a = b0Var;
        this.f18368b = dVar;
        this.f18369c = reportLevelAfter;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof r)) {
            return false;
        }
        r rVar = (r) obj;
        return this.f18367a == rVar.f18367a && kotlin.jvm.internal.h.a(this.f18368b, rVar.f18368b) && this.f18369c == rVar.f18369c;
    }

    public final int hashCode() {
        int r02 = this.f18367a.hashCode() * 31;
        l9.d dVar = this.f18368b;
        return this.f18369c.hashCode() + ((r02 + (dVar == null ? 0 : dVar.f9581d)) * 31);
    }

    public final String toString() {
        return "JavaNullabilityAnnotationsStatus(reportLevelBefore=" + this.f18367a + ", sinceVersion=" + this.f18368b + ", reportLevelAfter=" + this.f18369c + ')';
    }
}
