package org.bouncycastle.crypto.digests;

import org.bouncycastle.crypto.CryptoServicePurpose;
import org.bouncycastle.crypto.CryptoServicesRegistrar;
import org.bouncycastle.crypto.ExtendedDigest;
import org.bouncycastle.crypto.OutputLengthException;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.Longs;
import org.bouncycastle.util.Pack;
import org.jmrtd.PassportService;

/* loaded from: classes2.dex */
public class Blake2bDigest implements ExtendedDigest {
    private static final int BLOCK_LENGTH_BYTES = 128;
    private byte[] buffer;
    private int bufferPos;
    private long[] chainValue;
    private int depth;
    private int digestLength;

    /* renamed from: f0, reason: collision with root package name */
    private long f11450f0;

    /* renamed from: f1, reason: collision with root package name */
    private long f11451f1;
    private int fanout;
    private int innerHashLength;
    private long[] internalState;
    private boolean isLastNode;
    private byte[] key;
    private int keyLength;
    private int leafLength;
    private int nodeDepth;
    private long nodeOffset;
    private byte[] personalization;
    private final CryptoServicePurpose purpose;
    private byte[] salt;

    /* renamed from: t0, reason: collision with root package name */
    private long f11452t0;

    /* renamed from: t1, reason: collision with root package name */
    private long f11453t1;
    private static final long[] blake2b_IV = {7640891576956012808L, -4942790177534073029L, 4354685564936845355L, -6534734903238641935L, 5840696475078001361L, -7276294671716946913L, 2270897969802886507L, 6620516959819538809L};
    private static final byte[][] blake2b_sigma = {new byte[]{0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, PassportService.SFI_DG11, PassportService.SFI_DG12, PassportService.SFI_DG13, 14, PassportService.SFI_DG15}, new byte[]{14, 10, 4, 8, 9, PassportService.SFI_DG15, PassportService.SFI_DG13, 6, 1, PassportService.SFI_DG12, 0, 2, PassportService.SFI_DG11, 7, 5, 3}, new byte[]{PassportService.SFI_DG11, 8, PassportService.SFI_DG12, 0, 5, 2, PassportService.SFI_DG15, PassportService.SFI_DG13, 10, 14, 3, 6, 7, 1, 9, 4}, new byte[]{7, 9, 3, 1, PassportService.SFI_DG13, PassportService.SFI_DG12, PassportService.SFI_DG11, 14, 2, 6, 5, 10, 4, 0, PassportService.SFI_DG15, 8}, new byte[]{9, 0, 5, 7, 2, 4, 10, PassportService.SFI_DG15, 14, 1, PassportService.SFI_DG11, PassportService.SFI_DG12, 6, 8, 3, PassportService.SFI_DG13}, new byte[]{2, PassportService.SFI_DG12, 6, 10, 0, PassportService.SFI_DG11, 8, 3, 4, PassportService.SFI_DG13, 7, 5, PassportService.SFI_DG15, 14, 1, 9}, new byte[]{PassportService.SFI_DG12, 5, 1, PassportService.SFI_DG15, 14, PassportService.SFI_DG13, 4, 10, 0, 7, 6, 3, 9, 2, 8, PassportService.SFI_DG11}, new byte[]{PassportService.SFI_DG13, PassportService.SFI_DG11, 7, 14, PassportService.SFI_DG12, 1, 3, 9, 5, 0, PassportService.SFI_DG15, 4, 8, 6, 2, 10}, new byte[]{6, PassportService.SFI_DG15, 14, 9, PassportService.SFI_DG11, 3, 0, 8, PassportService.SFI_DG12, 2, PassportService.SFI_DG13, 7, 1, 4, 10, 5}, new byte[]{10, 2, 8, 4, 7, 6, 1, 5, PassportService.SFI_DG15, PassportService.SFI_DG11, 9, 14, 3, PassportService.SFI_DG12, PassportService.SFI_DG13, 0}, new byte[]{0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, PassportService.SFI_DG11, PassportService.SFI_DG12, PassportService.SFI_DG13, 14, PassportService.SFI_DG15}, new byte[]{14, 10, 4, 8, 9, PassportService.SFI_DG15, PassportService.SFI_DG13, 6, 1, PassportService.SFI_DG12, 0, 2, PassportService.SFI_DG11, 7, 5, 3}};
    private static int ROUNDS = 12;

