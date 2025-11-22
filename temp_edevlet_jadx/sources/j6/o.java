package j6;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import j6.a0;

/* loaded from: classes2.dex */
public final class o extends a0.e.d.a.b.AbstractC0140b {

    /* renamed from: a, reason: collision with root package name */
    public final String f8226a;

    /* renamed from: b, reason: collision with root package name */
    public final String f8227b;

    /* renamed from: c, reason: collision with root package name */
    public final b0<a0.e.d.a.b.AbstractC0141d.AbstractC0142a> f8228c;

    /* renamed from: d, reason: collision with root package name */
    public final a0.e.d.a.b.AbstractC0140b f8229d;

    /* renamed from: e, reason: collision with root package name */
    public final int f8230e;

    public o() {
        throw null;
    }

    public o(String str, String str2, b0 b0Var, a0.e.d.a.b.AbstractC0140b abstractC0140b, int r52) {
        this.f8226a = str;
        this.f8227b = str2;
        this.f8228c = b0Var;
        this.f8229d = abstractC0140b;
        this.f8230e = r52;
    }

    @Override // j6.a0.e.d.a.b.AbstractC0140b
    @Nullable
    public final a0.e.d.a.b.AbstractC0140b a() {
        return this.f8229d;
    }

    @Override // j6.a0.e.d.a.b.AbstractC0140b
    @NonNull
    public final b0<a0.e.d.a.b.AbstractC0141d.AbstractC0142a> b() {
        return this.f8228c;
    }

    @Override // j6.a0.e.d.a.b.AbstractC0140b
    public final int c() {
        return this.f8230e;
    }

    @Override // j6.a0.e.d.a.b.AbstractC0140b
    @Nullable
    public final String d() {
        return this.f8227b;
    }

    @Override // j6.a0.e.d.a.b.AbstractC0140b
    @NonNull
    public final String e() {
        return this.f8226a;
    }

    public final boolean equals(Object obj) {
        String str;
        a0.e.d.a.b.AbstractC0140b abstractC0140b;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof a0.e.d.a.b.AbstractC0140b)) {
            return false;
        }
        a0.e.d.a.b.AbstractC0140b abstractC0140b2 = (a0.e.d.a.b.AbstractC0140b) obj;
        return this.f8226a.equals(abstractC0140b2.e()) && ((str = this.f8227b) != null ? str.equals(abstractC0140b2.d()) : abstractC0140b2.d() == null) && this.f8228c.equals(abstractC0140b2.b()) && ((abstractC0140b = this.f8229d) != null ? abstractC0140b.equals(abstractC0140b2.a()) : abstractC0140b2.a() == null) && this.f8230e == abstractC0140b2.c();
    }

    public final int hashCode() {
        int r02 = (this.f8226a.hashCode() ^ 1000003) * 1000003;
        String str = this.f8227b;
        int r03 = (((r02 ^ (str == null ? 0 : str.hashCode())) * 1000003) ^ this.f8228c.hashCode()) * 1000003;
        a0.e.d.a.b.AbstractC0140b abstractC0140b = this.f8229d;
        return ((r03 ^ (abstractC0140b != null ? abstractC0140b.hashCode() : 0)) * 1000003) ^ this.f8230e;
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder("Exception{type=");
        sb2.append(this.f8226a);
        sb2.append(", reason=");
        sb2.append(this.f8227b);
        sb2.append(", frames=");
        sb2.append(this.f8228c);
        sb2.append(", causedBy=");
        sb2.append(this.f8229d);
        sb2.append(", overflowCount=");
        return androidx.browser.browseractions.a.b(sb2, this.f8230e, "}");
    }
}
