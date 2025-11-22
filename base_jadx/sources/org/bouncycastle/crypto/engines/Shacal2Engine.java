package org.bouncycastle.crypto.engines;

import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.CryptoServicesRegistrar;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.OutputLengthException;
import org.bouncycastle.crypto.constraints.DefaultServiceProperties;
import org.bouncycastle.crypto.params.KeyParameter;

/* loaded from: classes2.dex */
public class Shacal2Engine implements BlockCipher {
    private static final int BLOCK_SIZE = 32;
    private static final int[] K = {1116352408, 1899447441, -1245643825, -373957723, 961987163, 1508970993, -1841331548, -1424204075, -670586216, 310598401, 607225278, 1426881987, 1925078388, -2132889090, -1680079193, -1046744716, -459576895, -272742522, 264347078, 604807628, 770255983, 1249150122, 1555081692, 1996064986, -1740746414, -1473132947, -1341970488, -1084653625, -958395405, -710438585, 113926993, 338241895, 666307205, 773529912, 1294757372, 1396182291, 1695183700, 1986661051, -2117940946, -1838011259, -1564481375, -1474664885, -1035236496, -949202525, -778901479, -694614492, -200395387, 275423344, 430227734, 506948616, 659060556, 883997877, 958139571, 1322822218, 1537002063, 1747873779, 1955562222, 2024104815, -2067236844, -1933114872, -1866530822, -1538233109, -1090935817, -965641998};
    private static final int ROUNDS = 64;
    private boolean forEncryption = false;
    private int[] workingKey = null;

    private void byteBlockToInts(byte[] bArr, int[] r52, int r6, int r72) {
        while (r72 < 8) {
            int r12 = r6 + 1;
            int r22 = r12 + 1;
            int r62 = ((bArr[r6] & 255) << 24) | ((bArr[r12] & 255) << 16);
            int r13 = r22 + 1;
            r52[r72] = r62 | ((bArr[r22] & 255) << 8) | (bArr[r13] & 255);
            r72++;
            r6 = r13 + 1;
        }
    }

    private void bytes2ints(byte[] bArr, int[] r42, int r52, int r6) {
        while (r6 < bArr.length / 4) {
            int r02 = r52 + 1;
            int r12 = r02 + 1;
            int r53 = ((bArr[r52] & 255) << 24) | ((bArr[r02] & 255) << 16);
            int r03 = r12 + 1;
            int r54 = r53 | ((bArr[r12] & 255) << 8);
            r42[r6] = r54 | (bArr[r03] & 255);
            r6++;
            r52 = r03 + 1;
        }
    }

    private void decryptBlock(byte[] bArr, int r12, byte[] bArr2, int r14) {
        int[] r02 = new int[8];
        byteBlockToInts(bArr, r02, r12, 0);
        for (int r11 = 63; r11 > -1; r11--) {
            int r122 = r02[0];
            int r32 = r02[1];
            int r52 = r02[2];
            int r82 = r02[3];
            int r123 = (r122 - ((((r32 >>> 2) | (r32 << (-2))) ^ ((r32 >>> 13) | (r32 << (-13)))) ^ ((r32 >>> 22) | (r32 << (-22))))) - (((r32 & r52) ^ (r32 & r82)) ^ (r52 & r82));
            r02[0] = r32;
            r02[1] = r52;
            r02[2] = r82;
            r02[3] = r02[4] - r123;
            int r42 = r02[5];
            r02[4] = r42;
            int r53 = r02[6];
            r02[5] = r53;
            int r6 = r02[7];
            r02[6] = r6;
            r02[7] = (((r123 - K[r11]) - this.workingKey[r11]) - ((((r42 >>> 6) | (r42 << (-6))) ^ ((r42 >>> 11) | (r42 << (-11)))) ^ ((r42 >>> 25) | (r42 << (-25))))) - ((r42 & r53) ^ ((~r42) & r6));
        }
        ints2bytes(r02, bArr2, r14);
    }

