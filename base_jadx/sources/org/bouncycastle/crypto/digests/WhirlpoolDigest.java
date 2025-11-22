package org.bouncycastle.crypto.digests;

import androidx.recyclerview.widget.ItemTouchHelper;
import net.sf.scuba.smartcards.ISO7816;
import net.sf.scuba.smartcards.ISOFileInfo;
import org.bouncycastle.asn1.BERTags;
import org.bouncycastle.asn1.eac.CertificateBody;
import org.bouncycastle.crypto.CryptoServicePurpose;
import org.bouncycastle.crypto.CryptoServicesRegistrar;
import org.bouncycastle.crypto.ExtendedDigest;
import org.bouncycastle.math.Primes;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.Memoable;
import org.bouncycastle.util.Pack;
import org.jmrtd.PassportService;
import org.jmrtd.cbeff.ISO781611;
import org.jmrtd.lds.iso19794.IrisImageInfo;

/* loaded from: classes2.dex */
public final class WhirlpoolDigest implements ExtendedDigest, Memoable {
    private static final int BITCOUNT_ARRAY_SIZE = 32;
    private static final int BYTE_LENGTH = 64;
    private static final int DIGEST_LENGTH_BYTES = 64;
    private static final short[] EIGHT;
    private static final int REDUCTION_POLYNOMIAL = 285;
    private static final int ROUNDS = 10;
    private long[] _K;
    private long[] _L;
    private short[] _bitCount;
    private long[] _block;
    private byte[] _buffer;
    private int _bufferPos;
    private long[] _hash;
    private final long[] _rc;
    private long[] _state;
    private final CryptoServicePurpose purpose;
    private static final int[] SBOX = {24, 35, 198, 232, 135, 184, 1, 79, 54, 166, 210, 245, 121, 111, 145, 82, 96, 188, 155, 142, 163, 12, 123, 53, 29, BERTags.FLAGS, 215, 194, 46, 75, IrisImageInfo.IMAGE_QUAL_UNDEF, 87, 21, 119, 55, 229, 159, 240, 74, 218, 88, 201, 41, 10, 177, 160, 107, 133, 189, 93, 16, 244, 203, 62, 5, 103, 228, 39, 65, 139, 167, 125, 149, 216, 251, 238, 124, 102, 221, 23, 71, ISO781611.SMT_DO_DS, 202, 45, 191, 7, 173, 90, ISO781611.CREATION_DATE_AND_TIME_TAG, 51, 99, 2, 170, 113, 200, 25, 73, 217, 242, 227, 91, ISO781611.FORMAT_TYPE_TAG, 154, 38, 50, 176, 233, 15, 213, 128, 190, 205, 52, 72, 255, 122, 144, 95, 32, 104, 26, 174, 180, 84, 147, 34, 100, 241, 115, 18, 64, 8, 195, 236, 219, 161, 141, 61, ISO7816.TAG_SM_EXPECTED_LENGTH, 0, 207, 43, 118, ISO781611.BIOMETRIC_SUBTYPE_TAG, 214, 27, 181, 175, 106, 80, 69, 243, 48, 239, 63, 85, 162, 234, 101, 186, 47, 192, 222, 28, 253, 77, 146, 117, 6, 138, 178, 230, 14, 31, 98, 212, 168, 150, 249, 197, 37, 89, 132, 114, 57, 76, 94, 120, 56, 140, 209, 165, 226, 97, 179, 33, 156, 30, 67, 199, 252, 4, 81, ISO7816.TAG_SM_STATUS_WORD, 109, 13, ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION, PassportService.DEFAULT_MAX_BLOCKSIZE, 126, 36, 59, 171, 206, 17, 143, 78, 183, 235, 60, 129, 148, 247, 185, 19, 44, Primes.SMALL_FACTOR_LIMIT, 231, 110, 196, 3, 86, 68, CertificateBody.profileType, 169, 42, 187, 193, 83, 220, 11, 157, 108, 49, 116, 246, 70, 172, 137, 20, 225, 22, 58, 105, 9, 112, 182, 208, 237, 204, 66, 152, 164, 40, 92, 248, ISO781611.CREATOR_OF_BIOMETRIC_REFERENCE_DATA};
    private static final long[] C0 = new long[256];
    private static final long[] C1 = new long[256];
    private static final long[] C2 = new long[256];
    private static final long[] C3 = new long[256];
    private static final long[] C4 = new long[256];
    private static final long[] C5 = new long[256];
    private static final long[] C6 = new long[256];
    private static final long[] C7 = new long[256];

