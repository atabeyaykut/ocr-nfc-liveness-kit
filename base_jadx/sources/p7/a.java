package p7;

import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;

/* loaded from: classes2.dex */
public final class a<T> {

    /* renamed from: a, reason: collision with root package name */
    public final Class<? super T> f12844a;

    /* renamed from: b, reason: collision with root package name */
    public final Type f12845b;

    /* renamed from: c, reason: collision with root package name */
    public final int f12846c;

    public a() {
        Type genericSuperclass = a.class.getGenericSuperclass();
        if (genericSuperclass instanceof Class) {
            throw new RuntimeException("Missing type parameter.");
        }
        Type typeA = l7.a.a(((ParameterizedType) genericSuperclass).getActualTypeArguments()[0]);
        this.f12845b = typeA;
        this.f12844a = (Class<? super T>) l7.a.e(typeA);
        this.f12846c = typeA.hashCode();
    }

    public final boolean equals(Object obj) {
        if (obj instanceof a) {
            if (l7.a.c(this.f12845b, ((a) obj).f12845b)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.f12846c;
    }

    public final String toString() {
        return l7.a.h(this.f12845b);
    }

    public a(Type type) {
        type.getClass();
        Type typeA = l7.a.a(type);
        this.f12845b = typeA;
        this.f12844a = (Class<? super T>) l7.a.e(typeA);
        this.f12846c = typeA.hashCode();
    }
}
