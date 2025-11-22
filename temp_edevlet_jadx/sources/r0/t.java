package r0;

/* loaded from: classes.dex */
public final class t<A> {

    /* renamed from: a, reason: collision with root package name */
    public final A f13864a;

    public t(A a10) {
        this.f13864a = a10;
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            return (obj instanceof t) && kotlin.jvm.internal.h.a(this.f13864a, ((t) obj).f13864a);
        }
        return true;
    }

    public final int hashCode() {
        A a10 = this.f13864a;
        if (a10 != null) {
            return a10.hashCode();
        }
        return 0;
    }

    public final String toString() {
        return androidx.camera.core.impl.a.e(new StringBuilder("MavericksTuple1(a="), this.f13864a, ")");
    }
}
