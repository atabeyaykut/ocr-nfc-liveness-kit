package ga;

import ga.t0;
import java.lang.reflect.Array;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;

/* loaded from: classes2.dex */
public abstract class s implements kotlin.jvm.internal.b {

    /* renamed from: a, reason: collision with root package name */
    public static final mc.d f6111a = new mc.d("<v#(\\d+)>");

    public abstract class a {

        /* renamed from: b, reason: collision with root package name */
        public static final /* synthetic */ da.m<Object>[] f6112b = {kotlin.jvm.internal.w.c(new kotlin.jvm.internal.r(kotlin.jvm.internal.w.a(a.class), "moduleData", "getModuleData()Lorg/jetbrains/kotlin/descriptors/runtime/components/RuntimeModuleData;"))};

        /* renamed from: a, reason: collision with root package name */
        public final t0.a f6113a;

        /* renamed from: ga.s$a$a, reason: collision with other inner class name */
        public static final class C0103a extends kotlin.jvm.internal.j implements x9.a<ra.h> {

            /* renamed from: a, reason: collision with root package name */
            public final /* synthetic */ s f6114a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C0103a(s sVar) {
                super(0);
                this.f6114a = sVar;
            }

            @Override // x9.a
            public final ra.h invoke() {
                return s0.a(this.f6114a.g());
            }
        }

        public a(s sVar) {
            this.f6113a = t0.c(new C0103a(sVar));
        }
    }

    public static Method u(Class cls, String str, Class[] clsArr, Class cls2, boolean z10) throws NoSuchMethodException, SecurityException {
        Class clsT;
        Method methodU;
        if (z10) {
            clsArr[0] = cls;
        }
        Method methodW = w(cls, str, clsArr, cls2);
        if (methodW != null) {
            return methodW;
        }
        Class superclass = cls.getSuperclass();
        if (superclass != null && (methodU = u(superclass, str, clsArr, cls2, z10)) != null) {
            return methodU;
        }
        Class<?>[] interfaces = cls.getInterfaces();
        kotlin.jvm.internal.h.e(interfaces, "interfaces");
        for (Class<?> superInterface : interfaces) {
            kotlin.jvm.internal.h.e(superInterface, "superInterface");
            Method methodU2 = u(superInterface, str, clsArr, cls2, z10);
            if (methodU2 != null) {
                return methodU2;
            }
            if (z10 && (clsT = x5.a.t(sa.d.d(superInterface), superInterface.getName().concat("$DefaultImpls"))) != null) {
                clsArr[0] = superInterface;
                Method methodW2 = w(clsT, str, clsArr, cls2);
                if (methodW2 != null) {
                    return methodW2;
                }
            }
        }
        return null;
    }

    public static Method w(Class cls, String str, Class[] clsArr, Class cls2) throws NoSuchMethodException, SecurityException {
        Method declaredMethod;
        try {
            declaredMethod = cls.getDeclaredMethod(str, (Class[]) Arrays.copyOf(clsArr, clsArr.length));
        } catch (NoSuchMethodException unused) {
        }
        if (kotlin.jvm.internal.h.a(declaredMethod.getReturnType(), cls2)) {
            return declaredMethod;
        }
        Method[] declaredMethods = cls.getDeclaredMethods();
        kotlin.jvm.internal.h.e(declaredMethods, "declaredMethods");
        for (Method method : declaredMethods) {
            if (kotlin.jvm.internal.h.a(method.getName(), str) && kotlin.jvm.internal.h.a(method.getReturnType(), cls2) && Arrays.equals(method.getParameterTypes(), clsArr)) {
                return method;
            }
        }
        return null;
    }

    public final void k(String str, boolean z10, ArrayList arrayList) {
        Object obj;
        arrayList.addAll(t(str));
        int size = ((r4.size() + 32) - 1) / 32;
        for (int r02 = 0; r02 < size; r02++) {
            Class TYPE = Integer.TYPE;
            kotlin.jvm.internal.h.e(TYPE, "TYPE");
            arrayList.add(TYPE);
        }
        if (z10) {
            obj = kotlin.jvm.internal.d.class;
            arrayList.remove(obj);
        } else {
            obj = Object.class;
        }
        arrayList.add(obj);
    }

    public final Method m(String name, String desc) throws NoSuchMethodException, ClassNotFoundException, SecurityException {
        Method methodU;
        kotlin.jvm.internal.h.f(name, "name");
        kotlin.jvm.internal.h.f(desc, "desc");
        if (kotlin.jvm.internal.h.a(name, "<init>")) {
            return null;
        }
        Class[] clsArr = (Class[]) t(desc).toArray(new Class[0]);
        Class clsV = v(mc.n.M(desc, ')', 0, false, 6) + 1, desc.length(), desc);
        Method methodU2 = u(r(), name, clsArr, clsV, false);
        if (methodU2 != null) {
            return methodU2;
        }
        if (!r().isInterface() || (methodU = u(Object.class, name, clsArr, clsV, false)) == null) {
            return null;
        }
        return methodU;
    }

    public abstract Collection<ma.i> n();

    public abstract Collection<ma.u> o(lb.f fVar);

    public abstract ma.l0 p(int r12);

