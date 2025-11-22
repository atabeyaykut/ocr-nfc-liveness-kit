package org.bouncycastle.pqc.math.ntru;

import org.bouncycastle.crypto.hpke.HPKE;
import org.bouncycastle.pqc.math.ntru.parameters.NTRUHPSParameterSet;

/* loaded from: classes2.dex */
public class HPSPolynomial extends Polynomial {
    public HPSPolynomial(NTRUHPSParameterSet nTRUHPSParameterSet) {
        super(nTRUHPSParameterSet);
    }

    @Override // org.bouncycastle.pqc.math.ntru.Polynomial
    public void lift(Polynomial polynomial) {
        short[] sArr = this.coeffs;
        System.arraycopy(polynomial.coeffs, 0, sArr, 0, sArr.length);
        z3ToZq();
    }

    @Override // org.bouncycastle.pqc.math.ntru.Polynomial
    public void sqFromBytes(byte[] bArr) {
        int length = this.coeffs.length;
        int r22 = 0;
        while (r22 < this.params.packDegree() / 8) {
            short[] sArr = this.coeffs;
            int r6 = r22 * 8;
            int r82 = r22 * 11;
            int r92 = (bArr[r82 + 0] & 255) >>> 0;
            byte b10 = bArr[r82 + 1];
            sArr[r6 + 0] = (short) (r92 | ((((short) (b10 & 255)) & 7) << 8));
            int r93 = (b10 & 255) >>> 3;
            byte b11 = bArr[r82 + 2];
            sArr[r6 + 1] = (short) (r93 | ((((short) (b11 & 255)) & 63) << 5));
            int r94 = ((b11 & 255) >>> 6) | ((((short) (bArr[r82 + 3] & 255)) & 255) << 2);
            byte b12 = bArr[r82 + 4];
            sArr[r6 + 2] = (short) (r94 | ((((short) (b12 & 255)) & 1) << 10));
            int r95 = (b12 & 255) >>> 1;
            byte b13 = bArr[r82 + 5];
            sArr[r6 + 3] = (short) (r95 | ((((short) (b13 & 255)) & 15) << 7));
            int r96 = (b13 & 255) >>> 4;
            byte b14 = bArr[r82 + 6];
            sArr[r6 + 4] = (short) (((((short) (b14 & 255)) & 127) << 4) | r96);
            int r72 = ((b14 & 255) >>> 7) | ((((short) (bArr[r82 + 7] & 255)) & 255) << 1);
            byte b15 = bArr[r82 + 8];
            sArr[r6 + 5] = (short) (r72 | ((((short) (b15 & 255)) & 3) << 9));
            byte b16 = bArr[r82 + 9];
            sArr[r6 + 6] = (short) (((b15 & 255) >>> 2) | ((((short) (b16 & 255)) & 31) << 6));
            sArr[r6 + 7] = (short) (((b16 & 255) >>> 5) | ((((short) (bArr[r82 + 10] & 255)) & 255) << 3));
            r22++;
        }
        int r32 = this.params.packDegree() & 7;
        if (r32 == 2) {
            short[] sArr2 = this.coeffs;
            int r42 = r22 * 8;
            int r23 = r22 * 11;
            int r73 = (bArr[r23 + 0] & 255) >>> 0;
            byte b17 = bArr[r23 + 1];
            sArr2[r42 + 0] = (short) (r73 | ((((short) (b17 & 255)) & 7) << 8));
            sArr2[r42 + 1] = (short) (((((short) (bArr[r23 + 2] & 255)) & 63) << 5) | ((b17 & 255) >>> 3));
        } else if (r32 == 4) {
            short[] sArr3 = this.coeffs;
            int r43 = r22 * 8;
            int r24 = r22 * 11;
            int r74 = (bArr[r24 + 0] & 255) >>> 0;
            byte b18 = bArr[r24 + 1];
            sArr3[r43 + 0] = (short) (r74 | ((((short) (b18 & 255)) & 7) << 8));
            int r75 = (b18 & 255) >>> 3;
            byte b19 = bArr[r24 + 2];
            sArr3[r43 + 1] = (short) (r75 | ((((short) (b19 & 255)) & 63) << 5));
            int r52 = ((((short) (bArr[r24 + 3] & 255)) & 255) << 2) | ((b19 & 255) >>> 6);
            byte b20 = bArr[r24 + 4];
            sArr3[r43 + 2] = (short) (r52 | ((((short) (b20 & 255)) & 1) << 10));
            sArr3[r43 + 3] = (short) (((((short) (bArr[r24 + 5] & 255)) & 15) << 7) | ((b20 & 255) >>> 1));
        }
        this.coeffs[length - 1] = 0;
    }

