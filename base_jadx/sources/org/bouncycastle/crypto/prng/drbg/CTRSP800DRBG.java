package org.bouncycastle.crypto.prng.drbg;

import net.sf.scuba.smartcards.ISO7816;
import net.sf.scuba.smartcards.ISOFileInfo;
import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.crypto.prng.EntropySource;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.Bytes;
import org.bouncycastle.util.encoders.Hex;

/* loaded from: classes2.dex */
public class CTRSP800DRBG implements SP80090DRBG {
    private static final int AES_MAX_BITS_REQUEST = 262144;
    private static final long AES_RESEED_MAX = 140737488355328L;
    private static final byte[] K_BITS = Hex.decodeStrict("000102030405060708090A0B0C0D0E0F101112131415161718191A1B1C1D1E1F");
    private static final int TDEA_MAX_BITS_REQUEST = 4096;
    private static final long TDEA_RESEED_MAX = 2147483648L;
    private byte[] _Key;
    private byte[] _V;
    private BlockCipher _engine;
    private EntropySource _entropySource;
    private boolean _isTDEA;
    private int _keySizeInBits;
    private long _reseedCounter = 0;
    private int _securityStrength;
    private int _seedLength;

    public CTRSP800DRBG(BlockCipher blockCipher, int r42, int r52, EntropySource entropySource, byte[] bArr, byte[] bArr2) throws IllegalStateException, DataLengthException, IllegalArgumentException {
        this._isTDEA = false;
        this._entropySource = entropySource;
        this._engine = blockCipher;
        this._keySizeInBits = r42;
        this._securityStrength = r52;
        this._seedLength = (blockCipher.getBlockSize() * 8) + r42;
        this._isTDEA = isTDEA(blockCipher);
        if (r52 > 256) {
            throw new IllegalArgumentException("Requested security strength is not supported by the derivation function");
        }
        if (getMaxSecurityStrength(blockCipher, r42) < r52) {
            throw new IllegalArgumentException("Requested security strength is not supported by block cipher and key size");
        }
        if (entropySource.entropySize() < r52) {
            throw new IllegalArgumentException("Not enough entropy for security strength required");
        }
        CTR_DRBG_Instantiate_algorithm(getEntropy(), bArr2, bArr);
    }

    private void BCC(byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4) throws IllegalStateException, DataLengthException, IllegalArgumentException {
        int blockSize = this._engine.getBlockSize();
        byte[] bArr5 = new byte[blockSize];
        int length = bArr4.length / blockSize;
        byte[] bArr6 = new byte[blockSize];
        this._engine.init(true, new KeyParameter(expandKey(bArr2)));
        this._engine.processBlock(bArr3, 0, bArr5, 0);
        for (int r15 = 0; r15 < length; r15++) {
            Bytes.xor(blockSize, bArr5, 0, bArr4, r15 * blockSize, bArr6, 0);
            this._engine.processBlock(bArr6, 0, bArr5, 0);
        }
        System.arraycopy(bArr5, 0, bArr, 0, bArr.length);
    }

    private byte[] Block_Cipher_df(byte[] bArr, int r19) throws IllegalStateException, DataLengthException, IllegalArgumentException {
        int blockSize = this._engine.getBlockSize();
        int length = bArr.length;
        int r52 = r19 / 8;
        int r6 = length + 8;
        byte[] bArr2 = new byte[((((r6 + 1) + blockSize) - 1) / blockSize) * blockSize];
        copyIntToByteArray(bArr2, length, 0);
        copyIntToByteArray(bArr2, r52, 4);
        System.arraycopy(bArr, 0, bArr2, 8, length);
        bArr2[r6] = ISOFileInfo.DATA_BYTES1;
        int r12 = this._keySizeInBits;
        int r32 = (r12 / 8) + blockSize;
        byte[] bArr3 = new byte[r32];
        byte[] bArr4 = new byte[blockSize];
        byte[] bArr5 = new byte[blockSize];
        int r13 = r12 / 8;
        byte[] bArr6 = new byte[r13];
        System.arraycopy(K_BITS, 0, bArr6, 0, r13);
        int r122 = 0;
        while (true) {
            int r132 = r122 * blockSize;
            if (r132 * 8 >= (blockSize * 8) + this._keySizeInBits) {
                break;
            }
            copyIntToByteArray(bArr5, r122, 0);
            BCC(bArr4, bArr6, bArr5, bArr2);
            int r14 = r32 - r132;
            if (r14 > blockSize) {
                r14 = blockSize;
            }
            System.arraycopy(bArr4, 0, bArr3, r132, r14);
            r122++;
        }
        byte[] bArr7 = new byte[blockSize];
        System.arraycopy(bArr3, 0, bArr6, 0, r13);
        System.arraycopy(bArr3, r13, bArr7, 0, blockSize);
        byte[] bArr8 = new byte[r52];
        this._engine.init(true, new KeyParameter(expandKey(bArr6)));
        int r42 = 0;
        while (true) {
            int r62 = r42 * blockSize;
            if (r62 >= r52) {
                return bArr8;
            }
            this._engine.processBlock(bArr7, 0, bArr7, 0);
            int r72 = r52 - r62;
            if (r72 > blockSize) {
                r72 = blockSize;
            }
            System.arraycopy(bArr7, 0, bArr8, r62, r72);
            r42++;
        }
    }