    static {
        short[] sArr = new short[32];
        EIGHT = sArr;
        sArr[31] = 8;
        for (int r12 = 0; r12 < 256; r12++) {
            int r22 = SBOX[r12];
            int r11 = mulX(r22);
            int r122 = mulX(r11);
            int r13 = r122 ^ r22;
            int r14 = mulX(r122);
            int r15 = r14 ^ r22;
            C0[r12] = packIntoLong(r22, r22, r122, r22, r14, r13, r11, r15);
            C1[r12] = packIntoLong(r15, r22, r22, r122, r22, r14, r13, r11);
            C2[r12] = packIntoLong(r11, r15, r22, r22, r122, r22, r14, r13);
            C3[r12] = packIntoLong(r13, r11, r15, r22, r22, r122, r22, r14);
            C4[r12] = packIntoLong(r14, r13, r11, r15, r22, r22, r122, r22);
            C5[r12] = packIntoLong(r22, r14, r13, r11, r15, r22, r22, r122);
            C6[r12] = packIntoLong(r122, r22, r14, r13, r11, r15, r22, r22);
            C7[r12] = packIntoLong(r22, r122, r22, r14, r13, r11, r15, r22);
        }
    }

    public WhirlpoolDigest() {
        this(CryptoServicePurpose.ANY);
    }

    public WhirlpoolDigest(CryptoServicePurpose cryptoServicePurpose) {
        long[] jArr = new long[11];
        this._rc = jArr;
        this._buffer = new byte[64];
        this._bufferPos = 0;
        this._bitCount = new short[32];
        this._hash = new long[8];
        this._K = new long[8];
        this._L = new long[8];
        this._block = new long[8];
        this._state = new long[8];
        jArr[0] = 0;
        for (int r02 = 1; r02 <= 10; r02++) {
            int r12 = (r02 - 1) * 8;
            this._rc[r02] = (((((((C0[r12] & (-72057594037927936L)) ^ (C1[r12 + 1] & 71776119061217280L)) ^ (C2[r12 + 2] & 280375465082880L)) ^ (C3[r12 + 3] & 1095216660480L)) ^ (C4[r12 + 4] & 4278190080L)) ^ (C5[r12 + 5] & 16711680)) ^ (C6[r12 + 6] & 65280)) ^ (C7[r12 + 7] & 255);
        }
        this.purpose = cryptoServicePurpose;
        CryptoServicesRegistrar.checkConstraints(Utils.getDefaultProperties(this, getDigestSize(), cryptoServicePurpose));
    }

    public WhirlpoolDigest(WhirlpoolDigest whirlpoolDigest) {
        this._rc = new long[11];
        this._buffer = new byte[64];
        this._bufferPos = 0;
        this._bitCount = new short[32];
        this._hash = new long[8];
        this._K = new long[8];
        this._L = new long[8];
        this._block = new long[8];
        this._state = new long[8];
        CryptoServicePurpose cryptoServicePurpose = whirlpoolDigest.purpose;
        this.purpose = cryptoServicePurpose;
        reset(whirlpoolDigest);
        CryptoServicesRegistrar.checkConstraints(Utils.getDefaultProperties(this, getDigestSize(), cryptoServicePurpose));
    }

    private byte[] copyBitLength() {
        byte[] bArr = new byte[32];
        for (int r22 = 0; r22 < 32; r22++) {
            bArr[r22] = (byte) (this._bitCount[r22] & 255);
        }
        return bArr;
    }

    private void finish() {
        byte[] bArrCopyBitLength = copyBitLength();
        byte[] bArr = this._buffer;
        int r22 = this._bufferPos;
        bArr[r22] = (byte) (bArr[r22] | ISOFileInfo.DATA_BYTES1);
        int r23 = r22 + 1;
        this._bufferPos = r23;
        if (r23 == bArr.length) {
            processFilledBuffer(bArr, 0);
        }
        if (this._bufferPos > 32) {
            while (this._bufferPos != 0) {
                update((byte) 0);
            }
        }
        while (this._bufferPos <= 32) {
            update((byte) 0);
        }
        System.arraycopy(bArrCopyBitLength, 0, this._buffer, 32, bArrCopyBitLength.length);
        processFilledBuffer(this._buffer, 0);
    }

