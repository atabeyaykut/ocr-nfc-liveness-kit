package l7;

import c5.w;
import java.io.Serializable;
import java.lang.reflect.Array;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.Modifier;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.util.Arrays;
import java.util.HashSet;

/* loaded from: classes2.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public static final Type[] f9394a = new Type[0];

    /* renamed from: l7.a$a, reason: collision with other inner class name */
    public static final class C0178a implements GenericArrayType, Serializable {

        /* renamed from: a, reason: collision with root package name */
        public final Type f9395a;

        public C0178a(Type type) {
            this.f9395a = a.a(type);
        }

        public final boolean equals(Object obj) {
            return (obj instanceof GenericArrayType) && a.c(this, (GenericArrayType) obj);
        }

        @Override // java.lang.reflect.GenericArrayType
        public final Type getGenericComponentType() {
            return this.f9395a;
        }

        public final int hashCode() {
            return this.f9395a.hashCode();
        }

        public final String toString() {
            return a.h(this.f9395a) + "[]";
        }
    }

    public static final class b implements ParameterizedType, Serializable {

        /* renamed from: a, reason: collision with root package name */
        public final Type f9396a;

        /* renamed from: b, reason: collision with root package name */
        public final Type f9397b;

        /* renamed from: c, reason: collision with root package name */
        public final Type[] f9398c;

        public b(Type type, Type type2, Type... typeArr) {
            if (type2 instanceof Class) {
                Class cls = (Class) type2;
                boolean z10 = true;
                boolean z11 = Modifier.isStatic(cls.getModifiers()) || cls.getEnclosingClass() == null;
                if (type == null && !z11) {
                    z10 = false;
                }
                w.e(z10);
            }
            this.f9396a = type == null ? null : a.a(type);
            this.f9397b = a.a(type2);
            Type[] typeArr2 = (Type[]) typeArr.clone();
            this.f9398c = typeArr2;
            int length = typeArr2.length;
            for (int r12 = 0; r12 < length; r12++) {
                this.f9398c[r12].getClass();
                a.b(this.f9398c[r12]);
                Type[] typeArr3 = this.f9398c;
                typeArr3[r12] = a.a(typeArr3[r12]);
            }
        }

        public final boolean equals(Object obj) {
            return (obj instanceof ParameterizedType) && a.c(this, (ParameterizedType) obj);
        }

        @Override // java.lang.reflect.ParameterizedType
        public final Type[] getActualTypeArguments() {
            return (Type[]) this.f9398c.clone();
        }

        @Override // java.lang.reflect.ParameterizedType
        public final Type getOwnerType() {
            return this.f9396a;
        }

        @Override // java.lang.reflect.ParameterizedType
        public final Type getRawType() {
            return this.f9397b;
        }

        public final int hashCode() {
            int r02 = Arrays.hashCode(this.f9398c) ^ this.f9397b.hashCode();
            Type type = this.f9396a;
            return r02 ^ (type != null ? type.hashCode() : 0);
        }

        public final String toString() {
            Type[] typeArr = this.f9398c;
            int length = typeArr.length;
            Type type = this.f9397b;
            if (length == 0) {
                return a.h(type);
            }
            StringBuilder sb2 = new StringBuilder((length + 1) * 30);
            sb2.append(a.h(type));
            sb2.append("<");
            sb2.append(a.h(typeArr[0]));
            for (int r22 = 1; r22 < length; r22++) {
                sb2.append(", ");
                sb2.append(a.h(typeArr[r22]));
            }
            sb2.append(">");
            return sb2.toString();
        }
    }

    public static final class c implements WildcardType, Serializable {

        /* renamed from: a, reason: collision with root package name */
        public final Type f9399a;

        /* renamed from: b, reason: collision with root package name */
        public final Type f9400b;

        public c(Type[] typeArr, Type[] typeArr2) {
            w.e(typeArr2.length <= 1);
            w.e(typeArr.length == 1);
            if (typeArr2.length != 1) {
                typeArr[0].getClass();
                a.b(typeArr[0]);
                this.f9400b = null;
                this.f9399a = a.a(typeArr[0]);
                return;
            }
            typeArr2[0].getClass();
            a.b(typeArr2[0]);
            w.e(typeArr[0] == Object.class);
            this.f9400b = a.a(typeArr2[0]);
            this.f9399a = Object.class;
        }

        public final boolean equals(Object obj) {
            return (obj instanceof WildcardType) && a.c(this, (WildcardType) obj);
        }

        @Override // java.lang.reflect.WildcardType
        public final Type[] getLowerBounds() {
            Type type = this.f9400b;
            return type != null ? new Type[]{type} : a.f9394a;
        }

        @Override // java.lang.reflect.WildcardType
        public final Type[] getUpperBounds() {
            return new Type[]{this.f9399a};
        }

        public final int hashCode() {
            Type type = this.f9400b;
            return (type != null ? type.hashCode() + 31 : 1) ^ (this.f9399a.hashCode() + 31);
        }

        public final String toString() {
            Type type = this.f9400b;
            if (type != null) {
                return "? super " + a.h(type);
            }
            Type type2 = this.f9399a;
            if (type2 == Object.class) {
                return "?";
            }
            return "? extends " + a.h(type2);
        }
    }

    public static Type a(Type type) {
        if (type instanceof Class) {
            Class cls = (Class) type;
            return cls.isArray() ? new C0178a(a(cls.getComponentType())) : cls;
        }
        if (type instanceof ParameterizedType) {
            ParameterizedType parameterizedType = (ParameterizedType) type;
            return new b(parameterizedType.getOwnerType(), parameterizedType.getRawType(), parameterizedType.getActualTypeArguments());
        }
        if (type instanceof GenericArrayType) {
            return new C0178a(((GenericArrayType) type).getGenericComponentType());
        }
        if (!(type instanceof WildcardType)) {
            return type;
        }
        WildcardType wildcardType = (WildcardType) type;
        return new c(wildcardType.getUpperBounds(), wildcardType.getLowerBounds());
    }

    public static void b(Type type) {
        w.e(((type instanceof Class) && ((Class) type).isPrimitive()) ? false : true);
    }

    public static boolean c(Type type, Type type2) {
        if (type == type2) {
            return true;
        }
        if (type instanceof Class) {
            return type.equals(type2);
        }
        if (type instanceof ParameterizedType) {
            if (!(type2 instanceof ParameterizedType)) {
                return false;
            }
            ParameterizedType parameterizedType = (ParameterizedType) type;
            ParameterizedType parameterizedType2 = (ParameterizedType) type2;
            Type ownerType = parameterizedType.getOwnerType();
            Type ownerType2 = parameterizedType2.getOwnerType();
            return (ownerType == ownerType2 || (ownerType != null && ownerType.equals(ownerType2))) && parameterizedType.getRawType().equals(parameterizedType2.getRawType()) && Arrays.equals(parameterizedType.getActualTypeArguments(), parameterizedType2.getActualTypeArguments());
        }
        if (type instanceof GenericArrayType) {
            if (type2 instanceof GenericArrayType) {
                return c(((GenericArrayType) type).getGenericComponentType(), ((GenericArrayType) type2).getGenericComponentType());
            }
            return false;
        }
        if (type instanceof WildcardType) {
            if (!(type2 instanceof WildcardType)) {
                return false;
            }
            WildcardType wildcardType = (WildcardType) type;
            WildcardType wildcardType2 = (WildcardType) type2;
            return Arrays.equals(wildcardType.getUpperBounds(), wildcardType2.getUpperBounds()) && Arrays.equals(wildcardType.getLowerBounds(), wildcardType2.getLowerBounds());
        }
        if (!(type instanceof TypeVariable) || !(type2 instanceof TypeVariable)) {
            return false;
        }
        TypeVariable typeVariable = (TypeVariable) type;
        TypeVariable typeVariable2 = (TypeVariable) type2;
        return typeVariable.getGenericDeclaration() == typeVariable2.getGenericDeclaration() && typeVariable.getName().equals(typeVariable2.getName());
    }

    public static Type d(Type type, Class<?> cls, Class<?> cls2) {
        if (cls2 == cls) {
            return type;
        }
        if (cls2.isInterface()) {
            Class<?>[] interfaces = cls.getInterfaces();
            int length = interfaces.length;
            for (int r12 = 0; r12 < length; r12++) {
                Class<?> cls3 = interfaces[r12];
                if (cls3 == cls2) {
                    return cls.getGenericInterfaces()[r12];
                }
                if (cls2.isAssignableFrom(cls3)) {
                    return d(cls.getGenericInterfaces()[r12], interfaces[r12], cls2);
                }
            }
        }
        if (!cls.isInterface()) {
            while (cls != Object.class) {
                Class<? super Object> superclass = cls.getSuperclass();
                if (superclass == cls2) {
                    return cls.getGenericSuperclass();
                }
                if (cls2.isAssignableFrom(superclass)) {
                    return d(cls.getGenericSuperclass(), superclass, cls2);
                }
                cls = superclass;
            }
        }
        return cls2;
    }

    public static Class<?> e(Type type) {
        if (type instanceof Class) {
            return (Class) type;
        }
        if (type instanceof ParameterizedType) {
            Type rawType = ((ParameterizedType) type).getRawType();
            w.e(rawType instanceof Class);
            return (Class) rawType;
        }
        if (type instanceof GenericArrayType) {
            return Array.newInstance(e(((GenericArrayType) type).getGenericComponentType()), 0).getClass();
        }
        if (type instanceof TypeVariable) {
            return Object.class;
        }
        if (type instanceof WildcardType) {
            return e(((WildcardType) type).getUpperBounds()[0]);
        }
        throw new IllegalArgumentException("Expected a Class, ParameterizedType, or GenericArrayType, but <" + type + "> is of type " + (type == null ? "null" : type.getClass().getName()));
    }

    public static Type f(Type type, Class<?> cls, Class<?> cls2) {
        if (type instanceof WildcardType) {
            type = ((WildcardType) type).getUpperBounds()[0];
        }
        w.e(cls2.isAssignableFrom(cls));
        return g(type, cls, d(type, cls, cls2), new HashSet());
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x004a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.reflect.Type g(java.lang.reflect.Type r8, java.lang.Class r9, java.lang.reflect.Type r10, java.util.HashSet r11) {
        /*
            Method dump skipped, instructions count: 290
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: l7.a.g(java.lang.reflect.Type, java.lang.Class, java.lang.reflect.Type, java.util.HashSet):java.lang.reflect.Type");
    }

    public static String h(Type type) {
        return type instanceof Class ? ((Class) type).getName() : type.toString();
    }
}
