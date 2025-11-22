package o4;

/* loaded from: classes.dex */
public final class i extends j {

    /* renamed from: a, reason: collision with root package name */
    public final String f11217a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f11218b;

    /* renamed from: c, reason: collision with root package name */
    public final int f11219c;

    public /* synthetic */ i(String str, boolean z10, int r32) {
        this.f11217a = str;
        this.f11218b = z10;
        this.f11219c = r32;
    }

    @Override // o4.j
    public final int a() {
        return this.f11219c;
    }

    @Override // o4.j
    public final String b() {
        return this.f11217a;
    }

    @Override // o4.j
    public final boolean c() {
        return this.f11218b;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof j) {
            j jVar = (j) obj;
            if (this.f11217a.equals(jVar.b()) && this.f11218b == jVar.c() && this.f11219c == jVar.a()) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((((this.f11217a.hashCode() ^ 1000003) * 1000003) ^ (true != this.f11218b ? 1237 : 1231)) * 1000003) ^ this.f11219c;
    }

    public final String toString() {
        String str = this.f11217a;
        StringBuilder sb2 = new StringBuilder(String.valueOf(str).length() + 84);
        sb2.append("MLKitLoggingOptions{libraryName=");
        sb2.append(str);
        sb2.append(", enableFirelog=");
        sb2.append(this.f11218b);
        sb2.append(", firelogEventType=");
        sb2.append(this.f11219c);
        sb2.append("}");
        return sb2.toString();
    }
}
