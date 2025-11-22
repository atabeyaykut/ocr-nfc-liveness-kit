package l8;

import java.io.IOException;
import java.lang.annotation.Annotation;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.math.BigDecimal;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.Set;
import l8.p;
import l8.u;

/* loaded from: classes2.dex */
public final class c0 {

    /* renamed from: a, reason: collision with root package name */
    public static final b f9474a = new b();

    /* renamed from: b, reason: collision with root package name */
    public static final c f9475b = new c();

    /* renamed from: c, reason: collision with root package name */
    public static final d f9476c = new d();

    /* renamed from: d, reason: collision with root package name */
    public static final e f9477d = new e();

    /* renamed from: e, reason: collision with root package name */
    public static final f f9478e = new f();
    public static final g f = new g();

    /* renamed from: g, reason: collision with root package name */
    public static final h f9479g = new h();

    /* renamed from: h, reason: collision with root package name */
    public static final i f9480h = new i();

    /* renamed from: i, reason: collision with root package name */
    public static final j f9481i = new j();

    /* renamed from: j, reason: collision with root package name */
    public static final a f9482j = new a();

    public class a extends p<String> {
        @Override // l8.p
        public final String a(u uVar) throws IOException {
            return uVar.j();
        }

        @Override // l8.p
        public final void c(y yVar, String str) throws IOException {
            yVar.p(str);
        }

        public final String toString() {
            return "JsonAdapter(String)";
        }
    }

    public class b implements p.a {
        @Override // l8.p.a
        public final p<?> a(Type type, Set<? extends Annotation> set, b0 b0Var) throws IllegalAccessException, NoSuchMethodException, InstantiationException, ClassNotFoundException, SecurityException, IllegalArgumentException, InvocationTargetException {
            m mVarB;
            Object objNewInstance;
            if (!set.isEmpty()) {
                return null;
            }
            if (type == Boolean.TYPE) {
                return c0.f9475b;
            }
            if (type == Byte.TYPE) {
                return c0.f9476c;
            }
            if (type == Character.TYPE) {
                return c0.f9477d;
            }
            if (type == Double.TYPE) {
                return c0.f9478e;
            }
            if (type == Float.TYPE) {
                return c0.f;
            }
            if (type == Integer.TYPE) {
                return c0.f9479g;
            }
            if (type == Long.TYPE) {
                return c0.f9480h;
            }
            if (type == Short.TYPE) {
                return c0.f9481i;
            }
            if (type == Boolean.class) {
                c cVar = c0.f9475b;
                cVar.getClass();
                return new m(cVar);
            }
            if (type == Byte.class) {
                d dVar = c0.f9476c;
                dVar.getClass();
                return new m(dVar);
            }
            if (type == Character.class) {
                e eVar = c0.f9477d;
                eVar.getClass();
                return new m(eVar);
            }
            if (type == Double.class) {
                f fVar = c0.f9478e;
                fVar.getClass();
                return new m(fVar);
            }
            if (type == Float.class) {
                g gVar = c0.f;
                gVar.getClass();
                return new m(gVar);
            }
            if (type == Integer.class) {
                h hVar = c0.f9479g;
                hVar.getClass();
                return new m(hVar);
            }
            if (type == Long.class) {
                i iVar = c0.f9480h;
                iVar.getClass();
                return new m(iVar);
            }
            if (type == Short.class) {
                j jVar = c0.f9481i;
                jVar.getClass();
                return new m(jVar);
            }
            if (type == String.class) {
                a aVar = c0.f9482j;
                aVar.getClass();
                return new m(aVar);
            }
            if (type == Object.class) {
                return new m(new l(b0Var));
            }
            Class<?> clsC = d0.c(type);
            Set<Annotation> set2 = m8.a.f10139a;
            q qVar = (q) clsC.getAnnotation(q.class);
            if (qVar == null || !qVar.generateAdapter()) {
                mVarB = null;
            } else {
                try {
                    Class<?> cls = Class.forName(clsC.getName().replace("$", "_") + "JsonAdapter", true, clsC.getClassLoader());
                    if (type instanceof ParameterizedType) {
                        Constructor<?> declaredConstructor = cls.getDeclaredConstructor(b0.class, Type[].class);
                        declaredConstructor.setAccessible(true);
                        objNewInstance = declaredConstructor.newInstance(b0Var, ((ParameterizedType) type).getActualTypeArguments());
                    } else {
                        Constructor<?> declaredConstructor2 = cls.getDeclaredConstructor(b0.class);
                        declaredConstructor2.setAccessible(true);
                        objNewInstance = declaredConstructor2.newInstance(b0Var);
                    }
                    mVarB = ((p) objNewInstance).b();
                } catch (ClassNotFoundException e10) {
                    throw new RuntimeException(androidx.appcompat.graphics.drawable.a.g("Failed to find the generated JsonAdapter class for ", clsC), e10);
                } catch (IllegalAccessException e11) {
                    throw new RuntimeException(androidx.appcompat.graphics.drawable.a.g("Failed to access the generated JsonAdapter for ", clsC), e11);
                } catch (InstantiationException e12) {
                    throw new RuntimeException(androidx.appcompat.graphics.drawable.a.g("Failed to instantiate the generated JsonAdapter for ", clsC), e12);
                } catch (NoSuchMethodException e13) {
                    throw new RuntimeException(androidx.appcompat.graphics.drawable.a.g("Failed to find the generated JsonAdapter constructor for ", clsC), e13);
                } catch (InvocationTargetException e14) {
                    m8.a.f(e14);
                    throw null;
                }
            }
            if (mVarB != null) {
                return mVarB;
            }
            if (clsC.isEnum()) {
                return new m(new k(clsC));
            }
            return null;
        }
    }

