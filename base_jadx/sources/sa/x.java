package sa;

import java.lang.reflect.Field;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.Member;
import java.lang.reflect.Type;
import java.lang.reflect.WildcardType;

/* loaded from: classes2.dex */
public final class x extends z implements cb.n {

    /* renamed from: a, reason: collision with root package name */
    public final Field f15369a;

    public x(Field member) {
        kotlin.jvm.internal.h.f(member, "member");
        this.f15369a = member;
    }

    @Override // cb.n
    public final boolean D() {
        return this.f15369a.isEnumConstant();
    }

    @Override // cb.n
    public final void N() {
    }

    @Override // sa.z
    public final Member O() {
        return this.f15369a;
    }

    @Override // cb.n
    public final cb.w getType() {
        Type genericType = this.f15369a.getGenericType();
        kotlin.jvm.internal.h.e(genericType, "member.genericType");
        boolean z10 = genericType instanceof Class;
        if (z10) {
            Class cls = (Class) genericType;
            if (cls.isPrimitive()) {
                return new c0(cls);
            }
        }
        return ((genericType instanceof GenericArrayType) || (z10 && ((Class) genericType).isArray())) ? new i(genericType) : genericType instanceof WildcardType ? new h0((WildcardType) genericType) : new t(genericType);
    }
}
