package sa;

import java.lang.annotation.Annotation;
import java.lang.reflect.Constructor;
import java.lang.reflect.Member;
import java.lang.reflect.Modifier;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public final class u extends z implements cb.k {

    /* renamed from: a, reason: collision with root package name */
    public final Constructor<?> f15367a;

    public u(Constructor<?> member) {
        kotlin.jvm.internal.h.f(member, "member");
        this.f15367a = member;
    }

    @Override // sa.z
    public final Member O() {
        return this.f15367a;
    }

    @Override // cb.k
    public final List<cb.z> g() {
        Constructor<?> constructor = this.f15367a;
        Type[] types = constructor.getGenericParameterTypes();
        kotlin.jvm.internal.h.e(types, "types");
        if (types.length == 0) {
            return m9.v.f10173a;
        }
        Class<?> declaringClass = constructor.getDeclaringClass();
        if (declaringClass.getDeclaringClass() != null && !Modifier.isStatic(declaringClass.getModifiers())) {
            types = (Type[]) m9.i.l0(types, 1, types.length);
        }
        Annotation[][] parameterAnnotations = constructor.getParameterAnnotations();
        if (parameterAnnotations.length >= types.length) {
            if (parameterAnnotations.length > types.length) {
                parameterAnnotations = (Annotation[][]) m9.i.l0(parameterAnnotations, parameterAnnotations.length - types.length, parameterAnnotations.length);
            }
            return P(types, parameterAnnotations, constructor.isVarArgs());
        }
        throw new IllegalStateException("Illegal generic signature: " + constructor);
    }

    @Override // cb.y
    public final ArrayList getTypeParameters() {
        TypeVariable<Constructor<?>>[] typeParameters = this.f15367a.getTypeParameters();
        kotlin.jvm.internal.h.e(typeParameters, "member.typeParameters");
        ArrayList arrayList = new ArrayList(typeParameters.length);
        for (TypeVariable<Constructor<?>> typeVariable : typeParameters) {
            arrayList.add(new f0(typeVariable));
        }
        return arrayList;
    }
}
