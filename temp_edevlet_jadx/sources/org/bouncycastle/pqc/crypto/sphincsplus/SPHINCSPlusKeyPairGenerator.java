package org.bouncycastle.pqc.crypto.sphincsplus;

import java.security.SecureRandom;
import org.bouncycastle.crypto.AsymmetricCipherKeyPair;
import org.bouncycastle.crypto.AsymmetricCipherKeyPairGenerator;
import org.bouncycastle.crypto.KeyGenerationParameters;
import org.bouncycastle.crypto.params.AsymmetricKeyParameter;
import org.bouncycastle.pqc.crypto.sphincsplus.SPHINCSPlusEngine;

/* loaded from: classes2.dex */
public class SPHINCSPlusKeyPairGenerator implements AsymmetricCipherKeyPairGenerator {
    private SPHINCSPlusParameters parameters;
    private SecureRandom random;

    private byte[] sec_rand(int r22) {
        byte[] bArr = new byte[r22];
        this.random.nextBytes(bArr);
        return bArr;
    }

    @Override // org.bouncycastle.crypto.AsymmetricCipherKeyPairGenerator
    public AsymmetricCipherKeyPair generateKeyPair() {
        SK sk;
        byte[] bArrSec_rand;
        SPHINCSPlusEngine engine = this.parameters.getEngine();
        if (engine instanceof SPHINCSPlusEngine.HarakaSEngine) {
            byte[] bArrSec_rand2 = sec_rand(engine.N * 3);
            int r22 = engine.N;
            byte[] bArr = new byte[r22];
            byte[] bArr2 = new byte[r22];
            bArrSec_rand = new byte[r22];
            System.arraycopy(bArrSec_rand2, 0, bArr, 0, r22);
            int r23 = engine.N;
            System.arraycopy(bArrSec_rand2, r23, bArr2, 0, r23);
            int r24 = engine.N;
            System.arraycopy(bArrSec_rand2, r24 << 1, bArrSec_rand, 0, r24);
            sk = new SK(bArr, bArr2);
        } else {
            sk = new SK(sec_rand(engine.N), sec_rand(engine.N));
            bArrSec_rand = sec_rand(engine.N);
        }
        engine.init(bArrSec_rand);
        PK pk = new PK(bArrSec_rand, new HT(engine, sk.seed, bArrSec_rand).htPubKey);
        return new AsymmetricCipherKeyPair((AsymmetricKeyParameter) new SPHINCSPlusPublicKeyParameters(this.parameters, pk), (AsymmetricKeyParameter) new SPHINCSPlusPrivateKeyParameters(this.parameters, sk, pk));
    }

    @Override // org.bouncycastle.crypto.AsymmetricCipherKeyPairGenerator
    public void init(KeyGenerationParameters keyGenerationParameters) {
        this.random = keyGenerationParameters.getRandom();
        this.parameters = ((SPHINCSPlusKeyGenerationParameters) keyGenerationParameters).getParameters();
    }
}
