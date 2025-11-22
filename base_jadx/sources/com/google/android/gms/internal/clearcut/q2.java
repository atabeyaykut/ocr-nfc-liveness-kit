package com.google.android.gms.internal.clearcut;

import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.RandomAccess;
import java.util.logging.Logger;

/* loaded from: classes.dex */
public final class q2 {

    /* renamed from: a, reason: collision with root package name */
    public static final Class<?> f3269a;

    /* renamed from: b, reason: collision with root package name */
    public static final a3<?, ?> f3270b;

    /* renamed from: c, reason: collision with root package name */
    public static final a3<?, ?> f3271c;

    /* renamed from: d, reason: collision with root package name */
    public static final c3 f3272d;

    static {
        Class<?> cls;
        try {
            cls = Class.forName("com.google.protobuf.GeneratedMessage");
        } catch (Throwable unused) {
            cls = null;
        }
        f3269a = cls;
        f3270b = s(false);
        f3271c = s(true);
        f3272d = new c3();
    }

    public static void A(int r32, List list, f0 f0Var, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        e0 e0Var = f0Var.f3115a;
        int r02 = 0;
        if (!z10) {
            while (r02 < list.size()) {
                e0Var.C(r32, ((Long) list.get(r02)).longValue());
                r02++;
            }
            return;
        }
        e0Var.s(r32, 2);
        int r6 = 0;
        for (int r33 = 0; r33 < list.size(); r33++) {
            ((Long) list.get(r33)).longValue();
            Logger logger = e0.f3095b;
            r6 += 8;
        }
        e0Var.U(r6);
        while (r02 < list.size()) {
            e0Var.F(((Long) list.get(r02)).longValue());
            r02++;
        }
    }

    public static int B(List<?> list) {
        return list.size() << 2;
    }

    public static void C(int r22, List list, f0 f0Var, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        e0 e0Var = f0Var.f3115a;
        int r02 = 0;
        if (!z10) {
            while (r02 < list.size()) {
                e0Var.B(r22, ((Integer) list.get(r02)).intValue());
                r02++;
            }
            return;
        }
        e0Var.s(r22, 2);
        int r52 = 0;
        for (int r23 = 0; r23 < list.size(); r23++) {
            r52 += e0.X(((Integer) list.get(r23)).intValue());
        }
        e0Var.U(r52);
        while (r02 < list.size()) {
            e0Var.T(((Integer) list.get(r02)).intValue());
            r02++;
        }
    }

    public static int D(List<?> list) {
        return list.size() << 3;
    }

    public static void E(int r22, List list, f0 f0Var, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        e0 e0Var = f0Var.f3115a;
        int r02 = 0;
        if (!z10) {
            while (r02 < list.size()) {
                e0Var.E(r22, ((Integer) list.get(r02)).intValue());
                r02++;
            }
            return;
        }
        e0Var.s(r22, 2);
        int r52 = 0;
        for (int r23 = 0; r23 < list.size(); r23++) {
            r52 += e0.Y(((Integer) list.get(r23)).intValue());
        }
        e0Var.U(r52);
        while (r02 < list.size()) {
            e0Var.U(((Integer) list.get(r02)).intValue());
            r02++;
        }
    }

    public static int F(List<?> list) {
        return list.size();
    }

    public static void G(int r32, List list, f0 f0Var, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        e0 e0Var = f0Var.f3115a;
        int r02 = 0;
        if (!z10) {
            while (r02 < list.size()) {
                int r6 = ((Integer) list.get(r02)).intValue();
                e0Var.E(r32, (r6 >> 31) ^ (r6 << 1));
                r02++;
            }
            return;
        }
        e0Var.s(r32, 2);
        int r62 = 0;
        for (int r33 = 0; r33 < list.size(); r33++) {
            int r12 = ((Integer) list.get(r33)).intValue();
            r62 += e0.Y((r12 >> 31) ^ (r12 << 1));
        }
        e0Var.U(r62);
        while (r02 < list.size()) {
            int r34 = ((Integer) list.get(r02)).intValue();
            e0Var.U((r34 >> 31) ^ (r34 << 1));
            r02++;
        }
    }

