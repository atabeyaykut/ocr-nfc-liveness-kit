package org.bouncycastle.crypto.engines;

import java.security.SecureRandom;
import net.sf.scuba.smartcards.ISO7816;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.CryptoServicesRegistrar;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.InvalidCipherTextException;
import org.bouncycastle.crypto.Wrapper;
import org.bouncycastle.crypto.modes.CBCBlockCipher;
import org.bouncycastle.crypto.params.ParametersWithIV;
import org.bouncycastle.crypto.params.ParametersWithRandom;
import org.bouncycastle.crypto.util.DigestFactory;
import org.bouncycastle.util.Arrays;

/* loaded from: classes2.dex */
public class RC2WrapEngine implements Wrapper {
    private static final byte[] IV2 = {74, -35, -94, ISO7816.INS_UNBLOCK_CHV, 121, -24, 33, 5};
    private CBCBlockCipher engine;
    private boolean forWrapping;
    private byte[] iv;
    private CipherParameters param;
    private ParametersWithIV paramPlusIV;
    private SecureRandom sr;
    Digest sha1 = DigestFactory.createSHA1();
    byte[] digest = new byte[20];

    private byte[] calculateCMSKeyChecksum(byte[] bArr) {
        byte[] bArr2 = new byte[8];
        this.sha1.update(bArr, 0, bArr.length);
        this.sha1.doFinal(this.digest, 0);
        System.arraycopy(this.digest, 0, bArr2, 0, 8);
        return bArr2;
    }

    private boolean checkCMSKeyChecksum(byte[] bArr, byte[] bArr2) {
        return Arrays.constantTimeAreEqual(calculateCMSKeyChecksum(bArr), bArr2);
    }

    @Override // org.bouncycastle.crypto.Wrapper
    public String getAlgorithmName() {
        return "RC2";
    }

    @Override // org.bouncycastle.crypto.Wrapper
    public void init(boolean z10, CipherParameters cipherParameters) {
        this.forWrapping = z10;
        this.engine = new CBCBlockCipher(new RC2Engine());
        if (cipherParameters instanceof ParametersWithRandom) {
            ParametersWithRandom parametersWithRandom = (ParametersWithRandom) cipherParameters;
            this.sr = parametersWithRandom.getRandom();
            cipherParameters = parametersWithRandom.getParameters();
        } else {
            this.sr = CryptoServicesRegistrar.getSecureRandom();
        }
        if (!(cipherParameters instanceof ParametersWithIV)) {
            this.param = cipherParameters;
            if (this.forWrapping) {
                byte[] bArr = new byte[8];
                this.iv = bArr;
                this.sr.nextBytes(bArr);
                this.paramPlusIV = new ParametersWithIV(this.param, this.iv);
                return;
            }
            return;
        }
        ParametersWithIV parametersWithIV = (ParametersWithIV) cipherParameters;
        this.paramPlusIV = parametersWithIV;
        this.iv = parametersWithIV.getIV();
        this.param = this.paramPlusIV.getParameters();
        if (!this.forWrapping) {
            throw new IllegalArgumentException("You should not supply an IV for unwrapping");
        }
        byte[] bArr2 = this.iv;
        if (bArr2 == null || bArr2.length != 8) {
            throw new IllegalArgumentException("IV is not 8 octets");
        }
    }

