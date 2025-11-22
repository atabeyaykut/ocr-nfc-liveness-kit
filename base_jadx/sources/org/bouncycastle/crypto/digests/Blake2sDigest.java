package org.bouncycastle.crypto.digests;

import org.bouncycastle.crypto.CryptoServicePurpose;
import org.bouncycastle.crypto.CryptoServicesRegistrar;
import org.bouncycastle.crypto.ExtendedDigest;
import org.bouncycastle.crypto.OutputLengthException;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.Integers;
import org.bouncycastle.util.Pack;
import org.jmrtd.PassportService;

/* loaded from: classes2.dex */
public class Blake2sDigest implements ExtendedDigest {
    private static final int BLOCK_LENGTH_BYTES = 64;
    private static final int ROUNDS = 10;
    private static final int[] blake2s_IV = {1779033703, -1150833019, 1013904242, -1521486534, 1359893119, -1694144372, 528734635, 1541459225};
    private static final byte[][] blake2s_sigma = {new byte[]{0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, PassportService.SFI_DG11, PassportService.SFI_DG12, PassportService.SFI_DG13, 14, PassportService.SFI_DG15}, new byte[]{14, 10, 4, 8, 9, PassportService.SFI_DG15, PassportService.SFI_DG13, 6, 1, PassportService.SFI_DG12, 0, 2, PassportService.SFI_DG11, 7, 5, 3}, new byte[]{PassportService.SFI_DG11, 8, PassportService.SFI_DG12, 0, 5, 2, PassportService.SFI_DG15, PassportService.SFI_DG13, 10, 14, 3, 6, 7, 1, 9, 4}, new byte[]{7, 9, 3, 1, PassportService.SFI_DG13, PassportService.SFI_DG12, PassportService.SFI_DG11, 14, 2, 6, 5, 10, 4, 0, PassportService.SFI_DG15, 8}, new byte[]{9, 0, 5, 7, 2, 4, 10, PassportService.SFI_DG15, 14, 1, PassportService.SFI_DG11, PassportService.SFI_DG12, 6, 8, 3, PassportService.SFI_DG13}, new byte[]{2, PassportService.SFI_DG12, 6, 10, 0, PassportService.SFI_DG11, 8, 3, 4, PassportService.SFI_DG13, 7, 5, PassportService.SFI_DG15, 14, 1, 9}, new byte[]{PassportService.SFI_DG12, 5, 1, PassportService.SFI_DG15, 14, PassportService.SFI_DG13, 4, 10, 0, 7, 6, 3, 9, 2, 8, PassportService.SFI_DG11}, new byte[]{PassportService.SFI_DG13, PassportService.SFI_DG11, 7, 14, PassportService.SFI_DG12, 1, 3, 9, 5, 0, PassportService.SFI_DG15, 4, 8, 6, 2, 10}, new byte[]{6, PassportService.SFI_DG15, 14, 9, PassportService.SFI_DG11, 3, 0, 8, PassportService.SFI_DG12, 2, PassportService.SFI_DG13, 7, 1, 4, 10, 5}, new byte[]{10, 2, 8, 4, 7, 6, 1, 5, PassportService.SFI_DG15, PassportService.SFI_DG11, 9, 14, 3, PassportService.SFI_DG12, PassportService.SFI_DG13, 0}};
    private byte[] buffer;
    private int bufferPos;
    private int[] chainValue;
    private int depth;
    private int digestLength;

    /* renamed from: f0, reason: collision with root package name */
    private int f11454f0;

    /* renamed from: f1, reason: collision with root package name */
    private int f11455f1;
    private int fanout;
    private int innerHashLength;
    private int[] internalState;
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
    private int f11456t0;

    /* renamed from: t1, reason: collision with root package name */
    private int f11457t1;

    public Blake2sDigest() {
        this(256, CryptoServicePurpose.ANY);
    }

    public Blake2sDigest(int r22) {
        this(r22, CryptoServicePurpose.ANY);
    }

    public Blake2sDigest(int r72, int r82, long j10) {
        this(r72, r82, j10, CryptoServicePurpose.ANY);
    }

