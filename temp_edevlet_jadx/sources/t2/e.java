package t2;

import androidx.annotation.Nullable;
import t2.k;

/* loaded from: classes.dex */
public final class e extends k {

    /* renamed from: a, reason: collision with root package name */
    public final k.a f15609a;

    /* renamed from: b, reason: collision with root package name */
    public final a f15610b;

    public e(k.a aVar, a aVar2) {
        this.f15609a = aVar;
        this.f15610b = aVar2;
    }

    @Override // t2.k
    @Nullable
    public final a a() {
        return this.f15610b;
    }

    @Override // t2.k
    @Nullable
    public final k.a b() {
        return this.f15609a;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof k)) {
            return false;
        }
        k kVar = (k) obj;
        k.a aVar = this.f15609a;
        if (aVar != null ? aVar.equals(kVar.b()) : kVar.b() == null) {
            a aVar2 = this.f15610b;
            a aVarA = kVar.a();
            if (aVar2 == null) {
                if (aVarA == null) {
                    return true;
                }
            } else if (aVar2.equals(aVarA)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        k.a aVar = this.f15609a;
        int r12 = ((aVar == null ? 0 : aVar.hashCode()) ^ 1000003) * 1000003;
        a aVar2 = this.f15610b;
        return (aVar2 != null ? aVar2.hashCode() : 0) ^ r12;
    }

    public final String toString() {
        return "ClientInfo{clientType=" + this.f15609a + ", androidClientInfo=" + this.f15610b + "}";
    }
}
