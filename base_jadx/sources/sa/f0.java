package sa;

import java.lang.annotation.Annotation;
import java.lang.reflect.AnnotatedElement;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.RandomAccess;

/* loaded from: classes2.dex */
public final class f0 extends v implements cb.d, cb.x {

    /* renamed from: a, reason: collision with root package name */
    public final TypeVariable<?> f15343a;

    public f0(TypeVariable<?> typeVariable) {
        kotlin.jvm.internal.h.f(typeVariable, "typeVariable");
        this.f15343a = typeVariable;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof f0) {
            if (kotlin.jvm.internal.h.a(this.f15343a, ((f0) obj).f15343a)) {
                return true;
            }
        }
        return false;
    }

    @Override // cb.d
    public final Collection getAnnotations() {
        Annotation[] declaredAnnotations;
        TypeVariable<?> typeVariable = this.f15343a;
        AnnotatedElement annotatedElement = typeVariable instanceof AnnotatedElement ? (AnnotatedElement) typeVariable : null;
        return (annotatedElement == null || (declaredAnnotations = annotatedElement.getDeclaredAnnotations()) == null) ? m9.v.f10173a : b8.f.G(declaredAnnotations);
    }

    @Override // cb.s
    public final lb.f getName() {
        return lb.f.t(this.f15343a.getName());
    }

    @Override // cb.x
    public final Collection getUpperBounds() {
        Type[] bounds = this.f15343a.getBounds();
        kotlin.jvm.internal.h.e(bounds, "typeVariable.bounds");
        ArrayList arrayList = new ArrayList(bounds.length);
        for (Type type : bounds) {
            arrayList.add(new t(type));
        }
        t tVar = (t) m9.t.r1(arrayList);
        RandomAccess randomAccess = arrayList;
        if (kotlin.jvm.internal.h.a(tVar != null ? tVar.f15365a : null, Object.class)) {
            randomAccess = m9.v.f10173a;
        }
        return (Collection) randomAccess;
    }

    public final int hashCode() {
        return this.f15343a.hashCode();
    }

    @Override // cb.d
    public final cb.a n(lb.c fqName) {
        Annotation[] declaredAnnotations;
        kotlin.jvm.internal.h.f(fqName, "fqName");
        TypeVariable<?> typeVariable = this.f15343a;
        AnnotatedElement annotatedElement = typeVariable instanceof AnnotatedElement ? (AnnotatedElement) typeVariable : null;
        if (annotatedElement == null || (declaredAnnotations = annotatedElement.getDeclaredAnnotations()) == null) {
            return null;
        }
        return b8.f.E(declaredAnnotations, fqName);
    }

    @Override // cb.d
    public final void o() {
    }

    public final String toString() {
        return f0.class.getName() + ": " + this.f15343a;
    }
}
