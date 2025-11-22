package org.bouncycastle.pqc.math.ntru;

import org.bouncycastle.crypto.hpke.HPKE;
import org.bouncycastle.pqc.math.ntru.parameters.NTRUHRSSParameterSet;

/* loaded from: classes2.dex */
public class HRSSPolynomial extends Polynomial {
    public HRSSPolynomial(NTRUHRSSParameterSet nTRUHRSSParameterSet) {
        super(nTRUHRSSParameterSet);
    }

    @Override // org.bouncycastle.pqc.math.ntru.Polynomial
    public void lift(Polynomial polynomial) {
        int length = this.coeffs.length;
        Polynomial polynomialCreatePolynomial = this.params.createPolynomial();
        short s7 = (short) (3 - (length % 3));
        short[] sArr = polynomialCreatePolynomial.coeffs;
        short[] sArr2 = polynomial.coeffs;
        int r6 = 0;
        int r82 = 2 - s7;
        int r72 = sArr2[0] * r82;
        short s10 = sArr2[1];
        short s11 = sArr2[2];
        sArr[0] = (short) ((s11 * s7) + (s10 * 0) + r72);
        sArr[1] = (short) ((s11 * 0) + (s10 * r82));
        sArr[2] = (short) (s11 * r82);
        short s12 = 0;
        for (int r42 = 3; r42 < length; r42++) {
            short[] sArr3 = polynomialCreatePolynomial.coeffs;
            short s13 = sArr3[0];
            short[] sArr4 = polynomial.coeffs;
            sArr3[0] = (short) ((((s7 * 2) + s12) * sArr4[r42]) + s13);
            int r13 = s12 + s7;
            sArr3[1] = (short) ((sArr4[r42] * r13) + sArr3[1]);
            sArr3[2] = (short) ((sArr4[r42] * s12) + sArr3[2]);
            s12 = (short) (r13 % 3);
        }
        short[] sArr5 = polynomialCreatePolynomial.coeffs;
        short s14 = sArr5[1];
        short[] sArr6 = polynomial.coeffs;
        short s15 = sArr6[0];
        int r22 = s7 + s12;
        sArr5[1] = (short) ((s15 * r22) + s14);
        short s16 = (short) ((s15 * s12) + sArr5[2]);
        sArr5[2] = s16;
        sArr5[2] = (short) ((sArr6[1] * r22) + s16);
        for (int r32 = 3; r32 < length; r32++) {
            short[] sArr7 = polynomialCreatePolynomial.coeffs;
            short s17 = sArr7[r32 - 3];
            short[] sArr8 = polynomial.coeffs;
            sArr7[r32] = (short) (((sArr8[r32] + sArr8[r32 - 1] + sArr8[r32 - 2]) * 2) + s17);
        }
        polynomialCreatePolynomial.mod3PhiN();
        polynomialCreatePolynomial.z3ToZq();
        this.coeffs[0] = (short) (-polynomialCreatePolynomial.coeffs[0]);
        while (r6 < length - 1) {
            short[] sArr9 = this.coeffs;
            int r23 = r6 + 1;
            short[] sArr10 = polynomialCreatePolynomial.coeffs;
            sArr9[r23] = (short) (sArr10[r6] - sArr10[r23]);
            r6 = r23;
        }
    }

