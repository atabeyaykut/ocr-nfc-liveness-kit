package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.nio.charset.Charset;

/* loaded from: classes.dex */
public class u5 extends v5 {

    /* renamed from: c, reason: collision with root package name */
    public final byte[] f3786c;

    public u5(byte[] bArr) {
        bArr.getClass();
        this.f3786c = bArr;
    }

    public void C() {
    }

    @Override // com.google.android.gms.internal.measurement.v5
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof v5) || m() != ((v5) obj).m()) {
            return false;
        }
        if (m() == 0) {
            return true;
        }
        if (!(obj instanceof u5)) {
            return obj.equals(this);
        }
        u5 u5Var = (u5) obj;
        int r12 = this.f3792a;
        int r32 = u5Var.f3792a;
        if (r12 != 0 && r32 != 0 && r12 != r32) {
            return false;
        }
        int r13 = m();
        if (r13 > u5Var.m()) {
            int r02 = m();
            StringBuilder sb2 = new StringBuilder(40);
            sb2.append("Length too large: ");
            sb2.append(r13);
            sb2.append(r02);
            throw new IllegalArgumentException(sb2.toString());
        }
        if (r13 > u5Var.m()) {
            throw new IllegalArgumentException(androidx.appcompat.graphics.drawable.a.e(59, "Ran off end of other: 0, ", r13, ", ", u5Var.m()));
        }
        u5Var.C();
        int r22 = 0;
        int r33 = 0;
        while (r22 < r13) {
            if (this.f3786c[r22] != u5Var.f3786c[r33]) {
                return false;
            }
            r22++;
            r33++;
        }
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.v5
    public byte h(int r22) {
        return this.f3786c[r22];
    }

    @Override // com.google.android.gms.internal.measurement.v5
    public byte l(int r22) {
        return this.f3786c[r22];
    }

    @Override // com.google.android.gms.internal.measurement.v5
    public int m() {
        return this.f3786c.length;
    }

    @Override // com.google.android.gms.internal.measurement.v5
    public final int o(int r32, int r42) {
        Charset charset = x6.f3835a;
        for (int r02 = 0; r02 < r42; r02++) {
            r32 = (r32 * 31) + this.f3786c[r02];
        }
        return r32;
    }

    @Override // com.google.android.gms.internal.measurement.v5
    public final u5 u() {
        int r02 = v5.z(0, 47, m());
        return r02 == 0 ? v5.f3791b : new t5(this.f3786c, r02);
    }

    @Override // com.google.android.gms.internal.measurement.v5
    public final String w(Charset charset) {
        return new String(this.f3786c, 0, m(), charset);
    }

    @Override // com.google.android.gms.internal.measurement.v5
    public final void x(z5 z5Var) throws IOException {
        ((x5) z5Var).b0(this.f3786c, m());
    }

    @Override // com.google.android.gms.internal.measurement.v5
    public final boolean y() {
        return a9.c(this.f3786c, 0, m());
    }
}
