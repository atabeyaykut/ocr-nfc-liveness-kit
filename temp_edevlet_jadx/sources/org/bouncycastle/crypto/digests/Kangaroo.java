package org.bouncycastle.crypto.digests;

import net.sf.scuba.smartcards.ISOFileInfo;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.CryptoServicePurpose;
import org.bouncycastle.crypto.CryptoServicesRegistrar;
import org.bouncycastle.crypto.ExtendedDigest;
import org.bouncycastle.crypto.Xof;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.Pack;
import org.jmrtd.PassportService;

/* loaded from: classes2.dex */
public final class Kangaroo {
    private static final int DIGESTLEN = 32;

    public static abstract class KangarooBase implements ExtendedDigest, Xof {
        private static final int BLKSIZE = 8192;
        private final CryptoServicePurpose purpose;
        private final byte[] singleByte = new byte[1];
        private boolean squeezing;
        private final int theChainLen;
        private int theCurrNode;
        private final KangarooSponge theLeaf;
        private byte[] thePersonal;
        private int theProcessed;
        private final KangarooSponge theTree;
        private static final byte[] SINGLE = {7};
        private static final byte[] INTERMEDIATE = {PassportService.SFI_DG11};
        private static final byte[] FINAL = {-1, -1, 6};
        private static final byte[] FIRST = {3, 0, 0, 0, 0, 0, 0, 0};

        public KangarooBase(int r12, int r22, int r32, CryptoServicePurpose cryptoServicePurpose) {
            this.theTree = new KangarooSponge(r12, r22);
            this.theLeaf = new KangarooSponge(r12, r22);
            this.theChainLen = r12 >> 2;
            buildPersonal(null);
            this.purpose = cryptoServicePurpose;
            CryptoServicesRegistrar.checkConstraints(Utils.getDefaultProperties(this, r12, cryptoServicePurpose));
        }

        private void buildPersonal(byte[] bArr) {
            int length = bArr == null ? 0 : bArr.length;
            byte[] bArrLengthEncode = lengthEncode(length);
            byte[] bArrCopyOf = bArr == null ? new byte[bArrLengthEncode.length + length] : Arrays.copyOf(bArr, bArrLengthEncode.length + length);
            this.thePersonal = bArrCopyOf;
            System.arraycopy(bArrLengthEncode, 0, bArrCopyOf, length, bArrLengthEncode.length);
        }

        private static byte[] lengthEncode(long j10) {
            byte b10;
            if (j10 != 0) {
                b10 = 1;
                long j11 = j10;
                while (true) {
                    j11 >>= 8;
                    if (j11 == 0) {
                        break;
                    }
                    b10 = (byte) (b10 + 1);
                }
            } else {
                b10 = 0;
            }
            byte[] bArr = new byte[b10 + 1];
            bArr[b10] = b10;
            for (int r22 = 0; r22 < b10; r22++) {
                bArr[r22] = (byte) (j10 >> (((b10 - r22) - 1) * 8));
            }
            return bArr;
        }

        private void processData(byte[] bArr, int r72, int r82) {
            if (this.squeezing) {
                throw new IllegalStateException("attempt to absorb while squeezing");
            }
            KangarooSponge kangarooSponge = this.theCurrNode == 0 ? this.theTree : this.theLeaf;
            int r12 = 8192 - this.theProcessed;
            if (r12 >= r82) {
                kangarooSponge.absorb(bArr, r72, r82);
                this.theProcessed += r82;
                return;
            }
            if (r12 > 0) {
                kangarooSponge.absorb(bArr, r72, r12);
                this.theProcessed += r12;
            }
            while (r12 < r82) {
                if (this.theProcessed == 8192) {
                    switchLeaf(true);
                }
                int r02 = Math.min(r82 - r12, 8192);
                this.theLeaf.absorb(bArr, r72 + r12, r02);
                this.theProcessed += r02;
                r12 += r02;
            }
        }

