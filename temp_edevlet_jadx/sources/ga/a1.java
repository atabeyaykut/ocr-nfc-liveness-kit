package ga;

import java.lang.ref.WeakReference;

/* loaded from: classes2.dex */
public final class a1 {

    /* renamed from: a, reason: collision with root package name */
    public final WeakReference<ClassLoader> f5956a;

    /* renamed from: b, reason: collision with root package name */
    public final int f5957b;

    public a1(ClassLoader classLoader) {
        this.f5956a = new WeakReference<>(classLoader);
        this.f5957b = System.identityHashCode(classLoader);
    }

    public final boolean equals(Object obj) {
        return (obj instanceof a1) && this.f5956a.get() == ((a1) obj).f5956a.get();
    }

    public final int hashCode() {
        return this.f5957b;
    }

    public final String toString() {
        String string;
        ClassLoader classLoader = this.f5956a.get();
        return (classLoader == null || (string = classLoader.toString()) == null) ? "<null>" : string;
    }
}
