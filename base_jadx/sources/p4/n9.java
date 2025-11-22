package p4;

/* loaded from: classes.dex */
public final class n9 extends o9 {

    /* renamed from: a, reason: collision with root package name */
    public final String f12524a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f12525b;

    /* renamed from: c, reason: collision with root package name */
    public final int f12526c;

    public /* synthetic */ n9(String str, boolean z10, int r32) {
        this.f12524a = str;
        this.f12525b = z10;
        this.f12526c = r32;
    }

    @Override // p4.o9
    public final int a() {
        return this.f12526c;
    }

    @Override // p4.o9
    public final String b() {
        return this.f12524a;
    }

    @Override // p4.o9
    public final boolean c() {
        return this.f12525b;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof o9) {
            o9 o9Var = (o9) obj;
            if (this.f12524a.equals(o9Var.b()) && this.f12525b == o9Var.c() && this.f12526c == o9Var.a()) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((((this.f12524a.hashCode() ^ 1000003) * 1000003) ^ (true != this.f12525b ? 1237 : 1231)) * 1000003) ^ this.f12526c;
    }

    public final String toString() {
        String str = this.f12524a;
        StringBuilder sb2 = new StringBuilder(str.length() + 84);
        sb2.append("MLKitLoggingOptions{libraryName=");
        sb2.append(str);
        sb2.append(", enableFirelog=");
        sb2.append(this.f12525b);
        sb2.append(", firelogEventType=");
        sb2.append(this.f12526c);
        sb2.append("}");
        return sb2.toString();
    }
}
