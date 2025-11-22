package x0;

import androidx.annotation.NonNull;
import java.security.MessageDigest;

/* loaded from: classes.dex */
public final class f implements v0.f {

    /* renamed from: b, reason: collision with root package name */
    public final v0.f f18956b;

    /* renamed from: c, reason: collision with root package name */
    public final v0.f f18957c;

    public f(v0.f fVar, v0.f fVar2) {
        this.f18956b = fVar;
        this.f18957c = fVar2;
    }

    @Override // v0.f
    public final void a(@NonNull MessageDigest messageDigest) {
        this.f18956b.a(messageDigest);
        this.f18957c.a(messageDigest);
    }

    @Override // v0.f
    public final boolean equals(Object obj) {
        if (!(obj instanceof f)) {
            return false;
        }
        f fVar = (f) obj;
        return this.f18956b.equals(fVar.f18956b) && this.f18957c.equals(fVar.f18957c);
    }

    @Override // v0.f
    public final int hashCode() {
        return this.f18957c.hashCode() + (this.f18956b.hashCode() * 31);
    }

    public final String toString() {
        return "DataCacheKey{sourceKey=" + this.f18956b + ", signature=" + this.f18957c + '}';
    }
}
