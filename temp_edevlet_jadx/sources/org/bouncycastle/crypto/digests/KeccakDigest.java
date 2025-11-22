package org.bouncycastle.crypto.digests;

import org.bouncycastle.crypto.CryptoServiceProperties;
import org.bouncycastle.crypto.CryptoServicePurpose;
import org.bouncycastle.crypto.CryptoServicesRegistrar;
import org.bouncycastle.crypto.ExtendedDigest;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.Pack;

/* loaded from: classes2.dex */
public class KeccakDigest implements ExtendedDigest {
    private static long[] KeccakRoundConstants = {1, 32898, -9223372036854742902L, -9223372034707259392L, 32907, 2147483649L, -9223372034707259263L, -9223372036854743031L, 138, 136, 2147516425L, 2147483658L, 2147516555L, -9223372036854775669L, -9223372036854742903L, -9223372036854743037L, -9223372036854743038L, -9223372036854775680L, 32778, -9223372034707292150L, -9223372034707259263L, -9223372036854742912L, 2147483649L, -9223372034707259384L};
    protected int bitsInQueue;
    protected byte[] dataQueue;
    protected int fixedOutputLength;
    protected final CryptoServicePurpose purpose;
    protected int rate;
    protected boolean squeezing;
    protected long[] state;

    public KeccakDigest() {
        this(288, CryptoServicePurpose.ANY);
    }

    public KeccakDigest(int r22) {
        this(r22, CryptoServicePurpose.ANY);
    }

    public KeccakDigest(int r22, CryptoServicePurpose cryptoServicePurpose) {
        this.state = new long[25];
        this.dataQueue = new byte[192];
        this.purpose = cryptoServicePurpose;
        init(r22);
        CryptoServicesRegistrar.checkConstraints(cryptoServiceProperties());
    }

    public KeccakDigest(CryptoServicePurpose cryptoServicePurpose) {
        this(288, cryptoServicePurpose);
    }

    public KeccakDigest(KeccakDigest keccakDigest) {
        long[] jArr = new long[25];
        this.state = jArr;
        this.dataQueue = new byte[192];
        this.purpose = keccakDigest.purpose;
        long[] jArr2 = keccakDigest.state;
        System.arraycopy(jArr2, 0, jArr, 0, jArr2.length);
        byte[] bArr = keccakDigest.dataQueue;
        System.arraycopy(bArr, 0, this.dataQueue, 0, bArr.length);
        this.rate = keccakDigest.rate;
        this.bitsInQueue = keccakDigest.bitsInQueue;
        this.fixedOutputLength = keccakDigest.fixedOutputLength;
        this.squeezing = keccakDigest.squeezing;
        CryptoServicesRegistrar.checkConstraints(cryptoServiceProperties());
    }

    private void KeccakAbsorb(byte[] bArr, int r92) {
        int r02 = this.rate >>> 6;
        for (int r12 = 0; r12 < r02; r12++) {
            long[] jArr = this.state;
            jArr[r12] = jArr[r12] ^ Pack.littleEndianToLong(bArr, r92);
            r92 += 8;
        }
        KeccakPermutation();
    }

    private void KeccakExtract() {
        KeccakPermutation();
        Pack.longToLittleEndian(this.state, 0, this.rate >>> 6, this.dataQueue, 0);
        this.bitsInQueue = this.rate;
    }

