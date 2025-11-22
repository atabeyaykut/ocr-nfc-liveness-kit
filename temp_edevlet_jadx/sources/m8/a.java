package m8;

import java.lang.annotation.Annotation;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.WildcardType;
import java.util.Arrays;
import java.util.Collections;
import java.util.Set;
import l8.d0;

/* loaded from: classes2.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public static final Set<Annotation> f10139a = Collections.emptySet();

    /* renamed from: b, reason: collision with root package name */
    public static final Type[] f10140b = new Type[0];

    /* renamed from: m8.a$a, reason: collision with other inner class name */
    public static final class C0184a implements GenericArrayType {

        /* renamed from: a, reason: collision with root package name */
        public final Type f10141a;

        public C0184a(Type type) {
            this.f10141a = a.a(type);
        }

        public final boolean equals(Object obj) {
            return (obj instanceof GenericArrayType) && d0.b(this, (GenericArrayType) obj);
        }

        @Override // java.lang.reflect.GenericArrayType
        public final Type getGenericComponentType() {
            return this.f10141a;
        }

        public final int hashCode() {
            return this.f10141a.hashCode();
        }

        public final String toString() {
            return a.h(this.f10141a) + "[]";
        }
    }

    public static final class b implements ParameterizedType {

        /* renamed from: a, reason: collision with root package name */
        public final Type f10142a;

        /* renamed from: b, reason: collision with root package name */
        public final Type f10143b;

        /* renamed from: c, reason: collision with root package name */
        public final Type[] f10144c;

        public b(Type type, Type type2, Type... typeArr) {
            if (type2 instanceof Class) {
                Class<?> enclosingClass = ((Class) type2).getEnclosingClass();
                if (type != null) {
                    if (enclosingClass == null || d0.c(type) != enclosingClass) {
                        throw new IllegalArgumentException("unexpected owner type for " + type2 + ": " + type);
                    }
                } else if (enclosingClass != null) {
                    throw new IllegalArgumentException("unexpected owner type for " + type2 + ": null");
                }
            }
            this.f10142a = type == null ? null : a.a(type);
            this.f10143b = a.a(type2);
            this.f10144c = (Type[]) typeArr.clone();
            int r42 = 0;
            while (true) {
                Type[] typeArr2 = this.f10144c;
                if (r42 >= typeArr2.length) {
                    return;
                }
                Type type3 = typeArr2[r42];
                type3.getClass();
                a.b(type3);
                Type[] typeArr3 = this.f10144c;
                typeArr3[r42] = a.a(typeArr3[r42]);
                r42++;
            }
        }

        public final boolean equals(Object obj) {
            return (obj instanceof ParameterizedType) && d0.b(this, (ParameterizedType) obj);
        }

        @Override // java.lang.reflect.ParameterizedType
        public final Type[] getActualTypeArguments() {
            return (Type[]) this.f10144c.clone();
        }

        @Override // java.lang.reflect.ParameterizedType
        public final Type getOwnerType() {
            return this.f10142a;
        }

        @Override // java.lang.reflect.ParameterizedType
        public final Type getRawType() {
            return this.f10143b;
        }

        public final int hashCode() {
            int r02 = Arrays.hashCode(this.f10144c) ^ this.f10143b.hashCode();
            Set<Annotation> set = a.f10139a;
            Type type = this.f10142a;
            return r02 ^ (type != null ? type.hashCode() : 0);
        }

        public final String toString() {
            Type[] typeArr = this.f10144c;
            StringBuilder sb2 = new StringBuilder((typeArr.length + 1) * 30);
            sb2.append(a.h(this.f10143b));
            if (typeArr.length == 0) {
                return sb2.toString();
            }
            sb2.append("<");
            sb2.append(a.h(typeArr[0]));
            for (int r32 = 1; r32 < typeArr.length; r32++) {
                sb2.append(", ");
                sb2.append(a.h(typeArr[r32]));
            }
            sb2.append(">");
            return sb2.toString();
        }
    }

    public static final class c implements WildcardType {

        /* renamed from: a, reason: collision with root package name */
        public final Type f10145a;

        /* renamed from: b, reason: collision with root package name */
        public final Type f10146b;

        public c(Type[] typeArr, Type[] typeArr2) {
            if (typeArr2.length > 1) {
                throw new IllegalArgumentException();
            }
            if (typeArr.length != 1) {
                throw new IllegalArgumentException();
            }
            if (typeArr2.length != 1) {
                Type type = typeArr[0];
                type.getClass();
                a.b(type);
                this.f10146b = null;
                this.f10145a = a.a(typeArr[0]);
                return;
            }
            Type type2 = typeArr2[0];
            type2.getClass();
            a.b(type2);
            if (typeArr[0] != Object.class) {
                throw new IllegalArgumentException();
            }
            this.f10146b = a.a(typeArr2[0]);
            this.f10145a = Object.class;
        }

        public final boolean equals(Object obj) {
            return (obj instanceof WildcardType) && d0.b(this, (WildcardType) obj);
        }

        @Override // java.lang.reflect.WildcardType
        public final Type[] getLowerBounds() {
            Type type = this.f10146b;
            return type != null ? new Type[]{type} : a.f10140b;
        }

        @Override // java.lang.reflect.WildcardType
        public final Type[] getUpperBounds() {
            return new Type[]{this.f10145a};
        }

        public final int hashCode() {
            Type type = this.f10146b;
            return (type != null ? type.hashCode() + 31 : 1) ^ (this.f10145a.hashCode() + 31);
        }

        public final String toString() {
            Type type = this.f10146b;
            if (type != null) {
                return "? super " + a.h(type);
            }
            Type type2 = this.f10145a;
            if (type2 == Object.class) {
                return "?";
            }
            return "? extends " + a.h(type2);
        }
    }

    public static Type a(Type type) {
        if (type instanceof Class) {
            Class cls = (Class) type;
            return cls.isArray() ? new C0184a(a(cls.getComponentType())) : cls;
        }
        if (type instanceof ParameterizedType) {
            if (type instanceof b) {
                return type;
            }
            ParameterizedType parameterizedType = (ParameterizedType) type;
            return new b(parameterizedType.getOwnerType(), parameterizedType.getRawType(), parameterizedType.getActualTypeArguments());
        }
        if (type instanceof GenericArrayType) {
            return type instanceof C0184a ? type : new C0184a(((GenericArrayType) type).getGenericComponentType());
        }
        if (!(type instanceof WildcardType) || (type instanceof c)) {
            return type;
        }
        WildcardType wildcardType = (WildcardType) type;
        return new c(wildcardType.getUpperBounds(), wildcardType.getLowerBounds());
    }

    public static void b(Type type) {
        if ((type instanceof Class) && ((Class) type).isPrimitive()) {
            throw new IllegalArgumentException("Unexpected primitive " + type + ". Use the boxed type.");
        }
    }

    public static Type c(Type type, Class<?> cls, Class<?> cls2) {
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
                    return c(cls.getGenericInterfaces()[r12], interfaces[r12], cls2);
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
                    return c(cls.getGenericSuperclass(), superclass, cls2);
                }
                cls = superclass;
            }
        }
        return cls2;
    }

    public static boolean d(Class<?> cls) {
        String name = cls.getName();
        return name.startsWith("android.") || name.startsWith("androidx.") || name.startsWith("java.") || name.startsWith("javax.") || name.startsWith("kotlin.") || name.startsWith("scala.");
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x0015  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.reflect.Type e(java.lang.reflect.Type r8, java.lang.Class<?> r9, java.lang.reflect.Type r10) {
        /*
            Method dump skipped, instructions count: 258
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: m8.a.e(java.lang.reflect.Type, java.lang.Class, java.lang.reflect.Type):java.lang.reflect.Type");
    }

    public static void f(InvocationTargetException invocationTargetException) {
        Throwable targetException = invocationTargetException.getTargetException();
        if (targetException instanceof RuntimeException) {
            throw ((RuntimeException) targetException);
        }
        if (!(targetException instanceof Error)) {
            throw new RuntimeException(targetException);
        }
        throw ((Error) targetException);
    }

    public static String g(Type type, Set<? extends Annotation> set) {
        String str;
        StringBuilder sb2 = new StringBuilder();
        sb2.append(type);
        if (set.isEmpty()) {
            str = " (with no annotations)";
        } else {
            str = " annotated " + set;
        }
        sb2.append(str);
        return sb2.toString();
    }

    public static String h(Type type) {
        return type instanceof Class ? ((Class) type).getName() : type.toString();
    }
}
