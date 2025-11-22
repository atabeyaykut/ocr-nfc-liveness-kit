package com.google.android.gms.internal.vision;

/* loaded from: classes.dex */
public final class q0 extends s0 {

    /* renamed from: e, reason: collision with root package name */
    public final int f4047e;
    public final int f;

    public q0(byte[] bArr, int r32, int r42) {
        super(bArr);
        p0.z(r32, r32 + r42, bArr.length);
        this.f4047e = r32;
        this.f = r42;
    }

    @Override // com.google.android.gms.internal.vision.s0
    public final int A() {
        return this.f4047e;
    }

    @Override // com.google.android.gms.internal.vision.s0, com.google.android.gms.internal.vision.p0
    public final byte h(int r6) {
        int r12 = this.f;
        if (((r12 - (r6 + 1)) | r6) >= 0) {
            return this.f4071d[this.f4047e + r6];
        }
        if (r6 < 0) {
            throw new ArrayIndexOutOfBoundsException(androidx.appcompat.widget.v.c(22, "Index < 0: ", r6));
        }
        throw new ArrayIndexOutOfBoundsException(androidx.appcompat.graphics.drawable.a.e(40, "Index > length: ", r6, ", ", r12));
    }

    @Override // com.google.android.gms.internal.vision.s0, com.google.android.gms.internal.vision.p0
    public final int x() {
        return this.f;
    }

    @Override // com.google.android.gms.internal.vision.s0, com.google.android.gms.internal.vision.p0
    public final byte y(int r22) {
        return this.f4071d[this.f4047e + r22];
    }
}
