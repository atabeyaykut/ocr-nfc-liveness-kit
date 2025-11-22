package org.bouncycastle.crypto.engines;

import ab.b;
import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.CryptoServicePurpose;
import org.bouncycastle.crypto.CryptoServicesRegistrar;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.OutputLengthException;
import org.bouncycastle.crypto.constraints.DefaultServiceProperties;
import org.bouncycastle.crypto.params.KeyParameter;

/* loaded from: classes2.dex */
public class SkipjackEngine implements BlockCipher {
    static final int BLOCK_SIZE = 8;
    static short[] ftable = {163, 215, 9, 131, 248, 72, 246, 244, 179, 33, 21, 120, 153, 177, 175, 249, 231, 45, 77, 138, 206, 76, 202, 46, 82, 149, 217, 30, 78, 56, 68, 40, 10, 223, 2, 160, 23, 241, 96, 104, 18, 183, 122, 195, 233, 250, 61, 83, 150, 132, 107, 186, 242, 99, 154, 25, 124, 174, 229, 245, 247, 22, 106, 162, 57, 182, 123, 15, 193, 147, 129, 27, 238, 180, 26, 234, 208, 145, 47, 184, 85, 185, 218, 133, 63, 65, 191, 224, 90, 88, 128, 95, 102, 11, 216, 144, 53, 213, 192, 167, 51, 6, 101, 105, 69, 0, 148, 86, 109, 152, 155, 118, 151, 252, 178, 194, 176, 254, 219, 32, 225, 235, 214, 228, 221, 71, 74, 29, 66, 237, 158, 110, 73, 60, 205, 67, 39, 210, 7, 212, 222, 199, 103, 24, 137, 203, 48, 31, 141, 198, 143, 170, 200, 116, 220, 201, 93, 92, 49, 164, 112, 136, 97, 44, 159, 13, 43, 135, 80, 130, 84, 100, 38, 125, 3, 64, 52, 75, 28, 115, 209, 196, 253, 59, 204, 251, 127, 171, 230, 62, 91, 165, 173, 4, 35, 156, 20, 81, 34, 240, 41, 121, 113, 126, 255, 140, 14, 226, 12, 239, 188, 114, 117, 111, 55, 161, 236, 211, 142, 98, 139, 134, 16, 232, 8, 119, 17, 190, 146, 79, 36, 197, 50, 54, 157, 207, 243, 166, 187, 172, 94, 108, 169, 19, 87, 37, 181, 227, 189, 168, 58, 1, 5, 89, 42, 70};
    private boolean encrypting;
    private int[] key0;
    private int[] key1;
    private int[] key2;
    private int[] key3;

    public SkipjackEngine() {
        CryptoServicesRegistrar.checkConstraints(new DefaultServiceProperties(getAlgorithmName(), 80));
    }

    private int g(int r42, int r52) {
        int r02 = (r52 >> 8) & 255;
        int r53 = r52 & 255;
        short[] sArr = ftable;
        int r03 = r02 ^ sArr[this.key0[r42] ^ r53];
        int r54 = r53 ^ sArr[this.key1[r42] ^ r03];
        int r04 = r03 ^ sArr[this.key2[r42] ^ r54];
        return (r04 << 8) + (sArr[this.key3[r42] ^ r04] ^ r54);
    }

    private CryptoServicePurpose getPurpose() {
        return this.key0 == null ? CryptoServicePurpose.ANY : this.encrypting ? CryptoServicePurpose.ENCRYPTION : CryptoServicePurpose.DECRYPTION;
    }

    private int h(int r42, int r52) {
        int r02 = r52 & 255;
        int r53 = (r52 >> 8) & 255;
        short[] sArr = ftable;
        int r03 = r02 ^ sArr[this.key3[r42] ^ r53];
        int r54 = r53 ^ sArr[this.key2[r42] ^ r03];
        int r04 = r03 ^ sArr[this.key1[r42] ^ r54];
        return ((sArr[this.key0[r42] ^ r04] ^ r54) << 8) + r04;
    }

