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
import org.bouncycastle.util.Pack;

/* loaded from: classes2.dex */
public class RFC5649WrapEngine implements Wrapper {
    private static final byte[] DEFAULT_IV = {-90, 89, 89, -90};
    private final BlockCipher engine;
    private final byte[] preIV = new byte[4];
    private KeyParameter param = null;
    private boolean forWrapping = true;

    public RFC5649WrapEngine(BlockCipher blockCipher) {
        this.engine = blockCipher;
    }

    private byte[] padPlaintext(byte[] bArr) {
        int length = bArr.length;
        int r12 = (8 - (length % 8)) % 8;
        byte[] bArr2 = new byte[length + r12];
        System.arraycopy(bArr, 0, bArr2, 0, length);
        if (r12 != 0) {
            System.arraycopy(new byte[r12], 0, bArr2, length, r12);
        }
        return bArr2;
    }

    private byte[] rfc3394UnwrapNoIvCheck(byte[] bArr, int r13, int r14, byte[] bArr2) throws IllegalStateException, DataLengthException, IllegalArgumentException {
        int r02 = r14 - 8;
        byte[] bArr3 = new byte[r02];
        byte[] bArr4 = new byte[16];
        System.arraycopy(bArr, r13, bArr4, 0, 8);
        System.arraycopy(bArr, r13 + 8, bArr3, 0, r02);
        this.engine.init(false, this.param);
        int r142 = (r14 / 8) - 1;
        for (int r132 = 5; r132 >= 0; r132--) {
            for (int r03 = r142; r03 >= 1; r03--) {
                int r52 = (r03 - 1) * 8;
                System.arraycopy(bArr3, r52, bArr4, 8, 8);
                int r6 = (r142 * r132) + r03;
                int r72 = 1;
                while (r6 != 0) {
                    int r82 = 8 - r72;
                    bArr4[r82] = (byte) (bArr4[r82] ^ ((byte) r6));
                    r6 >>>= 8;
                    r72++;
                }
                this.engine.processBlock(bArr4, 0, bArr4, 0);
                System.arraycopy(bArr4, 8, bArr3, r52, 8);
            }
        }
        System.arraycopy(bArr4, 0, bArr2, 0, 8);
        return bArr3;
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
            System.arraycopy(DEFAULT_IV, 0, this.preIV, 0, 4);
        } else if (cipherParameters instanceof ParametersWithIV) {
            ParametersWithIV parametersWithIV = (ParametersWithIV) cipherParameters;
            byte[] bArr = parametersWithIV.getIV();
            if (bArr.length != 4) {
                throw new IllegalArgumentException("IV length not equal to 4");
            }
            this.param = (KeyParameter) parametersWithIV.getParameters();
            System.arraycopy(bArr, 0, this.preIV, 0, 4);
        }
    }

    @Override // org.bouncycastle.crypto.Wrapper
    public byte[] unwrap(byte[] bArr, int r92, int r10) throws InvalidCipherTextException, IllegalStateException, DataLengthException, IllegalArgumentException {
        byte[] bArrRfc3394UnwrapNoIvCheck;
        if (this.forWrapping) {
            throw new IllegalStateException("not set for unwrapping");
        }
        int r02 = r10 / 8;
        if (r02 * 8 != r10) {
            throw new InvalidCipherTextException("unwrap data must be a multiple of 8 bytes");
        }
        if (r02 <= 1) {
            throw new InvalidCipherTextException("unwrap data must be at least 16 bytes");
        }
        byte[] bArr2 = new byte[r10];
        System.arraycopy(bArr, r92, bArr2, 0, r10);
        byte[] bArr3 = new byte[r10];
        byte[] bArr4 = new byte[8];
        if (r02 == 2) {
            this.engine.init(false, this.param);
            int blockSize = this.engine.getBlockSize();
            for (int r93 = 0; r93 < r10; r93 += blockSize) {
                this.engine.processBlock(bArr2, r93, bArr3, r93);
            }
            System.arraycopy(bArr3, 0, bArr4, 0, 8);
            int r102 = r10 - 8;
            bArrRfc3394UnwrapNoIvCheck = new byte[r102];
            System.arraycopy(bArr3, 8, bArrRfc3394UnwrapNoIvCheck, 0, r102);
        } else {
            bArrRfc3394UnwrapNoIvCheck = rfc3394UnwrapNoIvCheck(bArr, r92, r10, bArr4);
        }
        int r94 = 4;
        byte[] bArr5 = new byte[4];
        System.arraycopy(bArr4, 0, bArr5, 0, 4);
        int r03 = Pack.bigEndianToInt(bArr4, 4);
        boolean zConstantTimeAreEqual = Arrays.constantTimeAreEqual(bArr5, this.preIV);
        int length = bArrRfc3394UnwrapNoIvCheck.length;
        if (r03 <= length - 8) {
            zConstantTimeAreEqual = false;
        }
        if (r03 > length) {
            zConstantTimeAreEqual = false;
        }
        int r12 = length - r03;
        if (r12 >= 8 || r12 < 0) {
            zConstantTimeAreEqual = false;
        } else {
            r94 = r12;
        }
        byte[] bArr6 = new byte[r94];
        System.arraycopy(bArrRfc3394UnwrapNoIvCheck, bArrRfc3394UnwrapNoIvCheck.length - r94, bArr6, 0, r94);
        if (!Arrays.constantTimeAreEqual(bArr6, new byte[r94])) {
            zConstantTimeAreEqual = false;
        }
        if (!zConstantTimeAreEqual) {
            throw new InvalidCipherTextException("checksum failed");
        }
        byte[] bArr7 = new byte[r03];
        System.arraycopy(bArrRfc3394UnwrapNoIvCheck, 0, bArr7, 0, r03);
        return bArr7;
    }

    @Override // org.bouncycastle.crypto.Wrapper
    public byte[] wrap(byte[] bArr, int r72, int r82) throws IllegalStateException, DataLengthException, IllegalArgumentException {
        if (!this.forWrapping) {
            throw new IllegalStateException("not set for wrapping");
        }
        byte[] bArr2 = new byte[8];
        System.arraycopy(this.preIV, 0, bArr2, 0, 4);
        Pack.intToBigEndian(r82, bArr2, 4);
        byte[] bArr3 = new byte[r82];
        System.arraycopy(bArr, r72, bArr3, 0, r82);
        byte[] bArrPadPlaintext = padPlaintext(bArr3);
        if (bArrPadPlaintext.length != 8) {
            RFC3394WrapEngine rFC3394WrapEngine = new RFC3394WrapEngine(this.engine);
            rFC3394WrapEngine.init(true, new ParametersWithIV(this.param, bArr2));
            return rFC3394WrapEngine.wrap(bArrPadPlaintext, 0, bArrPadPlaintext.length);
        }
        int length = bArrPadPlaintext.length + 8;
        byte[] bArr4 = new byte[length];
        System.arraycopy(bArr2, 0, bArr4, 0, 8);
        System.arraycopy(bArrPadPlaintext, 0, bArr4, 8, bArrPadPlaintext.length);
        this.engine.init(true, this.param);
        int blockSize = this.engine.getBlockSize();
        for (int r32 = 0; r32 < length; r32 += blockSize) {
            this.engine.processBlock(bArr4, r32, bArr4, r32);
        }
        return bArr4;
    }
}
