package org.bouncycastle.crypto.agreement.kdf;

import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.DerivationFunction;
import org.bouncycastle.crypto.DerivationParameters;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.OutputLengthException;
import org.bouncycastle.crypto.params.KDFParameters;

/* loaded from: classes2.dex */
public class ConcatenationKDFGenerator implements DerivationFunction {
    private Digest digest;
    private int hLen;
    private byte[] otherInfo;
    private byte[] shared;

    public ConcatenationKDFGenerator(Digest digest) {
        this.digest = digest;
        this.hLen = digest.getDigestSize();
    }

    private void ItoOSP(int r42, byte[] bArr) {
        bArr[0] = (byte) (r42 >>> 24);
        bArr[1] = (byte) (r42 >>> 16);
        bArr[2] = (byte) (r42 >>> 8);
        bArr[3] = (byte) (r42 >>> 0);
    }

    @Override // org.bouncycastle.crypto.DerivationFunction
    public int generateBytes(byte[] bArr, int r11, int r12) throws DataLengthException, IllegalArgumentException {
        int r32;
        int r72;
        if (r12 <= 0) {
            throw new IllegalArgumentException("len must be > 0");
        }
        if (bArr.length - r12 < r11) {
            throw new OutputLengthException("output buffer too small");
        }
        byte[] bArr2 = new byte[this.hLen];
        byte[] bArr3 = new byte[4];
        this.digest.reset();
        int r42 = 1;
        if (r12 > this.hLen) {
            r32 = 0;
            while (true) {
                ItoOSP(r42, bArr3);
                this.digest.update(bArr3, 0, 4);
                Digest digest = this.digest;
                byte[] bArr4 = this.shared;
                digest.update(bArr4, 0, bArr4.length);
                Digest digest2 = this.digest;
                byte[] bArr5 = this.otherInfo;
                digest2.update(bArr5, 0, bArr5.length);
                this.digest.doFinal(bArr2, 0);
                System.arraycopy(bArr2, 0, bArr, r11 + r32, this.hLen);
                int r6 = this.hLen;
                r32 += r6;
                r72 = r42 + 1;
                if (r42 >= r12 / r6) {
                    break;
                }
                r42 = r72;
            }
            r42 = r72;
        } else {
            r32 = 0;
        }
        if (r32 < r12) {
            ItoOSP(r42, bArr3);
            this.digest.update(bArr3, 0, 4);
            Digest digest3 = this.digest;
            byte[] bArr6 = this.shared;
            digest3.update(bArr6, 0, bArr6.length);
            Digest digest4 = this.digest;
            byte[] bArr7 = this.otherInfo;
            digest4.update(bArr7, 0, bArr7.length);
            this.digest.doFinal(bArr2, 0);
            System.arraycopy(bArr2, 0, bArr, r11 + r32, r12 - r32);
        }
        return r12;
    }

    public Digest getDigest() {
        return this.digest;
    }

    @Override // org.bouncycastle.crypto.DerivationFunction
    public void init(DerivationParameters derivationParameters) {
        if (!(derivationParameters instanceof KDFParameters)) {
            throw new IllegalArgumentException("KDF parameters required for generator");
        }
        KDFParameters kDFParameters = (KDFParameters) derivationParameters;
        this.shared = kDFParameters.getSharedSecret();
        this.otherInfo = kDFParameters.getIV();
    }
}
