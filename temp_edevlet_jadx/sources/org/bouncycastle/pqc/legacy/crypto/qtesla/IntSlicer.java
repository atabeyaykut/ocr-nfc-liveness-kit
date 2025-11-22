package org.bouncycastle.pqc.legacy.crypto.qtesla;

/* loaded from: classes2.dex */
final class IntSlicer {
    private int base;
    private final int[] values;

    public IntSlicer(int[] r12, int r22) {
        this.values = r12;
        this.base = r22;
    }

    public final int at(int r32) {
        return this.values[this.base + r32];
    }

    public final int at(int r32, int r42) {
        this.values[this.base + r32] = r42;
        return r42;
    }

    public final int at(int r32, long j10) {
        int[] r02 = this.values;
        int r12 = this.base + r32;
        int r33 = (int) j10;
        r02[r12] = r33;
        return r33;
    }

    public final IntSlicer copy() {
        return new IntSlicer(this.values, this.base);
    }

    public final IntSlicer from(int r42) {
        return new IntSlicer(this.values, this.base + r42);
    }

    public final void incBase(int r22) {
        this.base += r22;
    }
}
