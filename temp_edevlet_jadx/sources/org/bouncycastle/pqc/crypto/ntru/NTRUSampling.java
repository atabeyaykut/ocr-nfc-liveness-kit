package org.bouncycastle.pqc.crypto.ntru;

import org.bouncycastle.crypto.hpke.HPKE;
import org.bouncycastle.pqc.math.ntru.HPSPolynomial;
import org.bouncycastle.pqc.math.ntru.HRSSPolynomial;
import org.bouncycastle.pqc.math.ntru.Polynomial;
import org.bouncycastle.pqc.math.ntru.parameters.NTRUHPSParameterSet;
import org.bouncycastle.pqc.math.ntru.parameters.NTRUHRSSParameterSet;
import org.bouncycastle.pqc.math.ntru.parameters.NTRUParameterSet;
import org.bouncycastle.util.Arrays;

/* loaded from: classes2.dex */
class NTRUSampling {
    private final NTRUParameterSet params;

    public NTRUSampling(NTRUParameterSet nTRUParameterSet) {
        this.params = nTRUParameterSet;
    }

    private static int mod3(int r02) {
        return r02 % 3;
    }

    public PolynomialPair sampleFg(byte[] bArr) {
        NTRUParameterSet nTRUParameterSet = this.params;
        if (nTRUParameterSet instanceof NTRUHRSSParameterSet) {
            return new PolynomialPair(sampleIidPlus(Arrays.copyOfRange(bArr, 0, nTRUParameterSet.sampleIidBytes())), sampleIidPlus(Arrays.copyOfRange(bArr, this.params.sampleIidBytes(), bArr.length)));
        }
        if (nTRUParameterSet instanceof NTRUHPSParameterSet) {
            return new PolynomialPair((HPSPolynomial) sampleIid(Arrays.copyOfRange(bArr, 0, nTRUParameterSet.sampleIidBytes())), sampleFixedType(Arrays.copyOfRange(bArr, this.params.sampleIidBytes(), bArr.length)));
        }
        throw new IllegalArgumentException("Invalid polynomial type");
    }

    public HPSPolynomial sampleFixedType(byte[] bArr) {
        int r6;
        int r52;
        int r02 = this.params.n();
        int r12 = ((NTRUHPSParameterSet) this.params).weight();
        HPSPolynomial hPSPolynomial = new HPSPolynomial((NTRUHPSParameterSet) this.params);
        int r03 = r02 - 1;
        int[] r32 = new int[r03];
        int r53 = 0;
        while (true) {
            r6 = r03 / 4;
            if (r53 >= r6) {
                break;
            }
            int r62 = r53 * 4;
            int r82 = r53 * 15;
            r32[r62 + 0] = ((bArr[r82 + 0] & 255) << 2) + ((bArr[r82 + 1] & 255) << 10) + ((bArr[r82 + 2] & 255) << 18) + ((bArr[r82 + 3] & 255) << 26);
            r32[r62 + 1] = (((bArr[(r53 * 3) + 15] & 255) & 192) >> 4) + ((bArr[r82 + 4] & 255) << 4) + ((bArr[r82 + 5] & 255) << 12) + ((bArr[r82 + 6] & 255) << 20) + ((bArr[r82 + 7] & 255) << 28);
            int r92 = (((bArr[(r53 * 7) + 15] & 255) & 240) >> 2) + ((bArr[r82 + 8] & 255) << 6) + ((bArr[r82 + 9] & 255) << 14) + ((bArr[r82 + 10] & 255) << 22);
            byte b10 = bArr[r82 + 11];
            r32[r62 + 2] = r92 + ((b10 & 255) << 30);
            r32[r62 + 3] = (b10 & 255 & 252) + ((bArr[r82 + 12] & 255) << 8) + ((bArr[r82 + 13] & 255) << 16) + ((bArr[r82 + 14] & 255) << 24);
            r53++;
        }
        int r54 = r6 * 4;
        if (r03 > r54) {
            int r83 = r6 * 15;
            r32[r54 + 0] = ((bArr[r83 + 0] & 255) << 2) + ((bArr[r83 + 1] & 255) << 10) + ((bArr[r83 + 2] & 255) << 18) + ((bArr[r83 + 3] & 255) << 26);
            r32[r54 + 1] = (((bArr[(r6 * 3) + 15] & 255) & 192) >> 4) + ((bArr[r83 + 4] & 255) << 4) + ((bArr[r83 + 5] & 255) << 12) + ((bArr[r83 + 6] & 255) << 20) + ((bArr[r83 + 7] & 255) << 28);
        }
        int r13 = 0;
        while (true) {
            r52 = r12 / 2;
            if (r13 >= r52) {
                break;
            }
            r32[r13] = r32[r13] | 1;
            r13++;
        }
        while (r52 < r12) {
            r32[r52] = r32[r52] | 2;
            r52++;
        }
        java.util.Arrays.sort(r32);
        for (int r132 = 0; r132 < r03; r132++) {
            hPSPolynomial.coeffs[r132] = (short) (r32[r132] & 3);
        }
        hPSPolynomial.coeffs[r03] = 0;
        return hPSPolynomial;
    }

