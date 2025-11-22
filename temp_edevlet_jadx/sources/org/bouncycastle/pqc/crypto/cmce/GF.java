package org.bouncycastle.pqc.crypto.cmce;

/* loaded from: classes2.dex */
abstract class GF {
    public abstract short gf_frac(short s7, short s10);

    public abstract short gf_inv(short s7);

    public final short gf_iszero(short s7) {
        return (short) ((s7 - 1) >> 31);
    }

    public abstract short gf_mul(short s7, short s10);

    public abstract int gf_mul_ext(short s7, short s10);

    public abstract void gf_mul_poly(int r12, int[] r22, short[] sArr, short[] sArr2, short[] sArr3, int[] r6);

    public abstract short gf_reduce(int r12);

    public abstract short gf_sq(short s7);

    public abstract int gf_sq_ext(short s7);

    public abstract void gf_sqr_poly(int r12, int[] r22, short[] sArr, short[] sArr2, int[] r52);
}
