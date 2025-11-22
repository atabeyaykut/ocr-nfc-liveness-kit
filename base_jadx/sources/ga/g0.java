package ga;

import ga.l0;
import ga.t0;
import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

/* loaded from: classes2.dex */
public class g0<V> extends l0<V> implements da.k<V> {

    /* renamed from: m, reason: collision with root package name */
    public final t0.b<a<V>> f6011m;

    public static final class a<R> extends l0.b<R> implements x9.a {

        /* renamed from: h, reason: collision with root package name */
        public final g0<R> f6012h;

        /* JADX WARN: Multi-variable type inference failed */
        public a(g0<? extends R> property) {
            kotlin.jvm.internal.h.f(property, "property");
            this.f6012h = property;
        }

        @Override // x9.a
        public final R invoke() {
            return this.f6012h.t().call(new Object[0]);
        }

        @Override // ga.l0.a
        public final l0 s() {
            return this.f6012h;
        }
    }

    public static final class b extends kotlin.jvm.internal.j implements x9.a<a<? extends V>> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ g0<V> f6013a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public b(g0<? extends V> g0Var) {
            super(0);
            this.f6013a = g0Var;
        }

        @Override // x9.a
        public final Object invoke() {
            return new a(this.f6013a);
        }
    }

    public static final class c extends kotlin.jvm.internal.j implements x9.a<Object> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ g0<V> f6014a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public c(g0<? extends V> g0Var) {
            super(0);
            this.f6014a = g0Var;
        }

        @Override // x9.a
        public final Object invoke() throws SecurityException, ea.b {
            g0<V> g0Var = this.f6014a;
            Object objR = g0Var.r();
            try {
                Object obj = l0.f6035l;
                Object objP = g0Var.q() ? b8.f.p(g0Var.f6038h, g0Var.o()) : null;
                if (!(objP != obj)) {
                    objP = null;
                }
                g0Var.q();
                AccessibleObject accessibleObject = objR instanceof AccessibleObject ? (AccessibleObject) objR : null;
                if (accessibleObject != null) {
                    accessibleObject.setAccessible(fa.a.a(g0Var));
                }
                if (objR == null) {
                    return null;
                }
                if (objR instanceof Field) {
                    return ((Field) objR).get(objP);
                }
                if (!(objR instanceof Method)) {
                    throw new AssertionError("delegate field/method " + objR + " neither field nor method");
                }
                int length = ((Method) objR).getParameterTypes().length;
                if (length == 0) {
                    return ((Method) objR).invoke(null, new Object[0]);
                }
                if (length == 1) {
                    Method method = (Method) objR;
                    Object[] objArr = new Object[1];
                    if (objP == null) {
                        Class<?> cls = ((Method) objR).getParameterTypes()[0];
                        kotlin.jvm.internal.h.e(cls, "fieldOrMethod.parameterTypes[0]");
                        objP = z0.e(cls);
                    }
                    objArr[0] = objP;
                    return method.invoke(null, objArr);
                }
                if (length == 2) {
                    Method method2 = (Method) objR;
                    Class<?> cls2 = ((Method) objR).getParameterTypes()[1];
                    kotlin.jvm.internal.h.e(cls2, "fieldOrMethod.parameterTypes[1]");
                    return method2.invoke(null, objP, z0.e(cls2));
                }
                throw new AssertionError("delegate method " + objR + " should take 0, 1, or 2 parameters");
            } catch (IllegalAccessException e10) {
                throw new ea.b(e10);
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g0(s container, String name, String signature, Object obj) {
        super(container, name, signature, obj);
        kotlin.jvm.internal.h.f(container, "container");
        kotlin.jvm.internal.h.f(name, "name");
        kotlin.jvm.internal.h.f(signature, "signature");
        this.f6011m = new t0.b<>(new b(this));
        c5.y.v(2, new c(this));
    }

    @Override // x9.a
    public final V invoke() {
        return t().call(new Object[0]);
    }

    @Override // ga.l0
    /* renamed from: u, reason: merged with bridge method [inline-methods] */
    public final a<V> t() {
        a<V> aVarInvoke = this.f6011m.invoke();
        kotlin.jvm.internal.h.e(aVarInvoke, "_getter()");
        return aVarInvoke;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g0(s container, ma.l0 descriptor) {
        super(container, descriptor);
        kotlin.jvm.internal.h.f(container, "container");
        kotlin.jvm.internal.h.f(descriptor, "descriptor");
        this.f6011m = new t0.b<>(new b(this));
        c5.y.v(2, new c(this));
    }
}