    @Override // org.bouncycastle.crypto.Wrapper
    public byte[] unwrap(byte[] bArr, int r6, int r72) throws InvalidCipherTextException, IllegalStateException, DataLengthException, IllegalArgumentException {
        if (this.forWrapping) {
            throw new IllegalStateException("Not set for unwrapping");
        }
        if (bArr == null) {
            throw new InvalidCipherTextException("Null pointer as ciphertext");
        }
        if (r72 % this.engine.getBlockSize() != 0) {
            throw new InvalidCipherTextException("Ciphertext not multiple of " + this.engine.getBlockSize());
        }
        this.engine.init(false, new ParametersWithIV(this.param, IV2));
        byte[] bArr2 = new byte[r72];
        System.arraycopy(bArr, r6, bArr2, 0, r72);
        for (int r52 = 0; r52 < r72 / this.engine.getBlockSize(); r52++) {
            int blockSize = this.engine.getBlockSize() * r52;
            this.engine.processBlock(bArr2, blockSize, bArr2, blockSize);
        }
        byte[] bArr3 = new byte[r72];
        int r62 = 0;
        while (r62 < r72) {
            int r12 = r62 + 1;
            bArr3[r62] = bArr2[r72 - r12];
            r62 = r12;
        }
        byte[] bArr4 = new byte[8];
        this.iv = bArr4;
        int r73 = r72 - 8;
        byte[] bArr5 = new byte[r73];
        System.arraycopy(bArr3, 0, bArr4, 0, 8);
        System.arraycopy(bArr3, 8, bArr5, 0, r73);
        ParametersWithIV parametersWithIV = new ParametersWithIV(this.param, this.iv);
        this.paramPlusIV = parametersWithIV;
        this.engine.init(false, parametersWithIV);
        byte[] bArr6 = new byte[r73];
        System.arraycopy(bArr5, 0, bArr6, 0, r73);
        for (int r02 = 0; r02 < r73 / this.engine.getBlockSize(); r02++) {
            int blockSize2 = this.engine.getBlockSize() * r02;
            this.engine.processBlock(bArr6, blockSize2, bArr6, blockSize2);
        }
        int r74 = r73 - 8;
        byte[] bArr7 = new byte[r74];
        byte[] bArr8 = new byte[8];
        System.arraycopy(bArr6, 0, bArr7, 0, r74);
        System.arraycopy(bArr6, r74, bArr8, 0, 8);
        if (!checkCMSKeyChecksum(bArr7, bArr8)) {
            throw new InvalidCipherTextException("Checksum inside ciphertext is corrupted");
        }
        int r53 = bArr7[0];
        if (r74 - ((r53 & 255) + 1) <= 7) {
            byte[] bArr9 = new byte[r53];
            System.arraycopy(bArr7, 1, bArr9, 0, r53);
            return bArr9;
        }
        throw new InvalidCipherTextException("too many pad bytes (" + (r74 - ((bArr7[0] & 255) + 1)) + ")");
    }

    @Override // org.bouncycastle.crypto.Wrapper
    public byte[] wrap(byte[] bArr, int r82, int r92) throws IllegalStateException, DataLengthException, IllegalArgumentException {
        if (!this.forWrapping) {
            throw new IllegalStateException("Not initialized for wrapping");
        }
        int r02 = r92 + 1;
        int r12 = r02 % 8;
        int r13 = r12 != 0 ? (8 - r12) + r02 : r02;
        byte[] bArr2 = new byte[r13];
        bArr2[0] = (byte) r92;
        System.arraycopy(bArr, r82, bArr2, 1, r92);
        int r72 = (r13 - r92) - 1;
        byte[] bArr3 = new byte[r72];
        if (r72 > 0) {
            this.sr.nextBytes(bArr3);
            System.arraycopy(bArr3, 0, bArr2, r02, r72);
        }
        byte[] bArrCalculateCMSKeyChecksum = calculateCMSKeyChecksum(bArr2);
        int length = bArrCalculateCMSKeyChecksum.length + r13;
        byte[] bArr4 = new byte[length];
        System.arraycopy(bArr2, 0, bArr4, 0, r13);
        System.arraycopy(bArrCalculateCMSKeyChecksum, 0, bArr4, r13, bArrCalculateCMSKeyChecksum.length);
        byte[] bArr5 = new byte[length];
        System.arraycopy(bArr4, 0, bArr5, 0, length);
        int blockSize = length / this.engine.getBlockSize();
        if (length % this.engine.getBlockSize() != 0) {
            throw new IllegalStateException("Not multiple of block length");
        }
        this.engine.init(true, this.paramPlusIV);
        for (int r03 = 0; r03 < blockSize; r03++) {
            int blockSize2 = this.engine.getBlockSize() * r03;
            this.engine.processBlock(bArr5, blockSize2, bArr5, blockSize2);
        }
        byte[] bArr6 = this.iv;
        int length2 = bArr6.length + length;
        byte[] bArr7 = new byte[length2];
        System.arraycopy(bArr6, 0, bArr7, 0, bArr6.length);
        System.arraycopy(bArr5, 0, bArr7, this.iv.length, length);
        byte[] bArr8 = new byte[length2];
        int r83 = 0;
        while (r83 < length2) {
            int r04 = r83 + 1;
            bArr8[r83] = bArr7[length2 - r04];
            r83 = r04;
        }
        this.engine.init(true, new ParametersWithIV(this.param, IV2));
        for (int r42 = 0; r42 < blockSize + 1; r42++) {
            int blockSize3 = this.engine.getBlockSize() * r42;
            this.engine.processBlock(bArr8, blockSize3, bArr8, blockSize3);
        }
        return bArr8;
    }
}
