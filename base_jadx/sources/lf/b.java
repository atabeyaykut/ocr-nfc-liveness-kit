package lf;

import kotlin.jvm.internal.h;

/* loaded from: classes3.dex */
public final class b {

    /* renamed from: a, reason: collision with root package name */
    public final int f9809a;

    /* renamed from: b, reason: collision with root package name */
    public final int f9810b;

    /* renamed from: c, reason: collision with root package name */
    public final int f9811c;

    /* renamed from: d, reason: collision with root package name */
    public final Integer f9812d;

    public b(int r12, int r22, int r32, Integer num) {
        this.f9809a = r12;
        this.f9810b = r22;
        this.f9811c = r32;
        this.f9812d = num;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return this.f9809a == bVar.f9809a && this.f9810b == bVar.f9810b && this.f9811c == bVar.f9811c && h.a(this.f9812d, bVar.f9812d);
    }

    public final int hashCode() {
        int r02 = ((((this.f9809a * 31) + this.f9810b) * 31) + this.f9811c) * 31;
        Integer num = this.f9812d;
        return r02 + (num == null ? 0 : num.hashCode());
    }

    public final String toString() {
        return "DashboardItemContent(itemId=" + this.f9809a + ", itemName=" + this.f9810b + ", itemLogoResource=" + this.f9811c + ", itemExplanation=" + this.f9812d + ')';
    }
}
