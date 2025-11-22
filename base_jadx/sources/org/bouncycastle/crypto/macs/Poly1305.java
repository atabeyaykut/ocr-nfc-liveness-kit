package org.bouncycastle.crypto.macs;

import org.bouncycastle.asn1.cmc.BodyPartID;
import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.Mac;
import org.bouncycastle.crypto.OutputLengthException;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.crypto.params.ParametersWithIV;
import org.bouncycastle.util.Pack;

/* loaded from: classes2.dex */
public class Poly1305 implements Mac {
    private static final int BLOCK_SIZE = 16;
    private final BlockCipher cipher;
    private final byte[] currentBlock;
    private int currentBlockOffset;

    /* renamed from: h0, reason: collision with root package name */
    private int f11551h0;

    /* renamed from: h1, reason: collision with root package name */
    private int f11552h1;

    /* renamed from: h2, reason: collision with root package name */
    private int f11553h2;

    /* renamed from: h3, reason: collision with root package name */
    private int f11554h3;

    /* renamed from: h4, reason: collision with root package name */
    private int f11555h4;

    /* renamed from: k0, reason: collision with root package name */
    private int f11556k0;

    /* renamed from: k1, reason: collision with root package name */
    private int f11557k1;

    /* renamed from: k2, reason: collision with root package name */
    private int f11558k2;

    /* renamed from: k3, reason: collision with root package name */
    private int f11559k3;

    /* renamed from: r0, reason: collision with root package name */
    private int f11560r0;

    /* renamed from: r1, reason: collision with root package name */
    private int f11561r1;

    /* renamed from: r2, reason: collision with root package name */
    private int f11562r2;

    /* renamed from: r3, reason: collision with root package name */
    private int f11563r3;

    /* renamed from: r4, reason: collision with root package name */
    private int f11564r4;

    /* renamed from: s1, reason: collision with root package name */
    private int f11565s1;

    /* renamed from: s2, reason: collision with root package name */
    private int f11566s2;

    /* renamed from: s3, reason: collision with root package name */
    private int f11567s3;

    /* renamed from: s4, reason: collision with root package name */
    private int f11568s4;
    private final byte[] singleByte;

    public Poly1305() {
        this.singleByte = new byte[1];
        this.currentBlock = new byte[16];
        this.currentBlockOffset = 0;
        this.cipher = null;
    }

    public Poly1305(BlockCipher blockCipher) {
        this.singleByte = new byte[1];
        this.currentBlock = new byte[16];
        this.currentBlockOffset = 0;
        if (blockCipher.getBlockSize() != 16) {
            throw new IllegalArgumentException("Poly1305 requires a 128 bit block cipher.");
        }
        this.cipher = blockCipher;
    }

    private static final long mul32x32_64(int r42, int r52) {
        return (r42 & BodyPartID.bodyIdMax) * r52;
    }

