package ga;

import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.util.Comparator;
import java.util.List;
import kb.d;

/* loaded from: classes2.dex */
public abstract class f {

    public static final class a extends f {

        /* renamed from: a, reason: collision with root package name */
        public final List<Method> f5987a;

        /* renamed from: ga.f$a$a, reason: collision with other inner class name */
        public static final class C0099a extends kotlin.jvm.internal.j implements x9.l<Method, CharSequence> {

            /* renamed from: a, reason: collision with root package name */
            public static final C0099a f5988a = new C0099a();

            public C0099a() {
                super(1);
            }

            @Override // x9.l
            public final CharSequence invoke(Method method) {
                Class<?> returnType = method.getReturnType();
                kotlin.jvm.internal.h.e(returnType, "it.returnType");
                return sa.d.b(returnType);
            }
        }

        public static final class b<T> implements Comparator {
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.Comparator
            public final int compare(T t10, T t11) {
                return b8.f.q(((Method) t10).getName(), ((Method) t11).getName());
            }
        }

        public a(Class<?> jClass) throws SecurityException {
            kotlin.jvm.internal.h.f(jClass, "jClass");
            Method[] declaredMethods = jClass.getDeclaredMethods();
            kotlin.jvm.internal.h.e(declaredMethods, "jClass.declaredMethods");
            this.f5987a = m9.k.z0(declaredMethods, new b());
        }

        @Override // ga.f
        public final String a() {
            return m9.t.g1(this.f5987a, "", "<init>(", ")V", C0099a.f5988a, 24);
        }
    }

    public static final class b extends f {

        /* renamed from: a, reason: collision with root package name */
        public final Constructor<?> f5989a;

        public static final class a extends kotlin.jvm.internal.j implements x9.l<Class<?>, CharSequence> {

            /* renamed from: a, reason: collision with root package name */
            public static final a f5990a = new a();

            public a() {
                super(1);
            }

            @Override // x9.l
            public final CharSequence invoke(Class<?> cls) {
                Class<?> it = cls;
                kotlin.jvm.internal.h.e(it, "it");
                return sa.d.b(it);
            }
        }

        public b(Constructor<?> constructor) {
            kotlin.jvm.internal.h.f(constructor, "constructor");
            this.f5989a = constructor;
        }

        @Override // ga.f
        public final String a() {
            Class<?>[] parameterTypes = this.f5989a.getParameterTypes();
            kotlin.jvm.internal.h.e(parameterTypes, "constructor.parameterTypes");
            return m9.k.v0(parameterTypes, "", "<init>(", ")V", a.f5990a, 24);
        }
    }

    public static final class c extends f {

        /* renamed from: a, reason: collision with root package name */
        public final Method f5991a;

        public c(Method method) {
            this.f5991a = method;
        }

        @Override // ga.f
        public final String a() {
            return com.google.android.gms.internal.clearcut.d0.c(this.f5991a);
        }
    }

    public static final class d extends f {

        /* renamed from: a, reason: collision with root package name */
        public final d.b f5992a;

        /* renamed from: b, reason: collision with root package name */
        public final String f5993b;

        public d(d.b bVar) {
            this.f5992a = bVar;
            this.f5993b = bVar.a();
        }

        @Override // ga.f
        public final String a() {
            return this.f5993b;
        }
    }

    public static final class e extends f {

        /* renamed from: a, reason: collision with root package name */
        public final d.b f5994a;

        /* renamed from: b, reason: collision with root package name */
        public final String f5995b;

        public e(d.b bVar) {
            this.f5994a = bVar;
            this.f5995b = bVar.a();
        }

        @Override // ga.f
        public final String a() {
            return this.f5995b;
        }
    }

    public abstract String a();
}
