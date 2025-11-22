package da;

import java.lang.reflect.GenericArrayType;
import java.lang.reflect.Type;

/* loaded from: classes2.dex */
public final class a implements GenericArrayType, Type {

    /* renamed from: a, reason: collision with root package name */
    public final Type f4713a;

    public a(Type elementType) {
        kotlin.jvm.internal.h.f(elementType, "elementType");
        this.f4713a = elementType;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof GenericArrayType) {
            if (kotlin.jvm.internal.h.a(this.f4713a, ((GenericArrayType) obj).getGenericComponentType())) {
                return true;
            }
        }
        return false;
    }

    @Override // java.lang.reflect.GenericArrayType
    public final Type getGenericComponentType() {
        return this.f4713a;
    }

    @Override // java.lang.reflect.Type
    public final String getTypeName() {
        return t.a(this.f4713a) + "[]";
    }

    public final int hashCode() {
        return this.f4713a.hashCode();
    }

    public final String toString() {
        return getTypeName();
    }
}
