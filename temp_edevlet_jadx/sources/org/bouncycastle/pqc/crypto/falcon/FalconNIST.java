package org.bouncycastle.pqc.crypto.falcon;

import androidx.camera.camera2.internal.c;
import java.security.SecureRandom;
import org.bouncycastle.util.Arrays;

/* loaded from: classes2.dex */
class FalconNIST {
    int CRYPTO_BYTES;
    private int CRYPTO_PUBLICKEYBYTES;
    private int CRYPTO_SECRETKEYBYTES;
    int LOGN;
    private int N;
    int NONCELEN;
    private FalconCodec codec = new FalconCodec();
    private SecureRandom rand;

    public FalconNIST(int r42, int r52, SecureRandom secureRandom) {
        int r43;
        int r44;
        this.rand = secureRandom;
        this.LOGN = r42;
        this.NONCELEN = r52;
        int r6 = 1 << r42;
        this.N = r6;
        this.CRYPTO_PUBLICKEYBYTES = c.a(r6, 14, 8, 1);
        if (r42 == 10) {
            this.CRYPTO_SECRETKEYBYTES = 2305;
            this.CRYPTO_BYTES = 1330;
            return;
        }
        if (r42 == 9 || r42 == 8) {
            r43 = r6 * 6;
        } else {
            if (r42 != 7 && r42 != 6) {
                r44 = r6 * 2;
                this.CRYPTO_SECRETKEYBYTES = r44 + 1 + r6;
                this.CRYPTO_BYTES = 690;
            }
            r43 = r6 * 7;
        }
        r44 = (r43 * 2) / 8;
        this.CRYPTO_SECRETKEYBYTES = r44 + 1 + r6;
        this.CRYPTO_BYTES = 690;
    }

    public byte[] crypto_sign(boolean z10, byte[] bArr, byte[] bArr2, int r34, int r35, byte[] bArr3, int r37) {
        int r11;
        int r32;
        int r22 = this.N;
        byte[] bArr4 = new byte[r22];
        byte[] bArr5 = new byte[r22];
        byte[] bArr6 = new byte[r22];
        byte[] bArr7 = new byte[r22];
        short[] sArr = new short[r22];
        short[] sArr2 = new short[r22];
        byte[] bArr8 = new byte[48];
        byte[] bArr9 = new byte[this.NONCELEN];
        SHAKE256 shake256 = new SHAKE256();
        FalconSign falconSign = new FalconSign();
        FalconVrfy falconVrfy = new FalconVrfy();
        FalconCommon falconCommon = new FalconCommon();
        FalconCodec falconCodec = this.codec;
        int r42 = this.LOGN;
        int r33 = falconCodec.trim_i8_decode(bArr4, 0, r42, falconCodec.max_fg_bits[r42], bArr3, r37 + 0, this.CRYPTO_SECRETKEYBYTES + 0);
        if (r33 == 0) {
            throw new IllegalStateException("f decode failed");
        }
        int r17 = r33 + 0;
        FalconCodec falconCodec2 = this.codec;
        int r6 = this.LOGN;
        int r36 = falconCodec2.trim_i8_decode(bArr5, 0, r6, falconCodec2.max_fg_bits[r6], bArr3, r37 + r17, this.CRYPTO_SECRETKEYBYTES - r17);
        if (r36 == 0) {
            throw new IllegalStateException("g decode failed");
        }
        int r172 = r17 + r36;
        FalconCodec falconCodec3 = this.codec;
        int r62 = this.LOGN;
        int r38 = falconCodec3.trim_i8_decode(bArr6, 0, r62, falconCodec3.max_FG_bits[r62], bArr3, r37 + r172, this.CRYPTO_SECRETKEYBYTES - r172);
        if (r38 == 0) {
            throw new IllegalArgumentException("F decode failed");
        }
        if (r172 + r38 != this.CRYPTO_SECRETKEYBYTES - 1) {
            throw new IllegalStateException("full key not used");
        }
        if (!falconVrfy.complete_private(bArr7, 0, bArr4, 0, bArr5, 0, bArr6, 0, this.LOGN, new short[this.N * 2], 0)) {
            throw new IllegalStateException("complete_private failed");
        }
        this.rand.nextBytes(bArr9);
        shake256.inner_shake256_init();
        shake256.inner_shake256_inject(bArr9, 0, this.NONCELEN);
        shake256.inner_shake256_inject(bArr2, r34, r35);
        shake256.i_shake256_flip();
        falconCommon.hash_to_point_vartime(shake256, sArr2, 0, this.LOGN);
        this.rand.nextBytes(bArr8);
        shake256.inner_shake256_init();
        shake256.inner_shake256_inject(bArr8, 0, 48);
        shake256.i_shake256_flip();
        falconSign.sign_dyn(sArr, 0, shake256, bArr4, 0, bArr5, 0, bArr6, 0, bArr7, 0, sArr2, 0, this.LOGN, new FalconFPR[this.N * 10], 0);
        int r63 = (this.CRYPTO_BYTES - 2) - this.NONCELEN;
        byte[] bArr10 = new byte[r63];
        if (z10) {
            int r92 = this.LOGN;
            bArr10[0] = (byte) (r92 + 32);
            r11 = 1;
            int r39 = this.codec.comp_encode(bArr10, 1, r63 - 1, sArr, 0, r92);
            if (r39 == 0) {
                throw new IllegalStateException("signature failed to generate");
            }
            r32 = r39 + 1;
        } else {
            r11 = 1;
            r32 = this.codec.comp_encode(bArr10, 0, r63, sArr, 0, this.LOGN);
            if (r32 == 0) {
                throw new IllegalStateException("signature failed to generate");
            }
        }
        bArr[0] = (byte) (this.LOGN + 48);
        System.arraycopy(bArr9, 0, bArr, r11, this.NONCELEN);
        System.arraycopy(bArr10, 0, bArr, this.NONCELEN + r11, r32);
        return Arrays.copyOfRange(bArr, 0, this.NONCELEN + r11 + r32);
    }

