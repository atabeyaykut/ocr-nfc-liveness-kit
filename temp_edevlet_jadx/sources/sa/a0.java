package sa;

import java.lang.annotation.Annotation;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public final class a0 extends z implements cb.q {

    /* renamed from: a, reason: collision with root package name */
    public final Method f15321a;

    public a0(Method member) {
        kotlin.jvm.internal.h.f(member, "member");
        this.f15321a = member;
    }

    @Override // cb.q
    public final boolean K() {
        Object defaultValue = this.f15321a.getDefaultValue();
        Object wVar = null;
        if (defaultValue != null) {
            wVar = d.e(defaultValue.getClass()) ? new w(null, (Enum) defaultValue) : defaultValue instanceof Annotation ? new g(null, (Annotation) defaultValue) : defaultValue instanceof Object[] ? new h(null, (Object[]) defaultValue) : defaultValue instanceof Class ? new s(null, (Class) defaultValue) : new y(defaultValue, null);
        }
        return wVar != null;
    }

    @Override // sa.z
    public final Member O() {
        return this.f15321a;
    }

    @Override // cb.q
    public final List<cb.z> g() {
        Method method = this.f15321a;
        Type[] genericParameterTypes = method.getGenericParameterTypes();
        kotlin.jvm.internal.h.e(genericParameterTypes, "member.genericParameterTypes");
        Annotation[][] parameterAnnotations = method.getParameterAnnotations();
        kotlin.jvm.internal.h.e(parameterAnnotations, "member.parameterAnnotations");
        return P(genericParameterTypes, parameterAnnotations, method.isVarArgs());
    }

    @Override // cb.y
    public final ArrayList getTypeParameters() {
        TypeVariable<Method>[] typeParameters = this.f15321a.getTypeParameters();
        kotlin.jvm.internal.h.e(typeParameters, "member.typeParameters");
        ArrayList arrayList = new ArrayList(typeParameters.length);
        for (TypeVariable<Method> typeVariable : typeParameters) {
            arrayList.add(new f0(typeVariable));
        }
        return arrayList;
    }

    @Override // cb.q
    public final e0 h() {
        Type genericReturnType = this.f15321a.getGenericReturnType();
        kotlin.jvm.internal.h.e(genericReturnType, "member.genericReturnType");
        boolean z10 = genericReturnType instanceof Class;
        if (z10) {
            Class cls = (Class) genericReturnType;
            if (cls.isPrimitive()) {
                return new c0(cls);
            }
        }
        return ((genericReturnType instanceof GenericArrayType) || (z10 && ((Class) genericReturnType).isArray())) ? new i(genericReturnType) : genericReturnType instanceof WildcardType ? new h0((WildcardType) genericReturnType) : new t(genericReturnType);
    }
}
