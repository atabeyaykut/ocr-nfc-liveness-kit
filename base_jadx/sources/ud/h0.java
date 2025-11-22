package ud;

import java.io.IOException;
import java.lang.annotation.Annotation;
import java.lang.reflect.Array;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.Method;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.util.Arrays;
import java.util.Map;
import java.util.Objects;

/* loaded from: classes2.dex */
public final class h0 {

    /* renamed from: a, reason: collision with root package name */
    public static final Type[] f18020a = new Type[0];

    public static final class a implements GenericArrayType {

        /* renamed from: a, reason: collision with root package name */
        public final Type f18021a;

        public a(Type type) {
            this.f18021a = type;
        }

        public final boolean equals(Object obj) {
            return (obj instanceof GenericArrayType) && h0.c(this, (GenericArrayType) obj);
        }

        @Override // java.lang.reflect.GenericArrayType
        public final Type getGenericComponentType() {
            return this.f18021a;
        }

        public final int hashCode() {
            return this.f18021a.hashCode();
        }

        public final String toString() {
            return h0.o(this.f18021a) + "[]";
        }
    }

    public static final class b implements ParameterizedType {

        /* renamed from: a, reason: collision with root package name */
        public final Type f18022a;

        /* renamed from: b, reason: collision with root package name */
        public final Type f18023b;

        /* renamed from: c, reason: collision with root package name */
        public final Type[] f18024c;

        public b(Type type, Type type2, Type... typeArr) {
            if (type2 instanceof Class) {
                if ((type == null) != (((Class) type2).getEnclosingClass() == null)) {
                    throw new IllegalArgumentException();
                }
            }
            for (Type type3 : typeArr) {
                Objects.requireNonNull(type3, "typeArgument == null");
                h0.b(type3);
            }
            this.f18022a = type;
            this.f18023b = type2;
            this.f18024c = (Type[]) typeArr.clone();
        }

        public final boolean equals(Object obj) {
            return (obj instanceof ParameterizedType) && h0.c(this, (ParameterizedType) obj);
        }

        @Override // java.lang.reflect.ParameterizedType
        public final Type[] getActualTypeArguments() {
            return (Type[]) this.f18024c.clone();
        }

        @Override // java.lang.reflect.ParameterizedType
        public final Type getOwnerType() {
            return this.f18022a;
        }

        @Override // java.lang.reflect.ParameterizedType
        public final Type getRawType() {
            return this.f18023b;
        }

        public final int hashCode() {
            int r02 = Arrays.hashCode(this.f18024c) ^ this.f18023b.hashCode();
            Type type = this.f18022a;
            return r02 ^ (type != null ? type.hashCode() : 0);
        }

        public final String toString() {
            Type[] typeArr = this.f18024c;
            int length = typeArr.length;
            Type type = this.f18023b;
            if (length == 0) {
                return h0.o(type);
            }
            StringBuilder sb2 = new StringBuilder((typeArr.length + 1) * 30);
            sb2.append(h0.o(type));
            sb2.append("<");
            sb2.append(h0.o(typeArr[0]));
            for (int r42 = 1; r42 < typeArr.length; r42++) {
                sb2.append(", ");
                sb2.append(h0.o(typeArr[r42]));
            }
            sb2.append(">");
            return sb2.toString();
        }
    }

    public static final class c implements WildcardType {

        /* renamed from: a, reason: collision with root package name */
        public final Type f18025a;