    public class c extends p<Boolean> {
        @Override // l8.p
        public final Boolean a(u uVar) throws IOException {
            v vVar = (v) uVar;
            int r02 = vVar.f9534j;
            if (r02 == 0) {
                r02 = vVar.s();
            }
            boolean z10 = false;
            if (r02 == 5) {
                vVar.f9534j = 0;
                int[] r03 = vVar.f9513d;
                int r52 = vVar.f9510a - 1;
                r03[r52] = r03[r52] + 1;
                z10 = true;
            } else {
                if (r02 != 6) {
                    throw new r("Expected a boolean but was " + vVar.k() + " at path " + vVar.getPath());
                }
                vVar.f9534j = 0;
                int[] r04 = vVar.f9513d;
                int r53 = vVar.f9510a - 1;
                r04[r53] = r04[r53] + 1;
            }
            return Boolean.valueOf(z10);
        }

        @Override // l8.p
        public final void c(y yVar, Boolean bool) throws IOException {
            yVar.q(bool.booleanValue());
        }

        public final String toString() {
            return "JsonAdapter(Boolean)";
        }
    }

    public class d extends p<Byte> {
        @Override // l8.p
        public final Byte a(u uVar) throws IOException {
            return Byte.valueOf((byte) c0.a(uVar, "a byte", -128, 255));
        }

        @Override // l8.p
        public final void c(y yVar, Byte b10) throws IOException {
            yVar.n(b10.intValue() & 255);
        }

        public final String toString() {
            return "JsonAdapter(Byte)";
        }
    }

    public class e extends p<Character> {
        @Override // l8.p
        public final Character a(u uVar) throws IOException {
            String strJ = uVar.j();
            if (strJ.length() <= 1) {
                return Character.valueOf(strJ.charAt(0));
            }
            throw new r(String.format("Expected %s but was %s at path %s", "a char", "\"" + strJ + '\"', uVar.getPath()));
        }

        @Override // l8.p
        public final void c(y yVar, Character ch2) throws IOException {
            yVar.p(ch2.toString());
        }

        public final String toString() {
            return "JsonAdapter(Character)";
        }
    }

    public class f extends p<Double> {
        @Override // l8.p
        public final Double a(u uVar) throws IOException {
            return Double.valueOf(uVar.f());
        }

        @Override // l8.p
        public final void c(y yVar, Double d10) throws IOException {
            yVar.m(d10.doubleValue());
        }

        public final String toString() {
            return "JsonAdapter(Double)";
        }
    }

    public class g extends p<Float> {
        @Override // l8.p
        public final Float a(u uVar) throws IOException {
            float f = (float) uVar.f();
            if (uVar.f9514e || !Float.isInfinite(f)) {
                return Float.valueOf(f);
            }
            throw new r("JSON forbids NaN and infinities: " + f + " at path " + uVar.getPath());
        }

        @Override // l8.p
        public final void c(y yVar, Float f) throws IOException {
            Float f10 = f;
            f10.getClass();
            yVar.o(f10);
        }

        public final String toString() {
            return "JsonAdapter(Float)";
        }
    }

    public class h extends p<Integer> {
        @Override // l8.p
        public final Integer a(u uVar) throws IOException {
            return Integer.valueOf(uVar.g());
        }

        @Override // l8.p
        public final void c(y yVar, Integer num) throws IOException {
            yVar.n(num.intValue());
        }

