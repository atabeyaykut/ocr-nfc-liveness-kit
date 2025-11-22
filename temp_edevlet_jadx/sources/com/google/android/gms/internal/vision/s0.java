package com.google.android.gms.internal.vision;

import java.io.IOException;
import java.nio.charset.Charset;

/* loaded from: classes.dex */
public class s0 extends p0 {

    /* renamed from: d, reason: collision with root package name */
    public final byte[] f4071d;

    public s0(byte[] bArr) {
        bArr.getClass();
        this.f4071d = bArr;
    }

    public int A() {
        return 0;
    }

    @Override // com.google.android.gms.internal.vision.p0
    public final boolean c() {
        int r02 = A();
        return w3.b(this.f4071d, r02, x() + r02);
    }

    @Override // com.google.android.gms.internal.vision.p0
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof p0) || x() != ((p0) obj).x()) {
            return false;
        }
        if (x() == 0) {
            return true;
        }
        if (!(obj instanceof s0)) {
            return obj.equals(this);
        }
        s0 s0Var = (s0) obj;
        int r12 = this.f4046a;
        int r32 = s0Var.f4046a;
        if (r12 != 0 && r32 != 0 && r12 != r32) {
            return false;
        }
        int r13 = x();
        if (r13 > s0Var.x()) {
            int r02 = x();
            StringBuilder sb2 = new StringBuilder(40);
            sb2.append("Length too large: ");
            sb2.append(r13);
            sb2.append(r02);
            throw new IllegalArgumentException(sb2.toString());
        }
        if (r13 > s0Var.x()) {
            throw new IllegalArgumentException(androidx.appcompat.graphics.drawable.a.e(59, "Ran off end of other: 0, ", r13, ", ", s0Var.x()));
        }
        int r22 = A() + r13;
        int r14 = A();
        int r33 = s0Var.A();
        while (r14 < r22) {
            if (this.f4071d[r14] != s0Var.f4071d[r33]) {
                return false;
            }
            r14++;
            r33++;
        }
        return true;
    }

    @Override // com.google.android.gms.internal.vision.p0
    public byte h(int r22) {
        return this.f4071d[r22];
    }

    @Override // com.google.android.gms.internal.vision.p0
    public final int l(int r42, int r52) {
        int r02 = A();
        Charset charset = m1.f4035a;
        for (int r12 = r02; r12 < r02 + r52; r12++) {
            r42 = (r42 * 31) + this.f4071d[r12];
        }
        return r42;
    }

    @Override // com.google.android.gms.internal.vision.p0
    public final s0 m() {
        int r02 = p0.z(0, 47, x());
        return r02 == 0 ? p0.f4044b : new q0(this.f4071d, A(), r02);
    }

    @Override // com.google.android.gms.internal.vision.p0
    public final String u(Charset charset) {
        return new String(this.f4071d, A(), x(), charset);
    }

    @Override // com.google.android.gms.internal.vision.p0
    public final void w(m0 m0Var) throws IOException {
        m0Var.d(this.f4071d, A(), x());
    }

    @Override // com.google.android.gms.internal.vision.p0
    public int x() {
        return this.f4071d.length;
    }

    @Override // com.google.android.gms.internal.vision.p0
    public byte y(int r22) {
        return this.f4071d[r22];
    }
}