    private void processBlock() {
        int r12 = this.currentBlockOffset;
        if (r12 < 16) {
            this.currentBlock[r12] = 1;
            for (int r13 = r12 + 1; r13 < 16; r13++) {
                this.currentBlock[r13] = 0;
            }
        }
        long jLittleEndianToInt = Pack.littleEndianToInt(this.currentBlock, 0) & BodyPartID.bodyIdMax;
        long jLittleEndianToInt2 = Pack.littleEndianToInt(this.currentBlock, 4) & BodyPartID.bodyIdMax;
        long jLittleEndianToInt3 = Pack.littleEndianToInt(this.currentBlock, 8) & BodyPartID.bodyIdMax;
        long jLittleEndianToInt4 = BodyPartID.bodyIdMax & Pack.littleEndianToInt(this.currentBlock, 12);
        int r82 = (int) (this.f11551h0 + (jLittleEndianToInt & 67108863));
        this.f11551h0 = r82;
        this.f11552h1 = (int) (this.f11552h1 + ((((jLittleEndianToInt2 << 32) | jLittleEndianToInt) >>> 26) & 67108863));
        this.f11553h2 = (int) (this.f11553h2 + (((jLittleEndianToInt2 | (jLittleEndianToInt3 << 32)) >>> 20) & 67108863));
        this.f11554h3 = (int) (this.f11554h3 + ((((jLittleEndianToInt4 << 32) | jLittleEndianToInt3) >>> 14) & 67108863));
        int r22 = (int) (this.f11555h4 + (jLittleEndianToInt4 >>> 8));
        this.f11555h4 = r22;
        if (this.currentBlockOffset == 16) {
            this.f11555h4 = r22 + 16777216;
        }
        long jMul32x32_64 = mul32x32_64(r82, this.f11560r0) + mul32x32_64(this.f11552h1, this.f11568s4) + mul32x32_64(this.f11553h2, this.f11567s3) + mul32x32_64(this.f11554h3, this.f11566s2) + mul32x32_64(this.f11555h4, this.f11565s1);
        long jMul32x32_642 = mul32x32_64(this.f11551h0, this.f11561r1) + mul32x32_64(this.f11552h1, this.f11560r0) + mul32x32_64(this.f11553h2, this.f11568s4) + mul32x32_64(this.f11554h3, this.f11567s3) + mul32x32_64(this.f11555h4, this.f11566s2);
        long jMul32x32_643 = mul32x32_64(this.f11551h0, this.f11562r2) + mul32x32_64(this.f11552h1, this.f11561r1) + mul32x32_64(this.f11553h2, this.f11560r0) + mul32x32_64(this.f11554h3, this.f11568s4) + mul32x32_64(this.f11555h4, this.f11567s3);
        long jMul32x32_644 = mul32x32_64(this.f11551h0, this.f11563r3) + mul32x32_64(this.f11552h1, this.f11562r2) + mul32x32_64(this.f11553h2, this.f11561r1) + mul32x32_64(this.f11554h3, this.f11560r0) + mul32x32_64(this.f11555h4, this.f11568s4);
        long jMul32x32_645 = mul32x32_64(this.f11551h0, this.f11564r4) + mul32x32_64(this.f11552h1, this.f11563r3) + mul32x32_64(this.f11553h2, this.f11562r2) + mul32x32_64(this.f11554h3, this.f11561r1) + mul32x32_64(this.f11555h4, this.f11560r0);
        int r11 = ((int) jMul32x32_64) & 67108863;
        long j10 = jMul32x32_642 + (jMul32x32_64 >>> 26);
        int r14 = ((int) j10) & 67108863;
        long j11 = jMul32x32_643 + (j10 >>> 26);
        this.f11553h2 = ((int) j11) & 67108863;
        long j12 = jMul32x32_644 + (j11 >>> 26);
        this.f11554h3 = ((int) j12) & 67108863;
        long j13 = jMul32x32_645 + (j12 >>> 26);
        this.f11555h4 = ((int) j13) & 67108863;
        int r32 = (((int) (j13 >>> 26)) * 5) + r11;
        this.f11552h1 = r14 + (r32 >>> 26);
        this.f11551h0 = r32 & 67108863;
    }

    private void setKey(byte[] bArr, byte[] bArr2) throws IllegalStateException, DataLengthException, IllegalArgumentException {
        if (bArr.length != 32) {
            throw new IllegalArgumentException("Poly1305 key must be 256 bits.");
        }
        int r12 = 16;
        if (this.cipher != null && (bArr2 == null || bArr2.length != 16)) {
            throw new IllegalArgumentException("Poly1305 requires a 128 bit IV.");
        }
        int r22 = Pack.littleEndianToInt(bArr, 0);
        int r32 = Pack.littleEndianToInt(bArr, 4);
        int r52 = Pack.littleEndianToInt(bArr, 8);
        int r72 = Pack.littleEndianToInt(bArr, 12);
        this.f11560r0 = 67108863 & r22;
        int r23 = ((r22 >>> 26) | (r32 << 6)) & 67108611;
        this.f11561r1 = r23;
        int r33 = ((r32 >>> 20) | (r52 << 12)) & 67092735;
        this.f11562r2 = r33;
        int r53 = ((r52 >>> 14) | (r72 << 18)) & 66076671;
        this.f11563r3 = r53;
        int r42 = (r72 >>> 8) & 1048575;
        this.f11564r4 = r42;
        this.f11565s1 = r23 * 5;
        this.f11566s2 = r33 * 5;
        this.f11567s3 = r53 * 5;
        this.f11568s4 = r42 * 5;
        BlockCipher blockCipher = this.cipher;
        if (blockCipher != null) {
            byte[] bArr3 = new byte[16];
            blockCipher.init(true, new KeyParameter(bArr, 16, 16));
            this.cipher.processBlock(bArr2, 0, bArr3, 0);
            bArr = bArr3;
            r12 = 0;
        }
        this.f11556k0 = Pack.littleEndianToInt(bArr, r12 + 0);
        this.f11557k1 = Pack.littleEndianToInt(bArr, r12 + 4);
        this.f11558k2 = Pack.littleEndianToInt(bArr, r12 + 8);
        this.f11559k3 = Pack.littleEndianToInt(bArr, r12 + 12);
    }

