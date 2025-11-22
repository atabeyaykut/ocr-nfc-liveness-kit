package r4;

/* loaded from: classes.dex */
public final class h6 extends i6 {

    /* renamed from: a, reason: collision with root package name */
    public final String f14153a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f14154b;

    /* renamed from: c, reason: collision with root package name */
    public final int f14155c;

    public /* synthetic */ h6(String str, boolean z10, int r32) {
        this.f14153a = str;
        this.f14154b = z10;
        this.f14155c = r32;
    }

    @Override // r4.i6
    public final int a() {
        return this.f14155c;
    }

    @Override // r4.i6
    public final String b() {
        return this.f14153a;
    }

    @Override // r4.i6
    public final boolean c() {
        return this.f14154b;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof i6) {
            i6 i6Var = (i6) obj;
            if (this.f14153a.equals(i6Var.b()) && this.f14154b == i6Var.c() && this.f14155c == i6Var.a()) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((((this.f14153a.hashCode() ^ 1000003) * 1000003) ^ (true != this.f14154b ? 1237 : 1231)) * 1000003) ^ this.f14155c;
    }

    public final String toString() {
        String str = this.f14153a;
        StringBuilder sb2 = new StringBuilder(str.length() + 84);
        sb2.append("MLKitLoggingOptions{libraryName=");
        sb2.append(str);
        sb2.append(", enableFirelog=");
        sb2.append(this.f14154b);
        sb2.append(", firelogEventType=");
        sb2.append(this.f14155c);
        sb2.append("}");
        return sb2.toString();
    }
}