    private void CTR_DRBG_Instantiate_algorithm(byte[] bArr, byte[] bArr2, byte[] bArr3) throws IllegalStateException, DataLengthException, IllegalArgumentException {
        byte[] bArrBlock_Cipher_df = Block_Cipher_df(Arrays.concatenate(bArr, bArr2, bArr3), this._seedLength);
        int blockSize = this._engine.getBlockSize();
        byte[] bArr4 = new byte[(this._keySizeInBits + 7) / 8];
        this._Key = bArr4;
        byte[] bArr5 = new byte[blockSize];
        this._V = bArr5;
        CTR_DRBG_Update(bArrBlock_Cipher_df, bArr4, bArr5);
        this._reseedCounter = 1L;
    }

    private void CTR_DRBG_Reseed_algorithm(byte[] bArr) throws IllegalStateException, DataLengthException, IllegalArgumentException {
        CTR_DRBG_Update(Block_Cipher_df(Arrays.concatenate(getEntropy(), bArr), this._seedLength), this._Key, this._V);
        this._reseedCounter = 1L;
    }

    private void CTR_DRBG_Update(byte[] bArr, byte[] bArr2, byte[] bArr3) throws IllegalStateException, DataLengthException, IllegalArgumentException {
        int length = bArr.length;
        byte[] bArr4 = new byte[length];
        byte[] bArr5 = new byte[this._engine.getBlockSize()];
        int blockSize = this._engine.getBlockSize();
        this._engine.init(true, new KeyParameter(expandKey(bArr2)));
        int r52 = 0;
        while (true) {
            int r6 = r52 * blockSize;
            if (r6 >= bArr.length) {
                Bytes.xorTo(bArr.length, bArr, bArr4);
                System.arraycopy(bArr4, 0, bArr2, 0, bArr2.length);
                System.arraycopy(bArr4, bArr2.length, bArr3, 0, bArr3.length);
                return;
            } else {
                addOneTo(bArr3);
                this._engine.processBlock(bArr3, 0, bArr5, 0);
                int r72 = length - r6;
                if (r72 > blockSize) {
                    r72 = blockSize;
                }
                System.arraycopy(bArr5, 0, bArr4, r6, r72);
                r52++;
            }
        }
    }

    private void addOneTo(byte[] bArr) {
        int r22 = 1;
        for (int r12 = 1; r12 <= bArr.length; r12++) {
            int r32 = (bArr[bArr.length - r12] & 255) + r22;
            r22 = r32 > 255 ? 1 : 0;
            bArr[bArr.length - r12] = (byte) r32;
        }
    }

    private void copyIntToByteArray(byte[] bArr, int r42, int r52) {
        bArr[r52 + 0] = (byte) (r42 >> 24);
        bArr[r52 + 1] = (byte) (r42 >> 16);
        bArr[r52 + 2] = (byte) (r42 >> 8);
        bArr[r52 + 3] = (byte) r42;
    }

    private byte[] getEntropy() {
        byte[] entropy = this._entropySource.getEntropy();
        if (entropy.length >= (this._securityStrength + 7) / 8) {
            return entropy;
        }
        throw new IllegalStateException("Insufficient entropy provided by entropy source");
    }

    private int getMaxSecurityStrength(BlockCipher blockCipher, int r32) {
        if (isTDEA(blockCipher) && r32 == 168) {
            return 112;
        }
        if (blockCipher.getAlgorithmName().equals("AES")) {
            return r32;
        }
        return -1;
    }

    private boolean isTDEA(BlockCipher blockCipher) {
        return blockCipher.getAlgorithmName().equals("DESede") || blockCipher.getAlgorithmName().equals("TDEA");
    }