    private void KeccakPermutation() {
        long[] jArr = this.state;
        int r22 = 0;
        long j10 = jArr[0];
        char c10 = 1;
        long j11 = jArr[1];
        long j12 = jArr[2];
        char c11 = 3;
        long j13 = jArr[3];
        long j14 = jArr[4];
        long j15 = jArr[5];
        long j16 = jArr[6];
        long j17 = jArr[7];
        long j18 = jArr[8];
        long j19 = jArr[9];
        long j20 = jArr[10];
        long j21 = jArr[11];
        long j22 = jArr[12];
        long j23 = jArr[13];
        long j24 = jArr[14];
        long j25 = jArr[15];
        long j26 = jArr[16];
        long j27 = jArr[17];
        long j28 = jArr[18];
        long j29 = jArr[19];
        long j30 = jArr[20];
        long j31 = jArr[21];
        long j32 = jArr[22];
        long j33 = jArr[23];
        int r14 = 24;
        long j34 = jArr[24];
        while (r22 < r14) {
            long j35 = (((j10 ^ j15) ^ j20) ^ j25) ^ j30;
            long j36 = (((j11 ^ j16) ^ j21) ^ j26) ^ j31;
            long j37 = (((j12 ^ j17) ^ j22) ^ j27) ^ j32;
            long j38 = (((j13 ^ j18) ^ j23) ^ j28) ^ j33;
            long j39 = (((j14 ^ j19) ^ j24) ^ j29) ^ j34;
            long j40 = ((j36 << c10) | (j36 >>> (-1))) ^ j39;
            long j41 = ((j37 << c10) | (j37 >>> (-1))) ^ j35;
            long j42 = ((j38 << c10) | (j38 >>> (-1))) ^ j36;
            long j43 = ((j39 << c10) | (j39 >>> (-1))) ^ j37;
            long j44 = ((j35 << c10) | (j35 >>> (-1))) ^ j38;
            long j45 = j10 ^ j40;
            long j46 = j15 ^ j40;
            long j47 = j20 ^ j40;
            long j48 = j25 ^ j40;
            long j49 = j30 ^ j40;
            long j50 = j11 ^ j41;
            long j51 = j16 ^ j41;
            long j52 = j21 ^ j41;
            long j53 = j26 ^ j41;
            long j54 = j31 ^ j41;
            long j55 = j12 ^ j42;
            long j56 = j17 ^ j42;
            long j57 = j22 ^ j42;
            long j58 = j27 ^ j42;
            long j59 = j32 ^ j42;
            long j60 = j13 ^ j43;
            long j61 = j18 ^ j43;
            long j62 = j23 ^ j43;
            long j63 = j28 ^ j43;
            long j64 = j33 ^ j43;
            long j65 = j14 ^ j44;
            long j66 = j19 ^ j44;
            long j67 = j24 ^ j44;
            long j68 = j29 ^ j44;
            long j69 = j34 ^ j44;
            long j70 = (j50 << c10) | (j50 >>> 63);
            long j71 = (j51 << 44) | (j51 >>> 20);
            long j72 = (j66 << 20) | (j66 >>> 44);
            long j73 = (j59 << 61) | (j59 >>> c11);
            long j74 = (j67 << 39) | (j67 >>> 25);
            long j75 = (j49 << 18) | (j49 >>> 46);
            long j76 = (j55 << 62) | (j55 >>> 2);
            long j77 = (j57 << 43) | (j57 >>> 21);
            long j78 = (j62 << 25) | (j62 >>> 39);
            long j79 = (j68 << 8) | (j68 >>> 56);
            long j80 = (j64 << 56) | (j64 >>> 8);
            long j81 = (j48 << 41) | (j48 >>> 23);
            long j82 = (j65 << 27) | (j65 >>> 37);
            long j83 = (j69 << 14) | (j69 >>> 50);
            long j84 = (j54 << 2) | (j54 >>> 62);
            long j85 = (j61 << 55) | (j61 >>> 9);
            long j86 = (j53 << 45) | (j53 >>> 19);
            long j87 = (j46 << 36) | (j46 >>> 28);
            long j88 = (j60 << 28) | (j60 >>> 36);
            long j89 = (j63 << 21) | (j63 >>> 43);
            long j90 = (j58 << 15) | (j58 >>> 49);
            long j91 = (j52 << 10) | (j52 >>> 54);
            long j92 = (j56 << 6) | (j56 >>> 58);
            long j93 = (j47 << 3) | (j47 >>> 61);
            long j94 = ((~j71) & j77) ^ j45;
            long j95 = ((~j77) & j89) ^ j71;
            j12 = j77 ^ ((~j89) & j83);
            j13 = j89 ^ ((~j83) & j45);
            long j96 = j83 ^ ((~j45) & j71);
            long j97 = j88 ^ ((~j72) & j93);
            long j98 = ((~j93) & j86) ^ j72;
            long j99 = ((~j86) & j73) ^ j93;
            long j100 = j86 ^ ((~j73) & j88);
            long j101 = ((~j88) & j72) ^ j73;
            j20 = j70 ^ ((~j92) & j78);
            long j102 = ((~j78) & j79) ^ j92;
            long j103 = ((~j79) & j75) ^ j78;
            long j104 = j79 ^ ((~j75) & j70);
            long j105 = ((~j70) & j92) ^ j75;
            long j106 = j82 ^ ((~j87) & j91);
            long j107 = ((~j91) & j90) ^ j87;
            long j108 = j91 ^ ((~j90) & j80);
            long j109 = ((~j80) & j82) ^ j90;
            long j110 = ((~j82) & j87) ^ j80;
            long j111 = j76 ^ ((~j85) & j74);
            long j112 = ((~j74) & j81) ^ j85;
            j30 = j111;
            long j113 = j74 ^ ((~j81) & j84);
            long j114 = ((~j84) & j76) ^ j81;
            long j115 = ((~j76) & j85) ^ j84;
            long j116 = j94 ^ KeccakRoundConstants[r22];
            r22++;
            j16 = j98;
            j22 = j103;
            j21 = j102;
            j23 = j104;
            j31 = j112;
            c11 = 3;
            j33 = j114;
            j32 = j113;
            j19 = j101;
            jArr = jArr;
            j29 = j110;
            j24 = j105;
            j17 = j99;
            j18 = j100;
            j27 = j108;
            j25 = j106;
            j14 = j96;
            j15 = j97;
            r14 = 24;
            j28 = j109;
            j26 = j107;
            c10 = 1;
            j11 = j95;
            j34 = j115;
            j10 = j116;
        }
        long[] jArr2 = jArr;
        jArr2[0] = j10;
        jArr2[1] = j11;
        jArr2[2] = j12;
        jArr2[3] = j13;
        jArr2[4] = j14;
        jArr2[5] = j15;
        jArr2[6] = j16;
        jArr2[7] = j17;
        jArr2[8] = j18;
        jArr2[9] = j19;
        jArr2[10] = j20;
        jArr2[11] = j21;
        jArr2[12] = j22;
        jArr2[13] = j23;
        jArr2[14] = j24;
        jArr2[15] = j25;
        jArr2[16] = j26;
        jArr2[17] = j27;
        jArr2[18] = j28;
        jArr2[19] = j29;
        jArr2[20] = j30;
        jArr2[21] = j31;
        jArr2[22] = j32;
        jArr2[23] = j33;
        jArr2[24] = j34;
    }

