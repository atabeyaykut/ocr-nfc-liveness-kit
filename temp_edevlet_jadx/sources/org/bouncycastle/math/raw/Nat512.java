package org.bouncycastle.math.raw;

/* loaded from: classes2.dex */
public abstract class Nat512 {
    public static void mul(int[] r13, int[] r14, int[] r15) {
        Nat256.mul(r13, r14, r15);
        Nat256.mul(r13, 8, r14, 8, r15, 16);
        int r22 = Nat256.addToEachOther(r15, 8, r15, 16);
        int r42 = Nat256.addTo(r15, 24, r15, 16, Nat256.addTo(r15, 0, r15, 8, 0) + r22) + r22;
        int[] r23 = Nat256.create();
        int[] r12 = Nat256.create();
        boolean z10 = Nat256.diff(r13, 8, r13, 0, r23, 0) != Nat256.diff(r14, 8, r14, 0, r12, 0);
        int[] r142 = Nat256.createExt();
        Nat256.mul(r23, r12, r142);
        Nat.addWordAt(32, r42 + (z10 ? Nat.addTo(16, r142, 0, r15, 8) : Nat.subFrom(16, r142, 0, r15, 8)), r15, 24);
    }

    public static void square(int[] r12, int[] r13) {
        Nat256.square(r12, r13);
        Nat256.square(r12, 8, r13, 16);
        int r22 = Nat256.addToEachOther(r13, 8, r13, 16);
        int r42 = Nat256.addTo(r13, 24, r13, 16, Nat256.addTo(r13, 0, r13, 8, 0) + r22) + r22;
        int[] r23 = Nat256.create();
        Nat256.diff(r12, 8, r12, 0, r23, 0);
        int[] r122 = Nat256.createExt();
        Nat256.square(r23, r122);
        Nat.addWordAt(32, Nat.subFrom(16, r122, 0, r13, 8) + r42, r13, 24);
    }
}
