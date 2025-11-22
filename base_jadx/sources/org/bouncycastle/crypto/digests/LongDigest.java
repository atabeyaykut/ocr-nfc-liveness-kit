package org.bouncycastle.crypto.digests;

import net.sf.scuba.smartcards.ISOFileInfo;
import org.bouncycastle.crypto.CryptoServiceProperties;
import org.bouncycastle.crypto.CryptoServicePurpose;
import org.bouncycastle.crypto.ExtendedDigest;
import org.bouncycastle.util.Memoable;
import org.bouncycastle.util.Pack;

/* loaded from: classes2.dex */
public abstract class LongDigest implements ExtendedDigest, Memoable, EncodableDigest {
    private static final int BYTE_LENGTH = 128;
    static final long[] K = {4794697086780616226L, 8158064640168781261L, -5349999486874862801L, -1606136188198331460L, 4131703408338449720L, 6480981068601479193L, -7908458776815382629L, -6116909921290321640L, -2880145864133508542L, 1334009975649890238L, 2608012711638119052L, 6128411473006802146L, 8268148722764581231L, -9160688886553864527L, -7215885187991268811L, -4495734319001033068L, -1973867731355612462L, -1171420211273849373L, 1135362057144423861L, 2597628984639134821L, 3308224258029322869L, 5365058923640841347L, 6679025012923562964L, 8573033837759648693L, -7476448914759557205L, -6327057829258317296L, -5763719355590565569L, -4658551843659510044L, -4116276920077217854L, -3051310485924567259L, 489312712824947311L, 1452737877330783856L, 2861767655752347644L, 3322285676063803686L, 5560940570517711597L, 5996557281743188959L, 7280758554555802590L, 8532644243296465576L, -9096487096722542874L, -7894198246740708037L, -6719396339535248540L, -6333637450476146687L, -4446306890439682159L, -4076793802049405392L, -3345356375505022440L, -2983346525034927856L, -860691631967231958L, 1182934255886127544L, 1847814050463011016L, 2177327727835720531L, 2830643537854262169L, 3796741975233480872L, 4115178125766777443L, 5681478168544905931L, 6601373596472566643L, 7507060721942968483L, 8399075790359081724L, 8693463985226723168L, -8878714635349349518L, -8302665154208450068L, -8016688836872298968L, -6606660893046293015L, -4685533653050689259L, -4147400797238176981L, -3880063495543823972L, -3348786107499101689L, -1523767162380948706L, -757361751448694408L, 500013540394364858L, 748580250866718886L, 1242879168328830382L, 1977374033974150939L, 2944078676154940804L, 3659926193048069267L, 4368137639120453308L, 4836135668995329356L, 5532061633213252278L, 6448918945643986474L, 6902733635092675308L, 7801388544844847127L};
    protected long H1;
    protected long H2;
    protected long H3;
    protected long H4;
    protected long H5;
    protected long H6;
    protected long H7;
    protected long H8;
    private long[] W;
    private long byteCount1;
    private long byteCount2;
    protected final CryptoServicePurpose purpose;
    private int wOff;
    private byte[] xBuf;
    private int xBufOff;

    public LongDigest() {
        this(CryptoServicePurpose.ANY);
    }

    public LongDigest(CryptoServicePurpose cryptoServicePurpose) {
        this.xBuf = new byte[8];
        this.W = new long[80];
        this.purpose = cryptoServicePurpose;
        this.xBufOff = 0;
        reset();
    }

    public LongDigest(LongDigest longDigest) {
        this.xBuf = new byte[8];
        this.W = new long[80];
        this.purpose = longDigest.purpose;
        copyIn(longDigest);
    }

    private long Ch(long j10, long j11, long j12) {
        return ((~j10) & j12) ^ (j11 & j10);
    }

    private long Maj(long j10, long j11, long j12) {
        return ((j10 & j12) ^ (j10 & j11)) ^ (j11 & j12);
    }

    private long Sigma0(long j10) {
        return (j10 >>> 7) ^ (((j10 << 63) | (j10 >>> 1)) ^ ((j10 << 56) | (j10 >>> 8)));
    }

    private long Sigma1(long j10) {
        return (j10 >>> 6) ^ (((j10 << 45) | (j10 >>> 19)) ^ ((j10 << 3) | (j10 >>> 61)));
    }

    private long Sum0(long j10) {
        return ((j10 >>> 39) | (j10 << 25)) ^ (((j10 << 36) | (j10 >>> 28)) ^ ((j10 << 30) | (j10 >>> 34)));
    }

    private long Sum1(long j10) {
        return ((j10 >>> 41) | (j10 << 23)) ^ (((j10 << 50) | (j10 >>> 14)) ^ ((j10 << 46) | (j10 >>> 18)));
    }

    private void adjustByteCounts() {
        long j10 = this.byteCount1;
        if (j10 > 2305843009213693951L) {
            this.byteCount2 += j10 >>> 61;
            this.byteCount1 = j10 & 2305843009213693951L;
        }
    }

