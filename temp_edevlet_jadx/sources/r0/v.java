package r0;

/* loaded from: classes.dex */
public final class v<A, B, C> {

    /* renamed from: a, reason: collision with root package name */
    public final A f13869a;

    /* renamed from: b, reason: collision with root package name */
    public final B f13870b;

    /* renamed from: c, reason: collision with root package name */
    public final C f13871c;

    public v(A a10, B b10, C c10) {
        this.f13869a = a10;
        this.f13870b = b10;
        this.f13871c = c10;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof v)) {
            return false;
        }
        v vVar = (v) obj;
        return kotlin.jvm.internal.h.a(this.f13869a, vVar.f13869a) && kotlin.jvm.internal.h.a(this.f13870b, vVar.f13870b) && kotlin.jvm.internal.h.a(this.f13871c, vVar.f13871c);
    }

    public final int hashCode() {
        A a10 = this.f13869a;
        int r12 = (a10 != null ? a10.hashCode() : 0) * 31;
        B b10 = this.f13870b;
        int r13 = (r12 + (b10 != null ? b10.hashCode() : 0)) * 31;
        C c10 = this.f13871c;
        return r13 + (c10 != null ? c10.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder("MavericksTuple3(a=");
        sb2.append(this.f13869a);
        sb2.append(", b=");
        sb2.append(this.f13870b);
        sb2.append(", c=");
        return androidx.camera.core.impl.a.e(sb2, this.f13871c, ")");
    }
}
