package com.google.android.gms.internal.clearcut;

import java.io.IOException;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class b3 {
    public static final b3 f = new b3(0, new int[0], new Object[0], false);

    /* renamed from: a, reason: collision with root package name */
    public int f3050a;

    /* renamed from: b, reason: collision with root package name */
    public int[] f3051b;

    /* renamed from: c, reason: collision with root package name */
    public Object[] f3052c;

    /* renamed from: d, reason: collision with root package name */
    public int f3053d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f3054e;

    public b3() {
        this(0, new int[8], new Object[8], true);
    }

    public b3(int r22, int[] r32, Object[] objArr, boolean z10) {
        this.f3053d = -1;
        this.f3050a = r22;
        this.f3051b = r32;
        this.f3052c = objArr;
        this.f3054e = z10;
    }

    public final int a() {
        int r22;
        int r02 = this.f3053d;
        if (r02 != -1) {
            return r02;
        }
        int r12 = 0;
        for (int r03 = 0; r03 < this.f3050a; r03++) {
            int r23 = this.f3051b[r03];
            int r32 = r23 >>> 3;
            int r24 = r23 & 7;
            if (r24 == 0) {
                r22 = e0.G(r32, ((Long) this.f3052c[r03]).longValue());
            } else if (r24 == 1) {
                ((Long) this.f3052c[r03]).longValue();
                r22 = e0.K(r32);
            } else if (r24 == 2) {
                r22 = e0.z(r32, (x) this.f3052c[r03]);
            } else if (r24 == 3) {
                r12 = ((b3) this.f3052c[r03]).a() + (e0.W(r32) << 1) + r12;
            } else {
                if (r24 != 5) {
                    int r13 = b1.f3033a;
                    throw new IllegalStateException(new c1());
                }
                ((Integer) this.f3052c[r03]).intValue();
                r22 = e0.Q(r32);
            }
            r12 = r22 + r12;
        }
        this.f3053d = r12;
        return r12;
    }

    public final void b(f0 f0Var) throws IOException {
        if (this.f3050a == 0) {
            return;
        }
        f0Var.getClass();
        for (int r02 = 0; r02 < this.f3050a; r02++) {
            int r12 = this.f3051b[r02];
            Object obj = this.f3052c[r02];
            int r32 = r12 >>> 3;
            int r13 = r12 & 7;
            if (r13 == 0) {
                f0Var.o(r32, ((Long) obj).longValue());
            } else if (r13 == 1) {
                f0Var.k(r32, ((Long) obj).longValue());
            } else if (r13 == 2) {
                f0Var.d(r32, (x) obj);
            } else if (r13 == 3) {
                e0 e0Var = f0Var.f3115a;
                e0Var.s(r32, 3);
                ((b3) obj).b(f0Var);
                e0Var.s(r32, 4);
            } else {
                if (r13 != 5) {
                    int r03 = b1.f3033a;
                    throw new RuntimeException(new c1());
                }
                f0Var.n(r32, ((Integer) obj).intValue());
            }
        }
    }

    public final void c(int r42, Object obj) {
        if (!this.f3054e) {
            throw new UnsupportedOperationException();
        }
        int r02 = this.f3050a;
        int[] r12 = this.f3051b;
        if (r02 == r12.length) {
            int r03 = r02 + (r02 < 4 ? 8 : r02 >> 1);
            this.f3051b = Arrays.copyOf(r12, r03);
            this.f3052c = Arrays.copyOf(this.f3052c, r03);
        }
        int[] r04 = this.f3051b;
        int r13 = this.f3050a;
        r04[r13] = r42;
        this.f3052c[r13] = obj;
        this.f3050a = r13 + 1;
    }

    public final boolean equals(Object obj) {
        boolean z10;
        boolean z11;
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof b3)) {
            return false;
        }
        b3 b3Var = (b3) obj;
        int r22 = this.f3050a;
        if (r22 == b3Var.f3050a) {
            int[] r32 = this.f3051b;
            int[] r42 = b3Var.f3051b;
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
                Object[] objArr = this.f3052c;
                Object[] objArr2 = b3Var.f3052c;
                int r33 = this.f3050a;
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
        int r02 = this.f3050a;
        int r12 = (r02 + 527) * 31;
        int[] r22 = this.f3051b;
        int r32 = 17;
        int r6 = 17;
        for (int r52 = 0; r52 < r02; r52++) {
            r6 = (r6 * 31) + r22[r52];
        }
        int r13 = (r12 + r6) * 31;
        Object[] objArr = this.f3052c;
        int r23 = this.f3050a;
        for (int r42 = 0; r42 < r23; r42++) {
            r32 = (r32 * 31) + objArr[r42].hashCode();
        }
        return r13 + r32;
    }
}
