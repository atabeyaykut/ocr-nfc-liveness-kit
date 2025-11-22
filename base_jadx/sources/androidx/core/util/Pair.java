package androidx.core.util;

import androidx.annotation.NonNull;

/* loaded from: classes.dex */
public class Pair<F, S> {
    public final F first;
    public final S second;

    public Pair(F f, S s7) {
        this.first = f;
        this.second = s7;
    }

    @NonNull
    public static <A, B> Pair<A, B> create(A a10, B b10) {
        return new Pair<>(a10, b10);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof Pair)) {
            return false;
        }
        Pair pair = (Pair) obj;
        return ObjectsCompat.equals(pair.first, this.first) && ObjectsCompat.equals(pair.second, this.second);
    }

    public int hashCode() {
        F f = this.first;
        int r02 = f == null ? 0 : f.hashCode();
        S s7 = this.second;
        return r02 ^ (s7 != null ? s7.hashCode() : 0);
    }

    @NonNull
    public String toString() {
        StringBuilder sb2 = new StringBuilder("Pair{");
        sb2.append(this.first);
        sb2.append(" ");
        return androidx.camera.core.impl.a.e(sb2, this.second, "}");
    }
}
