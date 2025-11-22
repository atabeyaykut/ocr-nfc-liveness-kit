package i9;

import io.realm.m0;

/* loaded from: classes2.dex */
public final class a<F, S> {

    /* renamed from: a, reason: collision with root package name */
    public final F f7314a;

    /* renamed from: b, reason: collision with root package name */
    public final S f7315b;

    /* JADX WARN: Multi-variable type inference failed */
    public a(m0.b bVar, Object obj) {
        this.f7314a = bVar;
        this.f7315b = obj;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        F f = aVar.f7314a;
        F f10 = this.f7314a;
        if (!(f == f10 || (f != null && f.equals(f10)))) {
            return false;
        }
        S s7 = aVar.f7315b;
        S s10 = this.f7315b;
        return s7 == s10 || (s7 != null && s7.equals(s10));
    }

    public final int hashCode() {
        F f = this.f7314a;
        int r12 = f == null ? 0 : f.hashCode();
        S s7 = this.f7315b;
        return (s7 != null ? s7.hashCode() : 0) ^ r12;
    }

    public final String toString() {
        return "Pair{" + String.valueOf(this.f7314a) + " " + String.valueOf(this.f7315b) + "}";
    }
}
