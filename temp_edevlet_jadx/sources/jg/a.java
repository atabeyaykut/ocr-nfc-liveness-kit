package jg;

/* loaded from: classes3.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public final int f8507a;

    /* renamed from: b, reason: collision with root package name */
    public final int f8508b;

    /* renamed from: c, reason: collision with root package name */
    public final int f8509c;

    public a(int r12, int r22, int r32) {
        this.f8507a = r12;
        this.f8508b = r22;
        this.f8509c = r32;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return this.f8507a == aVar.f8507a && this.f8508b == aVar.f8508b && this.f8509c == aVar.f8509c;
    }

    public final int hashCode() {
        return (((this.f8507a * 31) + this.f8508b) * 31) + this.f8509c;
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder("ProfileItemContent(itemId=");
        sb2.append(this.f8507a);
        sb2.append(", itemName=");
        sb2.append(this.f8508b);
        sb2.append(", itemLogoResource=");
        return androidx.constraintlayout.core.a.d(sb2, this.f8509c, ')');
    }
}
