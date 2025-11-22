package ch;

/* loaded from: classes3.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public final int f2414a;

    /* renamed from: b, reason: collision with root package name */
    public final String f2415b;

    /* renamed from: c, reason: collision with root package name */
    public final String f2416c;

    /* renamed from: d, reason: collision with root package name */
    public final boolean f2417d;

    public a(String str, String str2, boolean z10, int r42) {
        this.f2414a = r42;
        this.f2415b = str;
        this.f2416c = str2;
        this.f2417d = z10;
    }

    public static a a(a aVar, boolean z10) {
        String dashPointKey = aVar.f2415b;
        kotlin.jvm.internal.h.f(dashPointKey, "dashPointKey");
        String dashPointValue = aVar.f2416c;
        kotlin.jvm.internal.h.f(dashPointValue, "dashPointValue");
        return new a(dashPointKey, dashPointValue, z10, aVar.f2414a);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return this.f2414a == aVar.f2414a && kotlin.jvm.internal.h.a(this.f2415b, aVar.f2415b) && kotlin.jvm.internal.h.a(this.f2416c, aVar.f2416c) && this.f2417d == aVar.f2417d;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final int hashCode() {
        int r02 = androidx.room.util.a.a(this.f2416c, androidx.room.util.a.a(this.f2415b, this.f2414a * 31, 31), 31);
        boolean z10 = this.f2417d;
        int r12 = z10;
        if (z10 != 0) {
            r12 = 1;
        }
        return r02 + r12;
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder("DashPointItemModel(dashPointResourceId=");
        sb2.append(this.f2414a);
        sb2.append(", dashPointKey=");
        sb2.append(this.f2415b);
        sb2.append(", dashPointValue=");
        sb2.append(this.f2416c);
        sb2.append(", isSelected=");
        return androidx.browser.browseractions.b.f(sb2, this.f2417d, ')');
    }
}