    public Blake2sDigest(int r42, int r52, long j10, CryptoServicePurpose cryptoServicePurpose) {
        this.keyLength = 0;
        this.salt = null;
        this.personalization = null;
        this.key = null;
        this.isLastNode = false;
        this.buffer = null;
        this.bufferPos = 0;
        this.internalState = new int[16];
        this.chainValue = null;
        this.f11456t0 = 0;
        this.f11457t1 = 0;
        this.f11454f0 = 0;
        this.f11455f1 = 0;
        this.digestLength = r42;
        this.nodeOffset = j10;
        this.fanout = 0;
        this.depth = 0;
        this.leafLength = r52;
        this.innerHashLength = r52;
        this.nodeDepth = 0;
        this.purpose = cryptoServicePurpose;
        CryptoServicesRegistrar.checkConstraints(Utils.getDefaultProperties(this, r42 * 8, cryptoServicePurpose));
        init(null, null, null);
    }

    public Blake2sDigest(int r52, CryptoServicePurpose cryptoServicePurpose) {
        this.digestLength = 32;
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
        this.internalState = new int[16];
        this.chainValue = null;
        this.f11456t0 = 0;
        this.f11457t1 = 0;
        this.f11454f0 = 0;
        this.f11455f1 = 0;
        if (r52 < 8 || r52 > 256 || r52 % 8 != 0) {
            throw new IllegalArgumentException("BLAKE2s digest bit length must be a multiple of 8 and not greater than 256");
        }
        this.digestLength = r52 / 8;
        this.purpose = cryptoServicePurpose;
        CryptoServicesRegistrar.checkConstraints(Utils.getDefaultProperties(this, r52, cryptoServicePurpose));
        init(null, null, null);
    }

    public Blake2sDigest(int r42, byte[] bArr, byte[] bArr2, byte[] bArr3, long j10, CryptoServicePurpose cryptoServicePurpose) {
        this.keyLength = 0;
        this.salt = null;
        this.personalization = null;
        this.key = null;
        this.fanout = 1;
        this.depth = 1;
        this.leafLength = 0;
        this.nodeDepth = 0;
        this.innerHashLength = 0;
        this.isLastNode = false;
        this.buffer = null;
        this.bufferPos = 0;
        this.internalState = new int[16];
        this.chainValue = null;
        this.f11456t0 = 0;
        this.f11457t1 = 0;
        this.f11454f0 = 0;
        this.f11455f1 = 0;
        this.digestLength = r42;
        this.nodeOffset = j10;
        this.purpose = cryptoServicePurpose;
        CryptoServicesRegistrar.checkConstraints(Utils.getDefaultProperties(this, r42 * 8, cryptoServicePurpose));
        init(bArr2, bArr3, bArr);
    }

    public Blake2sDigest(Blake2sDigest blake2sDigest) {
        this.digestLength = 32;
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
        this.internalState = new int[16];
        this.chainValue = null;
        this.f11456t0 = 0;
        this.f11457t1 = 0;
        this.f11454f0 = 0;
        this.f11455f1 = 0;
        this.bufferPos = blake2sDigest.bufferPos;
        this.buffer = Arrays.clone(blake2sDigest.buffer);
        this.keyLength = blake2sDigest.keyLength;
        this.key = Arrays.clone(blake2sDigest.key);
        this.digestLength = blake2sDigest.digestLength;
        this.internalState = Arrays.clone(blake2sDigest.internalState);
        this.chainValue = Arrays.clone(blake2sDigest.chainValue);
        this.f11456t0 = blake2sDigest.f11456t0;
        this.f11457t1 = blake2sDigest.f11457t1;
        this.f11454f0 = blake2sDigest.f11454f0;
        this.salt = Arrays.clone(blake2sDigest.salt);
        this.personalization = Arrays.clone(blake2sDigest.personalization);
        this.fanout = blake2sDigest.fanout;
        this.depth = blake2sDigest.depth;
        this.leafLength = blake2sDigest.leafLength;
        this.nodeOffset = blake2sDigest.nodeOffset;
        this.nodeDepth = blake2sDigest.nodeDepth;
        this.innerHashLength = blake2sDigest.innerHashLength;
        this.purpose = blake2sDigest.purpose;
    }

    public Blake2sDigest(byte[] bArr) {
        this(bArr, CryptoServicePurpose.ANY);
    }

