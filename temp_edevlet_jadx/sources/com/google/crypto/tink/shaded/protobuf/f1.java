package com.google.crypto.tink.shaded.protobuf;

import com.google.crypto.tink.shaded.protobuf.t;
import com.google.crypto.tink.shaded.protobuf.z;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.RandomAccess;
import java.util.logging.Logger;

/* loaded from: classes2.dex */
public final class f1 {

    /* renamed from: a, reason: collision with root package name */
    public static final Class<?> f4259a;

    /* renamed from: b, reason: collision with root package name */
    public static final j1<?, ?> f4260b;

    /* renamed from: c, reason: collision with root package name */
    public static final j1<?, ?> f4261c;

    /* renamed from: d, reason: collision with root package name */
    public static final l1 f4262d;

    static {
        Class<?> cls;
        try {
            cls = Class.forName("com.google.crypto.tink.shaded.protobuf.GeneratedMessageV3");
        } catch (Throwable unused) {
            cls = null;
        }
        f4259a = cls;
        f4260b = A(false);
        f4261c = A(true);
        f4262d = new l1();
    }

    public static j1<?, ?> A(boolean z10) {
        Class<?> cls;
        try {
            cls = Class.forName("com.google.crypto.tink.shaded.protobuf.UnknownFieldSetSchema");
        } catch (Throwable unused) {
            cls = null;
        }
        if (cls == null) {
            return null;
        }
        try {
            return (j1) cls.getConstructor(Boolean.TYPE).newInstance(Boolean.valueOf(z10));
        } catch (Throwable unused2) {
            return null;
        }
    }

    public static <T, FT extends t.a<FT>> void B(q<FT> qVar, T t10, T t11) {
        h1<T, Object> h1Var;
        t<T> tVarC = qVar.c(t11);
        if (tVarC.i()) {
            return;
        }
        t<T> tVarD = qVar.d(t10);
        tVarD.getClass();
        int r32 = 0;
        while (true) {
            h1Var = tVarC.f4359a;
            if (r32 >= h1Var.d()) {
                break;
            }
            tVarD.m(h1Var.c(r32));
            r32++;
        }
        Iterator<T> it = h1Var.e().iterator();
        while (it.hasNext()) {
            tVarD.m((Map.Entry) it.next());
        }
    }

    public static boolean C(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    public static <UT, UB> UB D(int r22, int r32, UB ub2, j1<UT, UB> j1Var) {
        if (ub2 == null) {
            ub2 = (UB) j1Var.m();
        }
        j1Var.e(r22, r32, ub2);
        return ub2;
    }

    public static void E(int r22, List list, m mVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        l lVar = mVar.f4320a;
        int r02 = 0;
        if (!z10) {
            while (r02 < list.size()) {
                lVar.z(r22, ((Boolean) list.get(r02)).booleanValue());
                r02++;
            }
            return;
        }
        lVar.L(r22, 2);
        int r52 = 0;
        for (int r23 = 0; r23 < list.size(); r23++) {
            ((Boolean) list.get(r23)).booleanValue();
            Logger logger = l.f4315b;
            r52++;
        }
        lVar.N(r52);
        while (r02 < list.size()) {
            lVar.y(((Boolean) list.get(r02)).booleanValue() ? (byte) 1 : (byte) 0);
            r02++;
        }
    }

    public static void F(int r32, List list, m mVar) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        mVar.getClass();
        for (int r02 = 0; r02 < list.size(); r02++) {
            mVar.f4320a.A(r32, (i) list.get(r02));
        }
    }

    public static void G(int r32, List list, m mVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        l lVar = mVar.f4320a;
        int r02 = 0;
        if (!z10) {
            while (r02 < list.size()) {
                double dDoubleValue = ((Double) list.get(r02)).doubleValue();
                lVar.getClass();
                lVar.D(r32, Double.doubleToRawLongBits(dDoubleValue));
                r02++;
            }
            return;
        }
        lVar.L(r32, 2);
        int r6 = 0;
        for (int r33 = 0; r33 < list.size(); r33++) {
            ((Double) list.get(r33)).doubleValue();
            Logger logger = l.f4315b;
            r6 += 8;
        }
        lVar.N(r6);
        while (r02 < list.size()) {
            lVar.E(Double.doubleToRawLongBits(((Double) list.get(r02)).doubleValue()));
            r02++;
        }
    }

