package sa;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import sa.a;

/* loaded from: classes2.dex */
public final class d0 extends z implements cb.v {

    /* renamed from: a, reason: collision with root package name */
    public final Object f15340a;

    public d0(Object recordComponent) {
        kotlin.jvm.internal.h.f(recordComponent, "recordComponent");
        this.f15340a = recordComponent;
    }

    @Override // sa.z
    public final Member O() throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        Object recordComponent = this.f15340a;
        kotlin.jvm.internal.h.f(recordComponent, "recordComponent");
        a.C0247a c0247a = a.f15318a;
        Method method = null;
        if (c0247a == null) {
            Class<?> cls = recordComponent.getClass();
            try {
                c0247a = new a.C0247a(cls.getMethod("getType", new Class[0]), cls.getMethod("getAccessor", new Class[0]));
            } catch (NoSuchMethodException unused) {
                c0247a = new a.C0247a(null, null);
            }
            a.f15318a = c0247a;
        }
        Method method2 = c0247a.f15320b;
        if (method2 != null) {
            Object objInvoke = method2.invoke(recordComponent, new Object[0]);
            kotlin.jvm.internal.h.d(objInvoke, "null cannot be cast to non-null type java.lang.reflect.Method");
            method = (Method) objInvoke;
        }
        if (method != null) {
            return method;
        }
        throw new NoSuchMethodError("Can't find `getAccessor` method");
    }

    @Override // cb.v
    public final boolean a() {
        return false;
    }

    @Override // cb.v
    public final cb.w getType() throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        Object recordComponent = this.f15340a;
        kotlin.jvm.internal.h.f(recordComponent, "recordComponent");
        a.C0247a c0247a = a.f15318a;
        Class cls = null;
        if (c0247a == null) {
            Class<?> cls2 = recordComponent.getClass();
            try {
                c0247a = new a.C0247a(cls2.getMethod("getType", new Class[0]), cls2.getMethod("getAccessor", new Class[0]));
            } catch (NoSuchMethodException unused) {
                c0247a = new a.C0247a(null, null);
            }
            a.f15318a = c0247a;
        }
        Method method = c0247a.f15319a;
        if (method != null) {
            Object objInvoke = method.invoke(recordComponent, new Object[0]);
            kotlin.jvm.internal.h.d(objInvoke, "null cannot be cast to non-null type java.lang.Class<*>");
            cls = (Class) objInvoke;
        }
        if (cls != null) {
            return new t(cls);
        }
        throw new NoSuchMethodError("Can't find `getType` method");
    }
}
