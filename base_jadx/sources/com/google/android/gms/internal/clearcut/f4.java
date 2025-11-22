package com.google.android.gms.internal.clearcut;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class f4 extends u3<f4> implements Cloneable {

    /* renamed from: c, reason: collision with root package name */
    public long f3118c = 0;

    /* renamed from: d, reason: collision with root package name */
    public long f3119d = 0;

    /* renamed from: e, reason: collision with root package name */
    public final String f3120e = "";
    public int f = 0;

    /* renamed from: g, reason: collision with root package name */
    public final String f3121g = "";

    /* renamed from: h, reason: collision with root package name */
    public g4[] f3122h;

    /* renamed from: j, reason: collision with root package name */
    public final byte[] f3123j;

    /* renamed from: k, reason: collision with root package name */
    public byte[] f3124k;

    /* renamed from: l, reason: collision with root package name */
    public final String f3125l;

    /* renamed from: m, reason: collision with root package name */
    public final String f3126m;

    /* renamed from: n, reason: collision with root package name */
    public c4 f3127n;

    /* renamed from: p, reason: collision with root package name */
    public final String f3128p;

    /* renamed from: q, reason: collision with root package name */
    public long f3129q;

    /* renamed from: r, reason: collision with root package name */
    public d4 f3130r;

    /* renamed from: s, reason: collision with root package name */
    public byte[] f3131s;

    /* renamed from: t, reason: collision with root package name */
    public final String f3132t;

    /* renamed from: v, reason: collision with root package name */
    public int[] f3133v;
    public boolean w;

    public f4() {
        if (g4.f3150e == null) {
            synchronized (x3.f3347a) {
                if (g4.f3150e == null) {
                    g4.f3150e = new g4[0];
                }
            }
        }
        this.f3122h = g4.f3150e;
        byte[] bArr = a0.b.f12k;
        this.f3123j = bArr;
        this.f3124k = bArr;
        this.f3125l = "";
        this.f3126m = "";
        this.f3127n = null;
        this.f3128p = "";
        this.f3129q = 180000L;
        this.f3130r = null;
        this.f3131s = bArr;
        this.f3132t = "";
        this.f3133v = a0.b.f;
        this.w = false;
        this.f3322b = null;
        this.f3351a = -1;
    }

    @Override // com.google.android.gms.internal.clearcut.u3, com.google.android.gms.internal.clearcut.y3
    public final Object clone() throws CloneNotSupportedException {
        try {
            f4 f4Var = (f4) super.clone();
            g4[] g4VarArr = this.f3122h;
            if (g4VarArr != null && g4VarArr.length > 0) {
                f4Var.f3122h = new g4[g4VarArr.length];
                int r12 = 0;
                while (true) {
                    g4[] g4VarArr2 = this.f3122h;
                    if (r12 >= g4VarArr2.length) {
                        break;
                    }
                    g4 g4Var = g4VarArr2[r12];
                    if (g4Var != null) {
                        f4Var.f3122h[r12] = (g4) g4Var.clone();
                    }
                    r12++;
                }
            }
            c4 c4Var = this.f3127n;
            if (c4Var != null) {
                f4Var.f3127n = (c4) c4Var.clone();
            }
            d4 d4Var = this.f3130r;
            if (d4Var != null) {
                f4Var.f3130r = (d4) d4Var.clone();
            }
            int[] r13 = this.f3133v;
            if (r13 != null && r13.length > 0) {
                f4Var.f3133v = (int[]) r13.clone();
            }
            return f4Var;
        } catch (CloneNotSupportedException e10) {
            throw new AssertionError(e10);
        }
    }

    @Override // com.google.android.gms.internal.clearcut.u3, com.google.android.gms.internal.clearcut.y3
    public final int d() {
        int[] r42;
        super.d();
        long j10 = this.f3118c;
        int r32 = 0;
        int length = j10 != 0 ? s3.m(j10) + s3.n(1) + 0 : 0;
        String str = this.f3120e;
        if (str != null && !str.equals("")) {
            length += s3.g(2, str);
        }
        g4[] g4VarArr = this.f3122h;
        if (g4VarArr != null && g4VarArr.length > 0) {
            int r12 = 0;
            while (true) {
                g4[] g4VarArr2 = this.f3122h;
                if (r12 >= g4VarArr2.length) {
                    break;
                }
                g4 g4Var = g4VarArr2[r12];
                if (g4Var != null) {
                    int r82 = s3.n(3);
                    int r6 = g4Var.c();
                    length += s3.o(r6) + r6 + r82;
                }
                r12++;
            }
        }
        byte[] bArr = a0.b.f12k;
        byte[] bArr2 = this.f3123j;
        if (!Arrays.equals(bArr2, bArr)) {
            length += s3.h(4, bArr2);
        }
        if (!Arrays.equals(this.f3124k, bArr)) {
            length += s3.h(6, this.f3124k);
        }
        c4 c4Var = this.f3127n;
        if (c4Var != null) {
            int r83 = s3.n(7);
            int r62 = c4Var.c();
            length += s3.o(r62) + r62 + r83;
        }
        String str2 = this.f3125l;
        if (str2 != null && !str2.equals("")) {
            length += s3.g(8, str2);
        }
        int r63 = this.f;
        if (r63 != 0) {
            length += (r63 >= 0 ? s3.o(r63) : 10) + s3.n(11);
        }
        String str3 = this.f3126m;
        if (str3 != null && !str3.equals("")) {
            length += s3.g(13, str3);
        }
        String str4 = this.f3128p;
        if (str4 != null && !str4.equals("")) {
            length += s3.g(14, str4);
        }
        long j11 = this.f3129q;
        if (j11 != 180000) {
            length += s3.m((j11 >> 63) ^ (j11 << 1)) + s3.n(15);
        }
        d4 d4Var = this.f3130r;
        if (d4Var != null) {
            int r84 = s3.n(16);
            int r64 = d4Var.c();
            length += s3.o(r64) + r64 + r84;
        }
        long j12 = this.f3119d;
        if (j12 != 0) {
            length += s3.m(j12) + s3.n(17);
        }
        if (!Arrays.equals(this.f3131s, bArr)) {
            length += s3.h(18, this.f3131s);
        }
        int[] r13 = this.f3133v;
        if (r13 != null && r13.length > 0) {
            int r14 = 0;
            while (true) {
                r42 = this.f3133v;
                if (r32 >= r42.length) {
                    break;
                }
                int r43 = r42[r32];
                r14 += r43 >= 0 ? s3.o(r43) : 10;
                r32++;
            }
            length = length + r14 + (r42.length * 2);
        }
        String str5 = this.f3132t;
        if (str5 != null && !str5.equals("")) {
            length += s3.g(24, str5);
        }
        if (this.w) {
            length += s3.n(25) + 1;
        }
        String str6 = this.f3121g;
        return (str6 == null || str6.equals("")) ? length : length + s3.g(26, str6);
    }

    @Override // com.google.android.gms.internal.clearcut.u3, com.google.android.gms.internal.clearcut.y3
    /* renamed from: e */
    public final /* synthetic */ y3 clone() throws CloneNotSupportedException {
        return (f4) clone();
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof f4)) {
            return false;
        }
        f4 f4Var = (f4) obj;
        if (this.f3118c != f4Var.f3118c || this.f3119d != f4Var.f3119d) {
            return false;
        }
        String str = f4Var.f3120e;
        String str2 = this.f3120e;
        if (str2 == null) {
            if (str != null) {
                return false;
            }
        } else if (!str2.equals(str)) {
            return false;
        }
        if (this.f != f4Var.f) {
            return false;
        }
        String str3 = f4Var.f3121g;
        String str4 = this.f3121g;
        if (str4 == null) {
            if (str3 != null) {
                return false;
            }
        } else if (!str4.equals(str3)) {
            return false;
        }
        if (!x3.a(this.f3122h, f4Var.f3122h) || !Arrays.equals(this.f3123j, f4Var.f3123j)) {
            return false;
        }
        f4Var.getClass();
        if (!Arrays.equals(this.f3124k, f4Var.f3124k)) {
            return false;
        }
        String str5 = f4Var.f3125l;
        String str6 = this.f3125l;
        if (str6 == null) {
            if (str5 != null) {
                return false;
            }
        } else if (!str6.equals(str5)) {
            return false;
        }
        String str7 = f4Var.f3126m;
        String str8 = this.f3126m;
        if (str8 == null) {
            if (str7 != null) {
                return false;
            }
        } else if (!str8.equals(str7)) {
            return false;
        }
        c4 c4Var = this.f3127n;
        if (c4Var == null) {
            if (f4Var.f3127n != null) {
                return false;
            }
        } else if (!c4Var.equals(f4Var.f3127n)) {
            return false;
        }
        String str9 = f4Var.f3128p;
        String str10 = this.f3128p;
        if (str10 == null) {
            if (str9 != null) {
                return false;
            }
        } else if (!str10.equals(str9)) {
            return false;
        }
        if (this.f3129q != f4Var.f3129q) {
            return false;
        }
        d4 d4Var = this.f3130r;
        if (d4Var == null) {
            if (f4Var.f3130r != null) {
                return false;
            }
        } else if (!d4Var.equals(f4Var.f3130r)) {
            return false;
        }
        if (!Arrays.equals(this.f3131s, f4Var.f3131s)) {
            return false;
        }
        String str11 = f4Var.f3132t;
        String str12 = this.f3132t;
        if (str12 == null) {
            if (str11 != null) {
                return false;
            }
        } else if (!str12.equals(str11)) {
            return false;
        }
        int[] r12 = this.f3133v;
        int[] r32 = f4Var.f3133v;
        if (!((r12 == null || r12.length == 0) ? r32 == null || r32.length == 0 : Arrays.equals(r12, r32))) {
            return false;
        }
        f4Var.getClass();
        if (this.w != f4Var.w) {
            return false;
        }
        v3 v3Var = this.f3322b;
        if (v3Var != null && !v3Var.b()) {
            return this.f3322b.equals(f4Var.f3322b);
        }
        v3 v3Var2 = f4Var.f3322b;
        return v3Var2 == null || v3Var2.b();
    }

    @Override // com.google.android.gms.internal.clearcut.u3
    public final void f(s3 s3Var) throws IOException {
        long j10 = this.f3118c;
        if (j10 != 0) {
            s3Var.i(1, 0);
            s3Var.l(j10);
        }
        String str = this.f3120e;
        if (str != null && !str.equals("")) {
            s3Var.c(2, str);
        }
        g4[] g4VarArr = this.f3122h;
        if (g4VarArr != null && g4VarArr.length > 0) {
            int r02 = 0;
            while (true) {
                g4[] g4VarArr2 = this.f3122h;
                if (r02 >= g4VarArr2.length) {
                    break;
                }
                g4 g4Var = g4VarArr2[r02];
                if (g4Var != null) {
                    s3Var.b(3, g4Var);
                }
                r02++;
            }
        }
        byte[] bArr = a0.b.f12k;
        byte[] bArr2 = this.f3123j;
        if (!Arrays.equals(bArr2, bArr)) {
            s3Var.d(4, bArr2);
        }
        if (!Arrays.equals(this.f3124k, bArr)) {
            s3Var.d(6, this.f3124k);
        }
        c4 c4Var = this.f3127n;
        if (c4Var != null) {
            s3Var.b(7, c4Var);
        }
        String str2 = this.f3125l;
        if (str2 != null && !str2.equals("")) {
            s3Var.c(8, str2);
        }
        int r6 = this.f;
        if (r6 != 0) {
            s3Var.i(11, 0);
            if (r6 >= 0) {
                s3Var.f(r6);
            } else {
                s3Var.l(r6);
            }
        }
        String str3 = this.f3126m;
        if (str3 != null && !str3.equals("")) {
            s3Var.c(13, str3);
        }
        String str4 = this.f3128p;
        if (str4 != null && !str4.equals("")) {
            s3Var.c(14, str4);
        }
        long j11 = this.f3129q;
        if (j11 != 180000) {
            s3Var.i(15, 0);
            s3Var.l((j11 >> 63) ^ (j11 << 1));
        }
        d4 d4Var = this.f3130r;
        if (d4Var != null) {
            s3Var.b(16, d4Var);
        }
        long j12 = this.f3119d;
        if (j12 != 0) {
            s3Var.i(17, 0);
            s3Var.l(j12);
        }
        if (!Arrays.equals(this.f3131s, bArr)) {
            s3Var.d(18, this.f3131s);
        }
        int[] r03 = this.f3133v;
        if (r03 != null && r03.length > 0) {
            int r04 = 0;
            while (true) {
                int[] r22 = this.f3133v;
                if (r04 >= r22.length) {
                    break;
                }
                int r23 = r22[r04];
                s3Var.i(20, 0);
                if (r23 >= 0) {
                    s3Var.f(r23);
                } else {
                    s3Var.l(r23);
                }
                r04++;
            }
        }
        String str5 = this.f3132t;
        if (str5 != null && !str5.equals("")) {
            s3Var.c(24, str5);
        }
        boolean z10 = this.w;
        if (z10) {
            s3Var.i(25, 0);
            byte b10 = z10 ? (byte) 1 : (byte) 0;
            ByteBuffer byteBuffer = s3Var.f3309a;
            if (!byteBuffer.hasRemaining()) {
                throw new t3(byteBuffer.position(), byteBuffer.limit());
            }
            byteBuffer.put(b10);
        }
        String str6 = this.f3121g;
        if (str6 != null && !str6.equals("")) {
            s3Var.c(26, str6);
        }
        super.f(s3Var);
    }

    @Override // com.google.android.gms.internal.clearcut.u3
    /* renamed from: g */
    public final /* synthetic */ u3 clone() throws CloneNotSupportedException {
        return (f4) clone();
    }

    public final int hashCode() {
        int r02 = (f4.class.getName().hashCode() + 527) * 31;
        long j10 = this.f3118c;
        int r03 = (r02 + ((int) (j10 ^ (j10 >>> 32)))) * 31;
        long j11 = this.f3119d;
        int r04 = (r03 + ((int) (j11 ^ (j11 >>> 32)))) * 31 * 31;
        int r12 = 0;
        String str = this.f3120e;
        int r05 = (((r04 + (str == null ? 0 : str.hashCode())) * 31) + this.f) * 31;
        String str2 = this.f3121g;
        int r06 = (Arrays.hashCode(this.f3124k) + ((((Arrays.hashCode(this.f3123j) + ((((((r05 + (str2 == null ? 0 : str2.hashCode())) * 31 * 31) + 1237) * 31) + x3.b(this.f3122h)) * 31)) * 31) + 0) * 31)) * 31;
        String str3 = this.f3125l;
        int r07 = (r06 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.f3126m;
        int r08 = r07 + (str4 == null ? 0 : str4.hashCode());
        c4 c4Var = this.f3127n;
        int r09 = ((r08 * 31) + (c4Var == null ? 0 : c4Var.hashCode())) * 31;
        String str5 = this.f3128p;
        int r010 = (r09 + (str5 == null ? 0 : str5.hashCode())) * 31;
        long j12 = this.f3129q;
        d4 d4Var = this.f3130r;
        int r32 = (Arrays.hashCode(this.f3131s) + ((((r010 + ((int) (j12 ^ (j12 >>> 32)))) * 31) + (d4Var == null ? 0 : d4Var.hashCode())) * 31)) * 31;
        String str6 = this.f3132t;
        int r33 = (r32 + (str6 == null ? 0 : str6.hashCode())) * 31 * 31;
        int[] r011 = this.f3133v;
        int r012 = (((((((r011 == null || r011.length == 0) ? 0 : Arrays.hashCode(r011)) + r33) * 31 * 31) + 0) * 31) + (this.w ? 1231 : 1237)) * 31;
        v3 v3Var = this.f3322b;
        if (v3Var != null && !v3Var.b()) {
            r12 = this.f3322b.hashCode();
        }
        return r012 + r12;
    }
}
