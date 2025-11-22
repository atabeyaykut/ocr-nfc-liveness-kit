package sa;

import java.lang.reflect.Member;
import java.lang.reflect.Method;

/* loaded from: classes2.dex */
public final class c {

    /* renamed from: a, reason: collision with root package name */
    public static final c f15328a = new c();

    /* renamed from: b, reason: collision with root package name */
    public static a f15329b;

    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        public final Method f15330a;

        /* renamed from: b, reason: collision with root package name */
        public final Method f15331b;

        public a(Method method, Method method2) {
            this.f15330a = method;
            this.f15331b = method2;
        }
    }

    public static a a(Member member) throws NoSuchMethodException, SecurityException {
        Class<?> cls = member.getClass();
        try {
            return new a(cls.getMethod("getParameters", new Class[0]), d.d(cls).loadClass("java.lang.reflect.Parameter").getMethod("getName", new Class[0]));
        } catch (NoSuchMethodException unused) {
            return new a(null, null);
        }
    }
}