    /* JADX WARN: Incorrect types in method signature: (Lvb/i;Ljava/lang/Object;)Ljava/util/Collection<Lga/h<*>;>; */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0062  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.Collection q(vb.i r9, int r10) {
        /*
            r8 = this;
            java.lang.String r0 = "scope"
            kotlin.jvm.internal.h.f(r9, r0)
            java.lang.String r0 = "belonginess"
            androidx.camera.core.impl.utils.f.j(r10, r0)
            ga.w r0 = new ga.w
            r0.<init>(r8)
            r1 = 0
            r2 = 3
            java.util.Collection r9 = vb.l.a.a(r9, r1, r2)
            java.lang.Iterable r9 = (java.lang.Iterable) r9
            java.util.ArrayList r2 = new java.util.ArrayList
            r2.<init>()
            java.util.Iterator r9 = r9.iterator()
        L20:
            boolean r3 = r9.hasNext()
            if (r3 == 0) goto L69
            java.lang.Object r3 = r9.next()
            ma.j r3 = (ma.j) r3
            boolean r4 = r3 instanceof ma.b
            if (r4 == 0) goto L62
            r4 = r3
            ma.b r4 = (ma.b) r4
            ma.q r5 = r4.getVisibility()
            ma.p$k r6 = ma.p.f10227h
            boolean r5 = kotlin.jvm.internal.h.a(r5, r6)
            if (r5 != 0) goto L62
            ma.b$a r4 = r4.k0()
            r4.getClass()
            ma.b$a r5 = ma.b.a.FAKE_OVERRIDE
            r6 = 0
            r7 = 1
            if (r4 == r5) goto L4e
            r4 = 1
            goto L4f
        L4e:
            r4 = 0
        L4f:
            if (r10 != r7) goto L53
            r5 = 1
            goto L54
        L53:
            r5 = 0
        L54:
            if (r4 != r5) goto L57
            r6 = 1
        L57:
            if (r6 == 0) goto L62
            l9.m r4 = l9.m.f9594a
            java.lang.Object r3 = r3.o0(r0, r4)
            ga.h r3 = (ga.h) r3
            goto L63
        L62:
            r3 = r1
        L63:
            if (r3 == 0) goto L20
            r2.add(r3)
            goto L20
        L69:
            java.util.List r9 = m9.t.v1(r2)
            java.util.Collection r9 = (java.util.Collection) r9
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: ga.s.q(vb.i, int):java.util.Collection");
    }

    public Class<?> r() {
        Class<?> clsG = g();
        List<da.d<? extends Object>> list = sa.d.f15334a;
        kotlin.jvm.internal.h.f(clsG, "<this>");
        Class<? extends Object> cls = sa.d.f15336c.get(clsG);
        return cls == null ? g() : cls;
    }

    public abstract Collection<ma.l0> s(lb.f fVar);

    public final ArrayList t(String str) {
        int r32;
        ArrayList arrayList = new ArrayList();
        int r22 = 1;
        while (str.charAt(r22) != ')') {
            int r33 = r22;
            while (str.charAt(r33) == '[') {
                r33++;
            }
            char cCharAt = str.charAt(r33);
            if (mc.n.H("VZCBSIFJD", cCharAt)) {
                r32 = r33 + 1;
            } else {
                if (cCharAt != 'L') {
                    throw new l9.f("Unknown type prefix in the method signature: ".concat(str), 1);
                }
                r32 = mc.n.M(str, ';', r22, false, 4) + 1;
            }
            arrayList.add(v(r22, r32, str));
            r22 = r32;
        }
        return arrayList;
    }

    public final Class v(int r42, int r52, String str) throws ClassNotFoundException {
        Class<?> clsLoadClass;
        String str2;
        char cCharAt = str.charAt(r42);
        if (cCharAt == 'L') {
            ClassLoader classLoaderD = sa.d.d(g());
            String strSubstring = str.substring(r42 + 1, r52 - 1);
            kotlin.jvm.internal.h.e(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
            clsLoadClass = classLoaderD.loadClass(mc.j.B(strSubstring, '/', '.'));
            str2 = "jClass.safeClassLoader.l…d - 1).replace('/', '.'))";
        } else {
            if (cCharAt == '[') {
                Class clsV = v(r42 + 1, r52, str);
                lb.c cVar = z0.f6145a;
                kotlin.jvm.internal.h.f(clsV, "<this>");
                return Array.newInstance((Class<?>) clsV, 0).getClass();
            }
            if (cCharAt != 'V') {
                if (cCharAt == 'Z') {
                    return Boolean.TYPE;
                }
                if (cCharAt == 'C') {
                    return Character.TYPE;
                }
                if (cCharAt == 'B') {
                    return Byte.TYPE;
                }
                if (cCharAt == 'S') {
                    return Short.TYPE;
                }
                if (cCharAt == 'I') {
                    return Integer.TYPE;
                }
                if (cCharAt == 'F') {
                    return Float.TYPE;
                }
                if (cCharAt == 'J') {
                    return Long.TYPE;
                }
                if (cCharAt == 'D') {
                    return Double.TYPE;
                }
                throw new l9.f("Unknown type prefix in the method signature: ".concat(str), 1);
            }
            clsLoadClass = Void.TYPE;
            str2 = "TYPE";
        }
        kotlin.jvm.internal.h.e(clsLoadClass, str2);
        return clsLoadClass;
    }
}
