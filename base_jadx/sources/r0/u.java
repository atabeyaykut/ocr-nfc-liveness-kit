package r0;

/* loaded from: classes.dex */
public final class u<A, B> {

    /* renamed from: a, reason: collision with root package name */
    public final A f13866a;

    /* renamed from: b, reason: collision with root package name */
    public final B f13867b;

    public u(A a10, B b10) {
        this.f13866a = a10;
        this.f13867b = b10;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof u)) {
            return false;
        }
        u uVar = (u) obj;
        return kotlin.jvm.internal.h.a(this.f13866a, uVar.f13866a) && kotlin.jvm.internal.h.a(this.f13867b, uVar.f13867b);
    }

    public final int hashCode() {
        A a10 = this.f13866a;
        int r12 = (a10 != null ? a10.hashCode() : 0) * 31;
        B b10 = this.f13867b;
        return r12 + (b10 != null ? b10.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder("MavericksTuple2(a=");
        sb2.append(this.f13866a);
        sb2.append(", b=");
        return androidx.camera.core.impl.a.e(sb2, this.f13867b, ")");
    }
}