    public static void H(int r22, List list, f0 f0Var, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        e0 e0Var = f0Var.f3115a;
        int r02 = 0;
        if (!z10) {
            while (r02 < list.size()) {
                e0Var.J(r22, ((Integer) list.get(r02)).intValue());
                r02++;
            }
            return;
        }
        e0Var.s(r22, 2);
        int r52 = 0;
        for (int r23 = 0; r23 < list.size(); r23++) {
            ((Integer) list.get(r23)).intValue();
            Logger logger = e0.f3095b;
            r52 += 4;
        }
        e0Var.U(r52);
        while (r02 < list.size()) {
            e0Var.V(((Integer) list.get(r02)).intValue());
            r02++;
        }
    }

    public static void I(int r22, List list, f0 f0Var, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        e0 e0Var = f0Var.f3115a;
        int r02 = 0;
        if (!z10) {
            while (r02 < list.size()) {
                e0Var.J(r22, ((Integer) list.get(r02)).intValue());
                r02++;
            }
            return;
        }
        e0Var.s(r22, 2);
        int r52 = 0;
        for (int r23 = 0; r23 < list.size(); r23++) {
            ((Integer) list.get(r23)).intValue();
            Logger logger = e0.f3095b;
            r52 += 4;
        }
        e0Var.U(r52);
        while (r02 < list.size()) {
            e0Var.V(((Integer) list.get(r02)).intValue());
            r02++;
        }
    }

    public static void J(int r22, List list, f0 f0Var, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        e0 e0Var = f0Var.f3115a;
        int r02 = 0;
        if (!z10) {
            while (r02 < list.size()) {
                e0Var.B(r22, ((Integer) list.get(r02)).intValue());
                r02++;
            }
            return;
        }
        e0Var.s(r22, 2);
        int r52 = 0;
        for (int r23 = 0; r23 < list.size(); r23++) {
            r52 += e0.X(((Integer) list.get(r23)).intValue());
        }
        e0Var.U(r52);
        while (r02 < list.size()) {
            e0Var.T(((Integer) list.get(r02)).intValue());
            r02++;
        }
    }

    public static void K(int r22, List list, f0 f0Var, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        e0 e0Var = f0Var.f3115a;
        int r02 = 0;
        if (!z10) {
            while (r02 < list.size()) {
                e0Var.v(r22, ((Boolean) list.get(r02)).booleanValue());
                r02++;
            }
            return;
        }
        e0Var.s(r22, 2);
        int r52 = 0;
        for (int r23 = 0; r23 < list.size(); r23++) {
            ((Boolean) list.get(r23)).booleanValue();
            Logger logger = e0.f3095b;
            r52++;
        }
        e0Var.U(r52);
        while (r02 < list.size()) {
            e0Var.i(((Boolean) list.get(r02)).booleanValue() ? (byte) 1 : (byte) 0);
            r02++;
        }
    }

    public static int L(int r12, List list) {
        if (list.size() == 0) {
            return 0;
        }
        return (e0.W(r12) * list.size()) + a(list);
    }

    public static int M(int r12, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (e0.W(r12) * size) + g(list);
    }

    public static int N(int r12, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (e0.W(r12) * size) + n(list);
    }

    public static int O(int r12, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (e0.W(r12) * size) + r(list);
    }

    public static int P(int r12, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (e0.W(r12) * size) + v(list);
    }

    public static int Q(int r12, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (e0.W(r12) * size) + x(list);
    }

    public static int R(int r12, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (e0.W(r12) * size) + z(list);
    }

    public static int S(int r02, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return e0.Q(r02) * size;
    }

    public static int T(int r02, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return e0.K(r02) * size;
    }

    public static int U(int r02, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return e0.y(r02) * size;
    }

    public static int a(List<Long> list) {
        int I;
        int size = list.size();
        int r12 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof n1) {
            n1 n1Var = (n1) list;
            I = 0;
            while (r12 < size) {
                n1Var.l(r12);
                I += e0.I(n1Var.f3238b[r12]);
                r12++;
            }
        } else {
            I = 0;
            while (r12 < size) {
                I += e0.I(list.get(r12).longValue());
                r12++;
            }
        }
        return I;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static Object b(int r52, a1 a1Var, z0 z0Var, b3 b3Var, a3 a3Var) {
        if (z0Var == null) {
            return b3Var;
        }
        if (a1Var instanceof RandomAccess) {
            int size = a1Var.size();
            int r22 = 0;
            for (int r12 = 0; r12 < size; r12++) {
                int r32 = ((Integer) a1Var.get(r12)).intValue();
                if (z0Var.j(r32) != null) {
                    if (r12 != r22) {
                        a1Var.set(r22, Integer.valueOf(r32));
                    }
                    r22++;
                } else {
                    if (b3Var == null) {
                        b3Var = a3Var.e();
                    }
                    a3Var.a(r52, r32, b3Var);
                }
            }
            if (r22 != size) {
                a1Var.subList(r22, size).clear();
            }
        } else {
            Iterator<E> it = a1Var.iterator();
            while (it.hasNext()) {
                int r02 = ((Integer) it.next()).intValue();
                if (z0Var.j(r02) == null) {
                    if (b3Var == null) {
                        b3Var = a3Var.e();
                    }
                    a3Var.a(r52, r02, b3Var);
                    it.remove();
                }
            }
        }
        return b3Var;
    }

