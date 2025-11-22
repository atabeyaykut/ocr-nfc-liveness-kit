package org.bouncycastle.crypto.encodings;

import java.security.SecureRandom;
import org.bouncycastle.crypto.AsymmetricBlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.CryptoServicesRegistrar;
import org.bouncycastle.crypto.InvalidCipherTextException;
import org.bouncycastle.crypto.params.AsymmetricKeyParameter;
import org.bouncycastle.crypto.params.ParametersWithRandom;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.Properties;

/* loaded from: classes2.dex */
public class PKCS1Encoding implements AsymmetricBlockCipher {
    private static final int HEADER_LENGTH = 10;
    public static final String NOT_STRICT_LENGTH_ENABLED_PROPERTY = "org.bouncycastle.pkcs1.not_strict";
    public static final String STRICT_LENGTH_ENABLED_PROPERTY = "org.bouncycastle.pkcs1.strict";
    private byte[] blockBuffer;
    private AsymmetricBlockCipher engine;
    private byte[] fallback;
    private boolean forEncryption;
    private boolean forPrivateKey;
    private int pLen;
    private SecureRandom random;
    private boolean useStrictLength;

    public PKCS1Encoding(AsymmetricBlockCipher asymmetricBlockCipher) {
        this.pLen = -1;
        this.fallback = null;
        this.engine = asymmetricBlockCipher;
        this.useStrictLength = useStrict();
    }

    public PKCS1Encoding(AsymmetricBlockCipher asymmetricBlockCipher, int r32) {
        this.pLen = -1;
        this.fallback = null;
        this.engine = asymmetricBlockCipher;
        this.useStrictLength = useStrict();
        this.pLen = r32;
    }

    public PKCS1Encoding(AsymmetricBlockCipher asymmetricBlockCipher, byte[] bArr) {
        this.pLen = -1;
        this.fallback = null;
        this.engine = asymmetricBlockCipher;
        this.useStrictLength = useStrict();
        this.fallback = bArr;
        this.pLen = bArr.length;
    }

    private static int checkPkcs1Encoding1(byte[] bArr) {
        int r02 = 0;
        int r32 = -((bArr[0] & 255) ^ 1);
        int r12 = 0;
        for (int r42 = 1; r42 < bArr.length; r42++) {
            int r52 = bArr[r42] & 255;
            int r6 = ((r52 ^ 0) - 1) >> 31;
            r02 ^= ((~r12) & r42) & r6;
            r12 |= r6;
            r32 |= ~((((r52 ^ 255) - 1) >> 31) | r12);
        }
        return ((bArr.length - 1) - r02) | (((r02 - 9) | r32) >> 31);
    }

    private static int checkPkcs1Encoding2(byte[] bArr) {
        int r12 = -((bArr[0] & 255) ^ 2);
        int r42 = 0;
        int r52 = 0;
        for (int r32 = 1; r32 < bArr.length; r32++) {
            int r6 = (((bArr[r32] & 255) ^ 0) - 1) >> 31;
            r42 ^= ((~r52) & r32) & r6;
            r52 |= r6;
        }
        return ((bArr.length - 1) - r42) | (((r42 - 9) | r12) >> 31);
    }

    private static int checkPkcs1Encoding2(byte[] bArr, int r52) {
        int r02 = -((bArr[0] & 255) ^ 2);
        int length = (bArr.length - 1) - r52;
        int r53 = (length - 9) | r02;
        for (int r03 = 1; r03 < length; r03++) {
            r53 |= (bArr[r03] & 255) - 1;
        }
        return ((-(bArr[length] & 255)) | r53) >> 31;
    }

    private byte[] decodeBlock(byte[] bArr, int r52, int r6) throws InvalidCipherTextException {
        if (this.forPrivateKey && this.pLen != -1) {
            return decodeBlockOrRandom(bArr, r52, r6);
        }
        int outputBlockSize = this.engine.getOutputBlockSize();
        byte[] bArrProcessBlock = this.engine.processBlock(bArr, r52, r6);
        boolean z10 = this.useStrictLength & (bArrProcessBlock.length != outputBlockSize);
        byte[] bArr2 = bArrProcessBlock.length < outputBlockSize ? this.blockBuffer : bArrProcessBlock;
        int r02 = this.forPrivateKey ? checkPkcs1Encoding2(bArr2) : checkPkcs1Encoding1(bArr2);
        try {
            if (r02 < 0) {
                throw new InvalidCipherTextException("block incorrect");
            }
            if (z10) {
                throw new InvalidCipherTextException("block incorrect size");
            }
            byte[] bArr3 = new byte[r02];
            System.arraycopy(bArr2, bArr2.length - r02, bArr3, 0, r02);
            return bArr3;
        } finally {
            Arrays.fill(bArrProcessBlock, (byte) 0);
            byte[] bArr4 = this.blockBuffer;
            Arrays.fill(bArr4, 0, Math.max(0, bArr4.length - bArrProcessBlock.length), (byte) 0);
        }
    }