    public Blake2bDigest() {
        this(512, CryptoServicePurpose.ANY);
    }

    public Blake2bDigest(int r22) {
        this(r22, CryptoServicePurpose.ANY);
    }

    public Blake2bDigest(int r6, CryptoServicePurpose cryptoServicePurpose) {
        this.digestLength = 64;
        this.keyLength = 0;
        this.salt = null;
        this.personalization = null;
        this.key = null;
        this.fanout = 1;
        this.depth = 1;
        this.leafLength = 0;
        this.nodeOffset = 0L;
        this.nodeDepth = 0;
        this.innerHashLength = 0;
        this.isLastNode = false;
        this.buffer = null;
        this.bufferPos = 0;
        this.internalState = new long[16];
        this.chainValue = null;
        this.f11452t0 = 0L;
        this.f11453t1 = 0L;
        this.f11450f0 = 0L;
        this.f11451f1 = 0L;
        this.purpose = cryptoServicePurpose;
        if (r6 < 8 || r6 > 512 || r6 % 8 != 0) {
            throw new IllegalArgumentException("BLAKE2b digest bit length must be a multiple of 8 and not greater than 512");
        }
        this.buffer = new byte[128];
        this.keyLength = 0;
        this.digestLength = r6 / 8;
        CryptoServicesRegistrar.checkConstraints(Utils.getDefaultProperties(this, r6, cryptoServicePurpose));
        init();
    }

    public Blake2bDigest(Blake2bDigest blake2bDigest) {
        this.digestLength = 64;
        this.keyLength = 0;
        this.salt = null;
        this.personalization = null;
        this.key = null;
        this.fanout = 1;
        this.depth = 1;
        this.leafLength = 0;
        this.nodeOffset = 0L;
        this.nodeDepth = 0;
        this.innerHashLength = 0;
        this.isLastNode = false;
        this.buffer = null;
        this.bufferPos = 0;
        this.internalState = new long[16];
        this.chainValue = null;
        this.f11452t0 = 0L;
        this.f11453t1 = 0L;
        this.f11450f0 = 0L;
        this.f11451f1 = 0L;
        this.bufferPos = blake2bDigest.bufferPos;
        this.buffer = Arrays.clone(blake2bDigest.buffer);
        this.keyLength = blake2bDigest.keyLength;
        this.key = Arrays.clone(blake2bDigest.key);
        this.digestLength = blake2bDigest.digestLength;
        this.chainValue = Arrays.clone(blake2bDigest.chainValue);
        this.personalization = Arrays.clone(blake2bDigest.personalization);
        this.salt = Arrays.clone(blake2bDigest.salt);
        this.f11452t0 = blake2bDigest.f11452t0;
        this.f11453t1 = blake2bDigest.f11453t1;
        this.f11450f0 = blake2bDigest.f11450f0;
        this.purpose = blake2bDigest.purpose;
    }

    public Blake2bDigest(byte[] bArr) {
        this(bArr, CryptoServicePurpose.ANY);
    }

    public Blake2bDigest(byte[] bArr, int r82, byte[] bArr2, byte[] bArr3) {
        this(bArr, r82, bArr2, bArr3, CryptoServicePurpose.ANY);
    }

    public Blake2bDigest(byte[] bArr, int r10, byte[] bArr2, byte[] bArr3, CryptoServicePurpose cryptoServicePurpose) {
        this.digestLength = 64;
        this.keyLength = 0;
        this.salt = null;
        this.personalization = null;
        this.key = null;
        this.fanout = 1;
        this.depth = 1;
        this.leafLength = 0;
        this.nodeOffset = 0L;
        this.nodeDepth = 0;
        this.innerHashLength = 0;
        this.isLastNode = false;
        this.bufferPos = 0;
        this.internalState = new long[16];
        this.chainValue = null;
        this.f11452t0 = 0L;
        this.f11453t1 = 0L;
        this.f11450f0 = 0L;
        this.f11451f1 = 0L;
        this.purpose = cryptoServicePurpose;
        this.buffer = new byte[128];
        if (r10 < 1 || r10 > 64) {
            throw new IllegalArgumentException("Invalid digest length (required: 1 - 64)");
        }
        this.digestLength = r10;
        if (bArr2 != null) {
            if (bArr2.length != 16) {
                throw new IllegalArgumentException("salt length must be exactly 16 bytes");
            }
            byte[] bArr4 = new byte[16];
            this.salt = bArr4;
            System.arraycopy(bArr2, 0, bArr4, 0, bArr2.length);
        }
        if (bArr3 != null) {
            if (bArr3.length != 16) {
                throw new IllegalArgumentException("personalization length must be exactly 16 bytes");
            }
            byte[] bArr5 = new byte[16];
            this.personalization = bArr5;
            System.arraycopy(bArr3, 0, bArr5, 0, bArr3.length);
        }
        if (bArr != null) {
            byte[] bArr6 = new byte[bArr.length];
            this.key = bArr6;
            System.arraycopy(bArr, 0, bArr6, 0, bArr.length);
            if (bArr.length > 64) {
                throw new IllegalArgumentException("Keys > 64 are not supported");
            }
            this.keyLength = bArr.length;
            System.arraycopy(bArr, 0, this.buffer, 0, bArr.length);
            this.bufferPos = 128;
        }
        CryptoServicesRegistrar.checkConstraints(Utils.getDefaultProperties(this, r10 * 8, cryptoServicePurpose));
        init();
    }