    public Polynomial sampleIid(byte[] bArr) {
        Polynomial polynomialCreatePolynomial = this.params.createPolynomial();
        for (int r22 = 0; r22 < this.params.n() - 1; r22++) {
            polynomialCreatePolynomial.coeffs[r22] = (short) mod3(bArr[r22] & 255);
        }
        polynomialCreatePolynomial.coeffs[this.params.n() - 1] = 0;
        return polynomialCreatePolynomial;
    }

    public HRSSPolynomial sampleIidPlus(byte[] bArr) {
        int r32;
        int r02 = this.params.n();
        HRSSPolynomial hRSSPolynomial = (HRSSPolynomial) sampleIid(bArr);
        int r22 = 0;
        while (true) {
            r32 = r02 - 1;
            if (r22 >= r32) {
                break;
            }
            short[] sArr = hRSSPolynomial.coeffs;
            short s7 = sArr[r22];
            sArr[r22] = (short) (s7 | (-(s7 >>> 1)));
            r22++;
        }
        int r03 = 0;
        short s10 = 0;
        while (r03 < r32) {
            short[] sArr2 = hRSSPolynomial.coeffs;
            int r52 = r03 + 1;
            s10 = (short) (s10 + ((short) (sArr2[r52] * sArr2[r03])));
            r03 = r52;
        }
        short s11 = (short) ((-((s10 & HPKE.aead_EXPORT_ONLY) >>> 15)) | 1);
        for (int r42 = 0; r42 < r32; r42 += 2) {
            short[] sArr3 = hRSSPolynomial.coeffs;
            sArr3[r42] = (short) (sArr3[r42] * s11);
        }
        for (int r12 = 0; r12 < r32; r12++) {
            short[] sArr4 = hRSSPolynomial.coeffs;
            short s12 = sArr4[r12];
            sArr4[r12] = (short) ((((s12 & HPKE.aead_EXPORT_ONLY) >>> 15) ^ (s12 & HPKE.aead_EXPORT_ONLY)) & 3);
        }
        return hRSSPolynomial;
    }

    public PolynomialPair sampleRm(byte[] bArr) {
        NTRUParameterSet nTRUParameterSet = this.params;
        if (nTRUParameterSet instanceof NTRUHRSSParameterSet) {
            return new PolynomialPair((HRSSPolynomial) sampleIid(Arrays.copyOfRange(bArr, 0, nTRUParameterSet.sampleIidBytes())), (HRSSPolynomial) sampleIid(Arrays.copyOfRange(bArr, this.params.sampleIidBytes(), bArr.length)));
        }
        if (nTRUParameterSet instanceof NTRUHPSParameterSet) {
            return new PolynomialPair((HPSPolynomial) sampleIid(Arrays.copyOfRange(bArr, 0, nTRUParameterSet.sampleIidBytes())), sampleFixedType(Arrays.copyOfRange(bArr, this.params.sampleIidBytes(), bArr.length)));
        }
        throw new IllegalArgumentException("Invalid polynomial type");
    }
}