    public static void c(int r42, List list, f0 f0Var) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        f0Var.getClass();
        boolean z10 = list instanceof j1;
        int r12 = 0;
        e0 e0Var = f0Var.f3115a;
        if (!z10) {
            while (r12 < list.size()) {
                e0Var.n(r42, (String) list.get(r12));
                r12++;
            }
            return;
        }
        j1 j1Var = (j1) list;
        while (r12 < list.size()) {
            Object objR = j1Var.r(r12);
            if (objR instanceof String) {
                e0Var.n(r42, (String) objR);
            } else {
                e0Var.k(r42, (x) objR);
            }
            r12++;
        }
    }

    public static void d(int r22, List list, f0 f0Var, o2 o2Var) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        f0Var.getClass();
        for (int r02 = 0; r02 < list.size(); r02++) {
            f0Var.e(r22, o2Var, list.get(r02));
        }
    }

    public static void e(int r32, List list, f0 f0Var, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        e0 e0Var = f0Var.f3115a;
        int r02 = 0;
        if (!z10) {
            while (r02 < list.size()) {
                double dDoubleValue = ((Double) list.get(r02)).doubleValue();
                e0Var.getClass();
                e0Var.C(r32, Double.doubleToRawLongBits(dDoubleValue));
                r02++;
            }
            return;
        }
        e0Var.s(r32, 2);
        int r6 = 0;
        for (int r33 = 0; r33 < list.size(); r33++) {
            ((Double) list.get(r33)).doubleValue();
            Logger logger = e0.f3095b;
            r6 += 8;
        }
        e0Var.U(r6);
        while (r02 < list.size()) {
            e0Var.F(Double.doubleToRawLongBits(((Double) list.get(r02)).doubleValue()));
            r02++;
        }
    }

    public static <T, FT extends q0<FT>> void f(j0<FT> j0Var, T t10, T t11) {
        s2 s2Var;
        n0<T> n0VarA = j0Var.a(t11);
        if (n0VarA.a()) {
            return;
        }
        n0<T> n0VarD = j0Var.d(t10);
        n0VarD.getClass();
        int r32 = 0;
        while (true) {
            s2Var = n0VarA.f3235a;
            if (r32 >= s2Var.e()) {
                break;
            }
            n0VarD.k(s2Var.c(r32));
            r32++;
        }
        Iterator<T> it = s2Var.f().iterator();
        while (it.hasNext()) {
            n0VarD.k((Map.Entry) it.next());
        }
    }

    public static int g(List<Long> list) {
        int I;
        int size = list.size();
        int r12 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof n1) {
            n1 n1Var = (n1) list;
            I = 0;
            while (r12 < size) {
                n1Var.l(r12);
                I += e0.I(n1Var.f3238b[r12]);
                r12++;
            }
        } else {
            I = 0;
            while (r12 < size) {
                I += e0.I(list.get(r12).longValue());
                r12++;
            }
        }
        return I;
    }

    public static void h(int r32, List list, f0 f0Var) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        f0Var.getClass();
        for (int r02 = 0; r02 < list.size(); r02++) {
            f0Var.f3115a.k(r32, (x) list.get(r02));
        }
    }

    public static void i(int r22, List list, f0 f0Var, o2 o2Var) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        f0Var.getClass();
        for (int r02 = 0; r02 < list.size(); r02++) {
            f0Var.h(r22, o2Var, list.get(r02));
        }
    }

    public static void j(int r22, List list, f0 f0Var, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        e0 e0Var = f0Var.f3115a;
        int r02 = 0;
        if (!z10) {
            while (r02 < list.size()) {
                float fFloatValue = ((Float) list.get(r02)).floatValue();
                e0Var.getClass();
                e0Var.J(r22, Float.floatToRawIntBits(fFloatValue));
                r02++;
            }
            return;
        }
        e0Var.s(r22, 2);
        int r52 = 0;
        for (int r23 = 0; r23 < list.size(); r23++) {
            ((Float) list.get(r23)).floatValue();
            Logger logger = e0.f3095b;
            r52 += 4;
        }
        e0Var.U(r52);
        while (r02 < list.size()) {
            e0Var.V(Float.floatToRawIntBits(((Float) list.get(r02)).floatValue()));
            r02++;
        }
    }

    public static int k(int r22, o2 o2Var, Object obj) {
        if (obj instanceof h1) {
            int r23 = e0.W(r22);
            int r32 = ((h1) obj).a();
            return e0.Y(r32) + r32 + r23;
        }
        int r24 = e0.W(r22);
        n nVar = (n) ((x1) obj);
        int r02 = nVar.d();
        if (r02 == -1) {
            r02 = o2Var.f(nVar);
            nVar.a(r02);
        }
        return e0.Y(r02) + r02 + r24;
    }

    public static int l(int r42, List<?> list) {
        int r32;
        int r33;
        int size = list.size();
        int r12 = 0;
        if (size == 0) {
            return 0;
        }
        int r43 = e0.W(r42) * size;
        if (list instanceof j1) {
            j1 j1Var = (j1) list;
            while (r12 < size) {
                Object objR = j1Var.r(r12);
                if (objR instanceof x) {
                    int size2 = ((x) objR).size();
                    r33 = e0.Y(size2) + size2;
                } else {
                    r33 = e0.O((String) objR);
                }
                r43 += r33;
                r12++;
            }
        } else {
            while (r12 < size) {
                Object obj = list.get(r12);
                if (obj instanceof x) {
                    int size3 = ((x) obj).size();
                    r32 = e0.Y(size3) + size3;
                } else {
                    r32 = e0.O((String) obj);
                }
                r43 += r32;
                r12++;
            }
        }
        return r43;
    }

    public static int m(int r52, List<?> list, o2 o2Var) {
        int r22;
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int r53 = e0.W(r52) * size;
        for (int r12 = 0; r12 < size; r12++) {
            Object obj = list.get(r12);
            if (obj instanceof h1) {
                r22 = e0.h((h1) obj);
            } else {
                n nVar = (n) ((x1) obj);
                int r32 = nVar.d();
                if (r32 == -1) {
                    r32 = o2Var.f(nVar);
                    nVar.a(r32);
                }
                r22 = e0.Y(r32) + r32;
            }
            r53 += r22;
        }
        return r53;
    }

    public static int n(List<Long> list) {
        int I;
        int size = list.size();
        int r12 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof n1) {
            n1 n1Var = (n1) list;
            I = 0;
            while (r12 < size) {
                n1Var.l(r12);
                long j10 = n1Var.f3238b[r12];
                I += e0.I((j10 >> 63) ^ (j10 << 1));
                r12++;
            }
        } else {
            I = 0;
            while (r12 < size) {
                long jLongValue = list.get(r12).longValue();
                I += e0.I((jLongValue >> 63) ^ (jLongValue << 1));
                r12++;
            }
        }
        return I;
    }

    public static void o(int r32, List list, f0 f0Var, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        e0 e0Var = f0Var.f3115a;
        int r02 = 0;
        if (!z10) {
            while (r02 < list.size()) {
                e0Var.j(r32, ((Long) list.get(r02)).longValue());
                r02++;
            }
            return;
        }
        e0Var.s(r32, 2);
        int I = 0;
        for (int r33 = 0; r33 < list.size(); r33++) {
            I += e0.I(((Long) list.get(r33)).longValue());
        }
        e0Var.U(I);
        while (r02 < list.size()) {
            e0Var.w(((Long) list.get(r02)).longValue());
            r02++;
        }
    }

    public static int p(int r32, List<x> list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int r33 = e0.W(r32) * size;
        for (int r12 = 0; r12 < list.size(); r12++) {
            int size2 = list.get(r12).size();
            r33 += e0.Y(size2) + size2;
        }
        return r33;
    }

    public static int q(int r42, List<x1> list, o2 o2Var) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int r22 = 0;
        for (int r12 = 0; r12 < size; r12++) {
            r22 += e0.A(r42, list.get(r12), o2Var);
        }
        return r22;
    }

    public static int r(List<Integer> list) {
        int r22;
        int size = list.size();
        int r12 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof w0) {
            w0 w0Var = (w0) list;
            r22 = 0;
            while (r12 < size) {
                w0Var.m(r12);
                r22 += e0.X(w0Var.f3333b[r12]);
                r12++;
            }
        } else {
            r22 = 0;
            while (r12 < size) {
                r22 += e0.X(list.get(r12).intValue());
                r12++;
            }
        }
        return r22;
    }

    public static a3<?, ?> s(boolean z10) {
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
            return (a3) cls.getConstructor(Boolean.TYPE).newInstance(Boolean.valueOf(z10));
        } catch (Throwable unused2) {
            return null;
        }
    }

    public static void t(int r32, List list, f0 f0Var, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        e0 e0Var = f0Var.f3115a;
        int r02 = 0;
        if (!z10) {
            while (r02 < list.size()) {
                e0Var.j(r32, ((Long) list.get(r02)).longValue());
                r02++;
            }
            return;
        }
        e0Var.s(r32, 2);
        int I = 0;
        for (int r33 = 0; r33 < list.size(); r33++) {
            I += e0.I(((Long) list.get(r33)).longValue());
        }
        e0Var.U(I);
        while (r02 < list.size()) {
            e0Var.w(((Long) list.get(r02)).longValue());
            r02++;
        }
    }

    public static boolean u(Object obj, Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }

    public static int v(List<Integer> list) {
        int r22;
        int size = list.size();
        int r12 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof w0) {
            w0 w0Var = (w0) list;
            r22 = 0;
            while (r12 < size) {
                w0Var.m(r12);
                r22 += e0.X(w0Var.f3333b[r12]);
                r12++;
            }
        } else {
            r22 = 0;
            while (r12 < size) {
                r22 += e0.X(list.get(r12).intValue());
                r12++;
            }
        }
        return r22;
    }

    public static void w(int r72, List list, f0 f0Var, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        e0 e0Var = f0Var.f3115a;
        int r12 = 0;
        if (!z10) {
            while (r12 < list.size()) {
                long jLongValue = ((Long) list.get(r12)).longValue();
                e0Var.j(r72, (jLongValue >> 63) ^ (jLongValue << 1));
                r12++;
            }
            return;
        }
        e0Var.s(r72, 2);
        int I = 0;
        for (int r73 = 0; r73 < list.size(); r73++) {
            long jLongValue2 = ((Long) list.get(r73)).longValue();
            I += e0.I((jLongValue2 >> 63) ^ (jLongValue2 << 1));
        }
        e0Var.U(I);
        while (r12 < list.size()) {
            long jLongValue3 = ((Long) list.get(r12)).longValue();
            e0Var.w((jLongValue3 >> 63) ^ (jLongValue3 << 1));
            r12++;
        }
    }

    public static int x(List<Integer> list) {
        int r22;
        int size = list.size();
        int r12 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof w0) {
            w0 w0Var = (w0) list;
            r22 = 0;
            while (r12 < size) {
                w0Var.m(r12);
                r22 += e0.Y(w0Var.f3333b[r12]);
                r12++;
            }
        } else {
            r22 = 0;
            while (r12 < size) {
                r22 += e0.Y(list.get(r12).intValue());
                r12++;
            }
        }
        return r22;
    }

    public static void y(int r32, List list, f0 f0Var, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        e0 e0Var = f0Var.f3115a;
        int r02 = 0;
        if (!z10) {
            while (r02 < list.size()) {
                e0Var.C(r32, ((Long) list.get(r02)).longValue());
                r02++;
            }
            return;
        }
        e0Var.s(r32, 2);
        int r6 = 0;
        for (int r33 = 0; r33 < list.size(); r33++) {
            ((Long) list.get(r33)).longValue();
            Logger logger = e0.f3095b;
            r6 += 8;
        }
        e0Var.U(r6);
        while (r02 < list.size()) {
            e0Var.F(((Long) list.get(r02)).longValue());
            r02++;
        }
    }

    public static int z(List<Integer> list) {
        int r22;
        int size = list.size();
        int r12 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof w0) {
            w0 w0Var = (w0) list;
            r22 = 0;
            while (r12 < size) {
                w0Var.m(r12);
                int r32 = w0Var.f3333b[r12];
                r22 += e0.Y((r32 >> 31) ^ (r32 << 1));
                r12++;
            }
        } else {
            r22 = 0;
            while (r12 < size) {
                int r33 = list.get(r12).intValue();
                r22 += e0.Y((r33 >> 31) ^ (r33 << 1));
                r12++;
            }
        }
        return r22;
    }
}