    @Override // org.bouncycastle.pqc.math.ntru.Polynomial
    public byte[] sqToBytes(int r19) {
        byte[] bArr = new byte[r19];
        short[] sArr = new short[8];
        char c10 = 0;
        int r52 = 0;
        while (true) {
            int r6 = this.params.packDegree() / 8;
            short s7 = HPKE.aead_EXPORT_ONLY;
            if (r52 >= r6) {
                break;
            }
            int r62 = 0;
            while (r62 < 8) {
                sArr[r62] = (short) Polynomial.modQ(this.coeffs[(r52 * 8) + r62] & s7, this.params.q());
                r62++;
                s7 = HPKE.aead_EXPORT_ONLY;
            }
            int r63 = r52 * 11;
            short s10 = sArr[c10];
            bArr[r63 + 0] = (byte) (s10 & 255);
            int r72 = s10 >>> 8;
            short s11 = sArr[1];
            bArr[r63 + 1] = (byte) (r72 | ((s11 & 31) << 3));
            int r73 = s11 >>> 5;
            short s12 = sArr[2];
            bArr[r63 + 2] = (byte) (r73 | ((s12 & 3) << 6));
            bArr[r63 + 3] = (byte) ((s12 >>> 2) & 255);
            int r74 = s12 >>> 10;
            short s13 = sArr[3];
            bArr[r63 + 4] = (byte) (r74 | ((s13 & 127) << 1));
            short s14 = sArr[4];
            bArr[r63 + 5] = (byte) ((s13 >>> 7) | ((s14 & 15) << 4));
            short s15 = sArr[5];
            bArr[r63 + 6] = (byte) ((s14 >>> 4) | ((s15 & 1) << 7));
            bArr[r63 + 7] = (byte) ((s15 >>> 1) & 255);
            int r75 = s15 >>> 9;
            short s16 = sArr[6];
            bArr[r63 + 8] = (byte) (r75 | ((s16 & 63) << 2));
            short s17 = sArr[7];
            bArr[r63 + 9] = (byte) ((s16 >>> 6) | ((s17 & 7) << 5));
            bArr[r63 + 10] = (byte) (s17 >>> 3);
            r52++;
            c10 = 0;
        }
        int r42 = 0;
        while (true) {
            int r76 = r52 * 8;
            if (r42 >= this.params.packDegree() - r76) {
                break;
            }
            sArr[r42] = (short) Polynomial.modQ(this.coeffs[r76 + r42] & HPKE.aead_EXPORT_ONLY, this.params.q());
            r42++;
        }
        while (r42 < 8) {
            sArr[r42] = 0;
            r42++;
        }
        int r43 = this.params.packDegree() & 7;
        if (r43 == 2) {
            int r53 = r52 * 11;
            short s18 = sArr[0];
            bArr[r53 + 0] = (byte) (s18 & 255);
            int r22 = s18 >>> 8;
            short s19 = sArr[1];
            bArr[r53 + 1] = (byte) (r22 | ((s19 & 31) << 3));
            bArr[r53 + 2] = (byte) ((s19 >>> 5) | ((sArr[2] & 3) << 6));
        } else if (r43 == 4) {
            int r54 = r52 * 11;
            short s20 = sArr[0];
            bArr[r54 + 0] = (byte) (s20 & 255);
            int r23 = s20 >>> 8;
            short s21 = sArr[1];
            bArr[r54 + 1] = (byte) (r23 | ((s21 & 31) << 3));
            int r44 = s21 >>> 5;
            short s22 = sArr[2];
            bArr[r54 + 2] = (byte) (r44 | ((s22 & 3) << 6));
            bArr[r54 + 3] = (byte) ((s22 >>> 2) & 255);
            int r45 = s22 >>> 10;
            short s23 = sArr[3];
            bArr[r54 + 4] = (byte) (r45 | ((s23 & 127) << 1));
            bArr[r54 + 5] = (byte) ((s23 >>> 7) | ((sArr[4] & 15) << 4));
        }
        return bArr;
    }
}
