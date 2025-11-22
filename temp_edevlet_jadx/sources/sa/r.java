package sa;

import c5.b4;
import java.lang.annotation.Annotation;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import ma.d1;
import ma.e1;
import sa.b;

/* loaded from: classes2.dex */
public final class r extends v implements cb.d, cb.r, cb.g {

    /* renamed from: a, reason: collision with root package name */
    public final Class<?> f15363a;

    public r(Class<?> klass) {
        kotlin.jvm.internal.h.f(klass, "klass");
        this.f15363a = klass;
    }

    @Override // cb.g
    public final Collection A() {
        Field[] declaredFields = this.f15363a.getDeclaredFields();
        kotlin.jvm.internal.h.e(declaredFields, "klass.declaredFields");
        return b8.f.Z(lc.w.c1(lc.w.Z0(lc.w.W0(m9.k.n0(declaredFields), l.f15357a), m.f15358a)));
    }

    @Override // cb.g
    public final boolean B() throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        Class<?> clazz = this.f15363a;
        kotlin.jvm.internal.h.f(clazz, "clazz");
        b.a aVar = b.f15322a;
        Boolean bool = null;
        if (aVar == null) {
            try {
                aVar = new b.a(Class.class.getMethod("isSealed", new Class[0]), Class.class.getMethod("getPermittedSubclasses", new Class[0]), Class.class.getMethod("isRecord", new Class[0]), Class.class.getMethod("getRecordComponents", new Class[0]));
            } catch (NoSuchMethodException unused) {
                aVar = new b.a(null, null, null, null);
            }
            b.f15322a = aVar;
        }
        Method method = aVar.f15323a;
        if (method != null) {
            Object objInvoke = method.invoke(clazz, new Object[0]);
            kotlin.jvm.internal.h.d(objInvoke, "null cannot be cast to non-null type kotlin.Boolean");
            bool = (Boolean) objInvoke;
        }
        if (bool != null) {
            return bool.booleanValue();
        }
        return false;
    }

    @Override // cb.g
    public final boolean E() {
        return this.f15363a.isInterface();
    }

    @Override // cb.g
    public final void G() {
    }

    @Override // cb.g
    public final Collection I() {
        Class<?>[] declaredClasses = this.f15363a.getDeclaredClasses();
        kotlin.jvm.internal.h.e(declaredClasses, "klass.declaredClasses");
        return b8.f.Z(lc.w.c1(lc.w.a1(lc.w.W0(m9.k.n0(declaredClasses), n.f15359a), o.f15360a)));
    }

    @Override // cb.g
    public final Collection L() throws SecurityException {
        Method[] declaredMethods = this.f15363a.getDeclaredMethods();
        kotlin.jvm.internal.h.e(declaredMethods, "klass.declaredMethods");
        return b8.f.Z(lc.w.c1(lc.w.Z0(lc.w.V0(m9.k.n0(declaredMethods), new p(this)), q.f15362a)));
    }

    @Override // cb.g
    public final Collection<cb.j> M() throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        Class<?> clazz = this.f15363a;
        kotlin.jvm.internal.h.f(clazz, "clazz");
        b.a aVar = b.f15322a;
        Class[] clsArr = null;
        if (aVar == null) {
            try {
                aVar = new b.a(Class.class.getMethod("isSealed", new Class[0]), Class.class.getMethod("getPermittedSubclasses", new Class[0]), Class.class.getMethod("isRecord", new Class[0]), Class.class.getMethod("getRecordComponents", new Class[0]));
            } catch (NoSuchMethodException unused) {
                aVar = new b.a(null, null, null, null);
            }
            b.f15322a = aVar;
        }
        Method method = aVar.f15324b;
        if (method != null) {
            Object objInvoke = method.invoke(clazz, new Object[0]);
            kotlin.jvm.internal.h.d(objInvoke, "null cannot be cast to non-null type kotlin.Array<java.lang.Class<*>>");
            clsArr = (Class[]) objInvoke;
        }
        if (clsArr == null) {
            return m9.v.f10173a;
        }
        ArrayList arrayList = new ArrayList(clsArr.length);
        for (Class cls : clsArr) {
            arrayList.add(new t(cls));
        }
        return arrayList;
    }

    @Override // cb.g
    public final lb.c d() {
        lb.c cVarB = d.a(this.f15363a).b();
        kotlin.jvm.internal.h.e(cVarB, "klass.classId.asSingleFqName()");
        return cVarB;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof r) {
            if (kotlin.jvm.internal.h.a(this.f15363a, ((r) obj).f15363a)) {
                return true;
            }
        }
        return false;
    }

    @Override // cb.r
    public final boolean f() {
        return Modifier.isStatic(this.f15363a.getModifiers());
    }

    @Override // cb.d
    public final Collection getAnnotations() {
        Annotation[] declaredAnnotations;
        Class<?> cls = this.f15363a;
        return (cls == null || (declaredAnnotations = cls.getDeclaredAnnotations()) == null) ? m9.v.f10173a : b8.f.G(declaredAnnotations);
    }

    @Override // cb.s
    public final lb.f getName() {
        return lb.f.t(this.f15363a.getSimpleName());
    }

    @Override // cb.y
    public final ArrayList getTypeParameters() {
        TypeVariable<Class<?>>[] typeParameters = this.f15363a.getTypeParameters();
        kotlin.jvm.internal.h.e(typeParameters, "klass.typeParameters");
        ArrayList arrayList = new ArrayList(typeParameters.length);
        for (TypeVariable<Class<?>> typeVariable : typeParameters) {
            arrayList.add(new f0(typeVariable));
        }
        return arrayList;
    }

    @Override // cb.r
    public final e1 getVisibility() {
        int modifiers = this.f15363a.getModifiers();
        return Modifier.isPublic(modifiers) ? d1.h.f10213c : Modifier.isPrivate(modifiers) ? d1.e.f10210c : Modifier.isProtected(modifiers) ? Modifier.isStatic(modifiers) ? qa.c.f13465c : qa.b.f13464c : qa.a.f13463c;
    }

    public final int hashCode() {
        return this.f15363a.hashCode();
    }

    @Override // cb.r
    public final boolean isAbstract() {
        return Modifier.isAbstract(this.f15363a.getModifiers());
    }

    @Override // cb.r
    public final boolean isFinal() {
        return Modifier.isFinal(this.f15363a.getModifiers());
    }

    @Override // cb.g
    public final Collection k() throws SecurityException {
        Constructor<?>[] declaredConstructors = this.f15363a.getDeclaredConstructors();
        kotlin.jvm.internal.h.e(declaredConstructors, "klass.declaredConstructors");
        return b8.f.Z(lc.w.c1(lc.w.Z0(lc.w.W0(m9.k.n0(declaredConstructors), j.f15355a), k.f15356a)));
    }

    @Override // cb.g
    public final Collection<cb.j> l() {
        Class cls;
        Class<?> cls2 = this.f15363a;
        cls = Object.class;
        if (kotlin.jvm.internal.h.a(cls2, cls)) {
            return m9.v.f10173a;
        }
        b4 b4Var = new b4(2);
        Object genericSuperclass = cls2.getGenericSuperclass();
        b4Var.b(genericSuperclass != null ? genericSuperclass : Object.class);
        Type[] genericInterfaces = cls2.getGenericInterfaces();
        kotlin.jvm.internal.h.e(genericInterfaces, "klass.genericInterfaces");
        b4Var.c(genericInterfaces);
        List listT = b8.f.T(b4Var.f(new Type[b4Var.e()]));
        ArrayList arrayList = new ArrayList(m9.n.Q0(listT));
        Iterator it = listT.iterator();
        while (it.hasNext()) {
            arrayList.add(new t((Type) it.next()));
        }
        return arrayList;
    }

    @Override // cb.g
    public final ArrayList m() {
        Class<?> clazz = this.f15363a;
        kotlin.jvm.internal.h.f(clazz, "clazz");
        b.a aVar = b.f15322a;
        if (aVar == null) {
            try {
                aVar = new b.a(Class.class.getMethod("isSealed", new Class[0]), Class.class.getMethod("getPermittedSubclasses", new Class[0]), Class.class.getMethod("isRecord", new Class[0]), Class.class.getMethod("getRecordComponents", new Class[0]));
            } catch (NoSuchMethodException unused) {
                aVar = new b.a(null, null, null, null);
            }
            b.f15322a = aVar;
        }
        Method method = aVar.f15326d;
        Object[] objArr = method != null ? (Object[]) method.invoke(clazz, new Object[0]) : null;
        if (objArr == null) {
            objArr = new Object[0];
        }
        ArrayList arrayList = new ArrayList(objArr.length);
        for (Object obj : objArr) {
            arrayList.add(new d0(obj));
        }
        return arrayList;
    }

    @Override // cb.d
    public final cb.a n(lb.c fqName) {
        Annotation[] declaredAnnotations;
        kotlin.jvm.internal.h.f(fqName, "fqName");
        Class<?> cls = this.f15363a;
        if (cls == null || (declaredAnnotations = cls.getDeclaredAnnotations()) == null) {
            return null;
        }
        return b8.f.E(declaredAnnotations, fqName);
    }

    @Override // cb.d
    public final void o() {
    }

    @Override // cb.g
    public final boolean p() {
        return this.f15363a.isAnnotation();
    }

    @Override // cb.g
    public final r q() {
        Class<?> declaringClass = this.f15363a.getDeclaringClass();
        if (declaringClass != null) {
            return new r(declaringClass);
        }
        return null;
    }

    @Override // cb.g
    public final boolean r() throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        Class<?> clazz = this.f15363a;
        kotlin.jvm.internal.h.f(clazz, "clazz");
        b.a aVar = b.f15322a;
        Boolean bool = null;
        if (aVar == null) {
            try {
                aVar = new b.a(Class.class.getMethod("isSealed", new Class[0]), Class.class.getMethod("getPermittedSubclasses", new Class[0]), Class.class.getMethod("isRecord", new Class[0]), Class.class.getMethod("getRecordComponents", new Class[0]));
            } catch (NoSuchMethodException unused) {
                aVar = new b.a(null, null, null, null);
            }
            b.f15322a = aVar;
        }
        Method method = aVar.f15325c;
        if (method != null) {
            Object objInvoke = method.invoke(clazz, new Object[0]);
            kotlin.jvm.internal.h.d(objInvoke, "null cannot be cast to non-null type kotlin.Boolean");
            bool = (Boolean) objInvoke;
        }
        if (bool != null) {
            return bool.booleanValue();
        }
        return false;
    }

    @Override // cb.g
    public final void t() {
    }

    public final String toString() {
        return r.class.getName() + ": " + this.f15363a;
    }

    @Override // cb.g
    public final boolean y() {
        return this.f15363a.isEnum();
    }
}
