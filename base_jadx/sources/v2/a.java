package v2;

import androidx.annotation.Nullable;
import java.util.Arrays;
import u2.n;

/* loaded from: classes.dex */
public final class a extends f {

    /* renamed from: a, reason: collision with root package name */
    public final Iterable<n> f18212a;

    /* renamed from: b, reason: collision with root package name */
    public final byte[] f18213b;

    public a() {
        throw null;
    }

    public a(Iterable iterable, byte[] bArr) {
        this.f18212a = iterable;
        this.f18213b = bArr;
    }

    @Override // v2.f
    public final Iterable<n> a() {
        return this.f18212a;
    }

    @Override // v2.f
    @Nullable
    public final byte[] b() {
        return this.f18213b;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof f)) {
            return false;
        }
        f fVar = (f) obj;
        if (this.f18212a.equals(fVar.a())) {
            if (Arrays.equals(this.f18213b, fVar instanceof a ? ((a) fVar).f18213b : fVar.b())) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((this.f18212a.hashCode() ^ 1000003) * 1000003) ^ Arrays.hashCode(this.f18213b);
    }

    public final String toString() {
        return "BackendRequest{events=" + this.f18212a + ", extras=" + Arrays.toString(this.f18213b) + "}";
    }
}