    @Override // org.bouncycastle.crypto.Mac
    public int doFinal(byte[] bArr, int r19) throws IllegalStateException, DataLengthException {
        if (r19 + 16 > bArr.length) {
            throw new OutputLengthException("Output buffer is too short.");
        }
        if (this.currentBlockOffset > 0) {
            processBlock();
        }
        int r32 = this.f11552h1;
        int r42 = this.f11551h0;
        int r33 = r32 + (r42 >>> 26);
        int r6 = this.f11553h2 + (r33 >>> 26);
        int r72 = this.f11554h3 + (r6 >>> 26);
        int r62 = r6 & 67108863;
        int r82 = this.f11555h4 + (r72 >>> 26);
        int r73 = r72 & 67108863;
        int r92 = ((r82 >>> 26) * 5) + (r42 & 67108863);
        int r43 = r82 & 67108863;
        int r34 = (r33 & 67108863) + (r92 >>> 26);
        int r83 = r92 & 67108863;
        int r93 = r83 + 5;
        int r10 = (r93 >>> 26) + r34;
        int r11 = (r10 >>> 26) + r62;
        int r12 = (r11 >>> 26) + r73;
        int r52 = 67108863 & r12;
        int r13 = ((r12 >>> 26) + r43) - 67108864;
        int r122 = (r13 >>> 31) - 1;
        int r14 = ~r122;
        this.f11551h0 = (r83 & r14) | (r93 & 67108863 & r122);
        this.f11552h1 = (r34 & r14) | (r10 & 67108863 & r122);
        this.f11553h2 = (r62 & r14) | (r11 & 67108863 & r122);
        this.f11554h3 = (r52 & r122) | (r73 & r14);
        this.f11555h4 = (r43 & r14) | (r13 & r122);
        long j10 = (((r3 << 26) | r8) & BodyPartID.bodyIdMax) + (this.f11556k0 & BodyPartID.bodyIdMax);
        long j11 = (((r3 >>> 6) | (r6 << 20)) & BodyPartID.bodyIdMax) + (this.f11557k1 & BodyPartID.bodyIdMax);
        long j12 = (((r6 >>> 12) | (r5 << 14)) & BodyPartID.bodyIdMax) + (this.f11558k2 & BodyPartID.bodyIdMax);
        long j13 = (((r5 >>> 18) | (r4 << 8)) & BodyPartID.bodyIdMax) + (this.f11559k3 & BodyPartID.bodyIdMax);
        Pack.intToLittleEndian((int) j10, bArr, r19);
        long j14 = j11 + (j10 >>> 32);
        Pack.intToLittleEndian((int) j14, bArr, r19 + 4);
        long j15 = j12 + (j14 >>> 32);
        Pack.intToLittleEndian((int) j15, bArr, r19 + 8);
        Pack.intToLittleEndian((int) (j13 + (j15 >>> 32)), bArr, r19 + 12);
        reset();
        return 16;
    }

    @Override // org.bouncycastle.crypto.Mac
    public String getAlgorithmName() {
        if (this.cipher == null) {
            return "Poly1305";
        }
        return "Poly1305-" + this.cipher.getAlgorithmName();
    }

    @Override // org.bouncycastle.crypto.Mac
    public int getMacSize() {
        return 16;
    }

    @Override // org.bouncycastle.crypto.Mac
    public void init(CipherParameters cipherParameters) throws IllegalStateException, DataLengthException, IllegalArgumentException {
        byte[] bArr;
        if (this.cipher == null) {
            bArr = null;
        } else {
            if (!(cipherParameters instanceof ParametersWithIV)) {
                throw new IllegalArgumentException("Poly1305 requires an IV when used with a block cipher.");
            }
            ParametersWithIV parametersWithIV = (ParametersWithIV) cipherParameters;
            bArr = parametersWithIV.getIV();
            cipherParameters = parametersWithIV.getParameters();
        }
        if (!(cipherParameters instanceof KeyParameter)) {
            throw new IllegalArgumentException("Poly1305 requires a key.");
        }
        setKey(((KeyParameter) cipherParameters).getKey(), bArr);
        reset();
    }

    @Override // org.bouncycastle.crypto.Mac
    public void reset() {
        this.currentBlockOffset = 0;
        this.f11555h4 = 0;
        this.f11554h3 = 0;
        this.f11553h2 = 0;
        this.f11552h1 = 0;
        this.f11551h0 = 0;
    }

    @Override // org.bouncycastle.crypto.Mac
    public void update(byte b10) throws IllegalStateException, DataLengthException {
        byte[] bArr = this.singleByte;
        bArr[0] = b10;
        update(bArr, 0, 1);
    }

    @Override // org.bouncycastle.crypto.Mac
    public void update(byte[] bArr, int r82, int r92) throws IllegalStateException, DataLengthException {
        int r12 = 0;
        while (r92 > r12) {
            if (this.currentBlockOffset == 16) {
                processBlock();
                this.currentBlockOffset = 0;
            }
            int r22 = Math.min(r92 - r12, 16 - this.currentBlockOffset);
            System.arraycopy(bArr, r12 + r82, this.currentBlock, this.currentBlockOffset, r22);
            r12 += r22;
            this.currentBlockOffset += r22;
        }
    }
}