    public static void H(int r22, List list, m mVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        l lVar = mVar.f4320a;
        int r02 = 0;
        if (!z10) {
            while (r02 < list.size()) {
                lVar.F(r22, ((Integer) list.get(r02)).intValue());
                r02++;
            }
            return;
        }
        lVar.L(r22, 2);
        int r52 = 0;
        for (int r23 = 0; r23 < list.size(); r23++) {
            r52 += l.k(((Integer) list.get(r23)).intValue());
        }
        lVar.N(r52);
        while (r02 < list.size()) {
            lVar.G(((Integer) list.get(r02)).intValue());
            r02++;
        }
    }

    public static void I(int r22, List list, m mVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        l lVar = mVar.f4320a;
        int r02 = 0;
        if (!z10) {
            while (r02 < list.size()) {
                lVar.B(r22, ((Integer) list.get(r02)).intValue());
                r02++;
            }
            return;
        }
        lVar.L(r22, 2);
        int r52 = 0;
        for (int r23 = 0; r23 < list.size(); r23++) {
            ((Integer) list.get(r23)).intValue();
            Logger logger = l.f4315b;
            r52 += 4;
        }
        lVar.N(r52);
        while (r02 < list.size()) {
            lVar.C(((Integer) list.get(r02)).intValue());
            r02++;
        }
    }

    public static void J(int r32, List list, m mVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        l lVar = mVar.f4320a;
        int r02 = 0;
        if (!z10) {
            while (r02 < list.size()) {
                lVar.D(r32, ((Long) list.get(r02)).longValue());
                r02++;
            }
            return;
        }
        lVar.L(r32, 2);
        int r6 = 0;
        for (int r33 = 0; r33 < list.size(); r33++) {
            ((Long) list.get(r33)).longValue();
            Logger logger = l.f4315b;
            r6 += 8;
        }
        lVar.N(r6);
        while (r02 < list.size()) {
            lVar.E(((Long) list.get(r02)).longValue());
            r02++;
        }
    }

    public static void K(int r22, List list, m mVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        l lVar = mVar.f4320a;
        int r02 = 0;
        if (!z10) {
            while (r02 < list.size()) {
                float fFloatValue = ((Float) list.get(r02)).floatValue();
                lVar.getClass();
                lVar.B(r22, Float.floatToRawIntBits(fFloatValue));
                r02++;
            }
            return;
        }
        lVar.L(r22, 2);
        int r52 = 0;
        for (int r23 = 0; r23 < list.size(); r23++) {
            ((Float) list.get(r23)).floatValue();
            Logger logger = l.f4315b;
            r52 += 4;
        }
        lVar.N(r52);
        while (r02 < list.size()) {
            lVar.C(Float.floatToRawIntBits(((Float) list.get(r02)).floatValue()));
            r02++;
        }
    }

