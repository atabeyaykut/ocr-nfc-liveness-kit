package qb;

/* loaded from: classes2.dex */
public final class f {

    /* renamed from: a, reason: collision with root package name */
    public final lb.b f13467a;

    /* renamed from: b, reason: collision with root package name */
    public final int f13468b;

    public f(lb.b bVar, int r22) {
        this.f13467a = bVar;
        this.f13468b = r22;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof f)) {
            return false;
        }
        f fVar = (f) obj;
        return kotlin.jvm.internal.h.a(this.f13467a, fVar.f13467a) && this.f13468b == fVar.f13468b;
    }

    public final int hashCode() {
        return (this.f13467a.hashCode() * 31) + this.f13468b;
    }

    public final String toString() {
        int r32;
        StringBuilder sb2 = new StringBuilder();
        int r22 = 0;
        while (true) {
            r32 = this.f13468b;
            if (r22 >= r32) {
                break;
            }
            sb2.append("kotlin/Array<");
            r22++;
        }
        sb2.append(this.f13467a);
        for (int r12 = 0; r12 < r32; r12++) {
            sb2.append(">");
        }
        String string = sb2.toString();
        kotlin.jvm.internal.h.e(string, "StringBuilder().apply(builderAction).toString()");
        return string;
    }
}