    private void increment() {
        int r12 = 0;
        for (int length = this._bitCount.length - 1; length >= 0; length--) {
            short[] sArr = this._bitCount;
            int r32 = (sArr[length] & 255) + EIGHT[length] + r12;
            r12 = r32 >>> 8;
            sArr[length] = (short) (r32 & 255);
        }
    }

    private static int mulX(int r12) {
        return ((-(r12 >>> 7)) & REDUCTION_POLYNOMIAL) ^ (r12 << 1);
    }

    private static long packIntoLong(int r32, int r42, int r52, int r6, int r72, int r82, int r92, int r10) {
        return (((((((r42 << 48) ^ (r32 << 56)) ^ (r52 << 40)) ^ (r6 << 32)) ^ (r72 << 24)) ^ (r82 << 16)) ^ (r92 << 8)) ^ r10;
    }

    private void processFilledBuffer(byte[] bArr, int r32) {
        Pack.bigEndianToLong(this._buffer, 0, this._block);
        processBlock();
        this._bufferPos = 0;
        Arrays.fill(this._buffer, (byte) 0);
    }

    @Override // org.bouncycastle.util.Memoable
    public Memoable copy() {
        return new WhirlpoolDigest(this);
    }

    @Override // org.bouncycastle.crypto.Digest
    public int doFinal(byte[] bArr, int r32) {
        finish();
        Pack.longToBigEndian(this._hash, bArr, r32);
        reset();
        return getDigestSize();
    }

    @Override // org.bouncycastle.crypto.Digest
    public String getAlgorithmName() {
        return "Whirlpool";
    }

    @Override // org.bouncycastle.crypto.ExtendedDigest
    public int getByteLength() {
        return 64;
    }

    @Override // org.bouncycastle.crypto.Digest
    public int getDigestSize() {
        return 64;
    }

    public void processBlock() {
        long[] jArr;
        for (int r22 = 0; r22 < 8; r22++) {
            long[] jArr2 = this._state;
            long j10 = this._block[r22];
            long[] jArr3 = this._K;
            long j11 = this._hash[r22];
            jArr3[r22] = j11;
            jArr2[r22] = j10 ^ j11;
        }
        int r23 = 1;
        while (r23 <= 10) {
            int r42 = 0;
            while (r42 < 8) {
                long[] jArr4 = this._L;
                jArr4[r42] = 0;
                long[] jArr5 = C0;
                long[] jArr6 = this._K;
                long j12 = jArr5[((int) (jArr6[(r42 + 0) & 7] >>> 56)) & 255] ^ 0;
                jArr4[r42] = j12;
                long j13 = j12 ^ C1[((int) (jArr6[(r42 - 1) & 7] >>> 48)) & 255];
                jArr4[r42] = j13;
                long j14 = j13 ^ C2[((int) (jArr6[(r42 - 2) & 7] >>> 40)) & 255];
                jArr4[r42] = j14;
                long j15 = j14 ^ C3[((int) (jArr6[(r42 - 3) & 7] >>> 32)) & 255];
                jArr4[r42] = j15;
                long j16 = j15 ^ C4[((int) (jArr6[(r42 - 4) & 7] >>> 24)) & 255];
                jArr4[r42] = j16;
                long j17 = j16 ^ C5[((int) (jArr6[(r42 - 5) & 7] >>> 16)) & 255];
                jArr4[r42] = j17;
                long j18 = j17 ^ C6[((int) (jArr6[(r42 - 6) & 7] >>> 8)) & 255];
                jArr4[r42] = j18;
                jArr4[r42] = j18 ^ C7[((int) jArr6[(r42 - 7) & 7]) & 255];
                r42++;
                r23 = r23;
            }
            int r18 = r23;
            long[] jArr7 = this._L;
            long[] jArr8 = this._K;
            System.arraycopy(jArr7, 0, jArr8, 0, jArr8.length);
            long[] jArr9 = this._K;
            jArr9[0] = jArr9[0] ^ this._rc[r18];
            int r11 = 0;
            while (true) {
                jArr = this._L;
                if (r11 < 8) {
                    long j19 = this._K[r11];
                    jArr[r11] = j19;
                    long[] jArr10 = C0;
                    long[] jArr11 = this._state;
                    long j20 = j19 ^ jArr10[((int) (jArr11[(r11 + 0) & 7] >>> 56)) & 255];
                    jArr[r11] = j20;
                    long j21 = j20 ^ C1[((int) (jArr11[(r11 - 1) & 7] >>> 48)) & 255];
                    jArr[r11] = j21;
                    long j22 = j21 ^ C2[((int) (jArr11[(r11 - 2) & 7] >>> 40)) & 255];
                    jArr[r11] = j22;
                    long j23 = j22 ^ C3[((int) (jArr11[(r11 - 3) & 7] >>> 32)) & 255];
                    jArr[r11] = j23;
                    long j24 = j23 ^ C4[((int) (jArr11[(r11 - 4) & 7] >>> 24)) & 255];
                    jArr[r11] = j24;
                    long j25 = j24 ^ C5[((int) (jArr11[(r11 - 5) & 7] >>> 16)) & 255];
                    jArr[r11] = j25;
                    long j26 = j25 ^ C6[((int) (jArr11[(r11 - 6) & 7] >>> 8)) & 255];
                    jArr[r11] = j26;
                    jArr[r11] = j26 ^ C7[((int) jArr11[(r11 - 7) & 7]) & 255];
                    r11++;
                }
            }
            long[] jArr12 = this._state;
            System.arraycopy(jArr, 0, jArr12, 0, jArr12.length);
            r23 = r18 + 1;
        }
        for (int r12 = 0; r12 < 8; r12++) {
            long[] jArr13 = this._hash;
            jArr13[r12] = jArr13[r12] ^ (this._state[r12] ^ this._block[r12]);
        }
    }

