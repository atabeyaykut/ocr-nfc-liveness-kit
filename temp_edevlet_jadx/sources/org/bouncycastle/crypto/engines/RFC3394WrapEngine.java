package org.bouncycastle.crypto.engines;

import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.InvalidCipherTextException;
import org.bouncycastle.crypto.Wrapper;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.crypto.params.ParametersWithIV;
import org.bouncycastle.crypto.params.ParametersWithRandom;
import org.bouncycastle.util.Arrays;

/* loaded from: classes2.dex */
public class RFC3394WrapEngine implements Wrapper {
    private static final byte[] DEFAULT_IV = {-90, -90, -90, -90, -90, -90, -90, -90};
    private final BlockCipher engine;
    private boolean forWrapping;
    private final byte[] iv;
    private KeyParameter param;
    private final boolean wrapCipherMode;

    public RFC3394WrapEngine(BlockCipher blockCipher) {
        this(blockCipher, false);
    }

    public RFC3394WrapEngine(BlockCipher blockCipher, boolean z10) {
        this.iv = new byte[8];
        this.param = null;
        this.forWrapping = true;
        this.engine = blockCipher;
        this.wrapCipherMode = !z10;
    }

    @Override // org.bouncycastle.crypto.Wrapper
    public String getAlgorithmName() {
        return this.engine.getAlgorithmName();
    }

    @Override // org.bouncycastle.crypto.Wrapper
    public void init(boolean z10, CipherParameters cipherParameters) {
        this.forWrapping = z10;
        if (cipherParameters instanceof ParametersWithRandom) {
            cipherParameters = ((ParametersWithRandom) cipherParameters).getParameters();
        }
        if (cipherParameters instanceof KeyParameter) {
            this.param = (KeyParameter) cipherParameters;
            System.arraycopy(DEFAULT_IV, 0, this.iv, 0, 8);
        } else if (cipherParameters instanceof ParametersWithIV) {
            ParametersWithIV parametersWithIV = (ParametersWithIV) cipherParameters;
            byte[] bArr = parametersWithIV.getIV();
            if (bArr.length != 8) {
                throw new IllegalArgumentException("IV not equal to 8");
            }
            this.param = (KeyParameter) parametersWithIV.getParameters();
            System.arraycopy(bArr, 0, this.iv, 0, 8);
        }
    }