        /* renamed from: b, reason: collision with root package name */
        public final Type f18026b;

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
                h0.b(type);
                this.f18026b = null;
                this.f18025a = typeArr[0];
                return;
            }
            Type type2 = typeArr2[0];
            type2.getClass();
            h0.b(type2);
            if (typeArr[0] != Object.class) {
                throw new IllegalArgumentException();
            }
            this.f18026b = typeArr2[0];
            this.f18025a = Object.class;
        }

        public final boolean equals(Object obj) {
            return (obj instanceof WildcardType) && h0.c(this, (WildcardType) obj);
        }

        @Override // java.lang.reflect.WildcardType
        public final Type[] getLowerBounds() {
            Type type = this.f18026b;
            return type != null ? new Type[]{type} : h0.f18020a;
        }

        @Override // java.lang.reflect.WildcardType
        public final Type[] getUpperBounds() {
            return new Type[]{this.f18025a};
        }

        public final int hashCode() {
            Type type = this.f18026b;
            return (type != null ? type.hashCode() + 31 : 1) ^ (this.f18025a.hashCode() + 31);
        }

        public final String toString() {
            Type type = this.f18026b;
            if (type != null) {
                return "? super " + h0.o(type);
            }
            Type type2 = this.f18025a;
            if (type2 == Object.class) {
                return "?";
            }
            return "? extends " + h0.o(type2);
        }
    }

    public static rc.c0 a(rc.d0 d0Var) throws IOException {
        ed.e eVar = new ed.e();
        d0Var.c().A(eVar);
        rc.t tVarB = d0Var.b();
        long jA = d0Var.a();
        rc.d0.f14433a.getClass();
        return new rc.c0(tVarB, jA, eVar);
    }

    public static void b(Type type) {
        if ((type instanceof Class) && ((Class) type).isPrimitive()) {
            throw new IllegalArgumentException();
        }
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

    public static Type e(int r42, ParameterizedType parameterizedType) {
        Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
        if (r42 >= 0 && r42 < actualTypeArguments.length) {
            Type type = actualTypeArguments[r42];
            return type instanceof WildcardType ? ((WildcardType) type).getUpperBounds()[0] : type;
        }
        StringBuilder sbE = androidx.appcompat.widget.v.e("Index ", r42, " not in range [0,");
        sbE.append(actualTypeArguments.length);
        sbE.append(") for ");
        sbE.append(parameterizedType);
        throw new IllegalArgumentException(sbE.toString());
    }

    public static Class<?> f(Type type) {
        Objects.requireNonNull(type, "type == null");
        if (type instanceof Class) {
            return (Class) type;
        }
        if (type instanceof ParameterizedType) {
            Type rawType = ((ParameterizedType) type).getRawType();
            if (rawType instanceof Class) {
                return (Class) rawType;
            }
            throw new IllegalArgumentException();
        }
        if (type instanceof GenericArrayType) {
            return Array.newInstance(f(((GenericArrayType) type).getGenericComponentType()), 0).getClass();
        }
        if (type instanceof TypeVariable) {
            return Object.class;
        }
        if (type instanceof WildcardType) {
            return f(((WildcardType) type).getUpperBounds()[0]);
        }
        throw new IllegalArgumentException("Expected a Class, ParameterizedType, or GenericArrayType, but <" + type + "> is of type " + type.getClass().getName());
    }

    public static Type g(Type type, Class cls) {
        if (Map.class.isAssignableFrom(cls)) {
            return m(type, cls, d(type, cls, Map.class));
        }
        throw new IllegalArgumentException();
    }

    public static boolean h(Type type) {
        if (type instanceof Class) {
            return false;
        }
        if (type instanceof ParameterizedType) {
            for (Type type2 : ((ParameterizedType) type).getActualTypeArguments()) {
                if (h(type2)) {
                    return true;
                }
            }
            return false;
        }
        if (type instanceof GenericArrayType) {
            return h(((GenericArrayType) type).getGenericComponentType());
        }
        if ((type instanceof TypeVariable) || (type instanceof WildcardType)) {
            return true;
        }
        throw new IllegalArgumentException("Expected a Class, ParameterizedType, or GenericArrayType, but <" + type + "> is of type " + (type == null ? "null" : type.getClass().getName()));
    }

    public static boolean i(Annotation[] annotationArr, Class<? extends Annotation> cls) {
        for (Annotation annotation : annotationArr) {
            if (cls.isInstance(annotation)) {
                return true;
            }
        }
        return false;
    }

    public static IllegalArgumentException j(Method method, Exception exc, String str, Object... objArr) {
        StringBuilder sbI = androidx.browser.browseractions.b.i(String.format(str, objArr), "\n    for method ");
        sbI.append(method.getDeclaringClass().getSimpleName());
        sbI.append(".");
        sbI.append(method.getName());
        return new IllegalArgumentException(sbI.toString(), exc);
    }

    public static IllegalArgumentException k(Method method, int r22, String str, Object... objArr) {
        StringBuilder sbI = androidx.browser.browseractions.b.i(str, " (parameter #");
        sbI.append(r22 + 1);
        sbI.append(")");
        return j(method, null, sbI.toString(), objArr);
    }

    public static IllegalArgumentException l(Method method, Exception exc, int r32, String str, Object... objArr) {
        StringBuilder sbI = androidx.browser.browseractions.b.i(str, " (parameter #");
        sbI.append(r32 + 1);
        sbI.append(")");
        return j(method, exc, sbI.toString(), objArr);
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x003f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.reflect.Type m(java.lang.reflect.Type r8, java.lang.Class<?> r9, java.lang.reflect.Type r10) {
        /*
            Method dump skipped, instructions count: 258
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: ud.h0.m(java.lang.reflect.Type, java.lang.Class, java.lang.reflect.Type):java.lang.reflect.Type");
    }

    public static void n(Throwable th2) {
        if (th2 instanceof VirtualMachineError) {
            throw ((VirtualMachineError) th2);
        }
        if (th2 instanceof ThreadDeath) {
            throw ((ThreadDeath) th2);
        }
        if (th2 instanceof LinkageError) {
            throw ((LinkageError) th2);
        }
    }

    public static String o(Type type) {
        return type instanceof Class ? ((Class) type).getName() : type.toString();
    }
}
