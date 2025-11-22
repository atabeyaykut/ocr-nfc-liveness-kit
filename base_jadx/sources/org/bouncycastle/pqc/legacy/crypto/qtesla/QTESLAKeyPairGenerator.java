package org.bouncycastle.pqc.legacy.crypto.qtesla;

import java.security.SecureRandom;
import org.bouncycastle.crypto.AsymmetricCipherKeyPair;
import org.bouncycastle.crypto.AsymmetricCipherKeyPairGenerator;
import org.bouncycastle.crypto.KeyGenerationParameters;
import org.bouncycastle.crypto.params.AsymmetricKeyParameter;

/* loaded from: classes2.dex */
public final class QTESLAKeyPairGenerator implements AsymmetricCipherKeyPairGenerator {
    private SecureRandom secureRandom;
    private int securityCategory;

    private byte[] allocatePrivate(int r12) {
        return new byte[QTESLASecurityCategory.getPrivateSize(r12)];
    }

    private byte[] allocatePublic(int r12) {
        return new byte[QTESLASecurityCategory.getPublicSize(r12)];
    }

    @Override // org.bouncycastle.crypto.AsymmetricCipherKeyPairGenerator
    public AsymmetricCipherKeyPair generateKeyPair() {
        byte[] bArrAllocatePrivate = allocatePrivate(this.securityCategory);
        byte[] bArrAllocatePublic = allocatePublic(this.securityCategory);
        int r22 = this.securityCategory;
        if (r22 == 5) {
            QTesla1p.generateKeyPair(bArrAllocatePublic, bArrAllocatePrivate, this.secureRandom);
        } else {
            if (r22 != 6) {
                throw new IllegalArgumentException("unknown security category: " + this.securityCategory);
            }
            QTesla3p.generateKeyPair(bArrAllocatePublic, bArrAllocatePrivate, this.secureRandom);
        }
        return new AsymmetricCipherKeyPair((AsymmetricKeyParameter) new QTESLAPublicKeyParameters(this.securityCategory, bArrAllocatePublic), (AsymmetricKeyParameter) new QTESLAPrivateKeyParameters(this.securityCategory, bArrAllocatePrivate));
    }

    @Override // org.bouncycastle.crypto.AsymmetricCipherKeyPairGenerator
    public void init(KeyGenerationParameters keyGenerationParameters) {
        QTESLAKeyGenerationParameters qTESLAKeyGenerationParameters = (QTESLAKeyGenerationParameters) keyGenerationParameters;
        this.secureRandom = qTESLAKeyGenerationParameters.getRandom();
        this.securityCategory = qTESLAKeyGenerationParameters.getSecurityCategory();
    }
}
