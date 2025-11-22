package org.bouncycastle.math.raw;

/* loaded from: classes2.dex */
public abstract class Nat384 {
    public static void mul(int[] r13, int[] r14, int[] r15) {
        Nat192.mul(r13, r14, r15);
        Nat192.mul(r13, 6, r14, 6, r15, 12);
        int r22 = Nat192.addToEachOther(r15, 6, r15, 12);
        int r42 = Nat192.addTo(r15, 18, r15, 12, Nat192.addTo(r15, 0, r15, 6, 0) + r22) + r22;
        int[] r23 = Nat192.create();
        int[] r12 = Nat192.create();
        boolean z10 = Nat192.diff(r13, 6, r13, 0, r23, 0) != Nat192.diff(r14, 6, r14, 0, r12, 0);
        int[] r142 = Nat192.createExt();
        Nat192.mul(r23, r12, r142);
        Nat.addWordAt(24, r42 + (z10 ? Nat.addTo(12, r142, 0, r15, 6) : Nat.subFrom(12, r142, 0, r15, 6)), r15, 18);
    }

    public static void square(int[] r12, int[] r13) {
        Nat192.square(r12, r13);
        Nat192.square(r12, 6, r13, 12);
        int r22 = Nat192.addToEachOther(r13, 6, r13, 12);
        int r42 = Nat192.addTo(r13, 18, r13, 12, Nat192.addTo(r13, 0, r13, 6, 0) + r22) + r22;
        int[] r23 = Nat192.create();
        Nat192.diff(r12, 6, r12, 0, r23, 0);
        int[] r122 = Nat192.createExt();
        Nat192.square(r23, r122);
        Nat.addWordAt(24, Nat.subFrom(12, r122, 0, r13, 6) + r42, r13, 18);
    }
}