    public static void L(int r22, List list, m mVar, e1 e1Var) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        mVar.getClass();
        for (int r02 = 0; r02 < list.size(); r02++) {
            mVar.h(r22, e1Var, list.get(r02));
        }
    }

    public static void M(int r22, List list, m mVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        l lVar = mVar.f4320a;
        int r02 = 0;
        if (!z10) {
            while (r02 < list.size()) {
                lVar.F(r22, ((Integer) list.get(r02)).intValue());
                r02++;
            }
            return;
        }
        lVar.L(r22, 2);
        int r52 = 0;
        for (int r23 = 0; r23 < list.size(); r23++) {
            r52 += l.k(((Integer) list.get(r23)).intValue());
        }
        lVar.N(r52);
        while (r02 < list.size()) {
            lVar.G(((Integer) list.get(r02)).intValue());
            r02++;
        }
    }

    public static void N(int r32, List list, m mVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        l lVar = mVar.f4320a;
        int r02 = 0;
        if (!z10) {
            while (r02 < list.size()) {
                lVar.O(r32, ((Long) list.get(r02)).longValue());
                r02++;
            }
            return;
        }
        lVar.L(r32, 2);
        int r6 = 0;
        for (int r33 = 0; r33 < list.size(); r33++) {
            r6 += l.x(((Long) list.get(r33)).longValue());
        }
        lVar.N(r6);
        while (r02 < list.size()) {
            lVar.P(((Long) list.get(r02)).longValue());
            r02++;
        }
    }

    public static void O(int r22, List list, m mVar, e1 e1Var) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        mVar.getClass();
        for (int r02 = 0; r02 < list.size(); r02++) {
            mVar.k(r22, e1Var, list.get(r02));
        }
    }

    public static void P(int r22, List list, m mVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        l lVar = mVar.f4320a;
        int r02 = 0;
        if (!z10) {
            while (r02 < list.size()) {
                lVar.B(r22, ((Integer) list.get(r02)).intValue());
                r02++;
            }
            return;
        }
        lVar.L(r22, 2);
        int r52 = 0;
        for (int r23 = 0; r23 < list.size(); r23++) {
            ((Integer) list.get(r23)).intValue();
            Logger logger = l.f4315b;
            r52 += 4;
        }
        lVar.N(r52);
        while (r02 < list.size()) {
            lVar.C(((Integer) list.get(r02)).intValue());
            r02++;
        }
    }

    public static void Q(int r32, List list, m mVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        l lVar = mVar.f4320a;
        int r02 = 0;
        if (!z10) {
            while (r02 < list.size()) {
                lVar.D(r32, ((Long) list.get(r02)).longValue());
                r02++;
            }
            return;
        }
        lVar.L(r32, 2);
        int r6 = 0;
        for (int r33 = 0; r33 < list.size(); r33++) {
            ((Long) list.get(r33)).longValue();
            Logger logger = l.f4315b;
            r6 += 8;
        }
        lVar.N(r6);
        while (r02 < list.size()) {
            lVar.E(((Long) list.get(r02)).longValue());
            r02++;
        }
    }

    public static void R(int r32, List list, m mVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        l lVar = mVar.f4320a;
        int r02 = 0;
        if (!z10) {
            while (r02 < list.size()) {
                int r6 = ((Integer) list.get(r02)).intValue();
                lVar.M(r32, (r6 >> 31) ^ (r6 << 1));
                r02++;
            }
            return;
        }
        lVar.L(r32, 2);
        int r62 = 0;
        for (int r33 = 0; r33 < list.size(); r33++) {
            int r12 = ((Integer) list.get(r33)).intValue();
            r62 += l.v((r12 >> 31) ^ (r12 << 1));
        }
        lVar.N(r62);
        while (r02 < list.size()) {
            int r34 = ((Integer) list.get(r02)).intValue();
            lVar.N((r34 >> 31) ^ (r34 << 1));
            r02++;
        }
    }

    public static void S(int r72, List list, m mVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        l lVar = mVar.f4320a;
        int r12 = 0;
        if (!z10) {
            while (r12 < list.size()) {
                long jLongValue = ((Long) list.get(r12)).longValue();
                lVar.O(r72, (jLongValue >> 63) ^ (jLongValue << 1));
                r12++;
            }
            return;
        }
        lVar.L(r72, 2);
        int r10 = 0;
        for (int r73 = 0; r73 < list.size(); r73++) {
            long jLongValue2 = ((Long) list.get(r73)).longValue();
            r10 += l.x((jLongValue2 >> 63) ^ (jLongValue2 << 1));
        }
        lVar.N(r10);
        while (r12 < list.size()) {
            long jLongValue3 = ((Long) list.get(r12)).longValue();
            lVar.P((jLongValue3 >> 63) ^ (jLongValue3 << 1));
            r12++;
        }
    }

    public static void T(int r42, List list, m mVar) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        mVar.getClass();
        boolean z10 = list instanceof f0;
        l lVar = mVar.f4320a;
        int r12 = 0;
        if (!z10) {
            while (r12 < list.size()) {
                lVar.K(r42, (String) list.get(r12));
                r12++;
            }
            return;
        }
        f0 f0Var = (f0) list;
        while (r12 < list.size()) {
            Object objR = f0Var.r(r12);
            if (objR instanceof String) {
                lVar.K(r42, (String) objR);
            } else {
                lVar.A(r42, (i) objR);
            }
            r12++;
        }
    }

    public static void U(int r22, List list, m mVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        l lVar = mVar.f4320a;
        int r02 = 0;
        if (!z10) {
            while (r02 < list.size()) {
                lVar.M(r22, ((Integer) list.get(r02)).intValue());
                r02++;
            }
            return;
        }
        lVar.L(r22, 2);
        int r52 = 0;
        for (int r23 = 0; r23 < list.size(); r23++) {
            r52 += l.v(((Integer) list.get(r23)).intValue());
        }
        lVar.N(r52);
        while (r02 < list.size()) {
            lVar.N(((Integer) list.get(r02)).intValue());
            r02++;
        }
    }

    public static void V(int r32, List list, m mVar, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        l lVar = mVar.f4320a;
        int r02 = 0;
        if (!z10) {
            while (r02 < list.size()) {
                lVar.O(r32, ((Long) list.get(r02)).longValue());
                r02++;
            }
            return;
        }
        lVar.L(r32, 2);
        int r6 = 0;
        for (int r33 = 0; r33 < list.size(); r33++) {
            r6 += l.x(((Long) list.get(r33)).longValue());
        }
        lVar.N(r6);
        while (r02 < list.size()) {
            lVar.P(((Long) list.get(r02)).longValue());
            r02++;
        }
    }

    public static int a(int r02, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return l.b(r02) * size;
    }

    public static int b(List<?> list) {
        return list.size();
    }

    public static int c(int r32, List<i> list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int r33 = l.t(r32) * size;
        for (int r12 = 0; r12 < list.size(); r12++) {
            int size2 = list.get(r12).size();
            r33 += l.v(size2) + size2;
        }
        return r33;
    }

    public static int d(int r12, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (l.t(r12) * size) + e(list);
    }

    public static int e(List<Integer> list) {
        int r22;
        int size = list.size();
        int r12 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof y) {
            y yVar = (y) list;
            r22 = 0;
            while (r12 < size) {
                yVar.m(r12);
                r22 += l.k(yVar.f4403b[r12]);
                r12++;
            }
        } else {
            r22 = 0;
            while (r12 < size) {
                r22 += l.k(list.get(r12).intValue());
                r12++;
            }
        }
        return r22;
    }

    public static int f(int r02, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return l.f(r02) * size;
    }

    public static int g(List<?> list) {
        return list.size() * 4;
    }

    public static int h(int r02, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return l.g(r02) * size;
    }

    public static int i(List<?> list) {
        return list.size() * 8;
    }

    public static int j(int r42, List<q0> list, e1 e1Var) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int i10 = 0;
        for (int r12 = 0; r12 < size; r12++) {
            i10 += l.i(r42, list.get(r12), e1Var);
        }
        return i10;
    }

    public static int k(int r12, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (l.t(r12) * size) + l(list);
    }

    public static int l(List<Integer> list) {
        int r22;
        int size = list.size();
        int r12 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof y) {
            y yVar = (y) list;
            r22 = 0;
            while (r12 < size) {
                yVar.m(r12);
                r22 += l.k(yVar.f4403b[r12]);
                r12++;
            }
        } else {
            r22 = 0;
            while (r12 < size) {
                r22 += l.k(list.get(r12).intValue());
                r12++;
            }
        }
        return r22;
    }

    public static int m(int r12, List list) {
        if (list.size() == 0) {
            return 0;
        }
        return (l.t(r12) * list.size()) + n(list);
    }

    public static int n(List<Long> list) {
        int r22;
        int size = list.size();
        int r12 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof h0) {
            h0 h0Var = (h0) list;
            r22 = 0;
            while (r12 < size) {
                h0Var.m(r12);
                r22 += l.x(h0Var.f4269b[r12]);
                r12++;
            }
        } else {
            r22 = 0;
            while (r12 < size) {
                r22 += l.x(list.get(r12).longValue());
                r12++;
            }
        }
        return r22;
    }

    public static int o(int r22, e1 e1Var, Object obj) {
        if (obj instanceof d0) {
            return l.m((d0) obj) + l.t(r22);
        }
        int r23 = l.t(r22);
        a aVar = (a) ((q0) obj);
        int r02 = aVar.a();
        if (r02 == -1) {
            r02 = e1Var.j(aVar);
            aVar.j(r02);
        }
        return l.v(r02) + r02 + r23;
    }

    public static int p(int r52, List<?> list, e1 e1Var) {
        int r22;
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int r53 = l.t(r52) * size;
        for (int r12 = 0; r12 < size; r12++) {
            Object obj = list.get(r12);
            if (obj instanceof d0) {
                r22 = l.m((d0) obj);
            } else {
                a aVar = (a) ((q0) obj);
                int r32 = aVar.a();
                if (r32 == -1) {
                    r32 = e1Var.j(aVar);
                    aVar.j(r32);
                }
                r22 = l.v(r32) + r32;
            }
            r53 += r22;
        }
        return r53;
    }

    public static int q(int r12, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (l.t(r12) * size) + r(list);
    }

    public static int r(List<Integer> list) {
        int r22;
        int size = list.size();
        int r12 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof y) {
            y yVar = (y) list;
            r22 = 0;
            while (r12 < size) {
                yVar.m(r12);
                int r32 = yVar.f4403b[r12];
                r22 += l.v((r32 >> 31) ^ (r32 << 1));
                r12++;
            }
        } else {
            r22 = 0;
            while (r12 < size) {
                int r33 = list.get(r12).intValue();
                r22 += l.v((r33 >> 31) ^ (r33 << 1));
                r12++;
            }
        }
        return r22;
    }

    public static int s(int r12, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (l.t(r12) * size) + t(list);
    }

    public static int t(List<Long> list) {
        int r22;
        int size = list.size();
        int r12 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof h0) {
            h0 h0Var = (h0) list;
            r22 = 0;
            while (r12 < size) {
                h0Var.m(r12);
                long j10 = h0Var.f4269b[r12];
                r22 += l.x((j10 >> 63) ^ (j10 << 1));
                r12++;
            }
        } else {
            r22 = 0;
            while (r12 < size) {
                long jLongValue = list.get(r12).longValue();
                r22 += l.x((jLongValue >> 63) ^ (jLongValue << 1));
                r12++;
            }
        }
        return r22;
    }

    public static int u(int r42, List<?> list) {
        int r32;
        int r33;
        int size = list.size();
        int r12 = 0;
        if (size == 0) {
            return 0;
        }
        int r43 = l.t(r42) * size;
        if (list instanceof f0) {
            f0 f0Var = (f0) list;
            while (r12 < size) {
                Object objR = f0Var.r(r12);
                if (objR instanceof i) {
                    int size2 = ((i) objR).size();
                    r33 = l.v(size2) + size2;
                } else {
                    r33 = l.s((String) objR);
                }
                r43 += r33;
                r12++;
            }
        } else {
            while (r12 < size) {
                Object obj = list.get(r12);
                if (obj instanceof i) {
                    int size3 = ((i) obj).size();
                    r32 = l.v(size3) + size3;
                } else {
                    r32 = l.s((String) obj);
                }
                r43 += r32;
                r12++;
            }
        }
        return r43;
    }

    public static int v(int r12, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (l.t(r12) * size) + w(list);
    }

    public static int w(List<Integer> list) {
        int r22;
        int size = list.size();
        int r12 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof y) {
            y yVar = (y) list;
            r22 = 0;
            while (r12 < size) {
                yVar.m(r12);
                r22 += l.v(yVar.f4403b[r12]);
                r12++;
            }
        } else {
            r22 = 0;
            while (r12 < size) {
                r22 += l.v(list.get(r12).intValue());
                r12++;
            }
        }
        return r22;
    }

    public static int x(int r12, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (l.t(r12) * size) + y(list);
    }

    public static int y(List<Long> list) {
        int r22;
        int size = list.size();
        int r12 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof h0) {
            h0 h0Var = (h0) list;
            r22 = 0;
            while (r12 < size) {
                h0Var.m(r12);
                r22 += l.x(h0Var.f4269b[r12]);
                r12++;
            }
        } else {
            r22 = 0;
            while (r12 < size) {
                r22 += l.x(list.get(r12).longValue());
                r12++;
            }
        }
        return r22;
    }

    public static <UT, UB> UB z(int r52, List<Integer> list, z.b bVar, UB ub2, j1<UT, UB> j1Var) {
        if (bVar == null) {
            return ub2;
        }
        if (list instanceof RandomAccess) {
            int size = list.size();
            int r22 = 0;
            for (int r12 = 0; r12 < size; r12++) {
                int r32 = list.get(r12).intValue();
                if (bVar.a()) {
                    if (r12 != r22) {
                        list.set(r22, Integer.valueOf(r32));
                    }
                    r22++;
                } else {
                    ub2 = (UB) D(r52, r32, ub2, j1Var);
                }
            }
            if (r22 != size) {
                list.subList(r22, size).clear();
            }
        } else {
            Iterator<Integer> it = list.iterator();
            while (it.hasNext()) {
                int r02 = it.next().intValue();
                if (!bVar.a()) {
                    ub2 = (UB) D(r52, r02, ub2, j1Var);
                    it.remove();
                }
            }
        }
        return ub2;
    }
}