        private void switchFinal() {
            switchLeaf(false);
            byte[] bArrLengthEncode = lengthEncode(this.theCurrNode);
            this.theTree.absorb(bArrLengthEncode, 0, bArrLengthEncode.length);
            KangarooSponge kangarooSponge = this.theTree;
            byte[] bArr = FINAL;
            kangarooSponge.absorb(bArr, 0, bArr.length);
            this.theTree.padAndSwitchToSqueezingPhase();
        }

        private void switchLeaf(boolean z10) {
            if (this.theCurrNode == 0) {
                KangarooSponge kangarooSponge = this.theTree;
                byte[] bArr = FIRST;
                kangarooSponge.absorb(bArr, 0, bArr.length);
            } else {
                KangarooSponge kangarooSponge2 = this.theLeaf;
                byte[] bArr2 = INTERMEDIATE;
                kangarooSponge2.absorb(bArr2, 0, bArr2.length);
                int r02 = this.theChainLen;
                byte[] bArr3 = new byte[r02];
                this.theLeaf.squeeze(bArr3, 0, r02);
                this.theTree.absorb(bArr3, 0, this.theChainLen);
                this.theLeaf.initSponge();
            }
            if (z10) {
                this.theCurrNode++;
            }
            this.theProcessed = 0;
        }

        private void switchSingle() {
            this.theTree.absorb(SINGLE, 0, 1);
            this.theTree.padAndSwitchToSqueezingPhase();
        }

        private void switchToSqueezing() {
            byte[] bArr = this.thePersonal;
            processData(bArr, 0, bArr.length);
            if (this.theCurrNode == 0) {
                switchSingle();
            } else {
                switchFinal();
            }
        }

        @Override // org.bouncycastle.crypto.Digest
        public int doFinal(byte[] bArr, int r32) {
            return doFinal(bArr, r32, getDigestSize());
        }

        @Override // org.bouncycastle.crypto.Xof
        public int doFinal(byte[] bArr, int r32, int r42) {
            if (this.squeezing) {
                throw new IllegalStateException("Already outputting");
            }
            int r22 = doOutput(bArr, r32, r42);
            reset();
            return r22;
        }

        @Override // org.bouncycastle.crypto.Xof
        public int doOutput(byte[] bArr, int r32, int r42) {
            if (!this.squeezing) {
                switchToSqueezing();
            }
            if (r42 < 0) {
                throw new IllegalArgumentException("Invalid output length");
            }
            this.theTree.squeeze(bArr, r32, r42);
            return r42;
        }

        @Override // org.bouncycastle.crypto.ExtendedDigest
        public int getByteLength() {
            return this.theTree.theRateBytes;
        }

        @Override // org.bouncycastle.crypto.Digest
        public int getDigestSize() {
            return this.theChainLen >> 1;
        }

        public void init(KangarooParameters kangarooParameters) {
            buildPersonal(kangarooParameters.getPersonalisation());
            reset();
        }

        @Override // org.bouncycastle.crypto.Digest
        public void reset() {
            this.theTree.initSponge();
            this.theLeaf.initSponge();
            this.theCurrNode = 0;
            this.theProcessed = 0;
            this.squeezing = false;
        }

        @Override // org.bouncycastle.crypto.Digest
        public void update(byte b10) {
            byte[] bArr = this.singleByte;
            bArr[0] = b10;
            update(bArr, 0, 1);
        }

        @Override // org.bouncycastle.crypto.Digest
        public void update(byte[] bArr, int r22, int r32) {
            processData(bArr, r22, r32);
        }
    }

    public static class KangarooParameters implements CipherParameters {
        private byte[] thePersonal;

        public static class Builder {
            private byte[] thePersonal;

            public KangarooParameters build() {
                KangarooParameters kangarooParameters = new KangarooParameters();
                byte[] bArr = this.thePersonal;
                if (bArr != null) {
                    kangarooParameters.thePersonal = bArr;
                }
                return kangarooParameters;
            }

            public Builder setPersonalisation(byte[] bArr) {
                this.thePersonal = Arrays.clone(bArr);
                return this;
            }
        }

        public byte[] getPersonalisation() {
            return Arrays.clone(this.thePersonal);
        }
    }

