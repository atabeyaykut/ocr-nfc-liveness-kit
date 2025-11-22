package v0;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.security.MessageDigest;
import v0.g;

/* loaded from: classes.dex */
public final class h implements f {

    /* renamed from: b, reason: collision with root package name */
    public final q1.b f18206b = new q1.b();

    /* JADX WARN: Multi-variable type inference failed */
    @Override // v0.f
    public final void a(@NonNull MessageDigest messageDigest) {
        for (int r02 = 0; r02 < this.f18206b.size(); r02++) {
            g gVar = (g) this.f18206b.keyAt(r02);
            V vValueAt = this.f18206b.valueAt(r02);
            g.b<T> bVar = gVar.f18203b;
            if (gVar.f18205d == null) {
                gVar.f18205d = gVar.f18204c.getBytes(f.f18200a);
            }
            bVar.a(gVar.f18205d, vValueAt, messageDigest);
        }
    }

    @Nullable
    public final <T> T c(@NonNull g<T> gVar) {
        q1.b bVar = this.f18206b;
        return bVar.containsKey(gVar) ? (T) bVar.get(gVar) : gVar.f18202a;
    }

    @Override // v0.f
    public final boolean equals(Object obj) {
        if (obj instanceof h) {
            return this.f18206b.equals(((h) obj).f18206b);
        }
        return false;
    }

    @Override // v0.f
    public final int hashCode() {
        return this.f18206b.hashCode();
    }

    public final String toString() {
        return "Options{values=" + this.f18206b + '}';
    }
}
