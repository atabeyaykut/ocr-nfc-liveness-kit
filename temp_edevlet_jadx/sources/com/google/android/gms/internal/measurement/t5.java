package com.google.android.gms.internal.measurement;

/* loaded from: classes.dex */
public final class t5 extends u5 {

    /* renamed from: d, reason: collision with root package name */
    public final int f3777d;

    public t5(byte[] bArr, int r32) {
        super(bArr);
        v5.z(0, r32, bArr.length);
        this.f3777d = r32;
    }

    @Override // com.google.android.gms.internal.measurement.u5
    public final void C() {
    }

    @Override // com.google.android.gms.internal.measurement.u5, com.google.android.gms.internal.measurement.v5
    public final byte h(int r6) {
        int r12 = this.f3777d;
        if (((r12 - (r6 + 1)) | r6) >= 0) {
            return this.f3786c[r6];
        }
        if (r6 < 0) {
            throw new ArrayIndexOutOfBoundsException(androidx.appcompat.widget.v.c(22, "Index < 0: ", r6));
        }
        throw new ArrayIndexOutOfBoundsException(androidx.appcompat.graphics.drawable.a.e(40, "Index > length: ", r6, ", ", r12));
    }

    @Override // com.google.android.gms.internal.measurement.u5, com.google.android.gms.internal.measurement.v5
    public final byte l(int r22) {
        return this.f3786c[r22];
    }

    @Override // com.google.android.gms.internal.measurement.u5, com.google.android.gms.internal.measurement.v5
    public final int m() {
        return this.f3777d;
    }
}