    public Blake2sDigest(byte[] bArr, int r82, byte[] bArr2, byte[] bArr3) {
        this(bArr, r82, bArr2, bArr3, CryptoServicePurpose.ANY);
    }

    public Blake2sDigest(byte[] bArr, int r82, byte[] bArr2, byte[] bArr3, CryptoServicePurpose cryptoServicePurpose) {
        this.digestLength = 32;
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
        this.internalState = new int[16];
        this.chainValue = null;
        this.f11456t0 = 0;
        this.f11457t1 = 0;
        this.f11454f0 = 0;
        this.f11455f1 = 0;
        if (r82 < 1 || r82 > 32) {
            throw new IllegalArgumentException("Invalid digest length (required: 1 - 32)");
        }
        this.digestLength = r82;
        this.purpose = cryptoServicePurpose;
        CryptoServicesRegistrar.checkConstraints(Utils.getDefaultProperties(this, r82 * 8, cryptoServicePurpose));
        init(bArr2, bArr3, bArr);
    }

    public Blake2sDigest(byte[] bArr, CryptoServicePurpose cryptoServicePurpose) {
        this.digestLength = 32;
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
        this.internalState = new int[16];
        this.chainValue = null;
        this.f11456t0 = 0;
        this.f11457t1 = 0;
        this.f11454f0 = 0;
        this.f11455f1 = 0;
        this.purpose = cryptoServicePurpose;
        CryptoServicesRegistrar.checkConstraints(Utils.getDefaultProperties(this, bArr.length * 8, cryptoServicePurpose));
        init(null, null, bArr);
    }

    public Blake2sDigest(byte[] bArr, byte[] bArr2) {
        this.digestLength = 32;
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
        this.internalState = new int[16];
        this.chainValue = null;
        this.f11456t0 = 0;
        this.f11457t1 = 0;
        this.f11454f0 = 0;
        this.f11455f1 = 0;
        this.purpose = CryptoServicePurpose.ANY;
        this.digestLength = bArr2[0];
        this.keyLength = bArr2[1];
        this.fanout = bArr2[2];
        this.depth = bArr2[3];
        this.leafLength = Pack.littleEndianToInt(bArr2, 4);
        this.nodeOffset |= Pack.littleEndianToInt(bArr2, 8);
        this.nodeDepth = bArr2[14];
        this.innerHashLength = bArr2[15];
        byte[] bArr3 = new byte[8];
        byte[] bArr4 = new byte[8];
        System.arraycopy(bArr2, 16, bArr3, 0, 8);
        System.arraycopy(bArr2, 24, bArr4, 0, 8);
        init(bArr3, bArr4, bArr);
    }

    private void G(int r42, int r52, int r6, int r72, int r82, int r92) {
        int[] r02 = this.internalState;
        int r12 = r02[r6] + r02[r72] + r42;
        r02[r6] = r12;
        r02[r92] = Integers.rotateRight(r02[r92] ^ r12, 16);
        int[] r43 = this.internalState;
        int r03 = r43[r82] + r43[r92];
        r43[r82] = r03;
        r43[r72] = Integers.rotateRight(r03 ^ r43[r72], 12);
        int[] r44 = this.internalState;
        int r04 = r44[r6] + r44[r72] + r52;
        r44[r6] = r04;
        r44[r92] = Integers.rotateRight(r44[r92] ^ r04, 8);
        int[] r45 = this.internalState;
        int r53 = r45[r82] + r45[r92];
        r45[r82] = r53;
        r45[r72] = Integers.rotateRight(r53 ^ r45[r72], 7);
    }

