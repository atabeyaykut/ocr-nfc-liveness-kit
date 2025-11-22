package c6;

/* loaded from: classes2.dex */
public final class o {

    /* renamed from: a, reason: collision with root package name */
    public final Class<?> f2215a;

    /* renamed from: b, reason: collision with root package name */
    public final int f2216b;

    /* renamed from: c, reason: collision with root package name */
    public final int f2217c;

    public o(int r12, int r22, Class cls) {
        this.f2215a = cls;
        this.f2216b = r12;
        this.f2217c = r22;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof o)) {
            return false;
        }
        o oVar = (o) obj;
        return this.f2215a == oVar.f2215a && this.f2216b == oVar.f2216b && this.f2217c == oVar.f2217c;
    }

    public final int hashCode() {
        return ((((this.f2215a.hashCode() ^ 1000003) * 1000003) ^ this.f2216b) * 1000003) ^ this.f2217c;
    }

    public final String toString() {
        String str;
        StringBuilder sb2 = new StringBuilder("Dependency{anInterface=");
        sb2.append(this.f2215a);
        sb2.append(", type=");
        int r12 = this.f2216b;
        sb2.append(r12 == 1 ? "required" : r12 == 0 ? "optional" : "set");
        sb2.append(", injection=");
        int r13 = this.f2217c;
        if (r13 == 0) {
            str = "direct";
        } else if (r13 == 1) {
            str = "provider";
        } else {
            if (r13 != 2) {
                throw new AssertionError(android.support.v4.media.a.d("Unsupported injection: ", r13));
            }
            str = "deferred";
        }
        return androidx.camera.camera2.internal.c.h(sb2, str, "}");
    }
}
