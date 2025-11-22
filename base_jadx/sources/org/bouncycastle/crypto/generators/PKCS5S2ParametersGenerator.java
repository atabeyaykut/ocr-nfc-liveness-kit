package org.bouncycastle.crypto.generators;

import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.Mac;
import org.bouncycastle.crypto.PBEParametersGenerator;
import org.bouncycastle.crypto.macs.HMac;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.crypto.params.ParametersWithIV;
import org.bouncycastle.crypto.util.DigestFactory;

/* loaded from: classes2.dex */
public class PKCS5S2ParametersGenerator extends PBEParametersGenerator {
    private Mac hMac;
    private byte[] state;

    public PKCS5S2ParametersGenerator() {
        this(DigestFactory.createSHA1());
    }

    public PKCS5S2ParametersGenerator(Digest digest) {
        HMac hMac = new HMac(digest);
        this.hMac = hMac;
        this.state = new byte[hMac.getMacSize()];
    }

    private void F(byte[] bArr, int r6, byte[] bArr2, byte[] bArr3, int r92) throws IllegalStateException, DataLengthException {
        if (r6 == 0) {
            throw new IllegalArgumentException("iteration count must be at least 1.");
        }
        if (bArr != null) {
            this.hMac.update(bArr, 0, bArr.length);
        }
        this.hMac.update(bArr2, 0, bArr2.length);
        this.hMac.doFinal(this.state, 0);
        byte[] bArr4 = this.state;
        System.arraycopy(bArr4, 0, bArr3, r92, bArr4.length);
        for (int r52 = 1; r52 < r6; r52++) {
            Mac mac = this.hMac;
            byte[] bArr5 = this.state;
            mac.update(bArr5, 0, bArr5.length);
            this.hMac.doFinal(this.state, 0);
            int r72 = 0;
            while (true) {
                byte[] bArr6 = this.state;
                if (r72 != bArr6.length) {
                    int r22 = r92 + r72;
                    bArr3[r22] = (byte) (bArr6[r72] ^ bArr3[r22]);
                    r72++;
                }
            }
        }
    }

    private byte[] generateDerivedKey(int r12) throws IllegalStateException, DataLengthException, IllegalArgumentException {
        int r22;
        int macSize = this.hMac.getMacSize();
        int r122 = ((r12 + macSize) - 1) / macSize;
        byte[] bArr = new byte[4];
        byte[] bArr2 = new byte[r122 * macSize];
        this.hMac.init(new KeyParameter(this.password));
        int r92 = 0;
        for (int r10 = 1; r10 <= r122; r10++) {
            while (true) {
                byte b10 = (byte) (bArr[r22] + 1);
                bArr[r22] = b10;
                r22 = b10 == 0 ? r22 - 1 : 3;
            }
            F(this.salt, this.iterationCount, bArr, bArr2, r92);
            r92 += macSize;
        }
        return bArr2;
    }

    @Override // org.bouncycastle.crypto.PBEParametersGenerator
    public CipherParameters generateDerivedMacParameters(int r12) {
        return generateDerivedParameters(r12);
    }

    @Override // org.bouncycastle.crypto.PBEParametersGenerator
    public CipherParameters generateDerivedParameters(int r42) {
        int r43 = r42 / 8;
        return new KeyParameter(generateDerivedKey(r43), 0, r43);
    }

    @Override // org.bouncycastle.crypto.PBEParametersGenerator
    public CipherParameters generateDerivedParameters(int r52, int r6) throws IllegalStateException, DataLengthException, IllegalArgumentException {
        int r53 = r52 / 8;
        int r62 = r6 / 8;
        byte[] bArrGenerateDerivedKey = generateDerivedKey(r53 + r62);
        return new ParametersWithIV(new KeyParameter(bArrGenerateDerivedKey, 0, r53), bArrGenerateDerivedKey, r53, r62);
    }
}