        public final String toString() {
            return "JsonAdapter(Integer)";
        }
    }

    public class i extends p<Long> {
        @Override // l8.p
        public final Long a(u uVar) throws IOException, NumberFormatException {
            long jLongValueExact;
            v vVar = (v) uVar;
            int r02 = vVar.f9534j;
            if (r02 == 0) {
                r02 = vVar.s();
            }
            if (r02 == 16) {
                vVar.f9534j = 0;
                int[] r03 = vVar.f9513d;
                int r12 = vVar.f9510a - 1;
                r03[r12] = r03[r12] + 1;
                jLongValueExact = vVar.f9535k;
            } else {
                if (r02 == 17) {
                    vVar.f9537m = vVar.f9533h.s(vVar.f9536l);
                } else if (r02 == 9 || r02 == 8) {
                    String strF = vVar.F(r02 == 9 ? v.f9528p : v.f9527n);
                    vVar.f9537m = strF;
                    try {
                        jLongValueExact = Long.parseLong(strF);
                        vVar.f9534j = 0;
                        int[] r6 = vVar.f9513d;
                        int r72 = vVar.f9510a - 1;
                        r6[r72] = r6[r72] + 1;
                    } catch (NumberFormatException unused) {
                    }
                } else if (r02 != 11) {
                    throw new r("Expected a long but was " + vVar.k() + " at path " + vVar.getPath());
                }
                vVar.f9534j = 11;
                try {
                    jLongValueExact = new BigDecimal(vVar.f9537m).longValueExact();
                    vVar.f9537m = null;
                    vVar.f9534j = 0;
                    int[] r22 = vVar.f9513d;
                    int r10 = vVar.f9510a - 1;
                    r22[r10] = r22[r10] + 1;
                } catch (ArithmeticException | NumberFormatException unused2) {
                    throw new r("Expected a long but was " + vVar.f9537m + " at path " + vVar.getPath());
                }
            }
            return Long.valueOf(jLongValueExact);
        }

        @Override // l8.p
        public final void c(y yVar, Long l5) throws IOException {
            yVar.n(l5.longValue());
        }

        public final String toString() {
            return "JsonAdapter(Long)";
        }
    }

    public class j extends p<Short> {
        @Override // l8.p
        public final Short a(u uVar) throws IOException {
            return Short.valueOf((short) c0.a(uVar, "a short", -32768, 32767));
        }

        @Override // l8.p
        public final void c(y yVar, Short sh2) throws IOException {
            yVar.n(sh2.intValue());
        }

        public final String toString() {
            return "JsonAdapter(Short)";
        }
    }

    public static final class k<T extends Enum<T>> extends p<T> {

        /* renamed from: a, reason: collision with root package name */
        public final Class<T> f9483a;

        /* renamed from: b, reason: collision with root package name */
        public final String[] f9484b;

        /* renamed from: c, reason: collision with root package name */
        public final T[] f9485c;

        /* renamed from: d, reason: collision with root package name */
        public final u.a f9486d;

        public k(Class<T> cls) {
            this.f9483a = cls;
            try {
                T[] enumConstants = cls.getEnumConstants();
                this.f9485c = enumConstants;
                this.f9484b = new String[enumConstants.length];
                int r02 = 0;
                while (true) {
                    T[] tArr = this.f9485c;
                    if (r02 >= tArr.length) {
                        this.f9486d = u.a.a(this.f9484b);
                        return;
                    }
                    T t10 = tArr[r02];
                    l8.k kVar = (l8.k) cls.getField(t10.name()).getAnnotation(l8.k.class);
                    this.f9484b[r02] = kVar != null ? kVar.name() : t10.name();
                    r02++;
                }
            } catch (NoSuchFieldException e10) {
                throw new AssertionError("Missing field in ".concat(cls.getName()), e10);
            }
        }

