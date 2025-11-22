package com.google.android.gms.internal.measurement;

import sun.misc.Unsafe;

/* loaded from: classes.dex */
public final class w8 extends x8 {
    public w8(Unsafe unsafe) {
        super(unsafe);
    }

    @Override // com.google.android.gms.internal.measurement.x8
    public final double a(long j10, Object obj) {
        return Double.longBitsToDouble(k(j10, obj));
    }

    @Override // com.google.android.gms.internal.measurement.x8
    public final float b(long j10, Object obj) {
        return Float.intBitsToFloat(j(j10, obj));
    }

    @Override // com.google.android.gms.internal.measurement.x8
    public final void c(Object obj, long j10, boolean z10) {
        if (y8.f3850g) {
            y8.c(obj, j10, z10 ? (byte) 1 : (byte) 0);
        } else {
            y8.d(obj, j10, z10 ? (byte) 1 : (byte) 0);
        }
    }

    @Override // com.google.android.gms.internal.measurement.x8
    public final void d(Object obj, long j10, byte b10) {
        if (y8.f3850g) {
            y8.c(obj, j10, b10);
        } else {
            y8.d(obj, j10, b10);
        }
    }

    @Override // com.google.android.gms.internal.measurement.x8
    public final void e(Object obj, long j10, double d10) {
        o(obj, j10, Double.doubleToLongBits(d10));
    }

    @Override // com.google.android.gms.internal.measurement.x8
    public final void f(Object obj, long j10, float f) {
        n(Float.floatToIntBits(f), j10, obj);
    }

    @Override // com.google.android.gms.internal.measurement.x8
    public final boolean g(long j10, Object obj) {
        if (y8.f3850g) {
            return ((byte) ((y8.f3847c.j((-4) & j10, obj) >>> ((int) (((~j10) & 3) << 3))) & 255)) != 0;
        }
        return ((byte) ((y8.f3847c.j((-4) & j10, obj) >>> ((int) ((j10 & 3) << 3))) & 255)) != 0;
    }
}
