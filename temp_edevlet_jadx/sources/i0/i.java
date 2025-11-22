package i0;

import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.util.Pair;

@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes.dex */
public final class i<T> {

    /* renamed from: a, reason: collision with root package name */
    @Nullable
    public T f7232a;

    /* renamed from: b, reason: collision with root package name */
    @Nullable
    public T f7233b;

    public final boolean equals(Object obj) {
        if (!(obj instanceof Pair)) {
            return false;
        }
        Pair pair = (Pair) obj;
        F f = pair.first;
        Object obj2 = this.f7232a;
        if (!(f == obj2 || (f != 0 && f.equals(obj2)))) {
            return false;
        }
        S s7 = pair.second;
        Object obj3 = this.f7233b;
        return s7 == obj3 || (s7 != 0 && s7.equals(obj3));
    }

    public final int hashCode() {
        T t10 = this.f7232a;
        int r02 = t10 == null ? 0 : t10.hashCode();
        T t11 = this.f7233b;
        return r02 ^ (t11 != null ? t11.hashCode() : 0);
    }

    public final String toString() {
        return "Pair{" + String.valueOf(this.f7232a) + " " + String.valueOf(this.f7233b) + "}";
    }
}
