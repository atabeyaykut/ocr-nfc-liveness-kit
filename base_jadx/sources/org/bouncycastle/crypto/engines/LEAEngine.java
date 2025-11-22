package org.bouncycastle.crypto.engines;

import ab.b;
import java.lang.reflect.Array;
import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.CryptoServicesRegistrar;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.constraints.DefaultServiceProperties;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.util.Pack;

/* loaded from: classes2.dex */
public class LEAEngine implements BlockCipher {
    private static final int BASEROUNDS = 16;
    private static final int BLOCKSIZE = 16;
    private static final int[] DELTA = {-1007687205, 1147300610, 2044886154, 2027892972, 1902027934, -947529206, -531697110, -440137385};
    private static final int KEY0 = 0;
    private static final int KEY1 = 1;
    private static final int KEY2 = 2;
    private static final int KEY3 = 3;
    private static final int KEY4 = 4;
    private static final int KEY5 = 5;
    private static final int MASK128 = 3;
    private static final int MASK256 = 7;
    private static final int NUMWORDS = 4;
    private static final int NUMWORDS128 = 4;
    private static final int NUMWORDS192 = 6;
    private static final int NUMWORDS256 = 8;
    private static final int ROT1 = 1;
    private static final int ROT11 = 11;
    private static final int ROT13 = 13;
    private static final int ROT17 = 17;
    private static final int ROT3 = 3;
    private static final int ROT5 = 5;
    private static final int ROT6 = 6;
    private static final int ROT9 = 9;
    private boolean forEncryption;
    private final int[] theBlock = new int[4];
    private int[][] theRoundKeys;
    private int theRounds;

    private static int bufLength(byte[] bArr) {
        if (bArr == null) {
            return 0;
        }
        return bArr.length;
    }

    private static void checkBuffer(byte[] bArr, int r22, boolean z10) {
        int r12 = bufLength(bArr);
        int r02 = r22 + 16;
        if ((r22 < 0 || r02 < 0) || r02 > r12) {
            if (!z10) {
                throw new DataLengthException("Input buffer too short.");
            }
        }
    }

    private int decryptBlock(byte[] bArr, int r52, byte[] bArr2, int r72) {
        Pack.littleEndianToInt(bArr, r52, this.theBlock, 0, 4);
        for (int r42 = this.theRounds - 1; r42 >= 0; r42--) {
            decryptRound(r42);
        }
        Pack.intToLittleEndian(this.theBlock, bArr2, r72);
        return 16;
    }

    private void decryptRound(int r82) {
        int[] r02 = this.theRoundKeys[r82];
        int r83 = r82 % 4;
        int r22 = rightIndex(r83);
        int[] r32 = this.theBlock;
        r32[r22] = r02[1] ^ (ror32(r32[r22], 9) - (this.theBlock[r83] ^ r02[0]));
        int r84 = rightIndex(r22);
        int[] r33 = this.theBlock;
        r33[r84] = (rol32(r33[r84], 5) - (this.theBlock[r22] ^ r02[2])) ^ r02[3];
        int r34 = rightIndex(r84);
        int[] r42 = this.theBlock;
        r42[r34] = r02[5] ^ (rol32(r42[r34], 3) - (this.theBlock[r84] ^ r02[4]));
    }

    private int encryptBlock(byte[] bArr, int r52, byte[] bArr2, int r72) {
        Pack.littleEndianToInt(bArr, r52, this.theBlock, 0, 4);
        for (int r22 = 0; r22 < this.theRounds; r22++) {
            encryptRound(r22);
        }
        Pack.intToLittleEndian(this.theBlock, bArr2, r72);
        return 16;
    }

    private void encryptRound(int r92) {
        int[] r02 = this.theRoundKeys[r92];
        int r93 = (r92 + 3) % 4;
        int r32 = leftIndex(r93);
        int[] r42 = this.theBlock;
        r42[r93] = ror32((r02[4] ^ r42[r32]) + (r42[r93] ^ r02[5]), 3);
        int r94 = leftIndex(r32);
        int[] r22 = this.theBlock;
        r22[r32] = ror32((r22[r94] ^ r02[2]) + (r02[3] ^ r22[r32]), 5);
        int r12 = leftIndex(r94);
        int[] r23 = this.theBlock;
        r23[r94] = rol32((r23[r12] ^ r02[0]) + (r02[1] ^ r23[r94]), 9);
    }

    private void generate128RoundKeys(int[] r92) {
        for (int r12 = 0; r12 < this.theRounds; r12++) {
            int r22 = rol32(DELTA[r12 & 3], r12);
            r92[0] = rol32(r92[0] + r22, 1);
            r92[1] = rol32(r92[1] + rol32(r22, 1), 3);
            r92[2] = rol32(r92[2] + rol32(r22, 2), 6);
            r92[3] = rol32(r92[3] + rol32(r22, 3), 11);
            int[] r23 = this.theRoundKeys[r12];
            r23[0] = r92[0];
            r23[1] = r92[1];
            r23[2] = r92[2];
            int r32 = r92[1];
            r23[3] = r32;
            r23[4] = r92[3];
            r23[5] = r32;
        }
    }

