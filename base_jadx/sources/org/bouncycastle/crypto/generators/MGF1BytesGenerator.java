package org.bouncycastle.crypto.generators;

import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.DerivationFunction;
import org.bouncycastle.crypto.DerivationParameters;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.OutputLengthException;
import org.bouncycastle.crypto.params.MGFParameters;

/* loaded from: classes2.dex */
public class MGF1BytesGenerator implements DerivationFunction {
    private Digest digest;
    private int hLen;
    private byte[] seed;

    public MGF1BytesGenerator(Digest digest) {
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
    public int generateBytes(byte[] bArr, int r10, int r11) throws DataLengthException, IllegalArgumentException {
        int r32;
        if (bArr.length - r11 < r10) {
            throw new OutputLengthException("output buffer too small");
        }
        byte[] bArr2 = new byte[this.hLen];
        byte[] bArr3 = new byte[4];
        this.digest.reset();
        if (r11 > this.hLen) {
            r32 = 0;
            do {
                ItoOSP(r32, bArr3);
                Digest digest = this.digest;
                byte[] bArr4 = this.seed;
                digest.update(bArr4, 0, bArr4.length);
                this.digest.update(bArr3, 0, 4);
                this.digest.doFinal(bArr2, 0);
                int r52 = this.hLen;
                System.arraycopy(bArr2, 0, bArr, (r32 * r52) + r10, r52);
                r32++;
            } while (r32 < r11 / this.hLen);
        } else {
            r32 = 0;
        }
        if (this.hLen * r32 < r11) {
            ItoOSP(r32, bArr3);
            Digest digest2 = this.digest;
            byte[] bArr5 = this.seed;
            digest2.update(bArr5, 0, bArr5.length);
            this.digest.update(bArr3, 0, 4);
            this.digest.doFinal(bArr2, 0);
            int r12 = this.hLen;
            System.arraycopy(bArr2, 0, bArr, (r32 * r12) + r10, r11 - (r32 * r12));
        }
        return r11;
    }

    public Digest getDigest() {
        return this.digest;
    }

    @Override // org.bouncycastle.crypto.DerivationFunction
    public void init(DerivationParameters derivationParameters) {
        if (!(derivationParameters instanceof MGFParameters)) {
            throw new IllegalArgumentException("MGF parameters required for MGF1Generator");
        }
        this.seed = ((MGFParameters) derivationParameters).getSeed();
    }
}