    private void init(int r22) {
        if (r22 != 128 && r22 != 224 && r22 != 256 && r22 != 288 && r22 != 384 && r22 != 512) {
            throw new IllegalArgumentException("bitLength must be one of 128, 224, 256, 288, 384, or 512.");
        }
        initSponge(1600 - (r22 << 1));
    }

    private void initSponge(int r72) {
        if (r72 <= 0 || r72 >= 1600 || r72 % 64 != 0) {
            throw new IllegalStateException("invalid rate value");
        }
        this.rate = r72;
        int r22 = 0;
        while (true) {
            long[] jArr = this.state;
            if (r22 >= jArr.length) {
                Arrays.fill(this.dataQueue, (byte) 0);
                this.bitsInQueue = 0;
                this.squeezing = false;
                this.fixedOutputLength = (1600 - r72) / 2;
                return;
            }
            jArr[r22] = 0;
            r22++;
        }
    }

    private void padAndSwitchToSqueezingPhase() {
        byte[] bArr = this.dataQueue;
        int r12 = this.bitsInQueue;
        int r22 = r12 >>> 3;
        bArr[r22] = (byte) (bArr[r22] | ((byte) (1 << (r12 & 7))));
        int r13 = r12 + 1;
        this.bitsInQueue = r13;
        if (r13 == this.rate) {
            KeccakAbsorb(bArr, 0);
        } else {
            int r02 = r13 >>> 6;
            int r14 = r13 & 63;
            int r42 = 0;
            for (int r23 = 0; r23 < r02; r23++) {
                long[] jArr = this.state;
                jArr[r23] = jArr[r23] ^ Pack.littleEndianToLong(this.dataQueue, r42);
                r42 += 8;
            }
            if (r14 > 0) {
                long[] jArr2 = this.state;
                jArr2[r02] = (((1 << r14) - 1) & Pack.littleEndianToLong(this.dataQueue, r42)) ^ jArr2[r02];
            }
        }
        long[] jArr3 = this.state;
        int r15 = (this.rate - 1) >>> 6;
        jArr3[r15] = jArr3[r15] ^ Long.MIN_VALUE;
        this.bitsInQueue = 0;
        this.squeezing = true;
    }