    public Blake2bDigest(byte[] bArr, CryptoServicePurpose cryptoServicePurpose) {
        this.digestLength = 64;
        this.keyLength = 0;
        this.salt = null;
        this.personalization = null;
        this.key = null;
        this.fanout = 1;
        this.depth = 1;
        this.leafLength = 0;
        this.nodeOffset = 0L;
        this.nodeDepth = 0;
        this.innerHashLength = 0;
        this.isLastNode = false;
        this.bufferPos = 0;
        this.internalState = new long[16];
        this.chainValue = null;
        this.f11452t0 = 0L;
        this.f11453t1 = 0L;
        this.f11450f0 = 0L;
        this.f11451f1 = 0L;
        this.buffer = new byte[128];
        if (bArr != null) {
            byte[] bArr2 = new byte[bArr.length];
            this.key = bArr2;
            System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
            if (bArr.length > 64) {
                throw new IllegalArgumentException("Keys > 64 are not supported");
            }
            this.keyLength = bArr.length;
            System.arraycopy(bArr, 0, this.buffer, 0, bArr.length);
            this.bufferPos = 128;
        }
        this.purpose = cryptoServicePurpose;
        this.digestLength = 64;
        CryptoServicesRegistrar.checkConstraints(Utils.getDefaultProperties(this, 64 * 8, cryptoServicePurpose));
        init();
    }

    public Blake2bDigest(byte[] bArr, byte[] bArr2) {
        this.digestLength = 64;
        this.keyLength = 0;
        this.salt = null;
        this.personalization = null;
        this.key = null;
        this.fanout = 1;
        this.depth = 1;
        this.leafLength = 0;
        this.nodeOffset = 0L;
        this.nodeDepth = 0;
        this.innerHashLength = 0;
        this.isLastNode = false;
        this.bufferPos = 0;
        this.internalState = new long[16];
        this.chainValue = null;
        this.f11452t0 = 0L;
        this.f11453t1 = 0L;
        this.f11450f0 = 0L;
        this.f11451f1 = 0L;
        this.buffer = new byte[128];
        this.purpose = CryptoServicePurpose.ANY;
        this.digestLength = bArr2[0];
        this.keyLength = bArr2[1];
        this.fanout = bArr2[2];
        this.depth = bArr2[3];
        this.leafLength = Pack.littleEndianToInt(bArr2, 4);
        this.nodeOffset |= Pack.littleEndianToInt(bArr2, 8);
        this.nodeDepth = bArr2[16];
        this.innerHashLength = bArr2[17];
        init();
    }

    private void G(long j10, long j11, int r10, int r11, int r12, int r13) {
        long[] jArr = this.internalState;
        long j12 = jArr[r10] + jArr[r11] + j10;
        jArr[r10] = j12;
        jArr[r13] = Longs.rotateRight(jArr[r13] ^ j12, 32);
        long[] jArr2 = this.internalState;
        long j13 = jArr2[r12] + jArr2[r13];
        jArr2[r12] = j13;
        jArr2[r11] = Longs.rotateRight(j13 ^ jArr2[r11], 24);
        long[] jArr3 = this.internalState;
        long j14 = jArr3[r10] + jArr3[r11] + j11;
        jArr3[r10] = j14;
        jArr3[r13] = Longs.rotateRight(jArr3[r13] ^ j14, 16);
        long[] jArr4 = this.internalState;
        long j15 = jArr4[r12] + jArr4[r13];
        jArr4[r12] = j15;
        jArr4[r11] = Longs.rotateRight(j15 ^ jArr4[r11], 63);
    }

