package ra;

import com.google.android.gms.internal.clearcut.d0;
import eb.s;
import ja.l;
import ja.o;
import java.lang.annotation.Annotation;
import java.lang.reflect.Method;
import java.util.List;
import m9.k;

/* loaded from: classes2.dex */
public final class c {
    public static qb.f a(Class cls) {
        int r02 = 0;
        while (cls.isArray()) {
            r02++;
            cls = cls.getComponentType();
            kotlin.jvm.internal.h.e(cls, "currentClass.componentType");
        }
        if (cls.isPrimitive()) {
            if (kotlin.jvm.internal.h.a(cls, Void.TYPE)) {
                return new qb.f(lb.b.l(o.a.f8375d.h()), r02);
            }
            l lVarR = tb.c.o(cls.getName()).r();
            kotlin.jvm.internal.h.e(lVarR, "get(currentClass.name).primitiveType");
            return r02 > 0 ? new qb.f(lb.b.l((lb.c) lVarR.f8346d.getValue()), r02 - 1) : new qb.f(lb.b.l((lb.c) lVarR.f8345c.getValue()), r02);
        }
        lb.b bVarA = sa.d.a(cls);
        String str = la.c.f9598a;
        lb.c cVarB = bVarA.b();
        kotlin.jvm.internal.h.e(cVarB, "javaClassId.asSingleFqName()");
        lb.b bVarF = la.c.f(cVarB);
        if (bVarF != null) {
            bVarA = bVarF;
        }
        return new qb.f(bVarA, r02);
    }

    public static void b(Class klass, s.c cVar) {
        kotlin.jvm.internal.h.f(klass, "klass");
        Annotation[] declaredAnnotations = klass.getDeclaredAnnotations();
        kotlin.jvm.internal.h.e(declaredAnnotations, "klass.declaredAnnotations");
        for (Annotation annotation : declaredAnnotations) {
            kotlin.jvm.internal.h.e(annotation, "annotation");
            c(cVar, annotation);
        }
        cVar.a();
    }

    public static void c(s.c cVar, Annotation annotation) {
        Class clsQ = d0.q(d0.p(annotation));
        s.a aVarB = cVar.b(sa.d.a(clsQ), new b(annotation));
        if (aVarB != null) {
            d(aVarB, annotation, clsQ);
        }
    }

    public static void d(s.a aVar, Annotation annotation, Class cls) {
        Method[] declaredMethods = cls.getDeclaredMethods();
        kotlin.jvm.internal.h.e(declaredMethods, "annotationType.declaredMethods");
        for (Method method : declaredMethods) {
            try {
                Object objInvoke = method.invoke(annotation, new Object[0]);
                kotlin.jvm.internal.h.c(objInvoke);
                lb.f fVarT = lb.f.t(method.getName());
                Class<?> enclosingClass = objInvoke.getClass();
                if (kotlin.jvm.internal.h.a(enclosingClass, Class.class)) {
                    aVar.f(fVarT, a((Class) objInvoke));
                } else if (g.f14367a.contains(enclosingClass)) {
                    aVar.e(objInvoke, fVarT);
                } else {
                    List<da.d<? extends Object>> list = sa.d.f15334a;
                    if (Enum.class.isAssignableFrom(enclosingClass)) {
                        if (!enclosingClass.isEnum()) {
                            enclosingClass = enclosingClass.getEnclosingClass();
                        }
                        kotlin.jvm.internal.h.e(enclosingClass, "if (clazz.isEnum) clazz else clazz.enclosingClass");
                        aVar.b(fVarT, sa.d.a(enclosingClass), lb.f.t(((Enum) objInvoke).name()));
                    } else if (Annotation.class.isAssignableFrom(enclosingClass)) {
                        Class<?>[] interfaces = enclosingClass.getInterfaces();
                        kotlin.jvm.internal.h.e(interfaces, "clazz.interfaces");
                        Class annotationClass = (Class) k.y0(interfaces);
                        kotlin.jvm.internal.h.e(annotationClass, "annotationClass");
                        s.a aVarD = aVar.d(sa.d.a(annotationClass), fVarT);
                        if (aVarD != null) {
                            d(aVarD, (Annotation) objInvoke, annotationClass);
                        }
                    } else {
                        if (!enclosingClass.isArray()) {
                            throw new UnsupportedOperationException("Unsupported annotation argument value (" + enclosingClass + "): " + objInvoke);
                        }
                        s.b bVarC = aVar.c(fVarT);
                        if (bVarC != null) {
                            Class<?> componentType = enclosingClass.getComponentType();
                            if (componentType.isEnum()) {
                                lb.b bVarA = sa.d.a(componentType);
                                for (Object obj : (Object[]) objInvoke) {
                                    kotlin.jvm.internal.h.d(obj, "null cannot be cast to non-null type kotlin.Enum<*>");
                                    bVarC.d(bVarA, lb.f.t(((Enum) obj).name()));
                                }
                            } else if (kotlin.jvm.internal.h.a(componentType, Class.class)) {
                                for (Object obj2 : (Object[]) objInvoke) {
                                    kotlin.jvm.internal.h.d(obj2, "null cannot be cast to non-null type java.lang.Class<*>");
                                    bVarC.c(a((Class) obj2));
                                }
                            } else {
                                Object[] objArr = (Object[]) objInvoke;
                                if (Annotation.class.isAssignableFrom(componentType)) {
                                    for (Object obj3 : objArr) {
                                        s.a aVarE = bVarC.e(sa.d.a(componentType));
                                        if (aVarE != null) {
                                            kotlin.jvm.internal.h.d(obj3, "null cannot be cast to non-null type kotlin.Annotation");
                                            d(aVarE, (Annotation) obj3, componentType);
                                        }
                                    }
                                } else {
                                    for (Object obj4 : objArr) {
                                        bVarC.b(obj4);
                                    }
                                }
                            }
                            bVarC.a();
                        }
                    }
                }
            } catch (IllegalAccessException unused) {
            }
        }
        aVar.a();
    }
}