    private byte[] decodeBlockOrRandom(byte[] bArr, int r10, int r11) throws InvalidCipherTextException {
        if (!this.forPrivateKey) {
            throw new InvalidCipherTextException("sorry, this method is only for decryption, not for signing");
        }
        int r02 = this.pLen;
        byte[] bArr2 = this.fallback;
        if (bArr2 == null) {
            bArr2 = new byte[r02];
            this.random.nextBytes(bArr2);
        }
        int outputBlockSize = this.engine.getOutputBlockSize();
        byte[] bArrProcessBlock = this.engine.processBlock(bArr, r10, r11);
        byte[] bArr3 = (bArrProcessBlock.length == outputBlockSize || (!this.useStrictLength && bArrProcessBlock.length >= outputBlockSize)) ? bArrProcessBlock : this.blockBuffer;
        int r112 = checkPkcs1Encoding2(bArr3, r02) | 0;
        int length = bArr3.length - r02;
        byte[] bArr4 = new byte[r02];
        for (int r52 = 0; r52 < r02; r52++) {
            bArr4[r52] = (byte) ((bArr3[length + r52] & (~r112)) | (bArr2[r52] & r112));
        }
        Arrays.fill(bArrProcessBlock, (byte) 0);
        byte[] bArr5 = this.blockBuffer;
        Arrays.fill(bArr5, 0, Math.max(0, bArr5.length - bArrProcessBlock.length), (byte) 0);
        return bArr4;
    }

    private byte[] encodeBlock(byte[] bArr, int r82, int r92) throws InvalidCipherTextException {
        if (r92 > getInputBlockSize()) {
            throw new IllegalArgumentException("input data too large");
        }
        int inputBlockSize = this.engine.getInputBlockSize();
        byte[] bArr2 = new byte[inputBlockSize];
        if (this.forPrivateKey) {
            bArr2[0] = 1;
            for (int r22 = 1; r22 != (inputBlockSize - r92) - 1; r22++) {
                bArr2[r22] = -1;
            }
        } else {
            this.random.nextBytes(bArr2);
            bArr2[0] = 2;
            for (int r23 = 1; r23 != (inputBlockSize - r92) - 1; r23++) {
                while (bArr2[r23] == 0) {
                    bArr2[r23] = (byte) this.random.nextInt();
                }
            }
        }
        int r24 = inputBlockSize - r92;
        bArr2[r24 - 1] = 0;
        System.arraycopy(bArr, r82, bArr2, r24, r92);
        return this.engine.processBlock(bArr2, 0, inputBlockSize);
    }

    private boolean useStrict() {
        if (Properties.isOverrideSetTo(NOT_STRICT_LENGTH_ENABLED_PROPERTY, true)) {
            return false;
        }
        return !Properties.isOverrideSetTo(STRICT_LENGTH_ENABLED_PROPERTY, false);
    }

    @Override // org.bouncycastle.crypto.AsymmetricBlockCipher
    public int getInputBlockSize() {
        int inputBlockSize = this.engine.getInputBlockSize();
        return this.forEncryption ? inputBlockSize - 10 : inputBlockSize;
    }

    @Override // org.bouncycastle.crypto.AsymmetricBlockCipher
    public int getOutputBlockSize() {
        int outputBlockSize = this.engine.getOutputBlockSize();
        return this.forEncryption ? outputBlockSize : outputBlockSize - 10;
    }

    public AsymmetricBlockCipher getUnderlyingCipher() {
        return this.engine;
    }

    @Override // org.bouncycastle.crypto.AsymmetricBlockCipher
    public void init(boolean z10, CipherParameters cipherParameters) {
        AsymmetricKeyParameter asymmetricKeyParameter;
        if (cipherParameters instanceof ParametersWithRandom) {
            ParametersWithRandom parametersWithRandom = (ParametersWithRandom) cipherParameters;
            this.random = parametersWithRandom.getRandom();
            asymmetricKeyParameter = (AsymmetricKeyParameter) parametersWithRandom.getParameters();
        } else {
            asymmetricKeyParameter = (AsymmetricKeyParameter) cipherParameters;
            if (!asymmetricKeyParameter.isPrivate() && z10) {
                this.random = CryptoServicesRegistrar.getSecureRandom();
            }
        }
        this.engine.init(z10, cipherParameters);
        this.forPrivateKey = asymmetricKeyParameter.isPrivate();
        this.forEncryption = z10;
        this.blockBuffer = new byte[this.engine.getOutputBlockSize()];
        if (this.pLen > 0 && this.fallback == null && this.random == null) {
            throw new IllegalArgumentException("encoder requires random");
        }
    }

    @Override // org.bouncycastle.crypto.AsymmetricBlockCipher
    public byte[] processBlock(byte[] bArr, int r32, int r42) throws InvalidCipherTextException {
        return this.forEncryption ? encodeBlock(bArr, r32, r42) : decodeBlock(bArr, r32, r42);
    }
}