    private void compress(byte[] bArr, int r15) {
        initializeInternalState();
        long[] jArr = new long[16];
        Pack.littleEndianToLong(bArr, r15, jArr);
        int r14 = 0;
        for (int r152 = 0; r152 < ROUNDS; r152++) {
            byte[][] bArr2 = blake2b_sigma;
            byte[] bArr3 = bArr2[r152];
            G(jArr[bArr3[0]], jArr[bArr3[1]], 0, 4, 8, 12);
            byte[] bArr4 = bArr2[r152];
            G(jArr[bArr4[2]], jArr[bArr4[3]], 1, 5, 9, 13);
            byte[] bArr5 = bArr2[r152];
            G(jArr[bArr5[4]], jArr[bArr5[5]], 2, 6, 10, 14);
            byte[] bArr6 = bArr2[r152];
            G(jArr[bArr6[6]], jArr[bArr6[7]], 3, 7, 11, 15);
            byte[] bArr7 = bArr2[r152];
            G(jArr[bArr7[8]], jArr[bArr7[9]], 0, 5, 10, 15);
            byte[] bArr8 = bArr2[r152];
            G(jArr[bArr8[10]], jArr[bArr8[11]], 1, 6, 11, 12);
            byte[] bArr9 = bArr2[r152];
            G(jArr[bArr9[12]], jArr[bArr9[13]], 2, 7, 8, 13);
            byte[] bArr10 = bArr2[r152];
            G(jArr[bArr10[14]], jArr[bArr10[15]], 3, 4, 9, 14);
        }
        while (true) {
            long[] jArr2 = this.chainValue;
            if (r14 >= jArr2.length) {
                return;
            }
            long j10 = jArr2[r14];
            long[] jArr3 = this.internalState;
            jArr2[r14] = (j10 ^ jArr3[r14]) ^ jArr3[r14 + 8];
            r14++;
        }
    }

    private void init() {
        if (this.chainValue == null) {
            long[] jArr = {jArr[0] ^ ((this.digestLength | (this.keyLength << 8)) | (((this.fanout << 16) | (this.depth << 24)) | (this.leafLength << 32))), jArr[1] ^ this.nodeOffset, jArr[2] ^ (this.nodeDepth | (this.innerHashLength << 8)), jArr[3], j, jArr[5], 0, 0};
            this.chainValue = jArr;
            long[] jArr2 = blake2b_IV;
            long j10 = jArr2[4];
            byte[] bArr = this.salt;
            if (bArr != null) {
                jArr[4] = j10 ^ Pack.littleEndianToLong(bArr, 0);
                long[] jArr3 = this.chainValue;
                jArr3[5] = jArr3[5] ^ Pack.littleEndianToLong(this.salt, 8);
            }
            long[] jArr4 = this.chainValue;
            long j11 = jArr2[6];
            jArr4[6] = j11;
            jArr4[7] = jArr2[7];
            byte[] bArr2 = this.personalization;
            if (bArr2 != null) {
                jArr4[6] = Pack.littleEndianToLong(bArr2, 0) ^ j11;
                long[] jArr5 = this.chainValue;
                jArr5[7] = jArr5[7] ^ Pack.littleEndianToLong(this.personalization, 8);
            }
        }
    }

    private void initializeInternalState() {
        long[] jArr = this.chainValue;
        System.arraycopy(jArr, 0, this.internalState, 0, jArr.length);
        long[] jArr2 = blake2b_IV;
        System.arraycopy(jArr2, 0, this.internalState, this.chainValue.length, 4);
        long[] jArr3 = this.internalState;
        jArr3[12] = this.f11452t0 ^ jArr2[4];
        jArr3[13] = this.f11453t1 ^ jArr2[5];
        jArr3[14] = this.f11450f0 ^ jArr2[6];
        jArr3[15] = this.f11451f1 ^ jArr2[7];
    }

    public void clearKey() {
        byte[] bArr = this.key;
        if (bArr != null) {
            Arrays.fill(bArr, (byte) 0);
            Arrays.fill(this.buffer, (byte) 0);
        }
    }