    @Override // org.bouncycastle.crypto.Digest
    public void reset() {
        this._bufferPos = 0;
        Arrays.fill(this._bitCount, (short) 0);
        Arrays.fill(this._buffer, (byte) 0);
        Arrays.fill(this._hash, 0L);
        Arrays.fill(this._K, 0L);
        Arrays.fill(this._L, 0L);
        Arrays.fill(this._block, 0L);
        Arrays.fill(this._state, 0L);
    }

    @Override // org.bouncycastle.util.Memoable
    public void reset(Memoable memoable) {
        WhirlpoolDigest whirlpoolDigest = (WhirlpoolDigest) memoable;
        long[] jArr = whirlpoolDigest._rc;
        long[] jArr2 = this._rc;
        System.arraycopy(jArr, 0, jArr2, 0, jArr2.length);
        byte[] bArr = whirlpoolDigest._buffer;
        byte[] bArr2 = this._buffer;
        System.arraycopy(bArr, 0, bArr2, 0, bArr2.length);
        this._bufferPos = whirlpoolDigest._bufferPos;
        short[] sArr = whirlpoolDigest._bitCount;
        short[] sArr2 = this._bitCount;
        System.arraycopy(sArr, 0, sArr2, 0, sArr2.length);
        long[] jArr3 = whirlpoolDigest._hash;
        long[] jArr4 = this._hash;
        System.arraycopy(jArr3, 0, jArr4, 0, jArr4.length);
        long[] jArr5 = whirlpoolDigest._K;
        long[] jArr6 = this._K;
        System.arraycopy(jArr5, 0, jArr6, 0, jArr6.length);
        long[] jArr7 = whirlpoolDigest._L;
        long[] jArr8 = this._L;
        System.arraycopy(jArr7, 0, jArr8, 0, jArr8.length);
        long[] jArr9 = whirlpoolDigest._block;
        long[] jArr10 = this._block;
        System.arraycopy(jArr9, 0, jArr10, 0, jArr10.length);
        long[] jArr11 = whirlpoolDigest._state;
        long[] jArr12 = this._state;
        System.arraycopy(jArr11, 0, jArr12, 0, jArr12.length);
    }

    @Override // org.bouncycastle.crypto.Digest
    public void update(byte b10) {
        byte[] bArr = this._buffer;
        int r12 = this._bufferPos;
        bArr[r12] = b10;
        int r13 = r12 + 1;
        this._bufferPos = r13;
        if (r13 == bArr.length) {
            processFilledBuffer(bArr, 0);
        }
        increment();
    }

    @Override // org.bouncycastle.crypto.Digest
    public void update(byte[] bArr, int r32, int r42) {
        while (r42 > 0) {
            update(bArr[r32]);
            r32++;
            r42--;
        }
    }
}