    private void padKey(byte[] bArr, int r6, byte[] bArr2, int r82) {
        int r12 = r6 + 0;
        bArr2[r82 + 0] = (byte) (bArr[r12] & 254);
        int r22 = r6 + 1;
        bArr2[r82 + 1] = (byte) ((bArr[r12] << 7) | ((bArr[r22] & 252) >>> 1));
        int r13 = bArr[r22] << 6;
        int r23 = r6 + 2;
        bArr2[r82 + 2] = (byte) (r13 | ((bArr[r23] & 248) >>> 2));
        int r14 = bArr[r23] << 5;
        int r24 = r6 + 3;
        bArr2[r82 + 3] = (byte) (r14 | ((bArr[r24] & 240) >>> 3));
        int r15 = bArr[r24] << 4;
        int r25 = r6 + 4;
        bArr2[r82 + 4] = (byte) (r15 | ((bArr[r25] & ISO7816.INS_CREATE_FILE) >>> 4));
        int r16 = bArr[r25] << 3;
        int r26 = r6 + 5;
        bArr2[r82 + 5] = (byte) (r16 | ((bArr[r26] & ISO7816.INS_GET_RESPONSE) >>> 5));
        int r62 = r6 + 6;
        bArr2[r82 + 6] = (byte) ((bArr[r26] << 2) | ((bArr[r62] & ISOFileInfo.DATA_BYTES1) >>> 6));
        int r02 = r82 + 7;
        bArr2[r02] = (byte) (bArr[r62] << 1);
        while (r82 <= r02) {
            byte b10 = bArr2[r82];
            bArr2[r82] = (byte) (((((b10 >> 7) ^ ((((((b10 >> 1) ^ (b10 >> 2)) ^ (b10 >> 3)) ^ (b10 >> 4)) ^ (b10 >> 5)) ^ (b10 >> 6))) ^ 1) & 1) | (b10 & 254));
            r82++;
        }
    }

    public byte[] expandKey(byte[] bArr) {
        if (!this._isTDEA) {
            return bArr;
        }
        byte[] bArr2 = new byte[24];
        padKey(bArr, 0, bArr2, 0);
        padKey(bArr, 7, bArr2, 8);
        padKey(bArr, 14, bArr2, 16);
        return bArr2;
    }

    @Override // org.bouncycastle.crypto.prng.drbg.SP80090DRBG
    public int generate(byte[] bArr, byte[] bArr2, boolean z10) throws IllegalStateException, DataLengthException, IllegalArgumentException {
        byte[] bArrBlock_Cipher_df;
        boolean z11 = this._isTDEA;
        long j10 = this._reseedCounter;
        if (z11) {
            if (j10 > TDEA_RESEED_MAX) {
                return -1;
            }
            if (Utils.isTooLarge(bArr, 512)) {
                throw new IllegalArgumentException("Number of bits per request limited to 4096");
            }
        } else {
            if (j10 > AES_RESEED_MAX) {
                return -1;
            }
            if (Utils.isTooLarge(bArr, 32768)) {
                throw new IllegalArgumentException("Number of bits per request limited to 262144");
            }
        }
        if (z10) {
            CTR_DRBG_Reseed_algorithm(bArr2);
            bArr2 = null;
        }
        if (bArr2 != null) {
            bArrBlock_Cipher_df = Block_Cipher_df(bArr2, this._seedLength);
            CTR_DRBG_Update(bArrBlock_Cipher_df, this._Key, this._V);
        } else {
            bArrBlock_Cipher_df = new byte[this._seedLength / 8];
        }
        int length = this._V.length;
        byte[] bArr3 = new byte[length];
        this._engine.init(true, new KeyParameter(expandKey(this._Key)));
        for (int r22 = 0; r22 <= bArr.length / length; r22++) {
            int r42 = r22 * length;
            int length2 = bArr.length - r42 > length ? length : bArr.length - (this._V.length * r22);
            if (length2 != 0) {
                addOneTo(this._V);
                this._engine.processBlock(this._V, 0, bArr3, 0);
                System.arraycopy(bArr3, 0, bArr, r42, length2);
            }
        }
        CTR_DRBG_Update(bArrBlock_Cipher_df, this._Key, this._V);
        this._reseedCounter++;
        return bArr.length * 8;
    }

    @Override // org.bouncycastle.crypto.prng.drbg.SP80090DRBG
    public int getBlockSize() {
        return this._V.length * 8;
    }

    @Override // org.bouncycastle.crypto.prng.drbg.SP80090DRBG
    public void reseed(byte[] bArr) throws IllegalStateException, DataLengthException, IllegalArgumentException {
        CTR_DRBG_Reseed_algorithm(bArr);
    }
}
