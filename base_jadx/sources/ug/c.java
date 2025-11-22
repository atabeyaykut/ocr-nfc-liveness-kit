package ug;

/* loaded from: classes3.dex */
public final class c {

    /* renamed from: a, reason: collision with root package name */
    public final int f18153a;

    /* renamed from: b, reason: collision with root package name */
    public final int f18154b;

    /* renamed from: c, reason: collision with root package name */
    public final int f18155c;

    /* renamed from: d, reason: collision with root package name */
    public final int f18156d;

    /* renamed from: e, reason: collision with root package name */
    public final boolean f18157e;
    public final int f;

    public c(int r12, int r22, int r32, int r42, boolean z10, int r6) {
        this.f18153a = r12;
        this.f18154b = r22;
        this.f18155c = r32;
        this.f18156d = r42;
        this.f18157e = z10;
        this.f = r6;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        return this.f18153a == cVar.f18153a && this.f18154b == cVar.f18154b && this.f18155c == cVar.f18155c && this.f18156d == cVar.f18156d && this.f18157e == cVar.f18157e && this.f == cVar.f;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final int hashCode() {
        int r02 = ((((((this.f18153a * 31) + this.f18154b) * 31) + this.f18155c) * 31) + this.f18156d) * 31;
        boolean z10 = this.f18157e;
        int r12 = z10;
        if (z10 != 0) {
            r12 = 1;
        }
        return ((r02 + r12) * 31) + this.f;
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder("InstitutionItemContent(itemId=");
        sb2.append(this.f18153a);
        sb2.append(", itemName=");
        sb2.append(this.f18154b);
        sb2.append(", itemCategory=");
        sb2.append(this.f18155c);
        sb2.append(", itemDescription=");
        sb2.append(this.f18156d);
        sb2.append(", isCityRequired=");
        sb2.append(this.f18157e);
        sb2.append(", itemLogoResource=");
        return androidx.constraintlayout.core.a.d(sb2, this.f, ')');
    }
}