    private void generate192RoundKeys(int[] r82) {
        for (int r12 = 0; r12 < this.theRounds; r12++) {
            int r22 = rol32(DELTA[r12 % 6], r12);
            r82[0] = rol32(r82[0] + rol32(r22, 0), 1);
            r82[1] = rol32(r82[1] + rol32(r22, 1), 3);
            r82[2] = rol32(r82[2] + rol32(r22, 2), 6);
            r82[3] = rol32(r82[3] + rol32(r22, 3), 11);
            r82[4] = rol32(r82[4] + rol32(r22, 4), 13);
            r82[5] = rol32(r82[5] + rol32(r22, 5), 17);
            System.arraycopy(r82, 0, this.theRoundKeys[r12], 0, 6);
        }
    }

    private void generate256RoundKeys(int[] r12) {
        int r22 = 0;
        for (int r13 = 0; r13 < this.theRounds; r13++) {
            int r32 = rol32(DELTA[r13 & 7], r13);
            int[] r42 = this.theRoundKeys[r13];
            int r52 = r22 & 7;
            int r6 = rol32(r12[r52] + r32, 1);
            r42[0] = r6;
            int r23 = r22 + 1;
            r12[r52] = r6;
            int r53 = r23 & 7;
            int r62 = rol32(r12[r53] + rol32(r32, 1), 3);
            r42[1] = r62;
            int r24 = r23 + 1;
            r12[r53] = r62;
            int r54 = r24 & 7;
            int r63 = rol32(r12[r54] + rol32(r32, 2), 6);
            r42[2] = r63;
            int r25 = r24 + 1;
            r12[r54] = r63;
            int r55 = r25 & 7;
            int r64 = rol32(r12[r55] + rol32(r32, 3), 11);
            r42[3] = r64;
            int r26 = r25 + 1;
            r12[r55] = r64;
            int r56 = r26 & 7;
            int r65 = rol32(r12[r56] + rol32(r32, 4), 13);
            r42[4] = r65;
            int r27 = r26 + 1;
            r12[r56] = r65;
            int r57 = r27 & 7;
            int r33 = rol32(r12[r57] + rol32(r32, 5), 17);
            r42[5] = r33;
            r22 = r27 + 1;
            r12[r57] = r33;
        }
    }

    private void generateRoundKeys(byte[] bArr) {
        int length = (bArr.length >> 1) + 16;
        this.theRounds = length;
        this.theRoundKeys = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, length, 6);
        int length2 = bArr.length / 4;
        int[] r42 = new int[length2];
        Pack.littleEndianToInt(bArr, 0, r42, 0, length2);
        if (length2 == 4) {
            generate128RoundKeys(r42);
        } else if (length2 != 6) {
            generate256RoundKeys(r42);
        } else {
            generate192RoundKeys(r42);
        }
    }

    private static int leftIndex(int r02) {
        if (r02 == 0) {
            return 3;
        }
        return r02 - 1;
    }

    private static int rightIndex(int r12) {
        if (r12 == 3) {
            return 0;
        }
        return r12 + 1;
    }

    private static int rol32(int r12, int r22) {
        return (r12 >>> (32 - r22)) | (r12 << r22);
    }

    private static int ror32(int r12, int r22) {
        return (r12 << (32 - r22)) | (r12 >>> r22);
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public String getAlgorithmName() {
        return "LEA";
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int getBlockSize() {
        return 16;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void init(boolean z10, CipherParameters cipherParameters) {
        if (!(cipherParameters instanceof KeyParameter)) {
            throw new IllegalArgumentException(b.g(cipherParameters, "Invalid parameter passed to LEA init - "));
        }
        byte[] key = ((KeyParameter) cipherParameters).getKey();
        int length = key.length;
        if ((length << 1) % 16 != 0 || length < 16 || length > 32) {
            throw new IllegalArgumentException("KeyBitSize must be 128, 192 or 256");
        }
        this.forEncryption = z10;
        CryptoServicesRegistrar.checkConstraints(new DefaultServiceProperties(getAlgorithmName(), length * 8, cipherParameters, Utils.getPurpose(this.forEncryption)));
        generateRoundKeys(key);
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int processBlock(byte[] bArr, int r32, byte[] bArr2, int r52) {
        checkBuffer(bArr, r32, false);
        checkBuffer(bArr2, r52, true);
        return this.forEncryption ? encryptBlock(bArr, r32, bArr2, r52) : decryptBlock(bArr, r32, bArr2, r52);
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void reset() {
    }
}