    public void copyIn(LongDigest longDigest) {
        byte[] bArr = longDigest.xBuf;
        System.arraycopy(bArr, 0, this.xBuf, 0, bArr.length);
        this.xBufOff = longDigest.xBufOff;
        this.byteCount1 = longDigest.byteCount1;
        this.byteCount2 = longDigest.byteCount2;
        this.H1 = longDigest.H1;
        this.H2 = longDigest.H2;
        this.H3 = longDigest.H3;
        this.H4 = longDigest.H4;
        this.H5 = longDigest.H5;
        this.H6 = longDigest.H6;
        this.H7 = longDigest.H7;
        this.H8 = longDigest.H8;
        long[] jArr = longDigest.W;
        System.arraycopy(jArr, 0, this.W, 0, jArr.length);
        this.wOff = longDigest.wOff;
    }

    public abstract CryptoServiceProperties cryptoServiceProperties();

    public void finish() {
        adjustByteCounts();
        long j10 = this.byteCount1 << 3;
        long j11 = this.byteCount2;
        byte b10 = ISOFileInfo.DATA_BYTES1;
        while (true) {
            update(b10);
            if (this.xBufOff == 0) {
                processLength(j10, j11);
                processBlock();
                return;
            }
            b10 = 0;
        }
    }

    @Override // org.bouncycastle.crypto.ExtendedDigest
    public int getByteLength() {
        return 128;
    }

    public int getEncodedStateSize() {
        return (this.wOff * 8) + 96;
    }

    public void populateState(byte[] bArr) {
        System.arraycopy(this.xBuf, 0, bArr, 0, this.xBufOff);
        Pack.intToBigEndian(this.xBufOff, bArr, 8);
        Pack.longToBigEndian(this.byteCount1, bArr, 12);
        Pack.longToBigEndian(this.byteCount2, bArr, 20);
        Pack.longToBigEndian(this.H1, bArr, 28);
        Pack.longToBigEndian(this.H2, bArr, 36);
        Pack.longToBigEndian(this.H3, bArr, 44);
        Pack.longToBigEndian(this.H4, bArr, 52);
        Pack.longToBigEndian(this.H5, bArr, 60);
        Pack.longToBigEndian(this.H6, bArr, 68);
        Pack.longToBigEndian(this.H7, bArr, 76);
        Pack.longToBigEndian(this.H8, bArr, 84);
        Pack.intToBigEndian(this.wOff, bArr, 92);
        for (int r22 = 0; r22 < this.wOff; r22++) {
            Pack.longToBigEndian(this.W[r22], bArr, (r22 * 8) + 96);
        }
    }

    public void processBlock() {
        adjustByteCounts();
        for (int r02 = 16; r02 <= 79; r02++) {
            long[] jArr = this.W;
            long jSigma1 = Sigma1(jArr[r02 - 2]);
            long[] jArr2 = this.W;
            jArr[r02] = jSigma1 + jArr2[r02 - 7] + Sigma0(jArr2[r02 - 15]) + this.W[r02 - 16];
        }
        long j10 = this.H1;
        long j11 = this.H2;
        long j12 = this.H3;
        long j13 = this.H4;
        long j14 = this.H5;
        long j15 = this.H6;
        long j16 = this.H7;
        long j17 = j15;
        long j18 = j13;
        int r24 = 0;
        long j19 = j11;
        long j20 = j12;
        long j21 = j14;
        int r32 = 0;
        long j22 = this.H8;
        long j23 = j10;
        long j24 = j16;
        while (r32 < 10) {
            long j25 = j21;
            long jSum1 = Sum1(j21) + Ch(j21, j17, j24);
            long[] jArr3 = K;
            int r31 = r24 + 1;
            long j26 = jSum1 + jArr3[r24] + this.W[r24] + j22;
            long j27 = j18 + j26;
            long jSum0 = Sum0(j23) + Maj(j23, j19, j20) + j26;
            int r12 = r31 + 1;
            long jSum12 = Sum1(j27) + Ch(j27, j25, j17) + jArr3[r31] + this.W[r31] + j24;
            long j28 = j20 + jSum12;
            long j29 = j23;
            long jSum02 = Sum0(jSum0) + Maj(jSum0, j23, j19) + jSum12;
            int r20 = r12 + 1;
            long jSum13 = Sum1(j28) + Ch(j28, j27, j25) + jArr3[r12] + this.W[r12] + j17;
            long j30 = j19 + jSum13;
            long jSum03 = Sum0(jSum02) + Maj(jSum02, jSum0, j29) + jSum13;
            int r14 = r20 + 1;
            long jSum14 = Sum1(j30) + Ch(j30, j28, j27) + jArr3[r20] + this.W[r20] + j25;
            long j31 = j29 + jSum14;
            long jSum04 = Sum0(jSum03) + Maj(jSum03, jSum02, jSum0) + jSum14;
            int r202 = r14 + 1;
            long jSum15 = Sum1(j31) + Ch(j31, j30, j28) + jArr3[r14] + this.W[r14] + j27;
            long j32 = jSum0 + jSum15;
            long jSum05 = Sum0(jSum04) + Maj(jSum04, jSum03, jSum02) + jSum15;
            int r23 = r202 + 1;
            long jSum16 = Sum1(j32) + Ch(j32, j31, j30) + jArr3[r202] + this.W[r202] + j28;
            long j33 = jSum02 + jSum16;
            long jSum06 = Sum0(jSum05) + Maj(jSum05, jSum04, jSum03) + jSum16;
            int r203 = r23 + 1;
            long jSum17 = Sum1(j33) + Ch(j33, j32, j31) + jArr3[r23] + this.W[r23] + j30;
            long j34 = jSum03 + jSum17;
            long jSum07 = Sum0(jSum06) + Maj(jSum06, jSum05, jSum04) + jSum17;
            long jSum18 = Sum1(j34) + Ch(j34, j33, j32) + jArr3[r203] + this.W[r203] + j31;
            long j35 = jSum04 + jSum18;
            long jSum08 = Sum0(jSum07) + Maj(jSum07, jSum06, jSum05) + jSum18;
            r32++;
            j20 = jSum06;
            r24 = r203 + 1;
            j21 = j35;
            j24 = j33;
            j17 = j34;
            j18 = jSum05;
            j22 = j32;
            j19 = jSum07;
            j23 = jSum08;
        }
        this.H1 += j23;
        this.H2 += j19;
        this.H3 += j20;
        this.H4 += j18;
        this.H5 += j21;
        this.H6 += j17;
        this.H7 += j24;
        this.H8 += j22;
        this.wOff = 0;
        for (int r10 = 0; r10 < 16; r10++) {
            this.W[r10] = 0;
        }
    }