    private void compress(byte[] bArr, int r14) {
        initializeInternalState();
        int[] r02 = new int[16];
        Pack.littleEndianToInt(bArr, r14, r02);
        int r13 = 0;
        for (int r142 = 0; r142 < 10; r142++) {
            byte[][] bArr2 = blake2s_sigma;
            byte[] bArr3 = bArr2[r142];
            G(r02[bArr3[0]], r02[bArr3[1]], 0, 4, 8, 12);
            byte[] bArr4 = bArr2[r142];
            G(r02[bArr4[2]], r02[bArr4[3]], 1, 5, 9, 13);
            byte[] bArr5 = bArr2[r142];
            G(r02[bArr5[4]], r02[bArr5[5]], 2, 6, 10, 14);
            byte[] bArr6 = bArr2[r142];
            G(r02[bArr6[6]], r02[bArr6[7]], 3, 7, 11, 15);
            byte[] bArr7 = bArr2[r142];
            G(r02[bArr7[8]], r02[bArr7[9]], 0, 5, 10, 15);
            byte[] bArr8 = bArr2[r142];
            G(r02[bArr8[10]], r02[bArr8[11]], 1, 6, 11, 12);
            byte[] bArr9 = bArr2[r142];
            G(r02[bArr9[12]], r02[bArr9[13]], 2, 7, 8, 13);
            byte[] bArr10 = bArr2[r142];
            G(r02[bArr10[14]], r02[bArr10[15]], 3, 4, 9, 14);
        }
        while (true) {
            int[] r143 = this.chainValue;
            if (r13 >= r143.length) {
                return;
            }
            int r03 = r143[r13];
            int[] r12 = this.internalState;
            r143[r13] = (r03 ^ r12[r13]) ^ r12[r13 + 8];
            r13++;
        }
    }

    private void init(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        this.buffer = new byte[64];
        if (bArr3 != null && bArr3.length > 0) {
            int length = bArr3.length;
            this.keyLength = length;
            if (length > 32) {
                throw new IllegalArgumentException("Keys > 32 bytes are not supported");
            }
            byte[] bArr4 = new byte[length];
            this.key = bArr4;
            System.arraycopy(bArr3, 0, bArr4, 0, length);
            System.arraycopy(bArr3, 0, this.buffer, 0, this.keyLength);
            this.bufferPos = 64;
        }
        if (this.chainValue == null) {
            this.chainValue = new int[]{ıArr[0] ^ ((this.digestLength | (this.keyLength << 8)) | ((this.fanout << 16) | (this.depth << 24))), ıArr[1] ^ this.leafLength, ((int) j) ^ ıArr[2], ((ı | (this.nodeDepth << 16)) | (this.innerHashLength << 24)) ^ ı, ıArr[4], ıArr[5], 0, 0};
            int[] r32 = blake2s_IV;
            long j10 = this.nodeOffset;
            int r12 = (int) (j10 >> 32);
            int r52 = r32[3];
            if (bArr != null) {
                if (bArr.length != 8) {
                    throw new IllegalArgumentException("Salt length must be exactly 8 bytes");
                }
                byte[] bArr5 = new byte[8];
                this.salt = bArr5;
                System.arraycopy(bArr, 0, bArr5, 0, bArr.length);
                int[] r02 = this.chainValue;
                r02[4] = r02[4] ^ Pack.littleEndianToInt(bArr, 0);
                int[] r03 = this.chainValue;
                r03[5] = Pack.littleEndianToInt(bArr, 4) ^ r03[5];
            }
            int[] r92 = this.chainValue;
            r92[6] = r32[6];
            r92[7] = r32[7];
            if (bArr2 != null) {
                if (bArr2.length != 8) {
                    throw new IllegalArgumentException("Personalization length must be exactly 8 bytes");
                }
                byte[] bArr6 = new byte[8];
                this.personalization = bArr6;
                System.arraycopy(bArr2, 0, bArr6, 0, bArr2.length);
                int[] r93 = this.chainValue;
                r93[6] = r93[6] ^ Pack.littleEndianToInt(bArr2, 0);
                int[] r94 = this.chainValue;
                r94[7] = Pack.littleEndianToInt(bArr2, 4) ^ r94[7];
            }
        }
    }

