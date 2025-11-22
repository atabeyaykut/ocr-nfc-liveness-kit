package ha;

import c5.b4;
import ha.f;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.Type;
import java.util.Arrays;
import java.util.List;
import l9.m;
import m9.k;

/* loaded from: classes2.dex */
public abstract class g<M extends Member> implements ha.f<M> {

    /* renamed from: a, reason: collision with root package name */
    public final M f7045a;

    /* renamed from: b, reason: collision with root package name */
    public final Type f7046b;

    /* renamed from: c, reason: collision with root package name */
    public final Class<?> f7047c;

    /* renamed from: d, reason: collision with root package name */
    public final List<Type> f7048d;

    public static final class a extends g<Constructor<?>> implements ha.e {

        /* renamed from: e, reason: collision with root package name */
        public final Object f7049e;

        /* JADX WARN: Illegal instructions before constructor call */
        public a(Constructor<?> constructor, Object obj) {
            kotlin.jvm.internal.h.f(constructor, "constructor");
            Class<?> declaringClass = constructor.getDeclaringClass();
            kotlin.jvm.internal.h.e(declaringClass, "constructor.declaringClass");
            Type[] genericParameterTypes = constructor.getGenericParameterTypes();
            kotlin.jvm.internal.h.e(genericParameterTypes, "constructor.genericParameterTypes");
            super(constructor, declaringClass, null, (Type[]) (genericParameterTypes.length <= 2 ? new Type[0] : m9.i.l0(genericParameterTypes, 1, genericParameterTypes.length - 1)));
            this.f7049e = obj;
        }

        @Override // ha.f
        public final Object call(Object[] args) {
            kotlin.jvm.internal.h.f(args, "args");
            f.a.a(this, args);
            Constructor constructor = (Constructor) this.f7045a;
            b4 b4Var = new b4(3);
            b4Var.b(this.f7049e);
            b4Var.c(args);
            b4Var.b(null);
            return constructor.newInstance(b4Var.f(new Object[b4Var.e()]));
        }
    }

    public static final class b extends g<Constructor<?>> {
        /* JADX WARN: Illegal instructions before constructor call */
        public b(Constructor<?> constructor) {
            kotlin.jvm.internal.h.f(constructor, "constructor");
            Class<?> declaringClass = constructor.getDeclaringClass();
            kotlin.jvm.internal.h.e(declaringClass, "constructor.declaringClass");
            Type[] genericParameterTypes = constructor.getGenericParameterTypes();
            kotlin.jvm.internal.h.e(genericParameterTypes, "constructor.genericParameterTypes");
            super(constructor, declaringClass, null, (Type[]) (genericParameterTypes.length <= 1 ? new Type[0] : m9.i.l0(genericParameterTypes, 0, genericParameterTypes.length - 1)));
        }

        @Override // ha.f
        public final Object call(Object[] args) {
            kotlin.jvm.internal.h.f(args, "args");
            f.a.a(this, args);
            Constructor constructor = (Constructor) this.f7045a;
            b4 b4Var = new b4(2);
            b4Var.c(args);
            b4Var.b(null);
            return constructor.newInstance(b4Var.f(new Object[b4Var.e()]));
        }
    }

    public static final class c extends g<Constructor<?>> implements ha.e {

        /* renamed from: e, reason: collision with root package name */
        public final Object f7050e;

        /* JADX WARN: Illegal instructions before constructor call */
        public c(Constructor<?> constructor, Object obj) {
            kotlin.jvm.internal.h.f(constructor, "constructor");
            Class<?> declaringClass = constructor.getDeclaringClass();
            kotlin.jvm.internal.h.e(declaringClass, "constructor.declaringClass");
            Type[] genericParameterTypes = constructor.getGenericParameterTypes();
            kotlin.jvm.internal.h.e(genericParameterTypes, "constructor.genericParameterTypes");
            super(constructor, declaringClass, null, genericParameterTypes);
            this.f7050e = obj;
        }

