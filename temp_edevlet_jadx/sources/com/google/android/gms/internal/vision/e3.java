package com.google.android.gms.internal.vision;

import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.RandomAccess;
import java.util.logging.Logger;

/* loaded from: classes.dex */
public final class e3 {

    /* renamed from: a, reason: collision with root package name */
    public static final Class<?> f3946a;

    /* renamed from: b, reason: collision with root package name */
    public static final n3<?, ?> f3947b;

    /* renamed from: c, reason: collision with root package name */
    public static final n3<?, ?> f3948c;

    /* renamed from: d, reason: collision with root package name */
    public static final p3 f3949d;

    static {
        Class<?> cls;
        try {
            cls = Class.forName("com.google.protobuf.GeneratedMessage");
        } catch (Throwable unused) {
            cls = null;
        }
        f3946a = cls;
        f3947b = e(false);
        f3948c = e(true);
        f3949d = new p3();
    }

    public static int A(List<Integer> list) {
        int r22;
        int size = list.size();
        int r12 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof k1) {
            k1 k1Var = (k1) list;
            r22 = 0;
            while (r12 < size) {
                k1Var.m(r12);
                r22 += t0.J(k1Var.f4019b[r12]);
                r12++;
            }
        } else {
            r22 = 0;
            while (r12 < size) {
                r22 += t0.J(list.get(r12).intValue());
                r12++;
            }
        }
        return r22;
    }

    public static void B(int r72, List list, u0 u0Var, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        t0 t0Var = u0Var.f4102a;
        int r12 = 0;
        if (!z10) {
            while (r12 < list.size()) {
                long jLongValue = ((Long) list.get(r12)).longValue();
                t0Var.j(r72, (jLongValue >> 63) ^ (jLongValue << 1));
                r12++;
            }
            return;
        }
        t0Var.i(r72, 2);
        int r10 = 0;
        for (int r73 = 0; r73 < list.size(); r73++) {
            long jLongValue2 = ((Long) list.get(r73)).longValue();
            r10 += t0.H((jLongValue2 >> 63) ^ (jLongValue2 << 1));
        }
        t0Var.t(r10);
        while (r12 < list.size()) {
            long jLongValue3 = ((Long) list.get(r12)).longValue();
            t0Var.p((jLongValue3 >> 63) ^ (jLongValue3 << 1));
            r12++;
        }
    }

    public static int C(int r12, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (t0.F(r12) * size) + D(list);
    }

    public static int D(List<Integer> list) {
        int r22;
        int size = list.size();
        int r12 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof k1) {
            k1 k1Var = (k1) list;
            r22 = 0;
            while (r12 < size) {
                k1Var.m(r12);
                r22 += t0.O(k1Var.f4019b[r12]);
                r12++;
            }
        } else {
            r22 = 0;
            while (r12 < size) {
                r22 += t0.O(list.get(r12).intValue());
                r12++;
            }
        }
        return r22;
    }

    public static void E(int r32, List list, u0 u0Var, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        t0 t0Var = u0Var.f4102a;
        int r02 = 0;
        if (!z10) {
            while (r02 < list.size()) {
                t0Var.B(r32, ((Long) list.get(r02)).longValue());
                r02++;
            }
            return;
        }
        t0Var.i(r32, 2);
        int r6 = 0;
        for (int r33 = 0; r33 < list.size(); r33++) {
            ((Long) list.get(r33)).longValue();
            Logger logger = t0.f4085b;
            r6 += 8;
        }
        t0Var.t(r6);
        while (r02 < list.size()) {
            t0Var.C(((Long) list.get(r02)).longValue());
            r02++;
        }
    }

    public static int F(int r12, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (t0.F(r12) * size) + G(list);
    }

    public static int G(List<Integer> list) {
        int r22;
        int size = list.size();
        int r12 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof k1) {
            k1 k1Var = (k1) list;
            r22 = 0;
            while (r12 < size) {
                k1Var.m(r12);
                int r32 = k1Var.f4019b[r12];
                r22 += t0.O((r32 >> 31) ^ (r32 << 1));
                r12++;
            }
        } else {
            r22 = 0;
            while (r12 < size) {
                int r33 = list.get(r12).intValue();
                r22 += t0.O((r33 >> 31) ^ (r33 << 1));
                r12++;
            }
        }
        return r22;
    }

    public static void H(int r32, List list, u0 u0Var, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        t0 t0Var = u0Var.f4102a;
        int r02 = 0;
        if (!z10) {
            while (r02 < list.size()) {
                t0Var.B(r32, ((Long) list.get(r02)).longValue());
                r02++;
            }
            return;
        }
        t0Var.i(r32, 2);
        int r6 = 0;
        for (int r33 = 0; r33 < list.size(); r33++) {
            ((Long) list.get(r33)).longValue();
            Logger logger = t0.f4085b;
            r6 += 8;
        }
        t0Var.t(r6);
        while (r02 < list.size()) {
            t0Var.C(((Long) list.get(r02)).longValue());
            r02++;
        }
    }

    public static int I(int r02, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return t0.R(r02) * size;
    }

    public static int J(List<?> list) {
        return list.size() << 2;
    }

    public static void K(int r22, List list, u0 u0Var, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        t0 t0Var = u0Var.f4102a;
        int r02 = 0;
        if (!z10) {
            while (r02 < list.size()) {
                t0Var.u(r22, ((Integer) list.get(r02)).intValue());
                r02++;
            }
            return;
        }
        t0Var.i(r22, 2);
        int r52 = 0;
        for (int r23 = 0; r23 < list.size(); r23++) {
            r52 += t0.J(((Integer) list.get(r23)).intValue());
        }
        t0Var.t(r52);
        while (r02 < list.size()) {
            t0Var.h(((Integer) list.get(r02)).intValue());
            r02++;
        }
    }

    public static int L(int r02, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return t0.M(r02) * size;
    }

    public static int M(List<?> list) {
        return list.size() << 3;
    }

    public static void N(int r22, List list, u0 u0Var, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        t0 t0Var = u0Var.f4102a;
        int r02 = 0;
        if (!z10) {
            while (r02 < list.size()) {
                t0Var.A(r22, ((Integer) list.get(r02)).intValue());
                r02++;
            }
            return;
        }
        t0Var.i(r22, 2);
        int r52 = 0;
        for (int r23 = 0; r23 < list.size(); r23++) {
            r52 += t0.O(((Integer) list.get(r23)).intValue());
        }
        t0Var.t(r52);
        while (r02 < list.size()) {
            t0Var.t(((Integer) list.get(r02)).intValue());
            r02++;
        }
    }

    public static int O(int r02, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return t0.w(r02) * size;
    }

    public static int P(List<?> list) {
        return list.size();
    }

    public static void Q(int r32, List list, u0 u0Var, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        t0 t0Var = u0Var.f4102a;
        int r02 = 0;
        if (!z10) {
            while (r02 < list.size()) {
                int r6 = ((Integer) list.get(r02)).intValue();
                t0Var.A(r32, (r6 >> 31) ^ (r6 << 1));
                r02++;
            }
            return;
        }
        t0Var.i(r32, 2);
        int r62 = 0;
        for (int r33 = 0; r33 < list.size(); r33++) {
            int r12 = ((Integer) list.get(r33)).intValue();
            r62 += t0.O((r12 >> 31) ^ (r12 << 1));
        }
        t0Var.t(r62);
        while (r02 < list.size()) {
            int r34 = ((Integer) list.get(r02)).intValue();
            t0Var.t((r34 >> 31) ^ (r34 << 1));
            r02++;
        }
    }

    public static void R(int r22, List list, u0 u0Var, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        t0 t0Var = u0Var.f4102a;
        int r02 = 0;
        if (!z10) {
            while (r02 < list.size()) {
                t0Var.I(r22, ((Integer) list.get(r02)).intValue());
                r02++;
            }
            return;
        }
        t0Var.i(r22, 2);
        int r52 = 0;
        for (int r23 = 0; r23 < list.size(); r23++) {
            ((Integer) list.get(r23)).intValue();
            Logger logger = t0.f4085b;
            r52 += 4;
        }
        t0Var.t(r52);
        while (r02 < list.size()) {
            t0Var.E(((Integer) list.get(r02)).intValue());
            r02++;
        }
    }

    public static void S(int r22, List list, u0 u0Var, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        t0 t0Var = u0Var.f4102a;
        int r02 = 0;
        if (!z10) {
            while (r02 < list.size()) {
                t0Var.I(r22, ((Integer) list.get(r02)).intValue());
                r02++;
            }
            return;
        }
        t0Var.i(r22, 2);
        int r52 = 0;
        for (int r23 = 0; r23 < list.size(); r23++) {
            ((Integer) list.get(r23)).intValue();
            Logger logger = t0.f4085b;
            r52 += 4;
        }
        t0Var.t(r52);
        while (r02 < list.size()) {
            t0Var.E(((Integer) list.get(r02)).intValue());
            r02++;
        }
    }

    public static void T(int r22, List list, u0 u0Var, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        t0 t0Var = u0Var.f4102a;
        int r02 = 0;
        if (!z10) {
            while (r02 < list.size()) {
                t0Var.u(r22, ((Integer) list.get(r02)).intValue());
                r02++;
            }
            return;
        }
        t0Var.i(r22, 2);
        int r52 = 0;
        for (int r23 = 0; r23 < list.size(); r23++) {
            r52 += t0.J(((Integer) list.get(r23)).intValue());
        }
        t0Var.t(r52);
        while (r02 < list.size()) {
            t0Var.h(((Integer) list.get(r02)).intValue());
            r02++;
        }
    }

    public static void U(int r22, List list, u0 u0Var, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        t0 t0Var = u0Var.f4102a;
        int r02 = 0;
        if (!z10) {
            while (r02 < list.size()) {
                t0Var.o(r22, ((Boolean) list.get(r02)).booleanValue());
                r02++;
            }
            return;
        }
        t0Var.i(r22, 2);
        int r52 = 0;
        for (int r23 = 0; r23 < list.size(); r23++) {
            ((Boolean) list.get(r23)).booleanValue();
            Logger logger = t0.f4085b;
            r52++;
        }
        t0Var.t(r52);
        while (r02 < list.size()) {
            t0Var.g(((Boolean) list.get(r02)).booleanValue() ? (byte) 1 : (byte) 0);
            r02++;
        }
    }

    public static int a(int r22, d3 d3Var, Object obj) {
        if (obj instanceof y1) {
            y1 y1Var = (y1) obj;
            int r23 = t0.O(r22 << 3);
            int r32 = y1Var.f4124b != null ? y1Var.f4124b.x() : y1Var.f4123a != null ? y1Var.f4123a.r() : 0;
            return t0.O(r32) + r32 + r23;
        }
        int r24 = t0.O(r22 << 3);
        f0 f0Var = (f0) ((n2) obj);
        int r02 = f0Var.e();
        if (r02 == -1) {
            r02 = d3Var.b(f0Var);
            f0Var.d(r02);
        }
        return t0.O(r02) + r02 + r24;
    }

    public static int b(int r42, List<?> list) {
        int r32;
        int r33;
        int size = list.size();
        int r12 = 0;
        if (size == 0) {
            return 0;
        }
        int r43 = t0.F(r42) * size;
        if (list instanceof a2) {
            a2 a2Var = (a2) list;
            while (r12 < size) {
                Object objJ = a2Var.j(r12);
                if (objJ instanceof p0) {
                    int r22 = ((p0) objJ).x();
                    r33 = t0.O(r22) + r22;
                } else {
                    r33 = t0.s((String) objJ);
                }
                r43 += r33;
                r12++;
            }
        } else {
            while (r12 < size) {
                Object obj = list.get(r12);
                if (obj instanceof p0) {
                    int r23 = ((p0) obj).x();
                    r32 = t0.O(r23) + r23;
                } else {
                    r32 = t0.s((String) obj);
                }
                r43 += r32;
                r12++;
            }
        }
        return r43;
    }

    public static int c(int r6, List<?> list, d3 d3Var) {
        int r42;
        int r32;
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int r62 = t0.F(r6) * size;
        for (int r22 = 0; r22 < size; r22++) {
            Object obj = list.get(r22);
            if (obj instanceof y1) {
                y1 y1Var = (y1) obj;
                r32 = y1Var.f4124b != null ? y1Var.f4124b.x() : y1Var.f4123a != null ? y1Var.f4123a.r() : 0;
                r42 = t0.O(r32);
            } else {
                f0 f0Var = (f0) ((n2) obj);
                r42 = f0Var.e();
                if (r42 == -1) {
                    r42 = d3Var.b(f0Var);
                    f0Var.d(r42);
                }
                r32 = t0.O(r42);
            }
            r62 += r42 + r32;
        }
        return r62;
    }

    public static int d(List<Long> list) {
        int r22;
        int size = list.size();
        int r12 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof c2) {
            c2 c2Var = (c2) list;
            r22 = 0;
            while (r12 < size) {
                c2Var.m(r12);
                r22 += t0.H(c2Var.f3917b[r12]);
                r12++;
            }
        } else {
            r22 = 0;
            while (r12 < size) {
                r22 += t0.H(list.get(r12).longValue());
                r12++;
            }
        }
        return r22;
    }

    public static n3<?, ?> e(boolean z10) {
        Class<?> cls;
        try {
            cls = Class.forName("com.google.protobuf.UnknownFieldSetSchema");
        } catch (Throwable unused) {
            cls = null;
        }
        if (cls == null) {
            return null;
        }
        try {
            return (n3) cls.getConstructor(Boolean.TYPE).newInstance(Boolean.valueOf(z10));
        } catch (Throwable unused2) {
            return null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static Object f(int r52, r1 r1Var, n1 n1Var, q3 q3Var, n3 n3Var) {
        if (n1Var == null) {
            return q3Var;
        }
        if (r1Var instanceof RandomAccess) {
            int size = r1Var.size();
            int r22 = 0;
            for (int r12 = 0; r12 < size; r12++) {
                int r32 = ((Integer) r1Var.get(r12)).intValue();
                if (n1Var.f(r32)) {
                    if (r12 != r22) {
                        r1Var.set(r22, Integer.valueOf(r32));
                    }
                    r22++;
                } else {
                    if (q3Var == null) {
                        q3Var = n3Var.a();
                    }
                    n3Var.b(r52, r32, q3Var);
                }
            }
            if (r22 != size) {
                r1Var.subList(r22, size).clear();
            }
        } else {
            Iterator<E> it = r1Var.iterator();
            while (it.hasNext()) {
                int r02 = ((Integer) it.next()).intValue();
                if (!n1Var.f(r02)) {
                    if (q3Var == null) {
                        q3Var = n3Var.a();
                    }
                    n3Var.b(r52, r02, q3Var);
                    it.remove();
                }
            }
        }
        return q3Var;
    }

    public static void g(int r42, List list, u0 u0Var) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        u0Var.getClass();
        boolean z10 = list instanceof a2;
        int r12 = 0;
        t0 t0Var = u0Var.f4102a;
        if (!z10) {
            while (r12 < list.size()) {
                t0Var.n(r42, (String) list.get(r12));
                r12++;
            }
            return;
        }
        a2 a2Var = (a2) list;
        while (r12 < list.size()) {
            Object objJ = a2Var.j(r12);
            if (objJ instanceof String) {
                t0Var.n(r42, (String) objJ);
            } else {
                t0Var.k(r42, (p0) objJ);
            }
            r12++;
        }
    }

    public static void h(int r22, List list, u0 u0Var, d3 d3Var) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        u0Var.getClass();
        for (int r02 = 0; r02 < list.size(); r02++) {
            u0Var.f(r22, d3Var, list.get(r02));
        }
    }

    public static void i(int r32, List list, u0 u0Var, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        t0 t0Var = u0Var.f4102a;
        int r02 = 0;
        if (!z10) {
            while (r02 < list.size()) {
                double dDoubleValue = ((Double) list.get(r02)).doubleValue();
                t0Var.getClass();
                t0Var.B(r32, Double.doubleToRawLongBits(dDoubleValue));
                r02++;
            }
            return;
        }
        t0Var.i(r32, 2);
        int r6 = 0;
        for (int r33 = 0; r33 < list.size(); r33++) {
            ((Double) list.get(r33)).doubleValue();
            Logger logger = t0.f4085b;
            r6 += 8;
        }
        t0Var.t(r6);
        while (r02 < list.size()) {
            t0Var.C(Double.doubleToRawLongBits(((Double) list.get(r02)).doubleValue()));
            r02++;
        }
    }

    public static <T, FT extends e1<FT>> void j(y0<FT> y0Var, T t10, T t11) {
        g3<T, Object> g3Var;
        c1<T> c1VarA = y0Var.a(t11);
        if (c1VarA.f3914a.isEmpty()) {
            return;
        }
        c1<T> c1VarF = y0Var.f(t10);
        c1VarF.getClass();
        int r32 = 0;
        while (true) {
            g3Var = c1VarA.f3914a;
            if (r32 >= g3Var.e()) {
                break;
            }
            c1VarF.f(g3Var.d(r32));
            r32++;
        }
        Iterator<T> it = g3Var.g().iterator();
        while (it.hasNext()) {
            c1VarF.f((Map.Entry) it.next());
        }
    }

    public static boolean k(Object obj, Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }

    public static int l(int r12, List list) {
        if (list.size() == 0) {
            return 0;
        }
        return (t0.F(r12) * list.size()) + d(list);
    }

    public static int m(int r32, List<p0> list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int r33 = t0.F(r32) * size;
        for (int r12 = 0; r12 < list.size(); r12++) {
            int r02 = list.get(r12).x();
            r33 += t0.O(r02) + r02;
        }
        return r33;
    }

    public static int n(int r42, List<n2> list, d3 d3Var) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int r22 = 0;
        for (int r12 = 0; r12 < size; r12++) {
            r22 += t0.z(r42, list.get(r12), d3Var);
        }
        return r22;
    }

    public static int o(List<Long> list) {
        int r22;
        int size = list.size();
        int r12 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof c2) {
            c2 c2Var = (c2) list;
            r22 = 0;
            while (r12 < size) {
                c2Var.m(r12);
                r22 += t0.H(c2Var.f3917b[r12]);
                r12++;
            }
        } else {
            r22 = 0;
            while (r12 < size) {
                r22 += t0.H(list.get(r12).longValue());
                r12++;
            }
        }
        return r22;
    }

    public static void p(int r32, List list, u0 u0Var) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        u0Var.getClass();
        for (int r02 = 0; r02 < list.size(); r02++) {
            u0Var.f4102a.k(r32, (p0) list.get(r02));
        }
    }

    public static void q(int r22, List list, u0 u0Var, d3 d3Var) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        u0Var.getClass();
        for (int r02 = 0; r02 < list.size(); r02++) {
            u0Var.k(r22, d3Var, list.get(r02));
        }
    }

    public static void r(int r22, List list, u0 u0Var, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        t0 t0Var = u0Var.f4102a;
        int r02 = 0;
        if (!z10) {
            while (r02 < list.size()) {
                float fFloatValue = ((Float) list.get(r02)).floatValue();
                t0Var.getClass();
                t0Var.I(r22, Float.floatToRawIntBits(fFloatValue));
                r02++;
            }
            return;
        }
        t0Var.i(r22, 2);
        int r52 = 0;
        for (int r23 = 0; r23 < list.size(); r23++) {
            ((Float) list.get(r23)).floatValue();
            Logger logger = t0.f4085b;
            r52 += 4;
        }
        t0Var.t(r52);
        while (r02 < list.size()) {
            t0Var.E(Float.floatToRawIntBits(((Float) list.get(r02)).floatValue()));
            r02++;
        }
    }

    public static int s(int r12, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (t0.F(r12) * size) + o(list);
    }

    public static int t(int r12, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (t0.F(r12) * size) + u(list);
    }

    public static int u(List<Long> list) {
        int r22;
        int size = list.size();
        int r12 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof c2) {
            c2 c2Var = (c2) list;
            r22 = 0;
            while (r12 < size) {
                c2Var.m(r12);
                long j10 = c2Var.f3917b[r12];
                r22 += t0.H((j10 >> 63) ^ (j10 << 1));
                r12++;
            }
        } else {
            r22 = 0;
            while (r12 < size) {
                long jLongValue = list.get(r12).longValue();
                r22 += t0.H((jLongValue >> 63) ^ (jLongValue << 1));
                r12++;
            }
        }
        return r22;
    }

    public static void v(int r32, List list, u0 u0Var, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        t0 t0Var = u0Var.f4102a;
        int r02 = 0;
        if (!z10) {
            while (r02 < list.size()) {
                t0Var.j(r32, ((Long) list.get(r02)).longValue());
                r02++;
            }
            return;
        }
        t0Var.i(r32, 2);
        int r6 = 0;
        for (int r33 = 0; r33 < list.size(); r33++) {
            r6 += t0.H(((Long) list.get(r33)).longValue());
        }
        t0Var.t(r6);
        while (r02 < list.size()) {
            t0Var.p(((Long) list.get(r02)).longValue());
            r02++;
        }
    }

    public static int w(int r12, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (t0.F(r12) * size) + x(list);
    }

    public static int x(List<Integer> list) {
        int r22;
        int size = list.size();
        int r12 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof k1) {
            k1 k1Var = (k1) list;
            r22 = 0;
            while (r12 < size) {
                k1Var.m(r12);
                r22 += t0.J(k1Var.f4019b[r12]);
                r12++;
            }
        } else {
            r22 = 0;
            while (r12 < size) {
                r22 += t0.J(list.get(r12).intValue());
                r12++;
            }
        }
        return r22;
    }

    public static void y(int r32, List list, u0 u0Var, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        t0 t0Var = u0Var.f4102a;
        int r02 = 0;
        if (!z10) {
            while (r02 < list.size()) {
                t0Var.j(r32, ((Long) list.get(r02)).longValue());
                r02++;
            }
            return;
        }
        t0Var.i(r32, 2);
        int r6 = 0;
        for (int r33 = 0; r33 < list.size(); r33++) {
            r6 += t0.H(((Long) list.get(r33)).longValue());
        }
        t0Var.t(r6);
        while (r02 < list.size()) {
            t0Var.p(((Long) list.get(r02)).longValue());
            r02++;
        }
    }

    public static int z(int r12, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (t0.F(r12) * size) + A(list);
    }
}
