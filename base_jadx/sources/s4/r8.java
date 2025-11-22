package s4;

/* loaded from: classes.dex */
public final class r8 extends s8 {

    /* renamed from: a, reason: collision with root package name */
    public final String f15162a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f15163b;

    /* renamed from: c, reason: collision with root package name */
    public final int f15164c;

    public /* synthetic */ r8(String str, boolean z10, int r32) {
        this.f15162a = str;
        this.f15163b = z10;
        this.f15164c = r32;
    }

    @Override // s4.s8
    public final int a() {
        return this.f15164c;
    }

    @Override // s4.s8
    public final String b() {
        return this.f15162a;
    }

    @Override // s4.s8
    public final boolean c() {
        return this.f15163b;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof s8) {
            s8 s8Var = (s8) obj;
            if (this.f15162a.equals(s8Var.b()) && this.f15163b == s8Var.c() && this.f15164c == s8Var.a()) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((((this.f15162a.hashCode() ^ 1000003) * 1000003) ^ (true != this.f15163b ? 1237 : 1231)) * 1000003) ^ this.f15164c;
    }

    public final String toString() {
        String str = this.f15162a;
        StringBuilder sb2 = new StringBuilder(String.valueOf(str).length() + 84);
        sb2.append("MLKitLoggingOptions{libraryName=");
        sb2.append(str);
        sb2.append(", enableFirelog=");
        sb2.append(this.f15163b);
        sb2.append(", firelogEventType=");
        sb2.append(this.f15164c);
        sb2.append("}");
        return sb2.toString();
    }
}
