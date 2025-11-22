package j6;

import androidx.annotation.NonNull;
import j6.a0;

/* loaded from: classes2.dex */
public final class q extends a0.e.d.a.b.AbstractC0141d {

    /* renamed from: a, reason: collision with root package name */
    public final String f8234a;

    /* renamed from: b, reason: collision with root package name */
    public final int f8235b;

    /* renamed from: c, reason: collision with root package name */
    public final b0<a0.e.d.a.b.AbstractC0141d.AbstractC0142a> f8236c;

    public q() {
        throw null;
    }

    public q(String str, int r22, b0 b0Var) {
        this.f8234a = str;
        this.f8235b = r22;
        this.f8236c = b0Var;
    }

    @Override // j6.a0.e.d.a.b.AbstractC0141d
    @NonNull
    public final b0<a0.e.d.a.b.AbstractC0141d.AbstractC0142a> a() {
        return this.f8236c;
    }

    @Override // j6.a0.e.d.a.b.AbstractC0141d
    public final int b() {
        return this.f8235b;
    }

    @Override // j6.a0.e.d.a.b.AbstractC0141d
    @NonNull
    public final String c() {
        return this.f8234a;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof a0.e.d.a.b.AbstractC0141d)) {
            return false;
        }
        a0.e.d.a.b.AbstractC0141d abstractC0141d = (a0.e.d.a.b.AbstractC0141d) obj;
        return this.f8234a.equals(abstractC0141d.c()) && this.f8235b == abstractC0141d.b() && this.f8236c.equals(abstractC0141d.a());
    }

    public final int hashCode() {
        return ((((this.f8234a.hashCode() ^ 1000003) * 1000003) ^ this.f8235b) * 1000003) ^ this.f8236c.hashCode();
    }

    public final String toString() {
        return "Thread{name=" + this.f8234a + ", importance=" + this.f8235b + ", frames=" + this.f8236c + "}";
    }
}
