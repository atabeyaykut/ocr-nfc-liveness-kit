package com.google.android.gms.internal.clearcut;

import android.os.Looper;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class z implements a0, com.google.android.gms.internal.vision.r0 {
    public /* synthetic */ z() {
    }

    public static final boolean c() {
        return Looper.myLooper() == Looper.getMainLooper();
    }

    @Override // com.google.android.gms.internal.clearcut.a0
    public final byte[] a(byte[] bArr, int r22, int r32) {
        return Arrays.copyOfRange(bArr, r22, r32 + r22);
    }

    @Override // com.google.android.gms.internal.vision.r0
    public final byte[] b(byte[] bArr, int r42, int r52) {
        byte[] bArr2 = new byte[r52];
        System.arraycopy(bArr, r42, bArr2, 0, r52);
        return bArr2;
    }

    public /* synthetic */ z(int r12) {
    }

    public /* synthetic */ z(ab.b bVar) {
    }

    public /* synthetic */ z(Object obj) {
    }
}
