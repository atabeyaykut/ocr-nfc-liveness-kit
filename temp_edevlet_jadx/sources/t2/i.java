package t2;

import androidx.annotation.Nullable;
import t2.o;

/* loaded from: classes.dex */
public final class i extends o {

    /* renamed from: a, reason: collision with root package name */
    public final o.b f15630a;

    /* renamed from: b, reason: collision with root package name */
    public final o.a f15631b;

    public i(o.b bVar, o.a aVar) {
        this.f15630a = bVar;
        this.f15631b = aVar;
    }

    @Override // t2.o
    @Nullable
    public final o.a a() {
        return this.f15631b;
    }

    @Override // t2.o
    @Nullable
    public final o.b b() {
        return this.f15630a;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof o)) {
            return false;
        }
        o oVar = (o) obj;
        o.b bVar = this.f15630a;
        if (bVar != null ? bVar.equals(oVar.b()) : oVar.b() == null) {
            o.a aVar = this.f15631b;
            o.a aVarA = oVar.a();
            if (aVar == null) {
                if (aVarA == null) {
                    return true;
                }
            } else if (aVar.equals(aVarA)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        o.b bVar = this.f15630a;
        int r12 = ((bVar == null ? 0 : bVar.hashCode()) ^ 1000003) * 1000003;
        o.a aVar = this.f15631b;
        return (aVar != null ? aVar.hashCode() : 0) ^ r12;
    }

    public final String toString() {
        return "NetworkConnectionInfo{networkType=" + this.f15630a + ", mobileSubtype=" + this.f15631b + "}";
    }
}
