package qb;

import cc.e0;
import ma.b0;

/* loaded from: classes2.dex */
public abstract class g<T> {

    /* renamed from: a, reason: collision with root package name */
    public final T f13469a;

    public g(T t10) {
        this.f13469a = t10;
    }

    public abstract e0 a(b0 b0Var);

    public T b() {
        return this.f13469a;
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            T tB = b();
            g gVar = obj instanceof g ? (g) obj : null;
            if (!kotlin.jvm.internal.h.a(tB, gVar != null ? gVar.b() : null)) {
                return false;
            }
        }
        return true;
    }

    public final int hashCode() {
        T tB = b();
        if (tB != null) {
            return tB.hashCode();
        }
        return 0;
    }

    public String toString() {
        return String.valueOf(b());
    }
}