        @Override // ha.f
        public final Object call(Object[] args) {
            kotlin.jvm.internal.h.f(args, "args");
            f.a.a(this, args);
            Constructor constructor = (Constructor) this.f7045a;
            b4 b4Var = new b4(2);
            b4Var.b(this.f7050e);
            b4Var.c(args);
            return constructor.newInstance(b4Var.f(new Object[b4Var.e()]));
        }
    }

    public static final class d extends g<Constructor<?>> {
        /* JADX WARN: Illegal instructions before constructor call */
        public d(Constructor<?> constructor) {
            kotlin.jvm.internal.h.f(constructor, "constructor");
            Class<?> declaringClass = constructor.getDeclaringClass();
            kotlin.jvm.internal.h.e(declaringClass, "constructor.declaringClass");
            Class<?> declaringClass2 = constructor.getDeclaringClass();
            Class<?> declaringClass3 = declaringClass2.getDeclaringClass();
            declaringClass3 = (declaringClass3 == null || Modifier.isStatic(declaringClass2.getModifiers())) ? null : declaringClass3;
            Type[] genericParameterTypes = constructor.getGenericParameterTypes();
            kotlin.jvm.internal.h.e(genericParameterTypes, "constructor.genericParameterTypes");
            super(constructor, declaringClass, declaringClass3, genericParameterTypes);
        }

        @Override // ha.f
        public final Object call(Object[] args) {
            kotlin.jvm.internal.h.f(args, "args");
            f.a.a(this, args);
            return ((Constructor) this.f7045a).newInstance(Arrays.copyOf(args, args.length));
        }
    }

    public static abstract class e extends g<Field> {

        public static final class a extends e implements ha.e {

            /* renamed from: e, reason: collision with root package name */
            public final Object f7051e;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(Field field, Object obj) {
                super(field, false);
                kotlin.jvm.internal.h.f(field, "field");
                this.f7051e = obj;
            }

            @Override // ha.g.e, ha.f
            public final Object call(Object[] args) {
                kotlin.jvm.internal.h.f(args, "args");
                f.a.a(this, args);
                return ((Field) this.f7045a).get(this.f7051e);
            }
        }

        public static final class b extends e implements ha.e {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public b(Field field) {
                super(field, false);
                kotlin.jvm.internal.h.f(field, "field");
            }
        }

        public static final class c extends e {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public c(Field field) {
                super(field, true);
                kotlin.jvm.internal.h.f(field, "field");
            }
        }

        public static final class d extends e {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public d(Field field) {
                super(field, true);
                kotlin.jvm.internal.h.f(field, "field");
            }

            @Override // ha.g
            public final void c(Object[] args) {
                kotlin.jvm.internal.h.f(args, "args");
                f.a.a(this, args);
                d(k.r0(args));
            }
        }

        /* renamed from: ha.g$e$e, reason: collision with other inner class name */
        public static final class C0120e extends e {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C0120e(Field field) {
                super(field, false);
                kotlin.jvm.internal.h.f(field, "field");
            }
        }

        /* JADX WARN: Illegal instructions before constructor call */
        public e(Field field, boolean z10) {
            Type genericType = field.getGenericType();
            kotlin.jvm.internal.h.e(genericType, "field.genericType");
            super(field, genericType, z10 ? field.getDeclaringClass() : null, new Type[0]);
        }

        @Override // ha.f
        public Object call(Object[] args) {
            kotlin.jvm.internal.h.f(args, "args");
            c(args);
            return ((Field) this.f7045a).get(this.f7047c != null ? k.q0(args) : null);
        }
    }

    public static abstract class f extends g<Field> {

        /* renamed from: e, reason: collision with root package name */
        public final boolean f7052e;

        public static final class a extends f implements ha.e {
            public final Object f;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(Field field, boolean z10, Object obj) {
                super(field, z10, false);
                kotlin.jvm.internal.h.f(field, "field");
                this.f = obj;
            }

            @Override // ha.g.f, ha.f
            public final Object call(Object[] args) throws IllegalAccessException, IllegalArgumentException {
                kotlin.jvm.internal.h.f(args, "args");
                c(args);
                ((Field) this.f7045a).set(this.f, k.q0(args));
                return m.f9594a;
            }
        }

