package sa;

import java.lang.annotation.Annotation;
import java.lang.reflect.AnnotatedElement;
import java.lang.reflect.Member;
import java.lang.reflect.Modifier;
import java.util.Collection;
import ma.d1;
import ma.e1;

/* loaded from: classes2.dex */
public abstract class z extends v implements cb.d, cb.r, cb.p {
    public abstract Member O();

    /* JADX WARN: Removed duplicated region for block: B:32:0x0086  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.ArrayList P(java.lang.reflect.Type[] r13, java.lang.annotation.Annotation[][] r14, boolean r15) throws java.lang.IllegalAccessException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
        /*
            Method dump skipped, instructions count: 273
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: sa.z.P(java.lang.reflect.Type[], java.lang.annotation.Annotation[][], boolean):java.util.ArrayList");
    }

    public final boolean equals(Object obj) {
        return (obj instanceof z) && kotlin.jvm.internal.h.a(O(), ((z) obj).O());
    }

    @Override // cb.r
    public final boolean f() {
        return Modifier.isStatic(O().getModifiers());
    }

    @Override // cb.d
    public final Collection getAnnotations() {
        Member memberO = O();
        kotlin.jvm.internal.h.d(memberO, "null cannot be cast to non-null type java.lang.reflect.AnnotatedElement");
        Annotation[] declaredAnnotations = ((AnnotatedElement) memberO).getDeclaredAnnotations();
        return declaredAnnotations != null ? b8.f.G(declaredAnnotations) : m9.v.f10173a;
    }

    @Override // cb.s
    public final lb.f getName() {
        String name = O().getName();
        lb.f fVarT = name != null ? lb.f.t(name) : null;
        return fVarT == null ? lb.h.f9679a : fVarT;
    }

    @Override // cb.r
    public final e1 getVisibility() {
        int modifiers = O().getModifiers();
        return Modifier.isPublic(modifiers) ? d1.h.f10213c : Modifier.isPrivate(modifiers) ? d1.e.f10210c : Modifier.isProtected(modifiers) ? Modifier.isStatic(modifiers) ? qa.c.f13465c : qa.b.f13464c : qa.a.f13463c;
    }

    public final int hashCode() {
        return O().hashCode();
    }

    @Override // cb.p
    public final r i() {
        Class<?> declaringClass = O().getDeclaringClass();
        kotlin.jvm.internal.h.e(declaringClass, "member.declaringClass");
        return new r(declaringClass);
    }

    @Override // cb.r
    public final boolean isAbstract() {
        return Modifier.isAbstract(O().getModifiers());
    }

    @Override // cb.r
    public final boolean isFinal() {
        return Modifier.isFinal(O().getModifiers());
    }

    @Override // cb.d
    public final cb.a n(lb.c fqName) {
        kotlin.jvm.internal.h.f(fqName, "fqName");
        Member memberO = O();
        kotlin.jvm.internal.h.d(memberO, "null cannot be cast to non-null type java.lang.reflect.AnnotatedElement");
        Annotation[] declaredAnnotations = ((AnnotatedElement) memberO).getDeclaredAnnotations();
        if (declaredAnnotations != null) {
            return b8.f.E(declaredAnnotations, fqName);
        }
        return null;
    }

    @Override // cb.d
    public final void o() {
    }

    public final String toString() {
        return getClass().getName() + ": " + O();
    }
}