    public int decryptBlock(byte[] bArr, int r11, byte[] bArr2, int r13) {
        int r02 = (bArr[r11 + 0] << 8) + (bArr[r11 + 1] & 255);
        int r22 = (bArr[r11 + 2] << 8) + (bArr[r11 + 3] & 255);
        int r32 = (bArr[r11 + 4] << 8) + (bArr[r11 + 5] & 255);
        int r42 = (bArr[r11 + 6] << 8) + (bArr[r11 + 7] & 255);
        int r112 = 31;
        for (int r52 = 0; r52 < 2; r52++) {
            int r6 = 0;
            while (r6 < 8) {
                int r23 = h(r112, r22);
                int r33 = (r32 ^ r23) ^ (r112 + 1);
                r112--;
                r6++;
                int r82 = r42;
                r42 = r02;
                r02 = r23;
                r22 = r33;
                r32 = r82;
            }
            int r62 = 0;
            while (r62 < 8) {
                int r03 = (r02 ^ r22) ^ (r112 + 1);
                int r24 = h(r112, r22);
                r112--;
                r62++;
                int r83 = r42;
                r42 = r03;
                r02 = r24;
                r22 = r32;
                r32 = r83;
            }
        }
        bArr2[r13 + 0] = (byte) (r02 >> 8);
        bArr2[r13 + 1] = (byte) r02;
        bArr2[r13 + 2] = (byte) (r22 >> 8);
        bArr2[r13 + 3] = (byte) r22;
        bArr2[r13 + 4] = (byte) (r32 >> 8);
        bArr2[r13 + 5] = (byte) r32;
        bArr2[r13 + 6] = (byte) (r42 >> 8);
        bArr2[r13 + 7] = (byte) r42;
        return 8;
    }

    public int encryptBlock(byte[] bArr, int r11, byte[] bArr2, int r13) {
        int r02 = (bArr[r11 + 0] << 8) + (bArr[r11 + 1] & 255);
        int r22 = (bArr[r11 + 2] << 8) + (bArr[r11 + 3] & 255);
        int r32 = (bArr[r11 + 4] << 8) + (bArr[r11 + 5] & 255);
        int r42 = (bArr[r11 + 6] << 8) + (bArr[r11 + 7] & 255);
        int r52 = 0;
        for (int r112 = 0; r112 < 2; r112++) {
            int r6 = 0;
            while (r6 < 8) {
                int r03 = g(r52, r02);
                r52++;
                r6++;
                int r82 = r22;
                r22 = r03;
                r02 = (r42 ^ r03) ^ r52;
                r42 = r32;
                r32 = r82;
            }
            int r62 = 0;
            while (r62 < 8) {
                int r72 = r52 + 1;
                int r23 = (r22 ^ r02) ^ r72;
                int r04 = g(r52, r02);
                r62++;
                r52 = r72;
                r22 = r04;
                r02 = r42;
                r42 = r32;
                r32 = r23;
            }
        }
        bArr2[r13 + 0] = (byte) (r02 >> 8);
        bArr2[r13 + 1] = (byte) r02;
        bArr2[r13 + 2] = (byte) (r22 >> 8);
        bArr2[r13 + 3] = (byte) r22;
        bArr2[r13 + 4] = (byte) (r32 >> 8);
        bArr2[r13 + 5] = (byte) r32;
        bArr2[r13 + 6] = (byte) (r42 >> 8);
        bArr2[r13 + 7] = (byte) r42;
        return 8;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public String getAlgorithmName() {
        return "SKIPJACK";
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int getBlockSize() {
        return 8;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void init(boolean z10, CipherParameters cipherParameters) {
        if (!(cipherParameters instanceof KeyParameter)) {
            throw new IllegalArgumentException(b.g(cipherParameters, "invalid parameter passed to SKIPJACK init - "));
        }
        byte[] key = ((KeyParameter) cipherParameters).getKey();
        this.encrypting = z10;
        this.key0 = new int[32];
        this.key1 = new int[32];
        this.key2 = new int[32];
        this.key3 = new int[32];
        for (int r12 = 0; r12 < 32; r12++) {
            int r32 = r12 * 4;
            this.key0[r12] = key[r32 % 10] & 255;
            this.key1[r12] = key[(r32 + 1) % 10] & 255;
            this.key2[r12] = key[(r32 + 2) % 10] & 255;
            this.key3[r12] = key[(r32 + 3) % 10] & 255;
        }
        CryptoServicesRegistrar.checkConstraints(new DefaultServiceProperties(getAlgorithmName(), 80, cipherParameters, getPurpose()));
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int processBlock(byte[] bArr, int r42, byte[] bArr2, int r6) {
        if (this.key1 == null) {
            throw new IllegalStateException("SKIPJACK engine not initialised");
        }
        if (r42 + 8 > bArr.length) {
            throw new DataLengthException("input buffer too short");
        }
        if (r6 + 8 > bArr2.length) {
            throw new OutputLengthException("output buffer too short");
        }
        if (this.encrypting) {
            encryptBlock(bArr, r42, bArr2, r6);
            return 8;
        }
        decryptBlock(bArr, r42, bArr2, r6);
        return 8;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void reset() {
    }
}
