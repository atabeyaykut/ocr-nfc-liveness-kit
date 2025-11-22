package m9;

/* loaded from: classes2.dex */
public final class y<T> {

    /* renamed from: a, reason: collision with root package name */
    public final int f10176a;

    /* renamed from: b, reason: collision with root package name */
    public final T f10177b;

    public y(int r12, T t10) {
        this.f10176a = r12;
        this.f10177b = t10;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof y)) {
            return false;
        }
        y yVar = (y) obj;
        return this.f10176a == yVar.f10176a && kotlin.jvm.internal.h.a(this.f10177b, yVar.f10177b);
    }

    public final int hashCode() {
        int r02 = this.f10176a * 31;
        T t10 = this.f10177b;
        return r02 + (t10 == null ? 0 : t10.hashCode());
    }

    public final String toString() {
        return "IndexedValue(index=" + this.f10176a + ", value=" + this.f10177b + ')';
    }
}