    public void processLength(long j10, long j11) {
        if (this.wOff > 14) {
            processBlock();
        }
        long[] jArr = this.W;
        jArr[14] = j11;
        jArr[15] = j10;
    }

    public void processWord(byte[] bArr, int r42) {
        this.W[this.wOff] = Pack.bigEndianToLong(bArr, r42);
        int r32 = this.wOff + 1;
        this.wOff = r32;
        if (r32 == 16) {
            processBlock();
        }
    }

    @Override // org.bouncycastle.crypto.Digest
    public void reset() {
        this.byteCount1 = 0L;
        this.byteCount2 = 0L;
        int r22 = 0;
        this.xBufOff = 0;
        int r32 = 0;
        while (true) {
            byte[] bArr = this.xBuf;
            if (r32 >= bArr.length) {
                break;
            }
            bArr[r32] = 0;
            r32++;
        }
        this.wOff = 0;
        while (true) {
            long[] jArr = this.W;
            if (r22 == jArr.length) {
                return;
            }
            jArr[r22] = 0;
            r22++;
        }
    }

    public void restoreState(byte[] bArr) {
        int r02 = Pack.bigEndianToInt(bArr, 8);
        this.xBufOff = r02;
        System.arraycopy(bArr, 0, this.xBuf, 0, r02);
        this.byteCount1 = Pack.bigEndianToLong(bArr, 12);
        this.byteCount2 = Pack.bigEndianToLong(bArr, 20);
        this.H1 = Pack.bigEndianToLong(bArr, 28);
        this.H2 = Pack.bigEndianToLong(bArr, 36);
        this.H3 = Pack.bigEndianToLong(bArr, 44);
        this.H4 = Pack.bigEndianToLong(bArr, 52);
        this.H5 = Pack.bigEndianToLong(bArr, 60);
        this.H6 = Pack.bigEndianToLong(bArr, 68);
        this.H7 = Pack.bigEndianToLong(bArr, 76);
        this.H8 = Pack.bigEndianToLong(bArr, 84);
        this.wOff = Pack.bigEndianToInt(bArr, 92);
        for (int r22 = 0; r22 < this.wOff; r22++) {
            this.W[r22] = Pack.bigEndianToLong(bArr, (r22 * 8) + 96);
        }
    }

    @Override // org.bouncycastle.crypto.Digest
    public void update(byte b10) {
        byte[] bArr = this.xBuf;
        int r12 = this.xBufOff;
        int r22 = r12 + 1;
        this.xBufOff = r22;
        bArr[r12] = b10;
        if (r22 == bArr.length) {
            processWord(bArr, 0);
            this.xBufOff = 0;
        }
        this.byteCount1++;
    }

    @Override // org.bouncycastle.crypto.Digest
    public void update(byte[] bArr, int r72, int r82) {
        while (this.xBufOff != 0 && r82 > 0) {
            update(bArr[r72]);
            r72++;
            r82--;
        }
        while (r82 >= this.xBuf.length) {
            processWord(bArr, r72);
            byte[] bArr2 = this.xBuf;
            r72 += bArr2.length;
            r82 -= bArr2.length;
            this.byteCount1 += bArr2.length;
        }
        while (r82 > 0) {
            update(bArr[r72]);
            r72++;
            r82--;
        }
    }
}
