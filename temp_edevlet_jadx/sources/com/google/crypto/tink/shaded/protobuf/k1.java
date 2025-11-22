package com.google.crypto.tink.shaded.protobuf;

import com.google.crypto.tink.shaded.protobuf.a0;
import java.io.IOException;
import java.util.Arrays;

/* loaded from: classes2.dex */
public final class k1 {
    public static final k1 f = new k1(0, new int[0], new Object[0], false);

    /* renamed from: a, reason: collision with root package name */
    public int f4310a;

    /* renamed from: b, reason: collision with root package name */
    public int[] f4311b;

    /* renamed from: c, reason: collision with root package name */
    public Object[] f4312c;

    /* renamed from: d, reason: collision with root package name */
    public int f4313d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f4314e;

    public k1() {
        this(0, new int[8], new Object[8], true);
    }

    public k1(int r22, int[] r32, Object[] objArr, boolean z10) {
        this.f4313d = -1;
        this.f4310a = r22;
        this.f4311b = r32;
        this.f4312c = objArr;
        this.f4314e = z10;
    }

    public final int a() {
        int r22;
        int r02 = this.f4313d;
        if (r02 != -1) {
            return r02;
        }
        int r12 = 0;
        for (int r03 = 0; r03 < this.f4310a; r03++) {
            int r23 = this.f4311b[r03];
            int r32 = r23 >>> 3;
            int r24 = r23 & 7;
            if (r24 == 0) {
                r22 = l.w(r32, ((Long) this.f4312c[r03]).longValue());
            } else if (r24 == 1) {
                ((Long) this.f4312c[r03]).longValue();
                r22 = l.g(r32);
            } else if (r24 == 2) {
                r22 = l.c(r32, (i) this.f4312c[r03]);
            } else if (r24 == 3) {
                r12 = ((k1) this.f4312c[r03]).a() + (l.t(r32) * 2) + r12;
            } else {
                if (r24 != 5) {
                    int r13 = a0.f4223a;
                    throw new IllegalStateException(new a0.a());
                }
                ((Integer) this.f4312c[r03]).intValue();
                r22 = l.f(r32);
            }
            r12 = r22 + r12;
        }
        this.f4313d = r12;
        return r12;
    }

    public final void b(int r42, Object obj) {
        if (!this.f4314e) {
            throw new UnsupportedOperationException();
        }
        int r02 = this.f4310a;
        int[] r12 = this.f4311b;
        if (r02 == r12.length) {
            int r03 = r02 + (r02 < 4 ? 8 : r02 >> 1);
            this.f4311b = Arrays.copyOf(r12, r03);
            this.f4312c = Arrays.copyOf(this.f4312c, r03);
        }
        int[] r04 = this.f4311b;
        int r13 = this.f4310a;
        r04[r13] = r42;
        this.f4312c[r13] = obj;
        this.f4310a = r13 + 1;
    }

    public final void c(m mVar) throws IOException {
        if (this.f4310a == 0) {
            return;
        }
        mVar.getClass();
        for (int r02 = 0; r02 < this.f4310a; r02++) {
            int r12 = this.f4311b[r02];
            Object obj = this.f4312c[r02];
            int r32 = r12 >>> 3;
            int r13 = r12 & 7;
            if (r13 == 0) {
                mVar.j(r32, ((Long) obj).longValue());
            } else if (r13 == 1) {
                mVar.f(r32, ((Long) obj).longValue());
            } else if (r13 == 2) {
                mVar.b(r32, (i) obj);
            } else if (r13 == 3) {
                l lVar = mVar.f4320a;
                lVar.L(r32, 3);
                ((k1) obj).c(mVar);
                lVar.L(r32, 4);
            } else {
                if (r13 != 5) {
                    int r03 = a0.f4223a;
                    throw new RuntimeException(new a0.a());
                }
                mVar.e(r32, ((Integer) obj).intValue());
            }
        }
    }

    public final boolean equals(Object obj) {
        boolean z10;
        boolean z11;
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof k1)) {
            return false;
        }
        k1 k1Var = (k1) obj;
        int r22 = this.f4310a;
        if (r22 == k1Var.f4310a) {
            int[] r32 = this.f4311b;
            int[] r42 = k1Var.f4311b;
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
                Object[] objArr = this.f4312c;
                Object[] objArr2 = k1Var.f4312c;
                int r33 = this.f4310a;
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
        int r02 = this.f4310a;
        int r12 = (527 + r02) * 31;
        int[] r22 = this.f4311b;
        int r42 = 17;
        int r6 = 17;
        for (int r52 = 0; r52 < r02; r52++) {
            r6 = (r6 * 31) + r22[r52];
        }
        int r13 = (r12 + r6) * 31;
        Object[] objArr = this.f4312c;
        int r23 = this.f4310a;
        for (int r32 = 0; r32 < r23; r32++) {
            r42 = (r42 * 31) + objArr[r32].hashCode();
        }
        return r13 + r42;
    }
}
