package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class p8 {
    public static final p8 f = new p8(0, new int[0], new Object[0], false);

    /* renamed from: a, reason: collision with root package name */
    public int f3675a;

    /* renamed from: b, reason: collision with root package name */
    public int[] f3676b;

    /* renamed from: c, reason: collision with root package name */
    public Object[] f3677c;

    /* renamed from: d, reason: collision with root package name */
    public int f3678d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f3679e;

    public p8() {
        this(0, new int[8], new Object[8], true);
    }

    public p8(int r22, int[] r32, Object[] objArr, boolean z10) {
        this.f3678d = -1;
        this.f3675a = r22;
        this.f3676b = r32;
        this.f3677c = objArr;
        this.f3679e = z10;
    }

    public static p8 b() {
        return new p8(0, new int[8], new Object[8], true);
    }

    public final int a() {
        int r22;
        int r32;
        int r23;
        int r02 = this.f3678d;
        if (r02 != -1) {
            return r02;
        }
        int r12 = 0;
        for (int r03 = 0; r03 < this.f3675a; r03++) {
            int r24 = this.f3676b[r03];
            int r33 = r24 >>> 3;
            int r25 = r24 & 7;
            if (r25 != 0) {
                if (r25 == 1) {
                    ((Long) this.f3677c[r03]).longValue();
                    r23 = z5.G(r33 << 3) + 8;
                } else if (r25 == 2) {
                    v5 v5Var = (v5) this.f3677c[r03];
                    int r34 = z5.G(r33 << 3);
                    int r26 = v5Var.m();
                    r12 = z5.G(r26) + r26 + r34 + r12;
                } else if (r25 == 3) {
                    int r27 = z5.a0(r33);
                    r22 = r27 + r27;
                    r32 = ((p8) this.f3677c[r03]).a();
                } else {
                    if (r25 != 5) {
                        int r13 = z6.f3860a;
                        throw new IllegalStateException(new y6());
                    }
                    ((Integer) this.f3677c[r03]).intValue();
                    r23 = z5.G(r33 << 3) + 4;
                }
                r12 = r23 + r12;
            } else {
                long jLongValue = ((Long) this.f3677c[r03]).longValue();
                r22 = z5.G(r33 << 3);
                r32 = z5.H(jLongValue);
            }
            r12 = r32 + r22 + r12;
        }
        this.f3678d = r12;
        return r12;
    }

    public final void c(int r42, Object obj) {
        if (!this.f3679e) {
            throw new UnsupportedOperationException();
        }
        int r02 = this.f3675a;
        int[] r12 = this.f3676b;
        if (r02 == r12.length) {
            int r03 = r02 + (r02 < 4 ? 8 : r02 >> 1);
            this.f3676b = Arrays.copyOf(r12, r03);
            this.f3677c = Arrays.copyOf(this.f3677c, r03);
        }
        int[] r04 = this.f3676b;
        int r13 = this.f3675a;
        r04[r13] = r42;
        this.f3677c[r13] = obj;
        this.f3675a = r13 + 1;
    }

    public final void d(a6 a6Var) throws IOException {
        if (this.f3675a != 0) {
            for (int r02 = 0; r02 < this.f3675a; r02++) {
                int r12 = this.f3676b[r02];
                Object obj = this.f3677c[r02];
                int r32 = r12 >>> 3;
                int r13 = r12 & 7;
                if (r13 == 0) {
                    a6Var.n(r32, ((Long) obj).longValue());
                } else if (r13 == 1) {
                    a6Var.j(r32, ((Long) obj).longValue());
                } else if (r13 == 2) {
                    a6Var.f(r32, (v5) obj);
                } else if (r13 == 3) {
                    a6Var.f3361a.S(r32, 3);
                    ((p8) obj).d(a6Var);
                    a6Var.f3361a.S(r32, 4);
                } else {
                    if (r13 != 5) {
                        int r03 = z6.f3860a;
                        throw new RuntimeException(new y6());
                    }
                    a6Var.i(r32, ((Integer) obj).intValue());
                }
            }
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof p8)) {
            return false;
        }
        p8 p8Var = (p8) obj;
        int r22 = this.f3675a;
        if (r22 == p8Var.f3675a) {
            int[] r32 = this.f3676b;
            int[] r42 = p8Var.f3676b;
            int r52 = 0;
            while (true) {
                if (r52 >= r22) {
                    Object[] objArr = this.f3677c;
                    Object[] objArr2 = p8Var.f3677c;
                    int r33 = this.f3675a;
                    for (int r43 = 0; r43 < r33; r43++) {
                        if (objArr[r43].equals(objArr2[r43])) {
                        }
                    }
                    return true;
                }
                if (r32[r52] != r42[r52]) {
                    break;
                }
                r52++;
            }
        }
        return false;
    }

    public final int hashCode() {
        int r02 = this.f3675a;
        int r12 = (r02 + 527) * 31;
        int[] r22 = this.f3676b;
        int r32 = 17;
        int r6 = 17;
        for (int r52 = 0; r52 < r02; r52++) {
            r6 = (r6 * 31) + r22[r52];
        }
        int r13 = (r12 + r6) * 31;
        Object[] objArr = this.f3677c;
        int r23 = this.f3675a;
        for (int r42 = 0; r42 < r23; r42++) {
            r32 = (r32 * 31) + objArr[r42].hashCode();
        }
        return r13 + r32;
    }
}