        @Override // l8.p
        public final Object a(u uVar) throws IOException {
            int r02;
            v vVar = (v) uVar;
            int r12 = vVar.f9534j;
            if (r12 == 0) {
                r12 = vVar.s();
            }
            if (r12 < 8 || r12 > 11) {
                r02 = -1;
            } else {
                u.a aVar = this.f9486d;
                if (r12 == 11) {
                    r02 = vVar.v(vVar.f9537m, aVar);
                } else {
                    int r13 = vVar.f9532g.h0(aVar.f9516b);
                    if (r13 != -1) {
                        vVar.f9534j = 0;
                        int[] r22 = vVar.f9513d;
                        int r03 = vVar.f9510a - 1;
                        r22[r03] = r22[r03] + 1;
                        r02 = r13;
                    } else {
                        String strJ = vVar.j();
                        int r42 = vVar.v(strJ, aVar);
                        if (r42 == -1) {
                            vVar.f9534j = 11;
                            vVar.f9537m = strJ;
                            vVar.f9513d[vVar.f9510a - 1] = r1[r0] - 1;
                        }
                        r02 = r42;
                    }
                }
            }
            if (r02 != -1) {
                return this.f9485c[r02];
            }
            String path = uVar.getPath();
            throw new r("Expected one of " + Arrays.asList(this.f9484b) + " but was " + uVar.j() + " at path " + path);
        }

        @Override // l8.p
        public final void c(y yVar, Object obj) throws IOException {
            yVar.p(this.f9484b[((Enum) obj).ordinal()]);
        }

        public final String toString() {
            return "JsonAdapter(" + this.f9483a.getName() + ")";
        }
    }

    public static final class l extends p<Object> {

        /* renamed from: a, reason: collision with root package name */
        public final b0 f9487a;

        /* renamed from: b, reason: collision with root package name */
        public final p<List> f9488b;

        /* renamed from: c, reason: collision with root package name */
        public final p<Map> f9489c;

        /* renamed from: d, reason: collision with root package name */
        public final p<String> f9490d;

        /* renamed from: e, reason: collision with root package name */
        public final p<Double> f9491e;
        public final p<Boolean> f;

        public l(b0 b0Var) {
            this.f9487a = b0Var;
            b0Var.getClass();
            Set<Annotation> set = m8.a.f10139a;
            this.f9488b = b0Var.b(List.class, set, null);
            this.f9489c = b0Var.b(Map.class, set, null);
            this.f9490d = b0Var.b(String.class, set, null);
            this.f9491e = b0Var.b(Double.class, set, null);
            this.f = b0Var.b(Boolean.class, set, null);
        }

        @Override // l8.p
        public final Object a(u uVar) throws IOException {
            int r02 = uVar.k().ordinal();
            if (r02 == 0) {
                return this.f9488b.a(uVar);
            }
            if (r02 == 2) {
                return this.f9489c.a(uVar);
            }
            if (r02 == 5) {
                return this.f9490d.a(uVar);
            }
            if (r02 == 6) {
                return this.f9491e.a(uVar);
            }
            if (r02 == 7) {
                return this.f.a(uVar);
            }
            if (r02 == 8) {
                uVar.i();
                return null;
            }
            throw new IllegalStateException("Expected a value but was " + uVar.k() + " at path " + uVar.getPath());
        }

        /* JADX WARN: Removed duplicated region for block: B:7:0x0017 A[PHI: r1
          0x0017: PHI (r1v4 java.lang.Class<?>) = (r1v1 java.lang.Class<?>), (r1v2 java.lang.Class<?>) binds: [B:6:0x0015, B:9:0x001f] A[DONT_GENERATE, DONT_INLINE]] */
        @Override // l8.p
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void c(l8.y r5, java.lang.Object r6) throws java.io.IOException {
            /*
                r4 = this;
                java.lang.Class r0 = r6.getClass()
                java.lang.Class<java.lang.Object> r1 = java.lang.Object.class
                if (r0 != r1) goto Lf
                r5.b()
                r5.e()
                goto L2e
            Lf:
                java.lang.Class<java.util.Map> r1 = java.util.Map.class
                boolean r2 = r1.isAssignableFrom(r0)
                if (r2 == 0) goto L19
            L17:
                r0 = r1
                goto L22
            L19:
                java.lang.Class<java.util.Collection> r1 = java.util.Collection.class
                boolean r2 = r1.isAssignableFrom(r0)
                if (r2 == 0) goto L22
                goto L17
            L22:
                java.util.Set<java.lang.annotation.Annotation> r1 = m8.a.f10139a
                r2 = 0
                l8.b0 r3 = r4.f9487a
                l8.p r0 = r3.b(r0, r1, r2)
                r0.c(r5, r6)
            L2e:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: l8.c0.l.c(l8.y, java.lang.Object):void");
        }

        public final String toString() {
            return "JsonAdapter(Object)";
        }
    }

    public static int a(u uVar, String str, int r42, int r52) throws IOException {
        int r02 = uVar.g();
        if (r02 < r42 || r02 > r52) {
            throw new r(String.format("Expected %s but was %s at path %s", str, Integer.valueOf(r02), uVar.getPath()));
        }
        return r02;
    }
}
