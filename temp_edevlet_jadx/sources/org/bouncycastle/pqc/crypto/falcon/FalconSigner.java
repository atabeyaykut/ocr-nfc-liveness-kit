package org.bouncycastle.pqc.crypto.falcon;

import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.CryptoServicesRegistrar;
import org.bouncycastle.crypto.params.ParametersWithRandom;
import org.bouncycastle.pqc.crypto.MessageSigner;

/* loaded from: classes2.dex */
public class FalconSigner implements MessageSigner {
    private byte[] encodedkey;
    private FalconNIST nist;

    @Override // org.bouncycastle.pqc.crypto.MessageSigner
    public byte[] generateSignature(byte[] bArr) {
        FalconNIST falconNIST = this.nist;
        return falconNIST.crypto_sign(false, new byte[falconNIST.CRYPTO_BYTES], bArr, 0, bArr.length, this.encodedkey, 0);
    }

    @Override // org.bouncycastle.pqc.crypto.MessageSigner
    public void init(boolean z10, CipherParameters cipherParameters) {
        FalconNIST falconNIST;
        if (!z10) {
            FalconPublicKeyParameters falconPublicKeyParameters = (FalconPublicKeyParameters) cipherParameters;
            this.encodedkey = falconPublicKeyParameters.getH();
            falconNIST = new FalconNIST(falconPublicKeyParameters.getParameters().getLogN(), falconPublicKeyParameters.getParameters().getNonceLength(), CryptoServicesRegistrar.getSecureRandom());
        } else {
            if (cipherParameters instanceof ParametersWithRandom) {
                ParametersWithRandom parametersWithRandom = (ParametersWithRandom) cipherParameters;
                FalconPrivateKeyParameters falconPrivateKeyParameters = (FalconPrivateKeyParameters) parametersWithRandom.getParameters();
                this.encodedkey = falconPrivateKeyParameters.getEncoded();
                this.nist = new FalconNIST(falconPrivateKeyParameters.getParameters().getLogN(), falconPrivateKeyParameters.getParameters().getNonceLength(), parametersWithRandom.getRandom());
                return;
            }
            FalconPrivateKeyParameters falconPrivateKeyParameters2 = (FalconPrivateKeyParameters) cipherParameters;
            this.encodedkey = falconPrivateKeyParameters2.getEncoded();
            falconNIST = new FalconNIST(falconPrivateKeyParameters2.getParameters().getLogN(), falconPrivateKeyParameters2.getParameters().getNonceLength(), CryptoServicesRegistrar.getSecureRandom());
        }
        this.nist = falconNIST;
    }

    @Override // org.bouncycastle.pqc.crypto.MessageSigner
    public boolean verifySignature(byte[] bArr, byte[] bArr2) {
        byte b10 = bArr2[0];
        FalconNIST falconNIST = this.nist;
        if (b10 != ((byte) (falconNIST.LOGN + 48))) {
            return false;
        }
        int r12 = falconNIST.NONCELEN;
        byte[] bArr3 = new byte[r12];
        byte[] bArr4 = new byte[(bArr2.length - r12) - 1];
        System.arraycopy(bArr2, 1, bArr3, 0, r12);
        int r13 = this.nist.NONCELEN;
        System.arraycopy(bArr2, r13 + 1, bArr4, 0, (bArr2.length - r13) - 1);
        return this.nist.crypto_sign_open(false, bArr4, bArr3, bArr, this.encodedkey, 0) == 0;
    }
}
