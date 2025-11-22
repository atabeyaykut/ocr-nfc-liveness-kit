package kotlin.jvm.internal;

/* loaded from: classes2.dex */
public final class n implements b {

    /* renamed from: a, reason: collision with root package name */
    public final Class<?> f8972a;

    public n(Class<?> jClass, String str) {
        h.f(jClass, "jClass");
        this.f8972a = jClass;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof n) {
            if (h.a(this.f8972a, ((n) obj).f8972a)) {
                return true;
            }
        }
        return false;
    }

    @Override // kotlin.jvm.internal.b
    public final Class<?> g() {
        return this.f8972a;
    }

    public final int hashCode() {
        return this.f8972a.hashCode();
    }

    public final String toString() {
        return this.f8972a.toString() + " (Kotlin reflection is not available)";
    }
}
