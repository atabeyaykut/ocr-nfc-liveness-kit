package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.RandomAccess;

/* loaded from: classes.dex */
public final class e8 {

    /* renamed from: a, reason: collision with root package name */
    public static final Class<?> f3459a;

    /* renamed from: b, reason: collision with root package name */
    public static final o8<?, ?> f3460b;

    /* renamed from: c, reason: collision with root package name */
    public static final o8<?, ?> f3461c;

    /* renamed from: d, reason: collision with root package name */
    public static final q8 f3462d;

    static {
        Class<?> cls;
        try {
            cls = Class.forName("com.google.protobuf.GeneratedMessage");
        } catch (Throwable unused) {
            cls = null;
        }
        f3459a = cls;
        f3460b = v(false);
        f3461c = v(true);
        f3462d = new q8();
    }

    public static int A(int r02, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (z5.G(r02 << 3) + 4) * size;
    }

    public static int B(List<?> list) {
        return list.size() * 4;
    }

    public static int C(int r02, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (z5.G(r02 << 3) + 8) * size;
    }

    public static int D(List<?> list) {
        return list.size() * 8;
    }

    public static int E(int r42, List<s7> list, d8 d8Var) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int r22 = 0;
        for (int r12 = 0; r12 < size; r12++) {
            r22 += z5.X(r42, list.get(r12), d8Var);
        }
        return r22;
    }

    public static int F(int r12, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (z5.a0(r12) * size) + G(list);
    }

    public static int G(List<Integer> list) {
        int r22;
        int size = list.size();
        int r12 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof r6) {
            r6 r6Var = (r6) list;
            r22 = 0;
            while (r12 < size) {
                r6Var.o(r12);
                r22 += z5.Y(r6Var.f3715b[r12]);
                r12++;
            }
        } else {
            r22 = 0;
            while (r12 < size) {
                r22 += z5.Y(list.get(r12).intValue());
                r12++;
            }
        }
        return r22;
    }

    public static int H(int r12, List list) {
        if (list.size() == 0) {
            return 0;
        }
        return (z5.a0(r12) * list.size()) + I(list);
    }

    public static int I(List<Long> list) {
        int r22;
        int size = list.size();
        int r12 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof h7) {
            h7 h7Var = (h7) list;
            r22 = 0;
            while (r12 < size) {
                h7Var.o(r12);
                r22 += z5.H(h7Var.f3536b[r12]);
                r12++;
            }
        } else {
            r22 = 0;
            while (r12 < size) {
                r22 += z5.H(list.get(r12).longValue());
                r12++;
            }
        }
        return r22;
    }

    public static int J(int r22, d8 d8Var, Object obj) {
        if (obj instanceof b7) {
            b7 b7Var = (b7) obj;
            int r23 = z5.G(r22 << 3);
            int length = b7Var.f3396b != null ? ((u5) b7Var.f3396b).f3786c.length : b7Var.f3395a != null ? b7Var.f3395a.g() : 0;
            return z5.G(length) + length + r23;
        }
        int r24 = z5.G(r22 << 3);
        l5 l5Var = (l5) ((s7) obj);
        int r02 = l5Var.a();
        if (r02 == -1) {
            r02 = d8Var.c(l5Var);
            l5Var.h(r02);
        }
        return z5.G(r02) + r02 + r24;
    }

    public static int K(int r6, List<?> list, d8 d8Var) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int r62 = z5.a0(r6) * size;
        for (int r22 = 0; r22 < size; r22++) {
            Object obj = list.get(r22);
            if (obj instanceof b7) {
                b7 b7Var = (b7) obj;
                int length = b7Var.f3396b != null ? ((u5) b7Var.f3396b).f3786c.length : b7Var.f3395a != null ? b7Var.f3395a.g() : 0;
                r62 = z5.G(length) + length + r62;
            } else {
                l5 l5Var = (l5) ((s7) obj);
                int r42 = l5Var.a();
                if (r42 == -1) {
                    r42 = d8Var.c(l5Var);
                    l5Var.h(r42);
                }
                r62 = z5.G(r42) + r42 + r62;
            }
        }
        return r62;
    }

    public static int L(int r12, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (z5.a0(r12) * size) + M(list);
    }

    public static int M(List<Integer> list) {
        int r22;
        int size = list.size();
        int r12 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof r6) {
            r6 r6Var = (r6) list;
            r22 = 0;
            while (r12 < size) {
                r6Var.o(r12);
                int r32 = r6Var.f3715b[r12];
                r22 += z5.G((r32 >> 31) ^ (r32 + r32));
                r12++;
            }
        } else {
            r22 = 0;
            while (r12 < size) {
                int r33 = list.get(r12).intValue();
                r22 += z5.G((r33 >> 31) ^ (r33 + r33));
                r12++;
            }
        }
        return r22;
    }

    public static int N(int r12, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (z5.a0(r12) * size) + O(list);
    }

    public static int O(List<Long> list) {
        int r22;
        int size = list.size();
        int r12 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof h7) {
            h7 h7Var = (h7) list;
            r22 = 0;
            while (r12 < size) {
                h7Var.o(r12);
                long j10 = h7Var.f3536b[r12];
                r22 += z5.H((j10 >> 63) ^ (j10 + j10));
                r12++;
            }
        } else {
            r22 = 0;
            while (r12 < size) {
                long jLongValue = list.get(r12).longValue();
                r22 += z5.H((jLongValue >> 63) ^ (jLongValue + jLongValue));
                r12++;
            }
        }
        return r22;
    }

    public static int P(int r42, List<?> list) {
        int r32;
        int r33;
        int size = list.size();
        int r12 = 0;
        if (size == 0) {
            return 0;
        }
        int r43 = z5.a0(r42) * size;
        if (list instanceof d7) {
            d7 d7Var = (d7) list;
            while (r12 < size) {
                Object objJ = d7Var.J(r12);
                if (objJ instanceof v5) {
                    int r22 = ((v5) objJ).m();
                    r33 = z5.G(r22) + r22;
                } else {
                    r33 = z5.Z((String) objJ);
                }
                r43 += r33;
                r12++;
            }
        } else {
            while (r12 < size) {
                Object obj = list.get(r12);
                if (obj instanceof v5) {
                    int r23 = ((v5) obj).m();
                    r32 = z5.G(r23) + r23;
                } else {
                    r32 = z5.Z((String) obj);
                }
                r43 += r32;
                r12++;
            }
        }
        return r43;
    }

    public static int Q(int r12, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (z5.a0(r12) * size) + R(list);
    }

    public static int R(List<Integer> list) {
        int r22;
        int size = list.size();
        int r12 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof r6) {
            r6 r6Var = (r6) list;
            r22 = 0;
            while (r12 < size) {
                r6Var.o(r12);
                r22 += z5.G(r6Var.f3715b[r12]);
                r12++;
            }
        } else {
            r22 = 0;
            while (r12 < size) {
                r22 += z5.G(list.get(r12).intValue());
                r12++;
            }
        }
        return r22;
    }

    public static int S(int r12, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (z5.a0(r12) * size) + T(list);
    }

    public static int T(List<Long> list) {
        int r22;
        int size = list.size();
        int r12 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof h7) {
            h7 h7Var = (h7) list;
            r22 = 0;
            while (r12 < size) {
                h7Var.o(r12);
                r22 += z5.H(h7Var.f3536b[r12]);
                r12++;
            }
        } else {
            r22 = 0;
            while (r12 < size) {
                r22 += z5.H(list.get(r12).longValue());
                r12++;
            }
        }
        return r22;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static Object a(int r52, w6 w6Var, t6 t6Var, p8 p8Var, o8 o8Var) {
        if (t6Var == null) {
            return p8Var;
        }
        if (w6Var instanceof RandomAccess) {
            int size = w6Var.size();
            int r22 = 0;
            for (int r12 = 0; r12 < size; r12++) {
                int r32 = ((Integer) w6Var.get(r12)).intValue();
                if (t6Var.f(r32)) {
                    if (r12 != r22) {
                        w6Var.set(r22, Integer.valueOf(r32));
                    }
                    r22++;
                } else {
                    if (p8Var == null) {
                        p8Var = o8Var.e();
                    }
                    o8Var.f(r52, r32, p8Var);
                }
            }
            if (r22 != size) {
                w6Var.subList(r22, size).clear();
                return p8Var;
            }
        } else {
            Iterator<E> it = w6Var.iterator();
            while (it.hasNext()) {
                int r02 = ((Integer) it.next()).intValue();
                if (!t6Var.f(r02)) {
                    if (p8Var == null) {
                        p8Var = o8Var.e();
                    }
                    o8Var.f(r52, r02, p8Var);
                    it.remove();
                }
            }
        }
        return p8Var;
    }

    public static boolean b(Object obj, Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }

    public static void c(int r22, List<Boolean> list, a6 a6Var, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        z5 z5Var = a6Var.f3361a;
        int r02 = 0;
        if (!z10) {
            while (r02 < list.size()) {
                z5Var.J(r22, list.get(r02).booleanValue());
                r02++;
            }
            return;
        }
        z5Var.S(r22, 2);
        int r52 = 0;
        for (int r23 = 0; r23 < list.size(); r23++) {
            list.get(r23).booleanValue();
            r52++;
        }
        z5Var.U(r52);
        while (r02 < list.size()) {
            z5Var.I(list.get(r02).booleanValue() ? (byte) 1 : (byte) 0);
            r02++;
        }
    }

    public static void d(int r32, List<v5> list, a6 a6Var) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        a6Var.getClass();
        for (int r02 = 0; r02 < list.size(); r02++) {
            a6Var.f3361a.K(r32, list.get(r02));
        }
    }

    public static void e(int r32, List<Double> list, a6 a6Var, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        z5 z5Var = a6Var.f3361a;
        int r02 = 0;
        if (!z10) {
            while (r02 < list.size()) {
                z5Var.N(r32, Double.doubleToRawLongBits(list.get(r02).doubleValue()));
                r02++;
            }
            return;
        }
        z5Var.S(r32, 2);
        int r6 = 0;
        for (int r33 = 0; r33 < list.size(); r33++) {
            list.get(r33).doubleValue();
            r6 += 8;
        }
        z5Var.U(r6);
        while (r02 < list.size()) {
            z5Var.O(Double.doubleToRawLongBits(list.get(r02).doubleValue()));
            r02++;
        }
    }

    public static void f(int r22, List<Integer> list, a6 a6Var, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        z5 z5Var = a6Var.f3361a;
        int r02 = 0;
        if (!z10) {
            while (r02 < list.size()) {
                z5Var.P(r22, list.get(r02).intValue());
                r02++;
            }
            return;
        }
        z5Var.S(r22, 2);
        int r52 = 0;
        for (int r23 = 0; r23 < list.size(); r23++) {
            r52 += z5.Y(list.get(r23).intValue());
        }
        z5Var.U(r52);
        while (r02 < list.size()) {
            z5Var.Q(list.get(r02).intValue());
            r02++;
        }
    }

    public static void g(int r22, List<Integer> list, a6 a6Var, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        z5 z5Var = a6Var.f3361a;
        int r02 = 0;
        if (!z10) {
            while (r02 < list.size()) {
                z5Var.L(r22, list.get(r02).intValue());
                r02++;
            }
            return;
        }
        z5Var.S(r22, 2);
        int r52 = 0;
        for (int r23 = 0; r23 < list.size(); r23++) {
            list.get(r23).intValue();
            r52 += 4;
        }
        z5Var.U(r52);
        while (r02 < list.size()) {
            z5Var.M(list.get(r02).intValue());
            r02++;
        }
    }

    public static void h(int r32, List<Long> list, a6 a6Var, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        z5 z5Var = a6Var.f3361a;
        int r02 = 0;
        if (!z10) {
            while (r02 < list.size()) {
                z5Var.N(r32, list.get(r02).longValue());
                r02++;
            }
            return;
        }
        z5Var.S(r32, 2);
        int r6 = 0;
        for (int r33 = 0; r33 < list.size(); r33++) {
            list.get(r33).longValue();
            r6 += 8;
        }
        z5Var.U(r6);
        while (r02 < list.size()) {
            z5Var.O(list.get(r02).longValue());
            r02++;
        }
    }

    public static void i(int r22, List<Float> list, a6 a6Var, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        z5 z5Var = a6Var.f3361a;
        int r02 = 0;
        if (!z10) {
            while (r02 < list.size()) {
                z5Var.L(r22, Float.floatToRawIntBits(list.get(r02).floatValue()));
                r02++;
            }
            return;
        }
        z5Var.S(r22, 2);
        int r52 = 0;
        for (int r23 = 0; r23 < list.size(); r23++) {
            list.get(r23).floatValue();
            r52 += 4;
        }
        z5Var.U(r52);
        while (r02 < list.size()) {
            z5Var.M(Float.floatToRawIntBits(list.get(r02).floatValue()));
            r02++;
        }
    }

    public static void j(int r22, List<?> list, a6 a6Var, d8 d8Var) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        for (int r02 = 0; r02 < list.size(); r02++) {
            a6Var.l(r22, d8Var, list.get(r02));
        }
    }

    public static void k(int r22, List<Integer> list, a6 a6Var, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        z5 z5Var = a6Var.f3361a;
        int r02 = 0;
        if (!z10) {
            while (r02 < list.size()) {
                z5Var.P(r22, list.get(r02).intValue());
                r02++;
            }
            return;
        }
        z5Var.S(r22, 2);
        int r52 = 0;
        for (int r23 = 0; r23 < list.size(); r23++) {
            r52 += z5.Y(list.get(r23).intValue());
        }
        z5Var.U(r52);
        while (r02 < list.size()) {
            z5Var.Q(list.get(r02).intValue());
            r02++;
        }
    }

    public static void l(int r32, List<Long> list, a6 a6Var, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        z5 z5Var = a6Var.f3361a;
        int r02 = 0;
        if (!z10) {
            while (r02 < list.size()) {
                z5Var.V(r32, list.get(r02).longValue());
                r02++;
            }
            return;
        }
        z5Var.S(r32, 2);
        int r6 = 0;
        for (int r33 = 0; r33 < list.size(); r33++) {
            r6 += z5.H(list.get(r33).longValue());
        }
        z5Var.U(r6);
        while (r02 < list.size()) {
            z5Var.W(list.get(r02).longValue());
            r02++;
        }
    }

    public static void m(int r22, List<?> list, a6 a6Var, d8 d8Var) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        for (int r02 = 0; r02 < list.size(); r02++) {
            a6Var.o(r22, d8Var, list.get(r02));
        }
    }

    public static void n(int r22, List<Integer> list, a6 a6Var, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        z5 z5Var = a6Var.f3361a;
        int r02 = 0;
        if (!z10) {
            while (r02 < list.size()) {
                z5Var.L(r22, list.get(r02).intValue());
                r02++;
            }
            return;
        }
        z5Var.S(r22, 2);
        int r52 = 0;
        for (int r23 = 0; r23 < list.size(); r23++) {
            list.get(r23).intValue();
            r52 += 4;
        }
        z5Var.U(r52);
        while (r02 < list.size()) {
            z5Var.M(list.get(r02).intValue());
            r02++;
        }
    }

    public static void o(int r32, List<Long> list, a6 a6Var, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        z5 z5Var = a6Var.f3361a;
        int r02 = 0;
        if (!z10) {
            while (r02 < list.size()) {
                z5Var.N(r32, list.get(r02).longValue());
                r02++;
            }
            return;
        }
        z5Var.S(r32, 2);
        int r6 = 0;
        for (int r33 = 0; r33 < list.size(); r33++) {
            list.get(r33).longValue();
            r6 += 8;
        }
        z5Var.U(r6);
        while (r02 < list.size()) {
            z5Var.O(list.get(r02).longValue());
            r02++;
        }
    }

    public static void p(int r32, List<Integer> list, a6 a6Var, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        z5 z5Var = a6Var.f3361a;
        int r02 = 0;
        if (!z10) {
            while (r02 < list.size()) {
                int r6 = list.get(r02).intValue();
                z5Var.T(r32, (r6 >> 31) ^ (r6 + r6));
                r02++;
            }
            return;
        }
        z5Var.S(r32, 2);
        int r62 = 0;
        for (int r33 = 0; r33 < list.size(); r33++) {
            int r12 = list.get(r33).intValue();
            r62 += z5.G((r12 >> 31) ^ (r12 + r12));
        }
        z5Var.U(r62);
        while (r02 < list.size()) {
            int r34 = list.get(r02).intValue();
            z5Var.U((r34 >> 31) ^ (r34 + r34));
            r02++;
        }
    }

    public static void q(int r6, List<Long> list, a6 a6Var, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        z5 z5Var = a6Var.f3361a;
        int r02 = 0;
        if (!z10) {
            while (r02 < list.size()) {
                long jLongValue = list.get(r02).longValue();
                z5Var.V(r6, (jLongValue >> 63) ^ (jLongValue + jLongValue));
                r02++;
            }
            return;
        }
        z5Var.S(r6, 2);
        int r92 = 0;
        for (int r62 = 0; r62 < list.size(); r62++) {
            long jLongValue2 = list.get(r62).longValue();
            r92 += z5.H((jLongValue2 >> 63) ^ (jLongValue2 + jLongValue2));
        }
        z5Var.U(r92);
        while (r02 < list.size()) {
            long jLongValue3 = list.get(r02).longValue();
            z5Var.W((jLongValue3 >> 63) ^ (jLongValue3 + jLongValue3));
            r02++;
        }
    }

    public static void r(int r42, List<String> list, a6 a6Var) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        a6Var.getClass();
        boolean z10 = list instanceof d7;
        int r12 = 0;
        z5 z5Var = a6Var.f3361a;
        if (!z10) {
            while (r12 < list.size()) {
                z5Var.R(r42, list.get(r12));
                r12++;
            }
            return;
        }
        d7 d7Var = (d7) list;
        while (r12 < list.size()) {
            Object objJ = d7Var.J(r12);
            if (objJ instanceof String) {
                z5Var.R(r42, (String) objJ);
            } else {
                z5Var.K(r42, (v5) objJ);
            }
            r12++;
        }
    }

    public static void s(int r22, List<Integer> list, a6 a6Var, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        z5 z5Var = a6Var.f3361a;
        int r02 = 0;
        if (!z10) {
            while (r02 < list.size()) {
                z5Var.T(r22, list.get(r02).intValue());
                r02++;
            }
            return;
        }
        z5Var.S(r22, 2);
        int r52 = 0;
        for (int r23 = 0; r23 < list.size(); r23++) {
            r52 += z5.G(list.get(r23).intValue());
        }
        z5Var.U(r52);
        while (r02 < list.size()) {
            z5Var.U(list.get(r02).intValue());
            r02++;
        }
    }

    public static int t(int r02, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (z5.G(r02 << 3) + 1) * size;
    }

    public static void u(int r32, List<Long> list, a6 a6Var, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        z5 z5Var = a6Var.f3361a;
        int r02 = 0;
        if (!z10) {
            while (r02 < list.size()) {
                z5Var.V(r32, list.get(r02).longValue());
                r02++;
            }
            return;
        }
        z5Var.S(r32, 2);
        int r6 = 0;
        for (int r33 = 0; r33 < list.size(); r33++) {
            r6 += z5.H(list.get(r33).longValue());
        }
        z5Var.U(r6);
        while (r02 < list.size()) {
            z5Var.W(list.get(r02).longValue());
            r02++;
        }
    }

    public static o8<?, ?> v(boolean z10) {
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
            return (o8) cls.getConstructor(Boolean.TYPE).newInstance(Boolean.valueOf(z10));
        } catch (Throwable unused2) {
            return null;
        }
    }

    public static int w(List<?> list) {
        return list.size();
    }

    public static int x(int r32, List<v5> list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int r33 = z5.a0(r32) * size;
        for (int r12 = 0; r12 < list.size(); r12++) {
            int r02 = list.get(r12).m();
            r33 += z5.G(r02) + r02;
        }
        return r33;
    }

    public static int y(int r12, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (z5.a0(r12) * size) + z(list);
    }

    public static int z(List<Integer> list) {
        int r22;
        int size = list.size();
        int r12 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof r6) {
            r6 r6Var = (r6) list;
            r22 = 0;
            while (r12 < size) {
                r6Var.o(r12);
                r22 += z5.Y(r6Var.f3715b[r12]);
                r12++;
            }
        } else {
            r22 = 0;
            while (r12 < size) {
                r22 += z5.Y(list.get(r12).intValue());
                r12++;
            }
        }
        return r22;
    }
}