    private void encryptBlock(byte[] bArr, int r12, byte[] bArr2, int r14) {
        int[] r02 = new int[8];
        byteBlockToInts(bArr, r02, r12, 0);
        for (int r11 = 0; r11 < 64; r11++) {
            int r22 = r02[4];
            int r52 = r02[5];
            int r72 = ~r22;
            int r92 = r02[6];
            int r32 = ((((r22 >>> 6) | (r22 << (-6))) ^ ((r22 >>> 11) | (r22 << (-11)))) ^ ((r22 >>> 25) | (r22 << (-25)))) + ((r22 & r52) ^ (r72 & r92)) + r02[7] + K[r11] + this.workingKey[r11];
            r02[7] = r92;
            r02[6] = r52;
            r02[5] = r22;
            r02[4] = r02[3] + r32;
            int r42 = r02[2];
            r02[3] = r42;
            int r53 = r02[1];
            r02[2] = r53;
            int r122 = r02[0];
            r02[1] = r122;
            r02[0] = r32 + ((((r122 >>> 2) | (r122 << (-2))) ^ ((r122 >>> 13) | (r122 << (-13)))) ^ ((r122 >>> 22) | (r122 << (-22)))) + (((r122 & r42) ^ (r122 & r53)) ^ (r53 & r42));
        }
        ints2bytes(r02, bArr2, r14);
    }

    private void ints2bytes(int[] r52, byte[] bArr, int r72) {
        for (int r22 : r52) {
            int r12 = r72 + 1;
            bArr[r72] = (byte) (r22 >>> 24);
            int r73 = r12 + 1;
            bArr[r12] = (byte) (r22 >>> 16);
            int r13 = r73 + 1;
            bArr[r73] = (byte) (r22 >>> 8);
            r72 = r13 + 1;
            bArr[r13] = (byte) r22;
        }
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public String getAlgorithmName() {
        return "Shacal2";
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int getBlockSize() {
        return 32;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void init(boolean z10, CipherParameters cipherParameters) throws IllegalArgumentException {
        if (!(cipherParameters instanceof KeyParameter)) {
            throw new IllegalArgumentException("only simple KeyParameter expected.");
        }
        this.forEncryption = z10;
        this.workingKey = new int[64];
        byte[] key = ((KeyParameter) cipherParameters).getKey();
        setKey(key);
        int length = key.length * 8;
        String algorithmName = getAlgorithmName();
        if (length >= 256) {
            length = 256;
        }
        CryptoServicesRegistrar.checkConstraints(new DefaultServiceProperties(algorithmName, length, cipherParameters, Utils.getPurpose(this.forEncryption)));
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int processBlock(byte[] bArr, int r42, byte[] bArr2, int r6) throws IllegalStateException, DataLengthException {
        if (this.workingKey == null) {
            throw new IllegalStateException("Shacal2 not initialised");
        }
        if (r42 + 32 > bArr.length) {
            throw new DataLengthException("input buffer too short");
        }
        if (r6 + 32 > bArr2.length) {
            throw new OutputLengthException("output buffer too short");
        }
        if (this.forEncryption) {
            encryptBlock(bArr, r42, bArr2, r6);
            return 32;
        }
        decryptBlock(bArr, r42, bArr2, r6);
        return 32;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void reset() {
    }

    public void setKey(byte[] bArr) {
        if (bArr.length != 0 && bArr.length <= 64) {
            if (bArr.length >= 16 && bArr.length % 8 == 0) {
                bytes2ints(bArr, this.workingKey, 0, 0);
                for (int r22 = 16; r22 < 64; r22++) {
                    int[] r82 = this.workingKey;
                    int r02 = r82[r22 - 2];
                    int r03 = ((r02 >>> 10) ^ (((r02 >>> 17) | (r02 << (-17))) ^ ((r02 >>> 19) | (r02 << (-19))))) + r82[r22 - 7];
                    int r32 = r82[r22 - 15];
                    r82[r22] = r03 + ((r32 >>> 3) ^ (((r32 >>> 7) | (r32 << (-7))) ^ ((r32 >>> 18) | (r32 << (-18))))) + r82[r22 - 16];
                }
                return;
            }
        }
        throw new IllegalArgumentException("Shacal2-key must be 16 - 64 bytes and multiple of 8");
    }
}
