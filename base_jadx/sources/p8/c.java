package p8;

/* loaded from: classes2.dex */
public final class c {

    /* renamed from: a, reason: collision with root package name */
    public final int f12855a;

    /* renamed from: b, reason: collision with root package name */
    public final int f12856b;

    /* renamed from: c, reason: collision with root package name */
    public final int f12857c;

    public c(int r12, int r22, int r32) {
        this.f12855a = r12;
        this.f12856b = r22;
        this.f12857c = r32;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || c.class != obj.getClass()) {
            return false;
        }
        c cVar = (c) obj;
        return this.f12855a == cVar.f12855a && this.f12856b == cVar.f12856b && this.f12857c == cVar.f12857c;
    }

    public final int hashCode() {
        return (((this.f12855a * 31) + this.f12856b) * 31) + this.f12857c;
    }
}
