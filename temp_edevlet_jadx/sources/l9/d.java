package l9;

/* loaded from: classes2.dex */
public final class d implements Comparable<d> {

    /* renamed from: e, reason: collision with root package name */
    public static final d f9577e = new d(8, 0);

    /* renamed from: a, reason: collision with root package name */
    public final int f9578a;

    /* renamed from: b, reason: collision with root package name */
    public final int f9579b;

    /* renamed from: c, reason: collision with root package name */
    public final int f9580c;

    /* renamed from: d, reason: collision with root package name */
    public final int f9581d;

    public d() {
        throw null;
    }

    public d(int r52, int r6) {
        this.f9578a = 1;
        this.f9579b = r52;
        this.f9580c = r6;
        if (new ca.d(0, 255).l(1) && new ca.d(0, 255).l(r52) && new ca.d(0, 255).l(r6)) {
            this.f9581d = 65536 + (r52 << 8) + r6;
            return;
        }
        throw new IllegalArgumentException(("Version components are out of range: 1." + r52 + '.' + r6).toString());
    }

    @Override // java.lang.Comparable
    public final int compareTo(d dVar) {
        d other = dVar;
        kotlin.jvm.internal.h.f(other, "other");
        return this.f9581d - other.f9581d;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        d dVar = obj instanceof d ? (d) obj : null;
        return dVar != null && this.f9581d == dVar.f9581d;
    }

    public final int hashCode() {
        return this.f9581d;
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(this.f9578a);
        sb2.append('.');
        sb2.append(this.f9579b);
        sb2.append('.');
        sb2.append(this.f9580c);
        return sb2.toString();
    }
}
