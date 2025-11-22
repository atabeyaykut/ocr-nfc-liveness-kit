package org.bouncycastle.pqc.crypto.sphincsplus;

/* loaded from: classes2.dex */
class SIG {

    /* renamed from: r, reason: collision with root package name */
    private final byte[] f11956r;
    private final SIG_FORS[] sig_fors;
    private final SIG_XMSS[] sig_ht;

    public SIG(int r82, int r92, int r10, int r11, int r12, int r13, byte[] bArr) {
        byte[] bArr2 = new byte[r82];
        this.f11956r = bArr2;
        System.arraycopy(bArr, 0, bArr2, 0, r82);
        this.sig_fors = new SIG_FORS[r92];
        int r22 = r82;
        for (int r02 = 0; r02 != r92; r02++) {
            byte[] bArr3 = new byte[r82];
            System.arraycopy(bArr, r22, bArr3, 0, r82);
            r22 += r82;
            byte[][] bArr4 = new byte[r10][];
            for (int r52 = 0; r52 != r10; r52++) {
                byte[] bArr5 = new byte[r82];
                bArr4[r52] = bArr5;
                System.arraycopy(bArr, r22, bArr5, 0, r82);
                r22 += r82;
            }
            this.sig_fors[r02] = new SIG_FORS(bArr3, bArr4);
        }
        this.sig_ht = new SIG_XMSS[r11];
        for (int r93 = 0; r93 != r11; r93++) {
            int r102 = r13 * r82;
            byte[] bArr6 = new byte[r102];
            System.arraycopy(bArr, r22, bArr6, 0, r102);
            r22 += r102;
            byte[][] bArr7 = new byte[r12][];
            for (int r32 = 0; r32 != r12; r32++) {
                byte[] bArr8 = new byte[r82];
                bArr7[r32] = bArr8;
                System.arraycopy(bArr, r22, bArr8, 0, r82);
                r22 += r82;
            }
            this.sig_ht[r93] = new SIG_XMSS(bArr6, bArr7);
        }
        if (r22 != bArr.length) {
            throw new IllegalArgumentException("signature wrong length");
        }
    }

    public byte[] getR() {
        return this.f11956r;
    }

    public SIG_FORS[] getSIG_FORS() {
        return this.sig_fors;
    }

    public SIG_XMSS[] getSIG_HT() {
        return this.sig_ht;
    }
}
