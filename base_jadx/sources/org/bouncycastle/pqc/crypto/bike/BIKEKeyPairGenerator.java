package org.bouncycastle.pqc.crypto.bike;

import java.security.SecureRandom;
import org.bouncycastle.crypto.AsymmetricCipherKeyPair;
import org.bouncycastle.crypto.AsymmetricCipherKeyPairGenerator;
import org.bouncycastle.crypto.KeyGenerationParameters;
import org.bouncycastle.crypto.params.AsymmetricKeyParameter;

/* loaded from: classes2.dex */
public class BIKEKeyPairGenerator implements AsymmetricCipherKeyPairGenerator {
    private int L_BYTE;
    private int R_BYTE;
    private BIKEKeyGenerationParameters bikeKeyGenerationParameters;

    /* renamed from: l, reason: collision with root package name */
    private int f11846l;

    /* renamed from: r, reason: collision with root package name */
    private int f11847r;
    private SecureRandom random;

    private AsymmetricCipherKeyPair genKeyPair() {
        BIKEEngine engine = this.bikeKeyGenerationParameters.getParameters().getEngine();
        int r02 = this.R_BYTE;
        byte[] bArr = new byte[r02];
        byte[] bArr2 = new byte[r02];
        byte[] bArr3 = new byte[r02];
        byte[] bArr4 = new byte[this.L_BYTE];
        engine.genKeyPair(bArr, bArr2, bArr4, bArr3, this.random);
        return new AsymmetricCipherKeyPair((AsymmetricKeyParameter) new BIKEPublicKeyParameters(this.bikeKeyGenerationParameters.getParameters(), bArr3), (AsymmetricKeyParameter) new BIKEPrivateKeyParameters(this.bikeKeyGenerationParameters.getParameters(), bArr, bArr2, bArr4));
    }

    @Override // org.bouncycastle.crypto.AsymmetricCipherKeyPairGenerator
    public AsymmetricCipherKeyPair generateKeyPair() {
        return genKeyPair();
    }

    @Override // org.bouncycastle.crypto.AsymmetricCipherKeyPairGenerator
    public void init(KeyGenerationParameters keyGenerationParameters) {
        this.bikeKeyGenerationParameters = (BIKEKeyGenerationParameters) keyGenerationParameters;
        this.random = keyGenerationParameters.getRandom();
        this.f11847r = this.bikeKeyGenerationParameters.getParameters().getR();
        int l5 = this.bikeKeyGenerationParameters.getParameters().getL();
        this.f11846l = l5;
        this.L_BYTE = l5 / 8;
        this.R_BYTE = (this.f11847r + 7) / 8;
    }
}