    @Override // org.bouncycastle.crypto.Wrapper
    public byte[] unwrap(byte[] bArr, int r20, int r21) throws InvalidCipherTextException, IllegalStateException, DataLengthException, IllegalArgumentException {
        byte[] bArr2;
        if (this.forWrapping) {
            throw new IllegalStateException("not set for unwrapping");
        }
        if (r21 < 16) {
            throw new InvalidCipherTextException("unwrap data too short");
        }
        int r42 = r21 / 8;
        if (r42 * 8 != r21) {
            throw new InvalidCipherTextException("unwrap data must be a multiple of 8 bytes");
        }
        this.engine.init(!this.wrapCipherMode, this.param);
        byte[] bArr3 = this.iv;
        byte[] bArr4 = new byte[r21 - bArr3.length];
        byte[] bArr5 = new byte[bArr3.length];
        int r10 = 8;
        byte[] bArr6 = new byte[bArr3.length + 8];
        int r43 = r42 - 1;
        if (r43 == 1) {
            this.engine.processBlock(bArr, r20, bArr6, 0);
            System.arraycopy(bArr6, 0, bArr5, 0, this.iv.length);
            System.arraycopy(bArr6, this.iv.length, bArr4, 0, 8);
        } else {
            System.arraycopy(bArr, r20, bArr5, 0, bArr3.length);
            byte[] bArr7 = this.iv;
            System.arraycopy(bArr, bArr7.length + r20, bArr4, 0, r21 - bArr7.length);
            int r52 = 5;
            while (r52 >= 0) {
                int r13 = r43;
                while (r13 >= 1) {
                    System.arraycopy(bArr5, 0, bArr6, 0, this.iv.length);
                    int r14 = (r13 - 1) * 8;
                    System.arraycopy(bArr4, r14, bArr6, this.iv.length, r10);
                    int r15 = (r43 * r52) + r13;
                    int r16 = 1;
                    while (r15 != 0) {
                        int length = this.iv.length - r16;
                        bArr6[length] = (byte) (bArr6[length] ^ ((byte) r15));
                        r15 >>>= 8;
                        r16++;
                    }
                    this.engine.processBlock(bArr6, 0, bArr6, 0);
                    System.arraycopy(bArr6, 0, bArr5, 0, 8);
                    System.arraycopy(bArr6, 8, bArr4, r14, 8);
                    r13--;
                    r10 = 8;
                }
                r52--;
                r10 = 8;
            }
        }
        if (r43 != 1) {
            if (!Arrays.constantTimeAreEqual(bArr5, this.iv)) {
                throw new InvalidCipherTextException("checksum failed");
            }
        } else if (!Arrays.constantTimeAreEqual(bArr5, this.iv)) {
            System.arraycopy(bArr, r20, bArr5, 0, this.iv.length);
            byte[] bArr8 = this.iv;
            System.arraycopy(bArr, r20 + bArr8.length, bArr4, 0, r21 - bArr8.length);
            int r11 = 5;
            while (true) {
                bArr2 = this.iv;
                if (r11 < 0) {
                    break;
                }
                System.arraycopy(bArr5, 0, bArr6, 0, bArr2.length);
                System.arraycopy(bArr4, 0, bArr6, this.iv.length, 8);
                int r12 = (r43 * r11) + 1;
                int r22 = 1;
                while (r12 != 0) {
                    int length2 = this.iv.length - r22;
                    bArr6[length2] = (byte) (((byte) r12) ^ bArr6[length2]);
                    r12 >>>= 8;
                    r22++;
                }
                this.engine.processBlock(bArr6, 0, bArr6, 0);
                System.arraycopy(bArr6, 0, bArr5, 0, 8);
                System.arraycopy(bArr6, 8, bArr4, 0, 8);
                r11--;
            }
            if (!Arrays.constantTimeAreEqual(bArr5, bArr2)) {
                throw new InvalidCipherTextException("checksum failed");
            }
        }
        return bArr4;
    }

    @Override // org.bouncycastle.crypto.Wrapper
    public byte[] wrap(byte[] bArr, int r13, int r14) throws IllegalStateException, DataLengthException, IllegalArgumentException {
        if (!this.forWrapping) {
            throw new IllegalStateException("not set for wrapping");
        }
        if (r14 < 8) {
            throw new DataLengthException("wrap data must be at least 8 bytes");
        }
        int r12 = r14 / 8;
        if (r12 * 8 != r14) {
            throw new DataLengthException("wrap data must be a multiple of 8 bytes");
        }
        this.engine.init(this.wrapCipherMode, this.param);
        byte[] bArr2 = this.iv;
        byte[] bArr3 = new byte[bArr2.length + r14];
        System.arraycopy(bArr2, 0, bArr3, 0, bArr2.length);
        System.arraycopy(bArr, r13, bArr3, this.iv.length, r14);
        if (r12 == 1) {
            this.engine.processBlock(bArr3, 0, bArr3, 0);
        } else {
            byte[] bArr4 = new byte[this.iv.length + 8];
            for (int r142 = 0; r142 != 6; r142++) {
                for (int r22 = 1; r22 <= r12; r22++) {
                    System.arraycopy(bArr3, 0, bArr4, 0, this.iv.length);
                    int r42 = r22 * 8;
                    System.arraycopy(bArr3, r42, bArr4, this.iv.length, 8);
                    this.engine.processBlock(bArr4, 0, bArr4, 0);
                    int r6 = (r12 * r142) + r22;
                    int r72 = 1;
                    while (r6 != 0) {
                        int length = this.iv.length - r72;
                        bArr4[length] = (byte) (((byte) r6) ^ bArr4[length]);
                        r6 >>>= 8;
                        r72++;
                    }
                    System.arraycopy(bArr4, 0, bArr3, 0, 8);
                    System.arraycopy(bArr4, 8, bArr3, r42, 8);
                }
            }
        }
        return bArr3;
    }
}
