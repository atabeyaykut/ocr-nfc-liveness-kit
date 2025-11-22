package org.bouncycastle.pqc.math.ntru;

import org.bouncycastle.crypto.hpke.HPKE;
import org.bouncycastle.pqc.math.ntru.parameters.NTRUHPSParameterSet;

/* loaded from: classes2.dex */
public class HPS4096Polynomial extends HPSPolynomial {
    public HPS4096Polynomial(NTRUHPSParameterSet nTRUHPSParameterSet) {
        super(nTRUHPSParameterSet);
    }

    @Override // org.bouncycastle.pqc.math.ntru.HPSPolynomial, org.bouncycastle.pqc.math.ntru.Polynomial
    public void sqFromBytes(byte[] bArr) {
        for (int r12 = 0; r12 < this.params.packDegree() / 2; r12++) {
            short[] sArr = this.coeffs;
            int r32 = r12 * 2;
            int r52 = r12 * 3;
            int r6 = (bArr[r52 + 0] & 255) >>> 0;
            byte b10 = bArr[r52 + 1];
            sArr[r32 + 0] = (short) (r6 | ((((short) (b10 & 255)) & 15) << 8));
            sArr[r32 + 1] = (short) (((b10 & 255) >>> 4) | ((((short) (bArr[r52 + 2] & 255)) & 255) << 4));
        }
        this.coeffs[this.params.n() - 1] = 0;
    }

    @Override // org.bouncycastle.pqc.math.ntru.HPSPolynomial, org.bouncycastle.pqc.math.ntru.Polynomial
    public byte[] sqToBytes(int r92) {
        byte[] bArr = new byte[r92];
        int r02 = this.params.q();
        for (int r12 = 0; r12 < this.params.packDegree() / 2; r12++) {
            int r22 = r12 * 3;
            int r52 = r12 * 2;
            int r6 = r52 + 0;
            bArr[r22 + 0] = (byte) (Polynomial.modQ(this.coeffs[r6] & HPKE.aead_EXPORT_ONLY, r02) & 255);
            int r53 = r52 + 1;
            bArr[r22 + 1] = (byte) ((Polynomial.modQ(this.coeffs[r6] & HPKE.aead_EXPORT_ONLY, r02) >>> 8) | ((Polynomial.modQ(this.coeffs[r53] & HPKE.aead_EXPORT_ONLY, r02) & 15) << 4));
            bArr[r22 + 2] = (byte) (Polynomial.modQ(this.coeffs[r53] & HPKE.aead_EXPORT_ONLY, r02) >>> 4);
        }
        return bArr;
    }
}
