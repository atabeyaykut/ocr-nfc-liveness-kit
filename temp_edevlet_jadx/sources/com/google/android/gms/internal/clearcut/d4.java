package com.google.android.gms.internal.clearcut;

import java.io.IOException;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class d4 extends u3<d4> implements Cloneable {

    /* renamed from: c, reason: collision with root package name */
    public final byte[] f3083c = a0.b.f12k;

    /* renamed from: d, reason: collision with root package name */
    public final String f3084d = "";

    /* renamed from: e, reason: collision with root package name */
    public byte[][] f3085e = a0.b.f11j;

    public d4() {
        this.f3322b = null;
        this.f3351a = -1;
    }

    @Override // com.google.android.gms.internal.clearcut.u3, com.google.android.gms.internal.clearcut.y3
    public final Object clone() throws CloneNotSupportedException {
        try {
            d4 d4Var = (d4) super.clone();
            byte[][] bArr = this.f3085e;
            if (bArr != null && bArr.length > 0) {
                d4Var.f3085e = (byte[][]) bArr.clone();
            }
            return d4Var;
        } catch (CloneNotSupportedException e10) {
            throw new AssertionError(e10);
        }
    }

    @Override // com.google.android.gms.internal.clearcut.u3, com.google.android.gms.internal.clearcut.y3
    public final int d() {
        super.d();
        byte[] bArr = a0.b.f12k;
        byte[] bArr2 = this.f3083c;
        int r32 = 0;
        int r02 = !Arrays.equals(bArr2, bArr) ? s3.h(1, bArr2) + 0 : 0;
        byte[][] bArr3 = this.f3085e;
        if (bArr3 != null && bArr3.length > 0) {
            int r12 = 0;
            int r42 = 0;
            while (true) {
                byte[][] bArr4 = this.f3085e;
                if (r32 >= bArr4.length) {
                    break;
                }
                byte[] bArr5 = bArr4[r32];
                if (bArr5 != null) {
                    r42++;
                    r12 = s3.o(bArr5.length) + bArr5.length + r12;
                }
                r32++;
            }
            r02 = r02 + r12 + (r42 * 1);
        }
        String str = this.f3084d;
        return (str == null || str.equals("")) ? r02 : r02 + s3.g(4, str);
    }

    @Override // com.google.android.gms.internal.clearcut.u3, com.google.android.gms.internal.clearcut.y3
    /* renamed from: e */
    public final /* synthetic */ y3 clone() throws CloneNotSupportedException {
        return (d4) clone();
    }

    public final boolean equals(Object obj) {
        boolean z10;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof d4)) {
            return false;
        }
        d4 d4Var = (d4) obj;
        if (!Arrays.equals(this.f3083c, d4Var.f3083c)) {
            return false;
        }
        String str = d4Var.f3084d;
        String str2 = this.f3084d;
        if (str2 == null) {
            if (str != null) {
                return false;
            }
        } else if (!str2.equals(str)) {
            return false;
        }
        byte[][] bArr = this.f3085e;
        byte[][] bArr2 = d4Var.f3085e;
        Object obj2 = x3.f3347a;
        int length = bArr == null ? 0 : bArr.length;
        int length2 = bArr2 == null ? 0 : bArr2.length;
        int r6 = 0;
        int r72 = 0;
        while (true) {
            if (r6 >= length || bArr[r6] != null) {
                while (r72 < length2 && bArr2[r72] == null) {
                    r72++;
                }
                boolean z11 = r6 >= length;
                boolean z12 = r72 >= length2;
                if (!z11 || !z12) {
                    if (z11 != z12 || !Arrays.equals(bArr[r6], bArr2[r72])) {
                        break;
                    }
                    r6++;
                    r72++;
                } else {
                    z10 = true;
                    break;
                }
            } else {
                r6++;
            }
        }
        z10 = false;
        if (!z10) {
            return false;
        }
        v3 v3Var = this.f3322b;
        if (v3Var != null && !v3Var.b()) {
            return this.f3322b.equals(d4Var.f3322b);
        }
        v3 v3Var2 = d4Var.f3322b;
        return v3Var2 == null || v3Var2.b();
    }

    @Override // com.google.android.gms.internal.clearcut.u3
    public final void f(s3 s3Var) throws IOException {
        byte[] bArr = a0.b.f12k;
        byte[] bArr2 = this.f3083c;
        if (!Arrays.equals(bArr2, bArr)) {
            s3Var.d(1, bArr2);
        }
        byte[][] bArr3 = this.f3085e;
        if (bArr3 != null && bArr3.length > 0) {
            int r02 = 0;
            while (true) {
                byte[][] bArr4 = this.f3085e;
                if (r02 >= bArr4.length) {
                    break;
                }
                byte[] bArr5 = bArr4[r02];
                if (bArr5 != null) {
                    s3Var.d(2, bArr5);
                }
                r02++;
            }
        }
        String str = this.f3084d;
        if (str != null && !str.equals("")) {
            s3Var.c(4, str);
        }
        super.f(s3Var);
    }

    @Override // com.google.android.gms.internal.clearcut.u3
    /* renamed from: g */
    public final /* synthetic */ u3 clone() throws CloneNotSupportedException {
        return (d4) clone();
    }

    public final int hashCode() {
        int r12 = (Arrays.hashCode(this.f3083c) + ((d4.class.getName().hashCode() + 527) * 31)) * 31;
        int r02 = 0;
        String str = this.f3084d;
        int r13 = (r12 + (str == null ? 0 : str.hashCode())) * 31;
        byte[][] bArr = this.f3085e;
        Object obj = x3.f3347a;
        int length = bArr == null ? 0 : bArr.length;
        int r52 = 0;
        for (int r42 = 0; r42 < length; r42++) {
            byte[] bArr2 = bArr[r42];
            if (bArr2 != null) {
                r52 = (r52 * 31) + Arrays.hashCode(bArr2);
            }
        }
        int r14 = (((r13 + r52) * 31) + 1237) * 31;
        v3 v3Var = this.f3322b;
        if (v3Var != null && !v3Var.b()) {
            r02 = this.f3322b.hashCode();
        }
        return r14 + r02;
    }
}
