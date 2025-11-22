package org.bouncycastle.crypto.generators;

import androidx.appcompat.graphics.drawable.a;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.PBEParametersGenerator;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.crypto.params.ParametersWithIV;

/* loaded from: classes2.dex */
public class PKCS5S1ParametersGenerator extends PBEParametersGenerator {
    private Digest digest;

    public PKCS5S1ParametersGenerator(Digest digest) {
        this.digest = digest;
    }

    private byte[] generateDerivedKey() {
        int digestSize = this.digest.getDigestSize();
        byte[] bArr = new byte[digestSize];
        Digest digest = this.digest;
        byte[] bArr2 = this.password;
        digest.update(bArr2, 0, bArr2.length);
        Digest digest2 = this.digest;
        byte[] bArr3 = this.salt;
        digest2.update(bArr3, 0, bArr3.length);
        this.digest.doFinal(bArr, 0);
        for (int r22 = 1; r22 < this.iterationCount; r22++) {
            this.digest.update(bArr, 0, digestSize);
            this.digest.doFinal(bArr, 0);
        }
        return bArr;
    }

    @Override // org.bouncycastle.crypto.PBEParametersGenerator
    public CipherParameters generateDerivedMacParameters(int r12) {
        return generateDerivedParameters(r12);
    }

    @Override // org.bouncycastle.crypto.PBEParametersGenerator
    public CipherParameters generateDerivedParameters(int r42) {
        int r43 = r42 / 8;
        if (r43 <= this.digest.getDigestSize()) {
            return new KeyParameter(generateDerivedKey(), 0, r43);
        }
        throw new IllegalArgumentException(a.f("Can't generate a derived key ", r43, " bytes long."));
    }

    @Override // org.bouncycastle.crypto.PBEParametersGenerator
    public CipherParameters generateDerivedParameters(int r52, int r6) {
        int r53 = r52 / 8;
        int r62 = r6 / 8;
        int r02 = r53 + r62;
        if (r02 > this.digest.getDigestSize()) {
            throw new IllegalArgumentException(a.f("Can't generate a derived key ", r02, " bytes long."));
        }
        byte[] bArrGenerateDerivedKey = generateDerivedKey();
        return new ParametersWithIV(new KeyParameter(bArrGenerateDerivedKey, 0, r53), bArrGenerateDerivedKey, r53, r62);
    }
}
