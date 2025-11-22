package org.bouncycastle.crypto.engines;

import java.security.SecureRandom;
import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.CryptoServicesRegistrar;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.InvalidCipherTextException;
import org.bouncycastle.crypto.Wrapper;
import org.bouncycastle.crypto.modes.CBCBlockCipher;
import org.bouncycastle.crypto.params.ParametersWithIV;
import org.bouncycastle.crypto.params.ParametersWithRandom;
import org.bouncycastle.util.Arrays;

/* loaded from: classes2.dex */
public class RFC3211WrapEngine implements Wrapper {
    private CBCBlockCipher engine;
    private boolean forWrapping;
    private ParametersWithIV param;
    private SecureRandom rand;

    public RFC3211WrapEngine(BlockCipher blockCipher) {
        this.engine = new CBCBlockCipher(blockCipher);
    }

    @Override // org.bouncycastle.crypto.Wrapper
    public String getAlgorithmName() {
        return this.engine.getUnderlyingCipher().getAlgorithmName() + "/RFC3211Wrap";
    }

    @Override // org.bouncycastle.crypto.Wrapper
    public void init(boolean z10, CipherParameters cipherParameters) {
        this.forWrapping = z10;
        if (cipherParameters instanceof ParametersWithRandom) {
            ParametersWithRandom parametersWithRandom = (ParametersWithRandom) cipherParameters;
            this.rand = parametersWithRandom.getRandom();
            if (!(parametersWithRandom.getParameters() instanceof ParametersWithIV)) {
                throw new IllegalArgumentException("RFC3211Wrap requires an IV");
            }
            this.param = (ParametersWithIV) parametersWithRandom.getParameters();
            return;
        }
        if (z10) {
            this.rand = CryptoServicesRegistrar.getSecureRandom();
        }
        if (!(cipherParameters instanceof ParametersWithIV)) {
            throw new IllegalArgumentException("RFC3211Wrap requires an IV");
        }
        this.param = (ParametersWithIV) cipherParameters;
    }

    @Override // org.bouncycastle.crypto.Wrapper
    public byte[] unwrap(byte[] bArr, int r82, int r92) throws InvalidCipherTextException, IllegalStateException, DataLengthException, IllegalArgumentException {
        if (this.forWrapping) {
            throw new IllegalStateException("not set for unwrapping");
        }
        int blockSize = this.engine.getBlockSize();
        if (r92 < blockSize * 2) {
            throw new InvalidCipherTextException("input too short");
        }
        byte[] bArr2 = new byte[r92];
        byte[] bArr3 = new byte[blockSize];
        System.arraycopy(bArr, r82, bArr2, 0, r92);
        System.arraycopy(bArr, r82, bArr3, 0, blockSize);
        this.engine.init(false, new ParametersWithIV(this.param.getParameters(), bArr3));
        for (int r72 = blockSize; r72 < r92; r72 += blockSize) {
            this.engine.processBlock(bArr2, r72, bArr2, r72);
        }
        System.arraycopy(bArr2, r92 - blockSize, bArr3, 0, blockSize);
        this.engine.init(false, new ParametersWithIV(this.param.getParameters(), bArr3));
        this.engine.processBlock(bArr2, 0, bArr2, 0);
        this.engine.init(false, this.param);
        for (int r73 = 0; r73 < r92; r73 += blockSize) {
            this.engine.processBlock(bArr2, r73, bArr2, r73);
        }
        int r74 = bArr2[0];
        int r93 = r92 - 4;
        boolean z10 = (r74 & 255) > r93;
        byte[] bArr4 = z10 ? new byte[r93] : new byte[r74 & 255];
        System.arraycopy(bArr2, 4, bArr4, 0, bArr4.length);
        int r94 = 0;
        int r02 = 0;
        while (r94 != 3) {
            int r42 = r94 + 1;
            r02 |= bArr2[r94 + 4] ^ ((byte) (~bArr2[r42]));
            r94 = r42;
        }
        Arrays.clear(bArr2);
        if (!z10 && !(r02 != 0)) {
            return bArr4;
        }
        throw new InvalidCipherTextException("wrapped key corrupted");
    }

    @Override // org.bouncycastle.crypto.Wrapper
    public byte[] wrap(byte[] bArr, int r82, int r92) throws IllegalStateException, DataLengthException, IllegalArgumentException {
        if (!this.forWrapping) {
            throw new IllegalStateException("not set for wrapping");
        }
        if (r92 > 255 || r92 < 0) {
            throw new IllegalArgumentException("input must be from 0 to 255 bytes");
        }
        this.engine.init(true, this.param);
        int blockSize = this.engine.getBlockSize();
        int r12 = r92 + 4;
        int r32 = blockSize * 2;
        if (r12 >= r32) {
            r32 = r12 % blockSize == 0 ? r12 : ((r12 / blockSize) + 1) * blockSize;
        }
        byte[] bArr2 = new byte[r32];
        bArr2[0] = (byte) r92;
        System.arraycopy(bArr, r82, bArr2, 4, r92);
        int length = bArr2.length - r12;
        byte[] bArr3 = new byte[length];
        this.rand.nextBytes(bArr3);
        System.arraycopy(bArr3, 0, bArr2, r12, length);
        bArr2[1] = (byte) (~bArr2[4]);
        bArr2[2] = (byte) (~bArr2[5]);
        bArr2[3] = (byte) (~bArr2[6]);
        for (int r72 = 0; r72 < bArr2.length; r72 += blockSize) {
            this.engine.processBlock(bArr2, r72, bArr2, r72);
        }
        for (int r52 = 0; r52 < bArr2.length; r52 += blockSize) {
            this.engine.processBlock(bArr2, r52, bArr2, r52);
        }
        return bArr2;
    }
}