    public void clearSalt() {
        byte[] bArr = this.salt;
        if (bArr != null) {
            Arrays.fill(bArr, (byte) 0);
        }
    }

    @Override // org.bouncycastle.crypto.Digest
    public int doFinal(byte[] bArr, int r11) {
        if (r11 > bArr.length - this.digestLength) {
            throw new OutputLengthException("output buffer too short");
        }
        this.f11450f0 = -1L;
        if (this.isLastNode) {
            this.f11451f1 = -1L;
        }
        long j10 = this.f11452t0;
        int r22 = this.bufferPos;
        long j11 = j10 + r22;
        this.f11452t0 = j11;
        if (r22 > 0 && j11 == 0) {
            this.f11453t1++;
        }
        compress(this.buffer, 0);
        Arrays.fill(this.buffer, (byte) 0);
        Arrays.fill(this.internalState, 0L);
        int r02 = this.digestLength;
        int r23 = r02 >>> 3;
        int r03 = r02 & 7;
        Pack.longToLittleEndian(this.chainValue, 0, r23, bArr, r11);
        if (r03 > 0) {
            byte[] bArr2 = new byte[8];
            Pack.longToLittleEndian(this.chainValue[r23], bArr2, 0);
            System.arraycopy(bArr2, 0, bArr, (r11 + this.digestLength) - r03, r03);
        }
        Arrays.fill(this.chainValue, 0L);
        reset();
        return this.digestLength;
    }

    @Override // org.bouncycastle.crypto.Digest
    public String getAlgorithmName() {
        return "BLAKE2b";
    }

    @Override // org.bouncycastle.crypto.ExtendedDigest
    public int getByteLength() {
        return 128;
    }

    @Override // org.bouncycastle.crypto.Digest
    public int getDigestSize() {
        return this.digestLength;
    }

    @Override // org.bouncycastle.crypto.Digest
    public void reset() {
        this.bufferPos = 0;
        this.f11450f0 = 0L;
        this.f11451f1 = 0L;
        this.f11452t0 = 0L;
        this.f11453t1 = 0L;
        this.isLastNode = false;
        this.chainValue = null;
        Arrays.fill(this.buffer, (byte) 0);
        byte[] bArr = this.key;
        if (bArr != null) {
            System.arraycopy(bArr, 0, this.buffer, 0, bArr.length);
            this.bufferPos = 128;
        }
        init();
    }

    public void setAsLastNode() {
        this.isLastNode = true;
    }

    @Override // org.bouncycastle.crypto.Digest
    public void update(byte b10) {
        int r02 = this.bufferPos;
        if (128 - r02 != 0) {
            this.buffer[r02] = b10;
            this.bufferPos = r02 + 1;
            return;
        }
        long j10 = this.f11452t0 + 128;
        this.f11452t0 = j10;
        if (j10 == 0) {
            this.f11453t1++;
        }
        compress(this.buffer, 0);
        Arrays.fill(this.buffer, (byte) 0);
        this.buffer[0] = b10;
        this.bufferPos = 1;
    }

    @Override // org.bouncycastle.crypto.Digest
    public void update(byte[] bArr, int r13, int r14) {
        int r82;
        if (bArr == null || r14 == 0) {
            return;
        }
        int r02 = this.bufferPos;
        if (r02 != 0) {
            r82 = 128 - r02;
            if (r82 >= r14) {
                System.arraycopy(bArr, r13, this.buffer, r02, r14);
                this.bufferPos += r14;
            }
            System.arraycopy(bArr, r13, this.buffer, r02, r82);
            long j10 = this.f11452t0 + 128;
            this.f11452t0 = j10;
            if (j10 == 0) {
                this.f11453t1++;
            }
            compress(this.buffer, 0);
            this.bufferPos = 0;
            Arrays.fill(this.buffer, (byte) 0);
        } else {
            r82 = 0;
        }
        int r142 = r14 + r13;
        int r03 = r142 - 128;
        int r132 = r13 + r82;
        while (r132 < r03) {
            long j11 = this.f11452t0 + 128;
            this.f11452t0 = j11;
            if (j11 == 0) {
                this.f11453t1++;
            }
            compress(bArr, r132);
            r132 += 128;
        }
        r14 = r142 - r132;
        System.arraycopy(bArr, r132, this.buffer, 0, r14);
        this.bufferPos += r14;
    }
}