        public static final class b extends f implements ha.e {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public b(Field field, boolean z10) {
                super(field, z10, false);
                kotlin.jvm.internal.h.f(field, "field");
            }

            @Override // ha.g.f, ha.f
            public final Object call(Object[] args) throws IllegalAccessException, IllegalArgumentException {
                kotlin.jvm.internal.h.f(args, "args");
                c(args);
                ((Field) this.f7045a).set(null, k.w0(args));
                return m.f9594a;
            }
        }

        public static final class c extends f {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public c(Field field, boolean z10) {
                super(field, z10, true);
                kotlin.jvm.internal.h.f(field, "field");
            }
        }

        public static final class d extends f {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public d(Field field, boolean z10) {
                super(field, z10, true);
                kotlin.jvm.internal.h.f(field, "field");
            }

            @Override // ha.g.f, ha.g
            public final void c(Object[] args) {
                kotlin.jvm.internal.h.f(args, "args");
                super.c(args);
                d(k.r0(args));
            }
        }

        public static final class e extends f {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public e(Field field, boolean z10) {
                super(field, z10, false);
                kotlin.jvm.internal.h.f(field, "field");
            }
        }

        /* JADX WARN: Illegal instructions before constructor call */
        public f(Field field, boolean z10, boolean z11) {
            Class TYPE = Void.TYPE;
            kotlin.jvm.internal.h.e(TYPE, "TYPE");
            Class<?> declaringClass = z11 ? field.getDeclaringClass() : null;
            Type genericType = field.getGenericType();
            kotlin.jvm.internal.h.e(genericType, "field.genericType");
            super(field, TYPE, declaringClass, new Type[]{genericType});
            this.f7052e = z10;
        }

        @Override // ha.g
        public void c(Object[] args) {
            kotlin.jvm.internal.h.f(args, "args");
            f.a.a(this, args);
            if (this.f7052e && k.w0(args) == null) {
                throw new IllegalArgumentException("null is not allowed as a value for this property.");
            }
        }

        @Override // ha.f
        public Object call(Object[] args) throws IllegalAccessException, IllegalArgumentException {
            kotlin.jvm.internal.h.f(args, "args");
            c(args);
            ((Field) this.f7045a).set(this.f7047c != null ? k.q0(args) : null, k.w0(args));
            return m.f9594a;
        }
    }

    /* renamed from: ha.g$g, reason: collision with other inner class name */
    public static abstract class AbstractC0121g extends g<Method> {

        /* renamed from: e, reason: collision with root package name */
        public final boolean f7053e;

        /* renamed from: ha.g$g$a */
        public static final class a extends AbstractC0121g implements ha.e {
            public final Object f;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(Method method, Object obj) {
                super(method, false, 4);
                kotlin.jvm.internal.h.f(method, "method");
                this.f = obj;
            }

            @Override // ha.f
            public final Object call(Object[] args) {
                kotlin.jvm.internal.h.f(args, "args");
                f.a.a(this, args);
                return e(args, this.f);
            }
        }

        /* renamed from: ha.g$g$b */
        public static final class b extends AbstractC0121g implements ha.e {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public b(Method method) {
                super(method, false, 4);
                kotlin.jvm.internal.h.f(method, "method");
            }

            @Override // ha.f
            public final Object call(Object[] args) {
                kotlin.jvm.internal.h.f(args, "args");
                f.a.a(this, args);
                return e(args, null);
            }
        }

        /* renamed from: ha.g$g$c */
        public static final class c extends AbstractC0121g implements ha.e {
            public final Object f;

            /* JADX WARN: Illegal instructions before constructor call */
            public c(Method method, Object obj) {
                kotlin.jvm.internal.h.f(method, "method");
                Type[] genericParameterTypes = method.getGenericParameterTypes();
                kotlin.jvm.internal.h.e(genericParameterTypes, "method.genericParameterTypes");
                super(method, false, (Type[]) (genericParameterTypes.length <= 1 ? new Type[0] : m9.i.l0(genericParameterTypes, 1, genericParameterTypes.length)));
                this.f = obj;
            }

