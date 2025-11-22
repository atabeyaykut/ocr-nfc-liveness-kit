package org.bouncycastle.crypto.generators;

import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.PBEParametersGenerator;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.crypto.params.ParametersWithIV;
import org.bouncycastle.crypto.util.DigestFactory;

/* loaded from: classes2.dex */
public class OpenSSLPBEParametersGenerator extends PBEParametersGenerator {
    private final Digest digest;

    public OpenSSLPBEParametersGenerator() {
        this(DigestFactory.createMD5());
    }

    public OpenSSLPBEParametersGenerator(Digest digest) {
        this.digest = digest;
    }

    private byte[] generateDerivedKey(int r92) {
        int digestSize = this.digest.getDigestSize();
        byte[] bArr = new byte[digestSize];
        byte[] bArr2 = new byte[r92];
        int r42 = 0;
        while (true) {
            Digest digest = this.digest;
            byte[] bArr3 = this.password;
            digest.update(bArr3, 0, bArr3.length);
            Digest digest2 = this.digest;
            byte[] bArr4 = this.salt;
            digest2.update(bArr4, 0, bArr4.length);
            this.digest.doFinal(bArr, 0);
            int r52 = r92 > digestSize ? digestSize : r92;
            System.arraycopy(bArr, 0, bArr2, r42, r52);
            r42 += r52;
            r92 -= r52;
            if (r92 == 0) {
                return bArr2;
            }
            this.digest.reset();
            this.digest.update(bArr, 0, digestSize);
        }
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
    public CipherParameters generateDerivedParameters(int r52, int r6) {
        int r53 = r52 / 8;
        int r62 = r6 / 8;
        byte[] bArrGenerateDerivedKey = generateDerivedKey(r53 + r62);
        return new ParametersWithIV(new KeyParameter(bArrGenerateDerivedKey, 0, r53), bArrGenerateDerivedKey, r53, r62);
    }

    public void init(byte[] bArr, byte[] bArr2) {
        super.init(bArr, bArr2, 1);
    }
}
