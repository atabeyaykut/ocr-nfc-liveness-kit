package com.google.android.gms.internal.vision;

import java.io.IOException;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class q3 {
    public static final q3 f = new q3(0, new int[0], new Object[0], false);

    /* renamed from: a, reason: collision with root package name */
    public int f4049a;

    /* renamed from: b, reason: collision with root package name */
    public int[] f4050b;

    /* renamed from: c, reason: collision with root package name */
    public Object[] f4051c;

    /* renamed from: d, reason: collision with root package name */
    public int f4052d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f4053e;

    public q3() {
        this(0, new int[8], new Object[8], true);
    }

    public q3(int r22, int[] r32, Object[] objArr, boolean z10) {
        this.f4052d = -1;
        this.f4049a = r22;
        this.f4050b = r32;
        this.f4051c = objArr;
        this.f4053e = z10;
    }

    public final void a(int r42, Object obj) {
        if (!this.f4053e) {
            throw new UnsupportedOperationException();
        }
        int r02 = this.f4049a;
        int[] r12 = this.f4050b;
        if (r02 == r12.length) {
            int r03 = r02 + (r02 < 4 ? 8 : r02 >> 1);
            this.f4050b = Arrays.copyOf(r12, r03);
            this.f4051c = Arrays.copyOf(this.f4051c, r03);
        }
        int[] r04 = this.f4050b;
        int r13 = this.f4049a;
        r04[r13] = r42;
        this.f4051c[r13] = obj;
        this.f4049a = r13 + 1;
    }

    public final void b(u0 u0Var) throws IOException {
        if (this.f4049a == 0) {
            return;
        }
        u0Var.getClass();
        for (int r02 = 0; r02 < this.f4049a; r02++) {
            int r12 = this.f4050b[r02];
            Object obj = this.f4051c[r02];
            int r32 = r12 >>> 3;
            int r13 = r12 & 7;
            if (r13 == 0) {
                u0Var.d(r32, ((Long) obj).longValue());
            } else if (r13 == 1) {
                u0Var.o(r32, ((Long) obj).longValue());
            } else if (r13 == 2) {
                u0Var.e(r32, (p0) obj);
            } else if (r13 == 3) {
                t0 t0Var = u0Var.f4102a;
                t0Var.i(r32, 3);
                ((q3) obj).b(u0Var);
                t0Var.i(r32, 4);
            } else {
                if (r13 != 5) {
                    int r03 = q1.f4048a;
                    throw new RuntimeException(new t1());
                }
                u0Var.n(r32, ((Integer) obj).intValue());
            }
        }
    }

    public final int c() {
        int r22;
        int r02 = this.f4052d;
        if (r02 != -1) {
            return r02;
        }
        int r12 = 0;
        for (int r03 = 0; r03 < this.f4049a; r03++) {
            int r23 = this.f4050b[r03];
            int r32 = r23 >>> 3;
            int r24 = r23 & 7;
            if (r24 == 0) {
                r22 = t0.G(r32, ((Long) this.f4051c[r03]).longValue());
            } else if (r24 == 1) {
                ((Long) this.f4051c[r03]).longValue();
                r22 = t0.M(r32);
            } else if (r24 == 2) {
                r22 = t0.y(r32, (p0) this.f4051c[r03]);
            } else if (r24 == 3) {
                r12 = ((q3) this.f4051c[r03]).c() + (t0.F(r32) << 1) + r12;
            } else {
                if (r24 != 5) {
                    int r13 = q1.f4048a;
                    throw new IllegalStateException(new t1());
                }
                ((Integer) this.f4051c[r03]).intValue();
                r22 = t0.R(r32);
            }
            r12 = r22 + r12;
        }
        this.f4052d = r12;
        return r12;
    }

    public final boolean equals(Object obj) {
        boolean z10;
        boolean z11;
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof q3)) {
            return false;
        }
        q3 q3Var = (q3) obj;
        int r22 = this.f4049a;
        if (r22 == q3Var.f4049a) {
            int[] r32 = this.f4050b;
            int[] r42 = q3Var.f4050b;
            int r52 = 0;
            while (true) {
                if (r52 >= r22) {
                    z10 = true;
                    break;
                }
                if (r32[r52] != r42[r52]) {
                    z10 = false;
                    break;
                }
                r52++;
            }
            if (z10) {
                Object[] objArr = this.f4051c;
                Object[] objArr2 = q3Var.f4051c;
                int r33 = this.f4049a;
                int r43 = 0;
                while (true) {
                    if (r43 >= r33) {
                        z11 = true;
                        break;
                    }
                    if (!objArr[r43].equals(objArr2[r43])) {
                        z11 = false;
                        break;
                    }
                    r43++;
                }
                if (z11) {
                    return true;
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        int r02 = this.f4049a;
        int r12 = (r02 + 527) * 31;
        int[] r22 = this.f4050b;
        int r32 = 17;
        int r6 = 17;
        for (int r52 = 0; r52 < r02; r52++) {
            r6 = (r6 * 31) + r22[r52];
        }
        int r13 = (r12 + r6) * 31;
        Object[] objArr = this.f4051c;
        int r23 = this.f4049a;
        for (int r42 = 0; r42 < r23; r42++) {
            r32 = (r32 * 31) + objArr[r42].hashCode();
        }
        return r13 + r32;
    }
}
