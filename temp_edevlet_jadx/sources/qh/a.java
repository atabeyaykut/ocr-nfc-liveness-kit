package qh;

/* loaded from: classes3.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public final int f13690a;

    /* renamed from: b, reason: collision with root package name */
    public final int f13691b;

    public a(int r12, int r22) {
        this.f13690a = r12;
        this.f13691b = r22;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return this.f13690a == aVar.f13690a && this.f13691b == aVar.f13691b;
    }

    public final int hashCode() {
        return (this.f13690a * 31) + this.f13691b;
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder("ChipItemModel(chipId=");
        sb2.append(this.f13690a);
        sb2.append(", chipNameResId=");
        return androidx.constraintlayout.core.a.d(sb2, this.f13691b, ')');
    }
}
