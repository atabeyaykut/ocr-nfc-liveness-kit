package j6;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import j6.a0;

/* loaded from: classes2.dex */
public final class m extends a0.e.d.a.b {

    /* renamed from: a, reason: collision with root package name */
    public final b0<a0.e.d.a.b.AbstractC0141d> f8213a;

    /* renamed from: b, reason: collision with root package name */
    public final a0.e.d.a.b.AbstractC0140b f8214b;

    /* renamed from: c, reason: collision with root package name */
    public final a0.a f8215c;

    /* renamed from: d, reason: collision with root package name */
    public final a0.e.d.a.b.c f8216d;

    /* renamed from: e, reason: collision with root package name */
    public final b0<a0.e.d.a.b.AbstractC0138a> f8217e;

    public m() {
        throw null;
    }

    public m(b0 b0Var, a0.e.d.a.b.AbstractC0140b abstractC0140b, a0.a aVar, a0.e.d.a.b.c cVar, b0 b0Var2) {
        this.f8213a = b0Var;
        this.f8214b = abstractC0140b;
        this.f8215c = aVar;
        this.f8216d = cVar;
        this.f8217e = b0Var2;
    }

    @Override // j6.a0.e.d.a.b
    @Nullable
    public final a0.a a() {
        return this.f8215c;
    }

    @Override // j6.a0.e.d.a.b
    @NonNull
    public final b0<a0.e.d.a.b.AbstractC0138a> b() {
        return this.f8217e;
    }

    @Override // j6.a0.e.d.a.b
    @Nullable
    public final a0.e.d.a.b.AbstractC0140b c() {
        return this.f8214b;
    }

    @Override // j6.a0.e.d.a.b
    @NonNull
    public final a0.e.d.a.b.c d() {
        return this.f8216d;
    }

    @Override // j6.a0.e.d.a.b
    @Nullable
    public final b0<a0.e.d.a.b.AbstractC0141d> e() {
        return this.f8213a;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof a0.e.d.a.b)) {
            return false;
        }
        a0.e.d.a.b bVar = (a0.e.d.a.b) obj;
        b0<a0.e.d.a.b.AbstractC0141d> b0Var = this.f8213a;
        if (b0Var != null ? b0Var.equals(bVar.e()) : bVar.e() == null) {
            a0.e.d.a.b.AbstractC0140b abstractC0140b = this.f8214b;
            if (abstractC0140b != null ? abstractC0140b.equals(bVar.c()) : bVar.c() == null) {
                a0.a aVar = this.f8215c;
                if (aVar != null ? aVar.equals(bVar.a()) : bVar.a() == null) {
                    if (this.f8216d.equals(bVar.d()) && this.f8217e.equals(bVar.b())) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        b0<a0.e.d.a.b.AbstractC0141d> b0Var = this.f8213a;
        int r12 = ((b0Var == null ? 0 : b0Var.hashCode()) ^ 1000003) * 1000003;
        a0.e.d.a.b.AbstractC0140b abstractC0140b = this.f8214b;
        int r13 = (r12 ^ (abstractC0140b == null ? 0 : abstractC0140b.hashCode())) * 1000003;
        a0.a aVar = this.f8215c;
        return (((((aVar != null ? aVar.hashCode() : 0) ^ r13) * 1000003) ^ this.f8216d.hashCode()) * 1000003) ^ this.f8217e.hashCode();
    }

    public final String toString() {
        return "Execution{threads=" + this.f8213a + ", exception=" + this.f8214b + ", appExitInfo=" + this.f8215c + ", signal=" + this.f8216d + ", binaries=" + this.f8217e + "}";
    }
}
