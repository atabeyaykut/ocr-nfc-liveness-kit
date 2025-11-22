package tg;

/* loaded from: classes3.dex */
public final class c {

    /* renamed from: a, reason: collision with root package name */
    public final int f15718a;

    /* renamed from: b, reason: collision with root package name */
    public final int f15719b;

    /* renamed from: c, reason: collision with root package name */
    public final int f15720c;

    /* renamed from: d, reason: collision with root package name */
    public final int f15721d;

    public c(int r12, int r22, int r32, int r42) {
        this.f15718a = r12;
        this.f15719b = r22;
        this.f15720c = r32;
        this.f15721d = r42;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        return this.f15718a == cVar.f15718a && this.f15719b == cVar.f15719b && this.f15720c == cVar.f15720c && this.f15721d == cVar.f15721d;
    }

    public final int hashCode() {
        return (((((this.f15718a * 31) + this.f15719b) * 31) + this.f15720c) * 31) + this.f15721d;
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder("FirmItemContent(itemId=");
        sb2.append(this.f15718a);
        sb2.append(", itemName=");
        sb2.append(this.f15719b);
        sb2.append(", itemCategory=");
        sb2.append(this.f15720c);
        sb2.append(", itemLogoResource=");
        return androidx.constraintlayout.core.a.d(sb2, this.f15721d, ')');
    }
}
