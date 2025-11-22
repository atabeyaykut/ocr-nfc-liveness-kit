package p1;

import androidx.annotation.NonNull;
import java.security.MessageDigest;
import q1.l;
import v0.f;

/* loaded from: classes.dex */
public final class b implements f {

    /* renamed from: b, reason: collision with root package name */
    public final Object f12219b;

    public b(@NonNull Object obj) {
        l.b(obj);
        this.f12219b = obj;
    }

    @Override // v0.f
    public final void a(@NonNull MessageDigest messageDigest) {
        messageDigest.update(this.f12219b.toString().getBytes(f.f18200a));
    }

    @Override // v0.f
    public final boolean equals(Object obj) {
        if (obj instanceof b) {
            return this.f12219b.equals(((b) obj).f12219b);
        }
        return false;
    }

    @Override // v0.f
    public final int hashCode() {
        return this.f12219b.hashCode();
    }

    public final String toString() {
        return "ObjectKey{object=" + this.f12219b + '}';
    }
}
