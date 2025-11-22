package da;

import java.lang.reflect.Type;
import java.lang.reflect.WildcardType;
import java.util.Arrays;

/* loaded from: classes2.dex */
public final class v implements WildcardType, Type {

    /* renamed from: c, reason: collision with root package name */
    public static final v f4730c = new v(null, null);

    /* renamed from: a, reason: collision with root package name */
    public final Type f4731a;

    /* renamed from: b, reason: collision with root package name */
    public final Type f4732b;

    public v(Type type, Type type2) {
        this.f4731a = type;
        this.f4732b = type2;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof WildcardType) {
            WildcardType wildcardType = (WildcardType) obj;
            if (Arrays.equals(getUpperBounds(), wildcardType.getUpperBounds()) && Arrays.equals(getLowerBounds(), wildcardType.getLowerBounds())) {
                return true;
            }
        }
        return false;
    }

    @Override // java.lang.reflect.WildcardType
    public final Type[] getLowerBounds() {
        Type type = this.f4732b;
        return type == null ? new Type[0] : new Type[]{type};
    }

    @Override // java.lang.reflect.Type
    public final String getTypeName() {
        StringBuilder sb2;
        Type type = this.f4732b;
        if (type != null) {
            sb2 = new StringBuilder("? super ");
        } else {
            type = this.f4731a;
            if (type == null || kotlin.jvm.internal.h.a(type, Object.class)) {
                return "?";
            }
            sb2 = new StringBuilder("? extends ");
        }
        sb2.append(t.a(type));
        return sb2.toString();
    }

    @Override // java.lang.reflect.WildcardType
    public final Type[] getUpperBounds() {
        Type[] typeArr = new Type[1];
        Type type = this.f4731a;
        if (type == null) {
            type = Object.class;
        }
        typeArr[0] = type;
        return typeArr;
    }

    public final int hashCode() {
        return Arrays.hashCode(getUpperBounds()) ^ Arrays.hashCode(getLowerBounds());
    }

    public final String toString() {
        return getTypeName();
    }
}
