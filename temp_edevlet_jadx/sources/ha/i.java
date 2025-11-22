package ha;

import ha.f;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.lang.reflect.Type;
import java.util.Arrays;
import java.util.List;
import m9.v;

/* loaded from: classes2.dex */
public abstract class i implements f<Method> {

    /* renamed from: a, reason: collision with root package name */
    public final Method f7060a;

    /* renamed from: b, reason: collision with root package name */
    public final List<Type> f7061b;

    /* renamed from: c, reason: collision with root package name */
    public final Class f7062c;

    public static final class a extends i implements e {

        /* renamed from: d, reason: collision with root package name */
        public final Object f7063d;

        public a(Method method, Object obj) {
            super(method, v.f10173a);
            this.f7063d = obj;
        }

        @Override // ha.f
        public final Object call(Object[] args) {
            kotlin.jvm.internal.h.f(args, "args");
            f.a.a(this, args);
            return this.f7060a.invoke(this.f7063d, Arrays.copyOf(args, args.length));
        }
    }

    public static final class b extends i {
        public b(Method method) {
            super(method, b8.f.S(method.getDeclaringClass()));
        }

        @Override // ha.f
        public final Object call(Object[] args) {
            kotlin.jvm.internal.h.f(args, "args");
            f.a.a(this, args);
            Object obj = args[0];
            Object[] objArrL0 = args.length <= 1 ? new Object[0] : m9.i.l0(args, 1, args.length);
            return this.f7060a.invoke(obj, Arrays.copyOf(objArrL0, objArrL0.length));
        }
    }

    public i(Method method, List list) {
        this.f7060a = method;
        this.f7061b = list;
        Class<?> returnType = method.getReturnType();
        kotlin.jvm.internal.h.e(returnType, "unboxMethod.returnType");
        this.f7062c = returnType;
    }

    @Override // ha.f
    public final List<Type> a() {
        return this.f7061b;
    }

    @Override // ha.f
    public final /* bridge */ /* synthetic */ Member b() {
        return null;
    }

    @Override // ha.f
    public final Type getReturnType() {
        return this.f7062c;
    }
}
