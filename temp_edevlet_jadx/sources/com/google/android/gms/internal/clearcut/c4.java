package com.google.android.gms.internal.clearcut;

import java.io.IOException;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class c4 extends u3<c4> implements Cloneable {

    /* renamed from: c, reason: collision with root package name */
    public String[] f3062c;

    /* renamed from: d, reason: collision with root package name */
    public String[] f3063d;

    /* renamed from: e, reason: collision with root package name */
    public int[] f3064e;
    public long[] f;

    /* renamed from: g, reason: collision with root package name */
    public long[] f3065g;

    public c4() {
        String[] strArr = a0.b.f10h;
        this.f3062c = strArr;
        this.f3063d = strArr;
        this.f3064e = a0.b.f;
        long[] jArr = a0.b.f9g;
        this.f = jArr;
        this.f3065g = jArr;
        this.f3322b = null;
        this.f3351a = -1;
    }

    @Override // com.google.android.gms.internal.clearcut.u3, com.google.android.gms.internal.clearcut.y3
    public final Object clone() throws CloneNotSupportedException {
        try {
            c4 c4Var = (c4) super.clone();
            String[] strArr = this.f3062c;
            if (strArr != null && strArr.length > 0) {
                c4Var.f3062c = (String[]) strArr.clone();
            }
            String[] strArr2 = this.f3063d;
            if (strArr2 != null && strArr2.length > 0) {
                c4Var.f3063d = (String[]) strArr2.clone();
            }
            int[] r12 = this.f3064e;
            if (r12 != null && r12.length > 0) {
                c4Var.f3064e = (int[]) r12.clone();
            }
            long[] jArr = this.f;
            if (jArr != null && jArr.length > 0) {
                c4Var.f = (long[]) jArr.clone();
            }
            long[] jArr2 = this.f3065g;
            if (jArr2 != null && jArr2.length > 0) {
                c4Var.f3065g = (long[]) jArr2.clone();
            }
            return c4Var;
        } catch (CloneNotSupportedException e10) {
            throw new AssertionError(e10);
        }
    }

    @Override // com.google.android.gms.internal.clearcut.u3, com.google.android.gms.internal.clearcut.y3
    public final int d() {
        int length;
        long[] jArr;
        int[] r42;
        super.d();
        String[] strArr = this.f3062c;
        int r12 = 0;
        if (strArr == null || strArr.length <= 0) {
            length = 0;
        } else {
            int r02 = 0;
            int r22 = 0;
            int r32 = 0;
            while (true) {
                String[] strArr2 = this.f3062c;
                if (r02 >= strArr2.length) {
                    break;
                }
                String str = strArr2[r02];
                if (str != null) {
                    r32++;
                    int r43 = s3.a(str);
                    r22 += s3.o(r43) + r43;
                }
                r02++;
            }
            length = (r32 * 1) + r22 + 0;
        }
        String[] strArr3 = this.f3063d;
        if (strArr3 != null && strArr3.length > 0) {
            int r03 = 0;
            int r23 = 0;
            int r44 = 0;
            while (true) {
                String[] strArr4 = this.f3063d;
                if (r03 >= strArr4.length) {
                    break;
                }
                String str2 = strArr4[r03];
                if (str2 != null) {
                    r44++;
                    int r52 = s3.a(str2);
                    r23 += s3.o(r52) + r52;
                }
                r03++;
            }
            length = length + r23 + (r44 * 1);
        }
        int[] r04 = this.f3064e;
        if (r04 != null && r04.length > 0) {
            int r05 = 0;
            int r24 = 0;
            while (true) {
                r42 = this.f3064e;
                if (r05 >= r42.length) {
                    break;
                }
                int r45 = r42[r05];
                r24 += r45 >= 0 ? s3.o(r45) : 10;
                r05++;
            }
            length = length + r24 + (r42.length * 1);
        }
        long[] jArr2 = this.f;
        if (jArr2 != null && jArr2.length > 0) {
            int r06 = 0;
            int r25 = 0;
            while (true) {
                jArr = this.f;
                if (r06 >= jArr.length) {
                    break;
                }
                r25 += s3.m(jArr[r06]);
                r06++;
            }
            length = length + r25 + (jArr.length * 1);
        }
        long[] jArr3 = this.f3065g;
        if (jArr3 == null || jArr3.length <= 0) {
            return length;
        }
        int r07 = 0;
        while (true) {
            long[] jArr4 = this.f3065g;
            if (r12 >= jArr4.length) {
                return length + r07 + (jArr4.length * 1);
            }
            r07 += s3.m(jArr4[r12]);
            r12++;
        }
    }

    @Override // com.google.android.gms.internal.clearcut.u3, com.google.android.gms.internal.clearcut.y3
    /* renamed from: e */
    public final /* synthetic */ y3 clone() throws CloneNotSupportedException {
        return (c4) clone();
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof c4)) {
            return false;
        }
        c4 c4Var = (c4) obj;
        if (!x3.a(this.f3062c, c4Var.f3062c) || !x3.a(this.f3063d, c4Var.f3063d)) {
            return false;
        }
        int[] r12 = this.f3064e;
        int[] r32 = c4Var.f3064e;
        if (!((r12 == null || r12.length == 0) ? r32 == null || r32.length == 0 : Arrays.equals(r12, r32))) {
            return false;
        }
        long[] jArr = this.f;
        long[] jArr2 = c4Var.f;
        if (!((jArr == null || jArr.length == 0) ? jArr2 == null || jArr2.length == 0 : Arrays.equals(jArr, jArr2))) {
            return false;
        }
        long[] jArr3 = this.f3065g;
        long[] jArr4 = c4Var.f3065g;
        if (!((jArr3 == null || jArr3.length == 0) ? jArr4 == null || jArr4.length == 0 : Arrays.equals(jArr3, jArr4))) {
            return false;
        }
        v3 v3Var = this.f3322b;
        if (v3Var != null && !v3Var.b()) {
            return this.f3322b.equals(c4Var.f3322b);
        }
        v3 v3Var2 = c4Var.f3322b;
        return v3Var2 == null || v3Var2.b();
    }

    @Override // com.google.android.gms.internal.clearcut.u3
    public final void f(s3 s3Var) throws IOException {
        String[] strArr = this.f3062c;
        if (strArr != null && strArr.length > 0) {
            int r02 = 0;
            while (true) {
                String[] strArr2 = this.f3062c;
                if (r02 >= strArr2.length) {
                    break;
                }
                String str = strArr2[r02];
                if (str != null) {
                    s3Var.c(1, str);
                }
                r02++;
            }
        }
        String[] strArr3 = this.f3063d;
        if (strArr3 != null && strArr3.length > 0) {
            int r03 = 0;
            while (true) {
                String[] strArr4 = this.f3063d;
                if (r03 >= strArr4.length) {
                    break;
                }
                String str2 = strArr4[r03];
                if (str2 != null) {
                    s3Var.c(2, str2);
                }
                r03++;
            }
        }
        int[] r04 = this.f3064e;
        if (r04 != null && r04.length > 0) {
            int r05 = 0;
            while (true) {
                int[] r22 = this.f3064e;
                if (r05 >= r22.length) {
                    break;
                }
                int r23 = r22[r05];
                s3Var.i(3, 0);
                if (r23 >= 0) {
                    s3Var.f(r23);
                } else {
                    s3Var.l(r23);
                }
                r05++;
            }
        }
        long[] jArr = this.f;
        if (jArr != null && jArr.length > 0) {
            int r06 = 0;
            while (true) {
                long[] jArr2 = this.f;
                if (r06 >= jArr2.length) {
                    break;
                }
                long j10 = jArr2[r06];
                s3Var.i(4, 0);
                s3Var.l(j10);
                r06++;
            }
        }
        long[] jArr3 = this.f3065g;
        if (jArr3 != null && jArr3.length > 0) {
            int r07 = 0;
            while (true) {
                long[] jArr4 = this.f3065g;
                if (r07 >= jArr4.length) {
                    break;
                }
                long j11 = jArr4[r07];
                s3Var.i(5, 0);
                s3Var.l(j11);
                r07++;
            }
        }
        super.f(s3Var);
    }

    @Override // com.google.android.gms.internal.clearcut.u3
    /* renamed from: g */
    public final /* synthetic */ u3 clone() throws CloneNotSupportedException {
        return (c4) clone();
    }

    public final int hashCode() {
        int r02 = (((((c4.class.getName().hashCode() + 527) * 31) + x3.b(this.f3062c)) * 31) + x3.b(this.f3063d)) * 31;
        int[] r12 = this.f3064e;
        int r22 = 0;
        int r13 = (((r12 == null || r12.length == 0) ? 0 : Arrays.hashCode(r12)) + r02) * 31;
        long[] jArr = this.f;
        int r03 = (((jArr == null || jArr.length == 0) ? 0 : Arrays.hashCode(jArr)) + r13) * 31;
        long[] jArr2 = this.f3065g;
        int r14 = (((jArr2 == null || jArr2.length == 0) ? 0 : Arrays.hashCode(jArr2)) + r03) * 31;
        v3 v3Var = this.f3322b;
        if (v3Var != null && !v3Var.b()) {
            r22 = this.f3322b.hashCode();
        }
        return r14 + r22;
    }
}
