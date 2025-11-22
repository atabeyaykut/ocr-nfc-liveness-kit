package sa;

import java.lang.annotation.Annotation;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public final class e extends v implements cb.a {

    /* renamed from: a, reason: collision with root package name */
    public final Annotation f15341a;

    public e(Annotation annotation) {
        kotlin.jvm.internal.h.f(annotation, "annotation");
        this.f15341a = annotation;
    }

    @Override // cb.a
    public final lb.b c() {
        return d.a(com.google.android.gms.internal.clearcut.d0.q(com.google.android.gms.internal.clearcut.d0.p(this.f15341a)));
    }

    @Override // cb.a
    public final void e() {
    }

    public final boolean equals(Object obj) {
        if (obj instanceof e) {
            if (this.f15341a == ((e) obj).f15341a) {
                return true;
            }
        }
        return false;
    }

    @Override // cb.a
    public final ArrayList getArguments() throws IllegalAccessException, SecurityException, IllegalArgumentException, InvocationTargetException {
        Annotation annotation = this.f15341a;
        Method[] declaredMethods = com.google.android.gms.internal.clearcut.d0.q(com.google.android.gms.internal.clearcut.d0.p(annotation)).getDeclaredMethods();
        kotlin.jvm.internal.h.e(declaredMethods, "annotation.annotationClass.java.declaredMethods");
        ArrayList arrayList = new ArrayList(declaredMethods.length);
        for (Method method : declaredMethods) {
            Object objInvoke = method.invoke(annotation, new Object[0]);
            kotlin.jvm.internal.h.e(objInvoke, "method.invoke(annotation)");
            lb.f fVarT = lb.f.t(method.getName());
            Class<?> cls = objInvoke.getClass();
            List<da.d<? extends Object>> list = d.f15334a;
            arrayList.add(Enum.class.isAssignableFrom(cls) ? new w(fVarT, (Enum) objInvoke) : objInvoke instanceof Annotation ? new g(fVarT, (Annotation) objInvoke) : objInvoke instanceof Object[] ? new h(fVarT, (Object[]) objInvoke) : objInvoke instanceof Class ? new s(fVarT, (Class) objInvoke) : new y(objInvoke, fVarT));
        }
        return arrayList;
    }

    public final int hashCode() {
        return System.identityHashCode(this.f15341a);
    }

    public final String toString() {
        return e.class.getName() + ": " + this.f15341a;
    }

    @Override // cb.a
    public final void u() {
    }

    @Override // cb.a
    public final r z() {
        return new r(com.google.android.gms.internal.clearcut.d0.q(com.google.android.gms.internal.clearcut.d0.p(this.f15341a)));
    }
}