    public void absorb(byte b10) {
        int r02 = this.bitsInQueue;
        if (r02 % 8 != 0) {
            throw new IllegalStateException("attempt to absorb with odd length queue");
        }
        if (this.squeezing) {
            throw new IllegalStateException("attempt to absorb while squeezing");
        }
        byte[] bArr = this.dataQueue;
        bArr[r02 >>> 3] = b10;
        int r03 = r02 + 8;
        this.bitsInQueue = r03;
        if (r03 == this.rate) {
            KeccakAbsorb(bArr, 0);
            this.bitsInQueue = 0;
        }
    }

    public void absorb(byte[] bArr, int r72, int r82) {
        int r22;
        int r02;
        int r6;
        int r03 = this.bitsInQueue;
        if (r03 % 8 != 0) {
            throw new IllegalStateException("attempt to absorb with odd length queue");
        }
        if (this.squeezing) {
            throw new IllegalStateException("attempt to absorb while squeezing");
        }
        int r04 = r03 >>> 3;
        int r12 = this.rate >>> 3;
        int r23 = r12 - r04;
        if (r82 < r23) {
            System.arraycopy(bArr, r72, this.dataQueue, r04, r82);
            r6 = this.bitsInQueue + (r82 << 3);
        } else {
            if (r04 > 0) {
                System.arraycopy(bArr, r72, this.dataQueue, r04, r23);
                r22 = r23 + 0;
                KeccakAbsorb(this.dataQueue, 0);
            } else {
                r22 = 0;
            }
            while (true) {
                r02 = r82 - r22;
                if (r02 < r12) {
                    break;
                }
                KeccakAbsorb(bArr, r72 + r22);
                r22 += r12;
            }
            System.arraycopy(bArr, r72 + r22, this.dataQueue, 0, r02);
            r6 = r02 << 3;
        }
        this.bitsInQueue = r6;
    }

    public void absorbBits(int r52, int r6) {
        if (r6 < 1 || r6 > 7) {
            throw new IllegalArgumentException("'bits' must be in the range 1 to 7");
        }
        int r12 = this.bitsInQueue;
        if (r12 % 8 != 0) {
            throw new IllegalStateException("attempt to absorb with odd length queue");
        }
        if (this.squeezing) {
            throw new IllegalStateException("attempt to absorb while squeezing");
        }
        this.dataQueue[r12 >>> 3] = (byte) (r52 & ((1 << r6) - 1));
        this.bitsInQueue = r12 + r6;
    }

    public CryptoServiceProperties cryptoServiceProperties() {
        return Utils.getDefaultProperties(this, getDigestSize() * 8, this.purpose);
    }

    @Override // org.bouncycastle.crypto.Digest
    public int doFinal(byte[] bArr, int r42) {
        squeeze(bArr, r42, this.fixedOutputLength);
        reset();
        return getDigestSize();
    }

    public int doFinal(byte[] bArr, int r22, byte b10, int r42) {
        if (r42 > 0) {
            absorbBits(b10, r42);
        }
        squeeze(bArr, r22, this.fixedOutputLength);
        reset();
        return getDigestSize();
    }

    @Override // org.bouncycastle.crypto.Digest
    public String getAlgorithmName() {
        return "Keccak-" + this.fixedOutputLength;
    }

    @Override // org.bouncycastle.crypto.ExtendedDigest
    public int getByteLength() {
        return this.rate / 8;
    }

    @Override // org.bouncycastle.crypto.Digest
    public int getDigestSize() {
        return this.fixedOutputLength / 8;
    }

    @Override // org.bouncycastle.crypto.Digest
    public void reset() {
        init(this.fixedOutputLength);
    }

    public void squeeze(byte[] bArr, int r11, long j10) {
        if (!this.squeezing) {
            padAndSwitchToSqueezingPhase();
        }
        long j11 = 0;
        if (j10 % 8 != 0) {
            throw new IllegalStateException("outputLength not a multiple of 8");
        }
        while (j11 < j10) {
            if (this.bitsInQueue == 0) {
                KeccakExtract();
            }
            int r32 = (int) Math.min(this.bitsInQueue, j10 - j11);
            System.arraycopy(this.dataQueue, (this.rate - this.bitsInQueue) / 8, bArr, ((int) (j11 / 8)) + r11, r32 / 8);
            this.bitsInQueue -= r32;
            j11 += r32;
        }
    }

    @Override // org.bouncycastle.crypto.Digest
    public void update(byte b10) {
        absorb(b10);
    }

    @Override // org.bouncycastle.crypto.Digest
    public void update(byte[] bArr, int r22, int r32) {
        absorb(bArr, r22, r32);
    }
}