    public static class KangarooSponge {
        private static long[] KeccakRoundConstants = {1, 32898, -9223372036854742902L, -9223372034707259392L, 32907, 2147483649L, -9223372034707259263L, -9223372036854743031L, 138, 136, 2147516425L, 2147483658L, 2147516555L, -9223372036854775669L, -9223372036854742903L, -9223372036854743037L, -9223372036854743038L, -9223372036854775680L, 32778, -9223372034707292150L, -9223372034707259263L, -9223372036854742912L, 2147483649L, -9223372034707259384L};
        private int bytesInQueue;
        private boolean squeezing;
        private final byte[] theQueue;
        private final int theRateBytes;
        private final int theRounds;
        private final long[] theState = new long[25];

        public KangarooSponge(int r22, int r32) {
            int r23 = (1600 - (r22 << 1)) >> 3;
            this.theRateBytes = r23;
            this.theRounds = r32;
            this.theQueue = new byte[r23];
            initSponge();
        }

        private void KangarooAbsorb(byte[] bArr, int r92) {
            int r02 = this.theRateBytes >> 3;
            for (int r12 = 0; r12 < r02; r12++) {
                long[] jArr = this.theState;
                jArr[r12] = jArr[r12] ^ Pack.littleEndianToLong(bArr, r92);
                r92 += 8;
            }
            KangarooPermutation();
        }

        private void KangarooExtract() {
            Pack.longToLittleEndian(this.theState, 0, this.theRateBytes >> 3, this.theQueue, 0);
        }