    private void initializeInternalState() {
        int[] r02 = this.chainValue;
        System.arraycopy(r02, 0, this.internalState, 0, r02.length);
        int[] r03 = blake2s_IV;
        System.arraycopy(r03, 0, this.internalState, this.chainValue.length, 4);
        int[] r12 = this.internalState;
        r12[12] = this.f11456t0 ^ r03[4];
        r12[13] = this.f11457t1 ^ r03[5];
        r12[14] = this.f11454f0 ^ r03[6];
        r12[15] = r03[7] ^ this.f11455f1;
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
    public int doFinal(byte[] bArr, int r72) {
        if (r72 > bArr.length - this.digestLength) {
            throw new OutputLengthException("output buffer too short");
        }
        this.f11454f0 = -1;
        if (this.isLastNode) {
            this.f11455f1 = -1;
        }
        int r02 = this.f11456t0;
        int r12 = this.bufferPos;
        int r03 = r02 + r12;
        this.f11456t0 = r03;
        if (r03 < 0 && r12 > (-r03)) {
            this.f11457t1++;
        }
        compress(this.buffer, 0);
        Arrays.fill(this.buffer, (byte) 0);
        Arrays.fill(this.internalState, 0);
        int r04 = this.digestLength;
        int r22 = r04 >>> 2;
        int r05 = r04 & 3;
        Pack.intToLittleEndian(this.chainValue, 0, r22, bArr, r72);
        if (r05 > 0) {
            byte[] bArr2 = new byte[4];
            Pack.intToLittleEndian(this.chainValue[r22], bArr2, 0);
            System.arraycopy(bArr2, 0, bArr, (r72 + this.digestLength) - r05, r05);
        }
        Arrays.fill(this.chainValue, 0);
        reset();
        return this.digestLength;
    }

    @Override // org.bouncycastle.crypto.Digest
    public String getAlgorithmName() {
        return "BLAKE2s";
    }

    @Override // org.bouncycastle.crypto.ExtendedDigest
    public int getByteLength() {
        return 64;
    }

    @Override // org.bouncycastle.crypto.Digest
    public int getDigestSize() {
        return this.digestLength;
    }

    @Override // org.bouncycastle.crypto.Digest
    public void reset() {
        this.bufferPos = 0;
        this.f11454f0 = 0;
        this.f11455f1 = 0;
        this.f11456t0 = 0;
        this.f11457t1 = 0;
        this.isLastNode = false;
        this.chainValue = null;
        Arrays.fill(this.buffer, (byte) 0);
        byte[] bArr = this.key;
        if (bArr != null) {
            System.arraycopy(bArr, 0, this.buffer, 0, bArr.length);
            this.bufferPos = 64;
        }
        init(this.salt, this.personalization, this.key);
    }

    public void setAsLastNode() {
        this.isLastNode = true;
    }

    @Override // org.bouncycastle.crypto.Digest
    public void update(byte b10) {
        int r02 = this.bufferPos;
        if (64 - r02 != 0) {
            this.buffer[r02] = b10;
            this.bufferPos = r02 + 1;
            return;
        }
        int r03 = this.f11456t0 + 64;
        this.f11456t0 = r03;
        if (r03 == 0) {
            this.f11457t1++;
        }
        compress(this.buffer, 0);
        Arrays.fill(this.buffer, (byte) 0);
        this.buffer[0] = b10;
        this.bufferPos = 1;
    }

    @Override // org.bouncycastle.crypto.Digest
    public void update(byte[] bArr, int r6, int r72) {
        int r22;
        if (bArr == null || r72 == 0) {
            return;
        }
        int r02 = this.bufferPos;
        if (r02 != 0) {
            r22 = 64 - r02;
            if (r22 >= r72) {
                System.arraycopy(bArr, r6, this.buffer, r02, r72);
                this.bufferPos += r72;
            }
            System.arraycopy(bArr, r6, this.buffer, r02, r22);
            int r03 = this.f11456t0 + 64;
            this.f11456t0 = r03;
            if (r03 == 0) {
                this.f11457t1++;
            }
            compress(this.buffer, 0);
            this.bufferPos = 0;
            Arrays.fill(this.buffer, (byte) 0);
        } else {
            r22 = 0;
        }
        int r73 = r72 + r6;
        int r04 = r73 - 64;
        int r62 = r6 + r22;
        while (r62 < r04) {
            int r23 = this.f11456t0 + 64;
            this.f11456t0 = r23;
            if (r23 == 0) {
                this.f11457t1++;
            }
            compress(bArr, r62);
            r62 += 64;
        }
        r72 = r73 - r62;
        System.arraycopy(bArr, r62, this.buffer, 0, r72);
        this.bufferPos += r72;
    }
}
