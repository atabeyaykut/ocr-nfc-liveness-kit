package org.bouncycastle.crypto.generators;

import androidx.core.view.InputDeviceCompat;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.DerivationParameters;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.DigestDerivationFunction;
import org.bouncycastle.crypto.OutputLengthException;
import org.bouncycastle.crypto.params.ISO18033KDFParameters;
import org.bouncycastle.crypto.params.KDFParameters;
import org.bouncycastle.util.Pack;

/* loaded from: classes2.dex */
public class BaseKDFBytesGenerator implements DigestDerivationFunction {
    private int counterStart;
    private Digest digest;
    private byte[] iv;
    private byte[] shared;

    public BaseKDFBytesGenerator(int r12, Digest digest) {
        this.counterStart = r12;
        this.digest = digest;
    }

    @Override // org.bouncycastle.crypto.DerivationFunction
    public int generateBytes(byte[] bArr, int r18, int r19) throws DataLengthException, IllegalArgumentException {
        int r22 = r19;
        int r42 = r18;
        if (bArr.length - r22 < r42) {
            throw new OutputLengthException("output buffer too small");
        }
        long j10 = r22;
        int digestSize = this.digest.getDigestSize();
        if (j10 > 8589934591L) {
            throw new IllegalArgumentException("Output length too large");
        }
        long j11 = digestSize;
        int r72 = (int) (((j10 + j11) - 1) / j11);
        byte[] bArr2 = new byte[this.digest.getDigestSize()];
        byte[] bArr3 = new byte[4];
        Pack.intToBigEndian(this.counterStart, bArr3, 0);
        int r11 = this.counterStart & InputDeviceCompat.SOURCE_ANY;
        for (int r13 = 0; r13 < r72; r13++) {
            Digest digest = this.digest;
            byte[] bArr4 = this.shared;
            digest.update(bArr4, 0, bArr4.length);
            this.digest.update(bArr3, 0, 4);
            byte[] bArr5 = this.iv;
            if (bArr5 != null) {
                this.digest.update(bArr5, 0, bArr5.length);
            }
            this.digest.doFinal(bArr2, 0);
            if (r22 > digestSize) {
                System.arraycopy(bArr2, 0, bArr, r42, digestSize);
                r42 += digestSize;
                r22 -= digestSize;
            } else {
                System.arraycopy(bArr2, 0, bArr, r42, r22);
            }
            byte b10 = (byte) (bArr3[3] + 1);
            bArr3[3] = b10;
            if (b10 == 0) {
                r11 += 256;
                Pack.intToBigEndian(r11, bArr3, 0);
            }
        }
        this.digest.reset();
        return (int) j10;
    }

    @Override // org.bouncycastle.crypto.DigestDerivationFunction
    public Digest getDigest() {
        return this.digest;
    }

    @Override // org.bouncycastle.crypto.DerivationFunction
    public void init(DerivationParameters derivationParameters) {
        if (derivationParameters instanceof KDFParameters) {
            KDFParameters kDFParameters = (KDFParameters) derivationParameters;
            this.shared = kDFParameters.getSharedSecret();
            this.iv = kDFParameters.getIV();
        } else {
            if (!(derivationParameters instanceof ISO18033KDFParameters)) {
                throw new IllegalArgumentException("KDF parameters required for generator");
            }
            this.shared = ((ISO18033KDFParameters) derivationParameters).getSeed();
            this.iv = null;
        }
    }
}
