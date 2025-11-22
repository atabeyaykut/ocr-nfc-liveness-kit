package org.bouncycastle.pqc.math.ntru;

import org.bouncycastle.crypto.hpke.HPKE;
import org.bouncycastle.pqc.math.ntru.parameters.NTRUHRSSParameterSet;
import org.jmrtd.PassportService;

/* loaded from: classes2.dex */
public class HRSS1373Polynomial extends HRSSPolynomial {
    private static final int K = 86;
    private static final int L = 1376;
    private static final int M = 344;

    public HRSS1373Polynomial(NTRUHRSSParameterSet nTRUHRSSParameterSet) {
        super(nTRUHRSSParameterSet);
    }

    @Override // org.bouncycastle.pqc.math.ntru.HRSSPolynomial, org.bouncycastle.pqc.math.ntru.Polynomial
    public void sqFromBytes(byte[] bArr) {
        int r12 = 0;
        while (r12 < this.params.packDegree() / 4) {
            short[] sArr = this.coeffs;
            int r42 = r12 * 4;
            int r6 = r12 * 7;
            int r72 = bArr[r6 + 0] & 255;
            byte b10 = bArr[r6 + 1];
            sArr[r42 + 0] = (short) (r72 | ((((short) (b10 & 255)) & 63) << 8));
            int r73 = ((b10 & 255) >>> 6) | (((short) (bArr[r6 + 2] & 255)) << 2);
            byte b11 = bArr[r6 + 3];
            sArr[r42 + 1] = (short) (r73 | (((short) (b11 & PassportService.SFI_DG15)) << 10));
            int r74 = ((b11 & 255) >>> 4) | ((((short) (bArr[r6 + 4] & 255)) & 255) << 4);
            byte b12 = bArr[r6 + 5];
            sArr[r42 + 2] = (short) (r74 | (((short) (b12 & 3)) << 12));
            sArr[r42 + 3] = (short) (((b12 & 255) >>> 2) | (((short) (bArr[r6 + 6] & 255)) << 6));
            r12++;
        }
        if (this.params.packDegree() % 4 == 2) {
            short[] sArr2 = this.coeffs;
            int r43 = r12 * 4;
            int r13 = r12 * 7;
            byte b13 = bArr[r13 + 0];
            byte b14 = bArr[r13 + 1];
            sArr2[r43 + 0] = (short) (b13 | ((b14 & 63) << 8));
            sArr2[r43 + 1] = (short) (((bArr[r13 + 3] & 15) << 10) | (bArr[r13 + 2] << 2) | (b14 >>> 6));
        }
        this.coeffs[this.params.n() - 1] = 0;
    }

    @Override // org.bouncycastle.pqc.math.ntru.HRSSPolynomial, org.bouncycastle.pqc.math.ntru.Polynomial
    public byte[] sqToBytes(int r12) {
        byte[] bArr = new byte[r12];
        short[] sArr = new short[4];
        int r32 = 0;
        while (r32 < this.params.packDegree() / 4) {
            for (int r42 = 0; r42 < 4; r42++) {
                sArr[r42] = (short) Polynomial.modQ(this.coeffs[(r32 * 4) + r42] & HPKE.aead_EXPORT_ONLY, this.params.q());
            }
            int r43 = r32 * 7;
            short s7 = sArr[0];
            bArr[r43 + 0] = (byte) (s7 & 255);
            short s10 = sArr[1];
            bArr[r43 + 1] = (byte) ((s7 >>> 8) | ((s10 & 3) << 6));
            bArr[r43 + 2] = (byte) ((s10 >>> 2) & 255);
            short s11 = sArr[2];
            bArr[r43 + 3] = (byte) ((s10 >>> 10) | ((s11 & 15) << 4));
            bArr[r43 + 4] = (byte) ((s11 >>> 4) & 255);
            short s12 = sArr[3];
            bArr[r43 + 5] = (byte) ((s11 >>> 12) | ((s12 & 63) << 2));
            bArr[r43 + 6] = (byte) (s12 >>> 6);
            r32++;
        }
        if (this.params.packDegree() % 4 == 2) {
            sArr[0] = (short) Polynomial.modQ(this.coeffs[this.params.packDegree() - 2] & HPKE.aead_EXPORT_ONLY, this.params.q());
            short sModQ = (short) Polynomial.modQ(this.coeffs[this.params.packDegree() - 1] & HPKE.aead_EXPORT_ONLY, this.params.q());
            sArr[1] = sModQ;
            int r33 = r32 * 7;
            short s13 = sArr[0];
            bArr[r33 + 0] = (byte) (s13 & 255);
            bArr[r33 + 1] = (byte) ((s13 >>> 8) | ((sModQ & 3) << 6));
            bArr[r33 + 2] = (byte) ((sModQ >>> 2) & 255);
            bArr[r33 + 3] = (byte) (sModQ >>> 10);
        }
        return bArr;
    }
}