    public byte[][] crypto_sign_keypair(byte[] bArr, int r25, byte[] bArr2, int r27) {
        int r22 = this.N;
        byte[] bArr3 = new byte[r22];
        byte[] bArr4 = new byte[r22];
        byte[] bArr5 = new byte[r22];
        short[] sArr = new short[r22];
        byte[] bArr6 = new byte[48];
        SHAKE256 shake256 = new SHAKE256();
        FalconKeyGen falconKeyGen = new FalconKeyGen();
        this.rand.nextBytes(bArr6);
        shake256.inner_shake256_init();
        shake256.inner_shake256_inject(bArr6, 0, 48);
        shake256.i_shake256_flip();
        falconKeyGen.keygen(shake256, bArr3, 0, bArr4, 0, bArr5, 0, null, 0, sArr, 0, this.LOGN);
        int r15 = this.LOGN;
        bArr2[r27 + 0] = (byte) (r15 + 80);
        FalconCodec falconCodec = this.codec;
        int r23 = r27 + 1;
        int r72 = falconCodec.trim_i8_encode(bArr2, r23, this.CRYPTO_SECRETKEYBYTES - 1, bArr3, 0, r15, falconCodec.max_fg_bits[r15]);
        if (r72 == 0) {
            throw new IllegalStateException("f encode failed");
        }
        int r73 = r72 + 1;
        byte[] bArrCopyOfRange = Arrays.copyOfRange(bArr2, r23, r73);
        FalconCodec falconCodec2 = this.codec;
        int r24 = r27 + r73;
        int r12 = this.CRYPTO_SECRETKEYBYTES - r73;
        int r152 = this.LOGN;
        int r42 = falconCodec2.trim_i8_encode(bArr2, r24, r12, bArr4, 0, r152, falconCodec2.max_fg_bits[r152]);
        if (r42 == 0) {
            throw new IllegalStateException("g encode failed");
        }
        int r74 = r73 + r42;
        byte[] bArrCopyOfRange2 = Arrays.copyOfRange(bArr2, r24, r74);
        FalconCodec falconCodec3 = this.codec;
        int r26 = r27 + r74;
        int r122 = this.CRYPTO_SECRETKEYBYTES - r74;
        int r153 = this.LOGN;
        int r43 = falconCodec3.trim_i8_encode(bArr2, r26, r122, bArr5, 0, r153, falconCodec3.max_FG_bits[r153]);
        if (r43 == 0) {
            throw new IllegalStateException("F encode failed");
        }
        int r75 = r74 + r43;
        byte[] bArrCopyOfRange3 = Arrays.copyOfRange(bArr2, r26, r75);
        if (r75 != this.CRYPTO_SECRETKEYBYTES) {
            throw new IllegalStateException("secret key encoding failed");
        }
        int r76 = this.LOGN;
        bArr[r25 + 0] = (byte) (r76 + 0);
        if (this.codec.modq_encode(bArr, r25 + 1, this.CRYPTO_PUBLICKEYBYTES - 1, sArr, 0, r76) == this.CRYPTO_PUBLICKEYBYTES - 1) {
            return new byte[][]{Arrays.copyOfRange(bArr, 1, bArr.length), bArrCopyOfRange, bArrCopyOfRange2, bArrCopyOfRange3};
        }
        throw new IllegalStateException("public key encoding failed");
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x006e, code lost:
    
        if (r19.codec.comp_decode(r4, 0, r14, r21, 1, r9) != r9) goto L13;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int crypto_sign_open(boolean r20, byte[] r21, byte[] r22, byte[] r23, byte[] r24, int r25) {
        /*
            Method dump skipped, instructions count: 191
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.bouncycastle.pqc.crypto.falcon.FalconNIST.crypto_sign_open(boolean, byte[], byte[], byte[], byte[], int):int");
    }
}
