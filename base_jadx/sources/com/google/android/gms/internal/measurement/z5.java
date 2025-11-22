package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.util.logging.Logger;

/* loaded from: classes.dex */
public abstract class z5 extends c5.y {

    /* renamed from: v, reason: collision with root package name */
    public static final Logger f3858v = Logger.getLogger(z5.class.getName());
    public static final boolean w = y8.f3849e;

    /* renamed from: t, reason: collision with root package name */
    public a6 f3859t;

    public z5() {
    }

    public /* synthetic */ z5(int r12) {
    }

    public static int G(int r12) {
        if ((r12 & (-128)) == 0) {
            return 1;
        }
        if ((r12 & (-16384)) == 0) {
            return 2;
        }
        if (((-2097152) & r12) == 0) {
            return 3;
        }
        return (r12 & (-268435456)) == 0 ? 4 : 5;
    }

    public static int H(long j10) {
        int r02;
        if (((-128) & j10) == 0) {
            return 1;
        }
        if (j10 < 0) {
            return 10;
        }
        if (((-34359738368L) & j10) != 0) {
            j10 >>>= 28;
            r02 = 6;
        } else {
            r02 = 2;
        }
        if (((-2097152) & j10) != 0) {
            r02 += 2;
            j10 >>>= 14;
        }
        return (j10 & (-16384)) != 0 ? r02 + 1 : r02;
    }

    @Deprecated
    public static int X(int r22, s7 s7Var, d8 d8Var) {
        int r23 = G(r22 << 3);
        int r24 = r23 + r23;
        l5 l5Var = (l5) s7Var;
        int r02 = l5Var.a();
        if (r02 == -1) {
            r02 = d8Var.c(l5Var);
            l5Var.h(r02);
        }
        return r24 + r02;
    }

    public static int Y(int r02) {
        if (r02 >= 0) {
            return G(r02);
        }
        return 10;
    }

    public static int Z(String str) {
        int length;
        try {
            length = a9.b(str);
        } catch (z8 unused) {
            length = str.getBytes(x6.f3835a).length;
        }
        return G(length) + length;
    }

    public static int a0(int r02) {
        return G(r02 << 3);
    }

    public abstract void I(byte b10) throws IOException;

    public abstract void J(int r12, boolean z10) throws IOException;

    public abstract void K(int r12, v5 v5Var) throws IOException;

    public abstract void L(int r12, int r22) throws IOException;

    public abstract void M(int r12) throws IOException;

    public abstract void N(int r12, long j10) throws IOException;

    public abstract void O(long j10) throws IOException;

    public abstract void P(int r12, int r22) throws IOException;

    public abstract void Q(int r12) throws IOException;

    public abstract void R(int r12, String str) throws IOException;

    public abstract void S(int r12, int r22) throws IOException;

    public abstract void T(int r12, int r22) throws IOException;

    public abstract void U(int r12) throws IOException;

    public abstract void V(int r12, long j10) throws IOException;

    public abstract void W(long j10) throws IOException;
}
