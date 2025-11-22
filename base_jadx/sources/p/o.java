package p;

import java.util.Map;
import m9.w;

/* loaded from: classes.dex */
public final class o {

    /* renamed from: b, reason: collision with root package name */
    public static final o f12192b = new o(w.f10174a);

    /* renamed from: a, reason: collision with root package name */
    public final Map<Class<?>, Object> f12193a;

    public o(Map<Class<?>, ? extends Object> map) {
        this.f12193a = map;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof o) {
            if (kotlin.jvm.internal.h.a(this.f12193a, ((o) obj).f12193a)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.f12193a.hashCode();
    }

    public final String toString() {
        return "Tags(tags=" + this.f12193a + ')';
    }
}