            @Override // ha.f
            public final Object call(Object[] args) {
                kotlin.jvm.internal.h.f(args, "args");
                f.a.a(this, args);
                b4 b4Var = new b4(2);
                b4Var.b(this.f);
                b4Var.c(args);
                return e(b4Var.f(new Object[b4Var.e()]), null);
            }
        }

        /* renamed from: ha.g$g$d */
        public static final class d extends AbstractC0121g {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public d(Method method) {
                super(method, false, 6);
                kotlin.jvm.internal.h.f(method, "method");
            }

            @Override // ha.f
            public final Object call(Object[] args) {
                kotlin.jvm.internal.h.f(args, "args");
                f.a.a(this, args);
                return e(args.length <= 1 ? new Object[0] : m9.i.l0(args, 1, args.length), args[0]);
            }
        }

        /* renamed from: ha.g$g$e */
        public static final class e extends AbstractC0121g {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public e(Method method) {
                super(method, true, 4);
                kotlin.jvm.internal.h.f(method, "method");
            }

            @Override // ha.f
            public final Object call(Object[] args) {
                kotlin.jvm.internal.h.f(args, "args");
                f.a.a(this, args);
                d(k.r0(args));
                return e(args.length <= 1 ? new Object[0] : m9.i.l0(args, 1, args.length), null);
            }
        }

        /* renamed from: ha.g$g$f */
        public static final class f extends AbstractC0121g {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public f(Method method) {
                super(method, false, 6);
                kotlin.jvm.internal.h.f(method, "method");
            }

            @Override // ha.f
            public final Object call(Object[] args) {
                kotlin.jvm.internal.h.f(args, "args");
                f.a.a(this, args);
                return e(args, null);
            }
        }

        /* JADX WARN: Illegal instructions before constructor call */
        public /* synthetic */ AbstractC0121g(Method method, boolean z10, int r42) {
            Type[] genericParameterTypes;
            z10 = (r42 & 2) != 0 ? !Modifier.isStatic(method.getModifiers()) : z10;
            if ((r42 & 4) != 0) {
                genericParameterTypes = method.getGenericParameterTypes();
                kotlin.jvm.internal.h.e(genericParameterTypes, "method.genericParameterTypes");
            } else {
                genericParameterTypes = null;
            }
            this(method, z10, genericParameterTypes);
        }

        /* JADX WARN: Illegal instructions before constructor call */
        public AbstractC0121g(Method method, boolean z10, Type[] typeArr) {
            Type genericReturnType = method.getGenericReturnType();
            kotlin.jvm.internal.h.e(genericReturnType, "method.genericReturnType");
            super(method, genericReturnType, z10 ? method.getDeclaringClass() : null, typeArr);
            this.f7053e = kotlin.jvm.internal.h.a(genericReturnType, Void.TYPE);
        }

        public final Object e(Object[] args, Object obj) {
            kotlin.jvm.internal.h.f(args, "args");
            return this.f7053e ? m.f9594a : ((Method) this.f7045a).invoke(obj, Arrays.copyOf(args, args.length));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public g(Member member, Type type, Class cls, Type[] typeArr) {
        List<Type> listA0;
        this.f7045a = member;
        this.f7046b = type;
        this.f7047c = cls;
        if (cls != null) {
            b4 b4Var = new b4(2);
            b4Var.b(cls);
            b4Var.c(typeArr);
            listA0 = b8.f.T(b4Var.f(new Type[b4Var.e()]));
        } else {
            listA0 = k.A0(typeArr);
        }
        this.f7048d = listA0;
    }

    @Override // ha.f
    public final List<Type> a() {
        return this.f7048d;
    }

    @Override // ha.f
    public final M b() {
        return this.f7045a;
    }

    public void c(Object[] objArr) {
        f.a.a(this, objArr);
    }

    public final void d(Object obj) {
        if (obj == null || !this.f7045a.getDeclaringClass().isInstance(obj)) {
            throw new IllegalArgumentException("An object member requires the object instance passed as the first argument.");
        }
    }

    @Override // ha.f
    public final Type getReturnType() {
        return this.f7046b;
    }
}
