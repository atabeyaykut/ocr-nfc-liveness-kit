package sa;

import java.lang.reflect.GenericArrayType;
import java.lang.reflect.Type;
import java.lang.reflect.WildcardType;
import java.util.Collection;

/* loaded from: classes2.dex */
public final class h0 extends e0 implements cb.a0 {

    /* renamed from: a, reason: collision with root package name */
    public final WildcardType f15350a;

    /* renamed from: b, reason: collision with root package name */
    public final m9.v f15351b = m9.v.f10173a;

    public h0(WildcardType wildcardType) {
        this.f15350a = wildcardType;
    }

    @Override // cb.a0
    public final boolean H() {
        kotlin.jvm.internal.h.e(this.f15350a.getUpperBounds(), "reflectType.upperBounds");
        return !kotlin.jvm.internal.h.a(m9.k.r0(r0), Object.class);
    }

    @Override // sa.e0
    public final Type O() {
        return this.f15350a;
    }

    @Override // cb.d
    public final Collection<cb.a> getAnnotations() {
        return this.f15351b;
    }

    @Override // cb.d
    public final void o() {
    }

    @Override // cb.a0
    public final e0 s() {
        e0 iVar;
        WildcardType wildcardType = this.f15350a;
        Type[] upperBounds = wildcardType.getUpperBounds();
        Type[] lowerBounds = wildcardType.getLowerBounds();
        if (upperBounds.length > 1 || lowerBounds.length > 1) {
            throw new UnsupportedOperationException("Wildcard types with many bounds are not yet supported: " + wildcardType);
        }
        if (lowerBounds.length != 1) {
            if (upperBounds.length == 1) {
                Type ub2 = (Type) m9.k.y0(upperBounds);
                if (!kotlin.jvm.internal.h.a(ub2, Object.class)) {
                    kotlin.jvm.internal.h.e(ub2, "ub");
                    boolean z10 = ub2 instanceof Class;
                    if (z10) {
                        Class cls = (Class) ub2;
                        if (cls.isPrimitive()) {
                            return new c0(cls);
                        }
                    }
                    iVar = ((ub2 instanceof GenericArrayType) || (z10 && ((Class) ub2).isArray())) ? new i(ub2) : ub2 instanceof WildcardType ? new h0((WildcardType) ub2) : new t(ub2);
                }
            }
            return null;
        }
        Object objY0 = m9.k.y0(lowerBounds);
        kotlin.jvm.internal.h.e(objY0, "lowerBounds.single()");
        Type type = (Type) objY0;
        boolean z11 = type instanceof Class;
        if (z11) {
            Class cls2 = (Class) type;
            if (cls2.isPrimitive()) {
                return new c0(cls2);
            }
        }
        iVar = ((type instanceof GenericArrayType) || (z11 && ((Class) type).isArray())) ? new i(type) : type instanceof WildcardType ? new h0((WildcardType) type) : new t(type);
        return iVar;
    }
}
