package sa;

import java.lang.reflect.GenericArrayType;
import java.lang.reflect.Type;
import java.lang.reflect.WildcardType;
import java.util.Collection;

/* loaded from: classes2.dex */
public final class i extends e0 implements cb.f {

    /* renamed from: a, reason: collision with root package name */
    public final Type f15352a;

    /* renamed from: b, reason: collision with root package name */
    public final e0 f15353b;

    /* renamed from: c, reason: collision with root package name */
    public final m9.v f15354c;

    /* JADX WARN: Multi-variable type inference failed */
    public i(Type type) {
        e0 c0Var;
        e0 c0Var2;
        this.f15352a = type;
        if (!(type instanceof GenericArrayType)) {
            if (type instanceof Class) {
                Class cls = (Class) type;
                if (cls.isArray()) {
                    Class<?> componentType = cls.getComponentType();
                    kotlin.jvm.internal.h.e(componentType, "getComponentType()");
                    c0Var = componentType.isPrimitive() ? new c0(componentType) : ((componentType instanceof GenericArrayType) || componentType.isArray()) ? new i(componentType) : componentType instanceof WildcardType ? new h0((WildcardType) componentType) : new t(componentType);
                }
            }
            throw new IllegalArgumentException("Not an array type (" + type.getClass() + "): " + type);
        }
        Type genericComponentType = ((GenericArrayType) type).getGenericComponentType();
        kotlin.jvm.internal.h.e(genericComponentType, "genericComponentType");
        boolean z10 = genericComponentType instanceof Class;
        if (z10) {
            Class cls2 = (Class) genericComponentType;
            if (cls2.isPrimitive()) {
                c0Var2 = new c0(cls2);
                this.f15353b = c0Var2;
                this.f15354c = m9.v.f10173a;
            }
        }
        c0Var = ((genericComponentType instanceof GenericArrayType) || (z10 && ((Class) genericComponentType).isArray())) ? new i(genericComponentType) : genericComponentType instanceof WildcardType ? new h0((WildcardType) genericComponentType) : new t(genericComponentType);
        c0Var2 = c0Var;
        this.f15353b = c0Var2;
        this.f15354c = m9.v.f10173a;
    }

    @Override // cb.f
    public final e0 J() {
        return this.f15353b;
    }

    @Override // sa.e0
    public final Type O() {
        return this.f15352a;
    }

    @Override // cb.d
    public final Collection<cb.a> getAnnotations() {
        return this.f15354c;
    }

    @Override // cb.d
    public final void o() {
    }
}
