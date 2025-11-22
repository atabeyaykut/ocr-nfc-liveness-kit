package ca;

/* loaded from: classes2.dex */
public final class d extends b implements a<Integer> {

    /* renamed from: d, reason: collision with root package name */
    public static final d f2253d = new d(1, 0);

    public d(int r22, int r32) {
        super(r22, r32, 1);
    }

    @Override // ca.b
    public final boolean equals(Object obj) {
        if (obj instanceof d) {
            if (!isEmpty() || !((d) obj).isEmpty()) {
                d dVar = (d) obj;
                if (this.f2246a == dVar.f2246a) {
                    if (this.f2247b == dVar.f2247b) {
                    }
                }
            }
            return true;
        }
        return false;
    }

    @Override // ca.a
    public final Comparable getEndInclusive() {
        return Integer.valueOf(this.f2247b);
    }

    @Override // ca.a
    public final Comparable getStart() {
        return Integer.valueOf(this.f2246a);
    }

    @Override // ca.b
    public final int hashCode() {
        if (isEmpty()) {
            return -1;
        }
        return (this.f2246a * 31) + this.f2247b;
    }

    @Override // ca.b
    public final boolean isEmpty() {
        return this.f2246a > this.f2247b;
    }

    public final boolean l(int r22) {
        return this.f2246a <= r22 && r22 <= this.f2247b;
    }

    @Override // ca.b
    public final String toString() {
        return this.f2246a + ".." + this.f2247b;
    }
}
