package q1;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* loaded from: classes.dex */
public final class k {

    /* renamed from: a, reason: collision with root package name */
    public Class<?> f13315a;

    /* renamed from: b, reason: collision with root package name */
    public Class<?> f13316b;

    /* renamed from: c, reason: collision with root package name */
    public Class<?> f13317c;

    public k() {
    }

    public k(@NonNull Class<?> cls, @NonNull Class<?> cls2, @Nullable Class<?> cls3) {
        this.f13315a = cls;
        this.f13316b = cls2;
        this.f13317c = cls3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || k.class != obj.getClass()) {
            return false;
        }
        k kVar = (k) obj;
        return this.f13315a.equals(kVar.f13315a) && this.f13316b.equals(kVar.f13316b) && m.b(this.f13317c, kVar.f13317c);
    }

    public final int hashCode() {
        int r12 = (this.f13316b.hashCode() + (this.f13315a.hashCode() * 31)) * 31;
        Class<?> cls = this.f13317c;
        return r12 + (cls != null ? cls.hashCode() : 0);
    }

    public final String toString() {
        return "MultiClassKey{first=" + this.f13315a + ", second=" + this.f13316b + '}';
    }
}