    @Override // org.bouncycastle.pqc.math.ntru.Polynomial
    public void sqFromBytes(byte[] bArr) {
        int r12 = 0;
        while (r12 < this.params.packDegree() / 8) {
            short[] sArr = this.coeffs;
            int r52 = r12 * 8;
            int r72 = r12 * 13;
            int r82 = bArr[r72 + 0] & 255;
            byte b10 = bArr[r72 + 1];
            sArr[r52 + 0] = (short) (r82 | ((((short) (b10 & 255)) & 31) << 8));
            int r83 = ((b10 & 255) >>> 5) | (((short) (bArr[r72 + 2] & 255)) << 3);
            byte b11 = bArr[r72 + 3];
            sArr[r52 + 1] = (short) (r83 | ((((short) (b11 & 255)) & 3) << 11));
            int r84 = (b11 & 255) >>> 2;
            byte b12 = bArr[r72 + 4];
            sArr[r52 + 2] = (short) (r84 | ((((short) (b12 & 255)) & 127) << 6));
            int r85 = ((b12 & 255) >>> 7) | (((short) (bArr[r72 + 5] & 255)) << 1);
            byte b13 = bArr[r72 + 6];
            sArr[r52 + 3] = (short) (r85 | ((((short) (b13 & 255)) & 15) << 9));
            int r32 = (((short) (bArr[r72 + 7] & 255)) << 4) | ((b13 & 255) >>> 4);
            byte b14 = bArr[r72 + 8];
            sArr[r52 + 4] = (short) (r32 | ((((short) (b14 & 255)) & 1) << 12));
            int r6 = (b14 & 255) >>> 1;
            byte b15 = bArr[r72 + 9];
            sArr[r52 + 5] = (short) (r6 | ((((short) (b15 & 255)) & 63) << 7));
            int r42 = (((short) (bArr[r72 + 10] & 255)) << 2) | ((b15 & 255) >>> 6);
            byte b16 = bArr[r72 + 11];
            sArr[r52 + 6] = (short) (r42 | ((((short) (b16 & 255)) & 7) << 10));
            sArr[r52 + 7] = (short) (((b16 & 255) >>> 3) | (((short) (bArr[r72 + 12] & 255)) << 5));
            r12++;
        }
        int r22 = this.params.packDegree() & 7;
        if (r22 == 2) {
            short[] sArr2 = this.coeffs;
            int r33 = r12 * 8;
            int r13 = r12 * 13;
            int r53 = bArr[r13 + 0] & 255;
            byte b17 = bArr[r13 + 1];
            sArr2[r33 + 0] = (short) (r53 | ((((short) (b17 & 255)) & 31) << 8));
            sArr2[r33 + 1] = (short) (((((short) (bArr[r13 + 3] & 255)) & 3) << 11) | ((b17 & 255) >>> 5) | (((short) (bArr[r13 + 2] & 255)) << 3));
        } else if (r22 == 4) {
            short[] sArr3 = this.coeffs;
            int r34 = r12 * 8;
            int r14 = r12 * 13;
            int r62 = bArr[r14 + 0] & 255;
            byte b18 = bArr[r14 + 1];
            sArr3[r34 + 0] = (short) (r62 | ((((short) (b18 & 255)) & 31) << 8));
            int r63 = ((b18 & 255) >>> 5) | (((short) (bArr[r14 + 2] & 255)) << 3);
            byte b19 = bArr[r14 + 3];
            sArr3[r34 + 1] = (short) (r63 | ((((short) (b19 & 255)) & 3) << 11));
            byte b20 = bArr[r14 + 4];
            sArr3[r34 + 2] = (short) (((b19 & 255) >>> 2) | ((((short) (b20 & 255)) & 127) << 6));
            sArr3[r34 + 3] = (short) (((((short) (bArr[r14 + 6] & 255)) & 15) << 9) | ((b20 & 255) >>> 7) | (((short) (bArr[r14 + 5] & 255)) << 1));
        }
        this.coeffs[this.params.n() - 1] = 0;
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
            int r63 = r52 * 13;
            short s10 = sArr[c10];
            bArr[r63 + 0] = (byte) (s10 & 255);
            int r72 = s10 >>> 8;
            short s11 = sArr[1];
            bArr[r63 + 1] = (byte) (r72 | ((s11 & 7) << 5));
            bArr[r63 + 2] = (byte) ((s11 >>> 3) & 255);
            int r73 = s11 >>> 11;
            short s12 = sArr[2];
            bArr[r63 + 3] = (byte) (r73 | ((s12 & 63) << 2));
            short s13 = sArr[3];
            bArr[r63 + 4] = (byte) ((s12 >>> 6) | ((s13 & 1) << 7));
            bArr[r63 + 5] = (byte) ((s13 >>> 1) & 255);
            int r74 = s13 >>> 9;
            short s14 = sArr[4];
            bArr[r63 + 6] = (byte) (r74 | ((s14 & 15) << 4));
            bArr[r63 + 7] = (byte) ((s14 >>> 4) & 255);
            short s15 = sArr[5];
            bArr[r63 + 8] = (byte) ((s14 >>> 12) | ((s15 & 127) << 1));
            int r75 = s15 >>> 7;
            short s16 = sArr[6];
            bArr[r63 + 9] = (byte) (r75 | ((s16 & 3) << 6));
            bArr[r63 + 10] = (byte) ((s16 >>> 2) & 255);
            short s17 = sArr[7];
            bArr[r63 + 11] = (byte) ((s16 >>> 10) | ((s17 & 31) << 3));
            bArr[r63 + 12] = (byte) (s17 >>> 5);
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
        int r43 = this.params.packDegree() - ((this.params.packDegree() / 8) * 8);
        if (r43 == 2) {
            int r53 = r52 * 13;
            short s18 = sArr[0];
            bArr[r53 + 0] = (byte) (s18 & 255);
            int r22 = s18 >>> 8;
            short s19 = sArr[1];
            bArr[r53 + 1] = (byte) (r22 | ((s19 & 7) << 5));
            bArr[r53 + 2] = (byte) ((s19 >>> 3) & 255);
            bArr[r53 + 3] = (byte) ((s19 >>> 11) | ((sArr[2] & 63) << 2));
        } else if (r43 == 4) {
            int r44 = r52 * 13;
            short s20 = sArr[0];
            bArr[r44 + 0] = (byte) (s20 & 255);
            int r77 = s20 >>> 8;
            short s21 = sArr[1];
            bArr[r44 + 1] = (byte) (r77 | ((s21 & 7) << 5));
            bArr[r44 + 2] = (byte) ((s21 >>> 3) & 255);
            int r78 = s21 >>> 11;
            short s22 = sArr[2];
            bArr[r44 + 3] = (byte) (r78 | ((s22 & 63) << 2));
            int r79 = s22 >>> 6;
            short s23 = sArr[3];
            bArr[r44 + 4] = (byte) (r79 | ((s23 & 1) << 7));
            bArr[r44 + 5] = (byte) ((s23 >>> 1) & 255);
            bArr[r44 + 6] = (byte) ((s23 >>> 9) | ((sArr[4] & 15) << 4));
            int r532 = r52 * 13;
            short s182 = sArr[0];
            bArr[r532 + 0] = (byte) (s182 & 255);
            int r222 = s182 >>> 8;
            short s192 = sArr[1];
            bArr[r532 + 1] = (byte) (r222 | ((s192 & 7) << 5));
            bArr[r532 + 2] = (byte) ((s192 >>> 3) & 255);
            bArr[r532 + 3] = (byte) ((s192 >>> 11) | ((sArr[2] & 63) << 2));
        }
        return bArr;
    }
}