        private void KangarooPermutation() {
            KangarooSponge kangarooSponge = this;
            long[] jArr = kangarooSponge.theState;
            long j10 = jArr[0];
            char c10 = 1;
            long j11 = jArr[1];
            long j12 = jArr[2];
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
            long j34 = jArr[24];
            int length = KeccakRoundConstants.length - kangarooSponge.theRounds;
            int r22 = 0;
            while (r22 < kangarooSponge.theRounds) {
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
                long j73 = (j59 << 61) | (j59 >>> 3);
                int r80 = length;
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
                long j96 = ((~j83) & j45) ^ j89;
                long j97 = ((~j45) & j71) ^ j83;
                long j98 = j88 ^ ((~j72) & j93);
                long j99 = ((~j93) & j86) ^ j72;
                long j100 = ((~j86) & j73) ^ j93;
                long j101 = j86 ^ ((~j73) & j88);
                long j102 = ((~j88) & j72) ^ j73;
                j20 = j70 ^ ((~j92) & j78);
                long j103 = ((~j78) & j79) ^ j92;
                long j104 = ((~j79) & j75) ^ j78;
                long j105 = j79 ^ ((~j75) & j70);
                long j106 = ((~j70) & j92) ^ j75;
                long j107 = j82 ^ ((~j87) & j91);
                long j108 = ((~j91) & j90) ^ j87;
                long j109 = j91 ^ ((~j90) & j80);
                long j110 = ((~j80) & j82) ^ j90;
                long j111 = ((~j82) & j87) ^ j80;
                j30 = j76 ^ ((~j85) & j74);
                long j112 = ((~j74) & j81) ^ j85;
                long j113 = ((~j81) & j84) ^ j74;
                long j114 = j81 ^ ((~j84) & j76);
                long j115 = ((~j76) & j85) ^ j84;
                long j116 = j94 ^ KeccakRoundConstants[r80 + r22];
                r22++;
                j15 = j98;
                j22 = j104;
                j21 = j103;
                j23 = j105;
                j32 = j113;
                j31 = j112;
                j18 = j101;
                j26 = j108;
                j34 = j115;
                j10 = j116;
                j27 = j109;
                j11 = j95;
                c10 = 1;
                j33 = j114;
                j25 = j107;
                jArr = jArr;
                kangarooSponge = this;
                length = r80;
                j13 = j96;
                j14 = j97;
                j28 = j110;
                j24 = j106;
                j17 = j100;
                j16 = j99;
                j19 = j102;
                j29 = j111;
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

        /* JADX INFO: Access modifiers changed from: private */
        public void absorb(byte[] bArr, int r82, int r92) {
            int r22;
            if (this.squeezing) {
                throw new IllegalStateException("attempt to absorb while squeezing");
            }
            int r12 = 0;
            while (r12 < r92) {
                int r23 = this.bytesInQueue;
                if (r23 != 0 || r12 > r92 - this.theRateBytes) {
                    int r24 = Math.min(this.theRateBytes - r23, r92 - r12);
                    System.arraycopy(bArr, r82 + r12, this.theQueue, this.bytesInQueue, r24);
                    int r32 = this.bytesInQueue + r24;
                    this.bytesInQueue = r32;
                    r12 += r24;
                    if (r32 == this.theRateBytes) {
                        KangarooAbsorb(this.theQueue, 0);
                        this.bytesInQueue = 0;
                    }
                } else {
                    do {
                        KangarooAbsorb(bArr, r82 + r12);
                        r22 = this.theRateBytes;
                        r12 += r22;
                    } while (r12 <= r92 - r22);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void initSponge() {
            Arrays.fill(this.theState, 0L);
            Arrays.fill(this.theQueue, (byte) 0);
            this.bytesInQueue = 0;
            this.squeezing = false;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void padAndSwitchToSqueezingPhase() {
            int r02 = this.bytesInQueue;
            while (true) {
                int r12 = this.theRateBytes;
                if (r02 >= r12) {
                    byte[] bArr = this.theQueue;
                    int r13 = r12 - 1;
                    bArr[r13] = (byte) (bArr[r13] ^ ISOFileInfo.DATA_BYTES1);
                    KangarooAbsorb(bArr, 0);
                    KangarooExtract();
                    this.bytesInQueue = this.theRateBytes;
                    this.squeezing = true;
                    return;
                }
                this.theQueue[r02] = 0;
                r02++;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void squeeze(byte[] bArr, int r72, int r82) {
            if (!this.squeezing) {
                padAndSwitchToSqueezingPhase();
            }
            int r02 = 0;
            while (r02 < r82) {
                if (this.bytesInQueue == 0) {
                    KangarooPermutation();
                    KangarooExtract();
                    this.bytesInQueue = this.theRateBytes;
                }
                int r12 = Math.min(this.bytesInQueue, r82 - r02);
                System.arraycopy(this.theQueue, this.theRateBytes - this.bytesInQueue, bArr, r72 + r02, r12);
                this.bytesInQueue -= r12;
                r02 += r12;
            }
        }
    }

    public static class KangarooTwelve extends KangarooBase {
        public KangarooTwelve() {
            this(32, CryptoServicePurpose.ANY);
        }

        public KangarooTwelve(int r32, CryptoServicePurpose cryptoServicePurpose) {
            super(128, 12, r32, cryptoServicePurpose);
        }

        public KangarooTwelve(CryptoServicePurpose cryptoServicePurpose) {
            this(32, cryptoServicePurpose);
        }

        @Override // org.bouncycastle.crypto.digests.Kangaroo.KangarooBase, org.bouncycastle.crypto.Digest
        public /* bridge */ /* synthetic */ int doFinal(byte[] bArr, int r22) {
            return super.doFinal(bArr, r22);
        }

        @Override // org.bouncycastle.crypto.digests.Kangaroo.KangarooBase, org.bouncycastle.crypto.Xof
        public /* bridge */ /* synthetic */ int doFinal(byte[] bArr, int r22, int r32) {
            return super.doFinal(bArr, r22, r32);
        }

        @Override // org.bouncycastle.crypto.digests.Kangaroo.KangarooBase, org.bouncycastle.crypto.Xof
        public /* bridge */ /* synthetic */ int doOutput(byte[] bArr, int r22, int r32) {
            return super.doOutput(bArr, r22, r32);
        }

        @Override // org.bouncycastle.crypto.Digest
        public String getAlgorithmName() {
            return "KangarooTwelve";
        }

        @Override // org.bouncycastle.crypto.digests.Kangaroo.KangarooBase, org.bouncycastle.crypto.ExtendedDigest
        public /* bridge */ /* synthetic */ int getByteLength() {
            return super.getByteLength();
        }

        @Override // org.bouncycastle.crypto.digests.Kangaroo.KangarooBase, org.bouncycastle.crypto.Digest
        public /* bridge */ /* synthetic */ int getDigestSize() {
            return super.getDigestSize();
        }

        @Override // org.bouncycastle.crypto.digests.Kangaroo.KangarooBase
        public /* bridge */ /* synthetic */ void init(KangarooParameters kangarooParameters) {
            super.init(kangarooParameters);
        }

        @Override // org.bouncycastle.crypto.digests.Kangaroo.KangarooBase, org.bouncycastle.crypto.Digest
        public /* bridge */ /* synthetic */ void reset() {
            super.reset();
        }

        @Override // org.bouncycastle.crypto.digests.Kangaroo.KangarooBase, org.bouncycastle.crypto.Digest
        public /* bridge */ /* synthetic */ void update(byte b10) {
            super.update(b10);
        }

        @Override // org.bouncycastle.crypto.digests.Kangaroo.KangarooBase, org.bouncycastle.crypto.Digest
        public /* bridge */ /* synthetic */ void update(byte[] bArr, int r22, int r32) {
            super.update(bArr, r22, r32);
        }
    }

    public static class MarsupilamiFourteen extends KangarooBase {
        public MarsupilamiFourteen() {
            this(32, CryptoServicePurpose.ANY);
        }

        public MarsupilamiFourteen(int r32, CryptoServicePurpose cryptoServicePurpose) {
            super(256, 14, r32, cryptoServicePurpose);
        }

        public MarsupilamiFourteen(CryptoServicePurpose cryptoServicePurpose) {
            this(32, cryptoServicePurpose);
        }

        @Override // org.bouncycastle.crypto.digests.Kangaroo.KangarooBase, org.bouncycastle.crypto.Digest
        public /* bridge */ /* synthetic */ int doFinal(byte[] bArr, int r22) {
            return super.doFinal(bArr, r22);
        }

        @Override // org.bouncycastle.crypto.digests.Kangaroo.KangarooBase, org.bouncycastle.crypto.Xof
        public /* bridge */ /* synthetic */ int doFinal(byte[] bArr, int r22, int r32) {
            return super.doFinal(bArr, r22, r32);
        }

        @Override // org.bouncycastle.crypto.digests.Kangaroo.KangarooBase, org.bouncycastle.crypto.Xof
        public /* bridge */ /* synthetic */ int doOutput(byte[] bArr, int r22, int r32) {
            return super.doOutput(bArr, r22, r32);
        }

        @Override // org.bouncycastle.crypto.Digest
        public String getAlgorithmName() {
            return "MarsupilamiFourteen";
        }

        @Override // org.bouncycastle.crypto.digests.Kangaroo.KangarooBase, org.bouncycastle.crypto.ExtendedDigest
        public /* bridge */ /* synthetic */ int getByteLength() {
            return super.getByteLength();
        }

        @Override // org.bouncycastle.crypto.digests.Kangaroo.KangarooBase, org.bouncycastle.crypto.Digest
        public /* bridge */ /* synthetic */ int getDigestSize() {
            return super.getDigestSize();
        }

        @Override // org.bouncycastle.crypto.digests.Kangaroo.KangarooBase
        public /* bridge */ /* synthetic */ void init(KangarooParameters kangarooParameters) {
            super.init(kangarooParameters);
        }

        @Override // org.bouncycastle.crypto.digests.Kangaroo.KangarooBase, org.bouncycastle.crypto.Digest
        public /* bridge */ /* synthetic */ void reset() {
            super.reset();
        }

        @Override // org.bouncycastle.crypto.digests.Kangaroo.KangarooBase, org.bouncycastle.crypto.Digest
        public /* bridge */ /* synthetic */ void update(byte b10) {
            super.update(b10);
        }

        @Override // org.bouncycastle.crypto.digests.Kangaroo.KangarooBase, org.bouncycastle.crypto.Digest
        public /* bridge */ /* synthetic */ void update(byte[] bArr, int r22, int r32) {
            super.update(bArr, r22, r32);
        }
    }
}
