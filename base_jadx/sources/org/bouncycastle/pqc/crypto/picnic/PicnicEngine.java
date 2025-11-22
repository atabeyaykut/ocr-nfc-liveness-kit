package org.bouncycastle.pqc.crypto.picnic;

import java.lang.reflect.Array;
import java.security.SecureRandom;
import java.util.logging.Logger;
import org.bouncycastle.crypto.Xof;
import org.bouncycastle.math.raw.Bits;
import org.bouncycastle.pqc.crypto.picnic.Signature;
import org.bouncycastle.pqc.crypto.picnic.Signature2;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.Integers;
import org.bouncycastle.util.Pack;

/* loaded from: classes2.dex */
class PicnicEngine {
    private static final Logger LOG = Logger.getLogger(PicnicEngine.class.getName());
    protected static final int LOWMC_MAX_AND_GATES = 1144;
    protected static final int LOWMC_MAX_KEY_BITS = 256;
    private static final int LOWMC_MAX_STATE_SIZE = 64;
    protected static final int LOWMC_MAX_WORDS = 16;
    private static final int MAX_AUX_BYTES = 176;
    private static final int MAX_DIGEST_SIZE = 64;
    private static final int PICNIC_MAX_LOWMC_BLOCK_SIZE = 32;
    private static final int TRANSFORM_FS = 0;
    private static final int TRANSFORM_INVALID = 255;
    private static final int TRANSFORM_UR = 1;
    private static final int WORD_SIZE_BITS = 32;
    protected static final int saltSizeBytes = 32;
    private final int CRYPTO_BYTES;
    private final int CRYPTO_PUBLICKEYBYTES;
    private final int CRYPTO_SECRETKEYBYTES;
    protected final int UnruhGWithInputBytes;
    protected final int UnruhGWithoutInputBytes;
    protected final int andSizeBytes;
    protected final Xof digest;
    protected final int digestSizeBytes;
    protected final LowmcConstants lowmcConstants;
    protected final int numMPCParties;
    protected final int numMPCRounds;
    protected final int numOpenedRounds;
    protected final int numRounds;
    protected final int numSboxes;
    private final int parameters;
    protected final int pqSecurityLevel;
    protected final int seedSizeBytes;
    private int signatureLength;
    protected final int stateSizeBits;
    protected final int stateSizeBytes;
    protected final int stateSizeWords;
    private final int transform;

    /* JADX WARN: Removed duplicated region for block: B:21:0x00eb  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00f2  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00fa  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0102  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x010d  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0115  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x011d  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0128  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0130  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0138  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0140  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0148  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0152  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0189  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x018c  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x018f  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0195  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x019c  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x01a2 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x01ad  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public PicnicEngine(int r14, org.bouncycastle.pqc.crypto.picnic.LowmcConstants r15) {
        /*
            Method dump skipped, instructions count: 522
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.bouncycastle.pqc.crypto.picnic.PicnicEngine.<init>(int, org.bouncycastle.pqc.crypto.picnic.LowmcConstants):void");
    }

    private void Commit(byte[] bArr, int r42, View view, byte[] bArr2) {
        this.digest.update((byte) 4);
        this.digest.update(bArr, r42, this.seedSizeBytes);
        this.digest.doFinal(bArr2, 0, this.digestSizeBytes);
        this.digest.update((byte) 0);
        this.digest.update(bArr2, 0, this.digestSizeBytes);
        this.digest.update(Pack.intToLittleEndian(view.inputShare), 0, this.stateSizeBytes);
        this.digest.update(view.communicatedBits, 0, this.andSizeBytes);
        this.digest.update(Pack.intToLittleEndian(view.outputShare), 0, this.stateSizeBytes);
        this.digest.doFinal(bArr2, 0, this.digestSizeBytes);
    }

    private void G(int r42, byte[] bArr, int r6, View view, byte[] bArr2) {
        int r02 = this.seedSizeBytes + this.andSizeBytes;
        this.digest.update((byte) 5);
        this.digest.update(bArr, r6, this.seedSizeBytes);
        this.digest.doFinal(bArr2, 0, this.digestSizeBytes);
        this.digest.update(bArr2, 0, this.digestSizeBytes);
        if (r42 == 2) {
            this.digest.update(Pack.intToLittleEndian(view.inputShare), 0, this.stateSizeBytes);
            r02 += this.stateSizeBytes;
        }
        this.digest.update(view.communicatedBits, 0, this.andSizeBytes);
        this.digest.update(Pack.intToLittleEndian(r02), 0, 2);
        this.digest.doFinal(bArr2, 0, r02);
    }

    private void H3(int[] r10, int[] r11, View[][] viewArr, byte[][][] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4, byte[][][] bArr5) {
        this.digest.update((byte) 1);
        byte[] bArr6 = new byte[this.stateSizeWords * 4];
        for (int r22 = 0; r22 < this.numMPCRounds; r22++) {
            for (int r32 = 0; r32 < 3; r32++) {
                Pack.intToLittleEndian(viewArr[r22][r32].outputShare, bArr6, 0);
                this.digest.update(bArr6, 0, this.stateSizeBytes);
            }
        }
        implH3(r10, r11, bArr, bArr2, bArr3, bArr4, bArr5);
    }

    private void H3(int[] r10, int[] r11, int[][][] r12, byte[][][] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4, byte[][][] bArr5) {
        this.digest.update((byte) 1);
        byte[] bArr6 = new byte[this.stateSizeWords * 4];
        for (int r22 = 0; r22 < this.numMPCRounds; r22++) {
            for (int r32 = 0; r32 < 3; r32++) {
                Pack.intToLittleEndian(r12[r22][r32], bArr6, 0);
                this.digest.update(bArr6, 0, this.stateSizeBytes);
            }
        }
        implH3(r10, r11, bArr, bArr2, bArr3, bArr4, bArr5);
    }

    private void HCP(byte[] bArr, int[] r72, int[] r82, byte[][] bArr2, byte[] bArr3, byte[] bArr4, int[] r12, int[] r13, byte[] bArr5) {
        for (int r14 = 0; r14 < this.numMPCRounds; r14++) {
            this.digest.update(bArr2[r14], 0, this.digestSizeBytes);
        }
        byte[] bArr6 = new byte[32];
        this.digest.update(bArr3, 0, this.digestSizeBytes);
        this.digest.update(bArr4, 0, 32);
        updateDigest(r12, bArr6);
        updateDigest(r13, bArr6);
        this.digest.update(bArr5, 0, bArr5.length);
        this.digest.doFinal(bArr, 0, this.digestSizeBytes);
        if (r72 == null || r82 == null) {
            return;
        }
        expandChallengeHash(bArr, r72, r82);
    }

    private void LowMCEnc(int[] r6, int[] r72, int[] r82) {
        int[] r02 = new int[16];
        if (r6 != r72) {
            System.arraycopy(r6, 0, r72, 0, this.stateSizeWords);
        }
        KMatricesWithPointer kMatricesWithPointerKMatrix = this.lowmcConstants.KMatrix(this, 0);
        matrix_mul(r02, r82, kMatricesWithPointerKMatrix.getData(), kMatricesWithPointerKMatrix.getMatrixPointer());
        xor_array(r72, r72, r02, 0);
        for (int r62 = 1; r62 <= this.numRounds; r62++) {
            KMatricesWithPointer kMatricesWithPointerKMatrix2 = this.lowmcConstants.KMatrix(this, r62);
            matrix_mul(r02, r82, kMatricesWithPointerKMatrix2.getData(), kMatricesWithPointerKMatrix2.getMatrixPointer());
            substitution(r72);
            int r32 = r62 - 1;
            KMatricesWithPointer kMatricesWithPointerLMatrix = this.lowmcConstants.LMatrix(this, r32);
            matrix_mul(r72, r72, kMatricesWithPointerLMatrix.getData(), kMatricesWithPointerLMatrix.getMatrixPointer());
            KMatricesWithPointer kMatricesWithPointerRConstant = this.lowmcConstants.RConstant(this, r32);
            xor_array(r72, r72, kMatricesWithPointerRConstant.getData(), kMatricesWithPointerRConstant.getMatrixPointer());
            xor_array(r72, r72, r02, 0);
        }
    }

    public static int appendUnique(int[] r22, int r32, int r42) {
        if (r42 == 0) {
            r22[r42] = r32;
        } else {
            for (int r02 = 0; r02 < r42; r02++) {
                if (r22[r02] == r32) {
                    return r42;
                }
            }
            r22[r42] = r32;
        }
        return r42 + 1;
    }

    private boolean arePaddingBitsZero(byte[] bArr, int r42) {
        int r02 = Utils.numBytes(r42);
        while (r42 < r02 * 8) {
            if (Utils.getBit(bArr, r42) != 0) {
                return false;
            }
            r42++;
        }
        return true;
    }

    private boolean arePaddingBitsZero(int[] r32, int r42) {
        if ((r42 & 31) == 0) {
            return true;
        }
        return (r32[r42 >>> 5] & (~Utils.getTrailingBitsMask(r42))) == 0;
    }

    private void aux_mpc_AND(int r52, int r6, int r72, Tape tape) {
        int r02 = this.numMPCParties - 1;
        Utils.setBit(tape.tapes[r02], tape.pos - 1, (byte) ((((r52 & r6) ^ (Utils.parity16(tape.tapesToWord()) ^ Utils.getBit(tape.tapes[r02], tape.pos - 1))) ^ r72) & 255));
    }

    public static int bitsToChunks(int r52, byte[] bArr, int r72, int[] r82) {
        int r73 = r72 * 8;
        if (r52 > r73) {
            return 0;
        }
        int r74 = r73 / r52;
        for (int r12 = 0; r12 < r74; r12++) {
            r82[r12] = 0;
            for (int r22 = 0; r22 < r52; r22++) {
                r82[r12] = r82[r12] + (Utils.getBit(bArr, (r12 * r52) + r22) << r22);
            }
        }
        return r74;
    }

    private void commit(byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4, int r82, int r92) {
        this.digest.update(bArr2, 0, this.seedSizeBytes);
        if (bArr3 != null) {
            this.digest.update(bArr3, 0, this.andSizeBytes);
        }
        this.digest.update(bArr4, 0, 32);
        this.digest.update(Pack.intToLittleEndian(r82), 0, 2);
        this.digest.update(Pack.intToLittleEndian(r92), 0, 2);
        this.digest.doFinal(bArr, 0, this.digestSizeBytes);
    }

    private void commit_h(byte[] bArr, byte[][] bArr2) {
        for (int r12 = 0; r12 < this.numMPCParties; r12++) {
            this.digest.update(bArr2[r12], 0, this.digestSizeBytes);
        }
        this.digest.doFinal(bArr, 0, this.digestSizeBytes);
    }

    private void commit_v(byte[] bArr, byte[] bArr2, Msg msg) {
        this.digest.update(bArr2, 0, this.stateSizeBytes);
        for (int r6 = 0; r6 < this.numMPCParties; r6++) {
            this.digest.update(msg.msgs[r6], 0, Utils.numBytes(msg.pos));
        }
        this.digest.doFinal(bArr, 0, this.digestSizeBytes);
    }

    private void computeSaltAndRootSeed(byte[] bArr, int[] r52, int[] r6, int[] r72, byte[] bArr2) {
        byte[] bArr3 = new byte[32];
        updateDigest(r52, bArr3);
        this.digest.update(bArr2, 0, bArr2.length);
        updateDigest(r6, bArr3);
        updateDigest(r72, bArr3);
        Pack.shortToLittleEndian((short) this.stateSizeBits, bArr3, 0);
        this.digest.update(bArr3, 0, 2);
        this.digest.doFinal(bArr, 0, bArr.length);
    }

    private byte[] computeSeeds(int[] r6, int[] r72, int[] r82, byte[] bArr) {
        byte[] bArr2 = new byte[(this.numMPCParties * this.numMPCRounds * this.seedSizeBytes) + 32];
        byte[] bArr3 = new byte[32];
        updateDigest(r6, bArr3);
        this.digest.update(bArr, 0, bArr.length);
        updateDigest(r72, bArr3);
        updateDigest(r82, bArr3);
        this.digest.update(Pack.intToLittleEndian(this.stateSizeBits), 0, 2);
        this.digest.doFinal(bArr2, 0, (this.numMPCParties * this.numMPCRounds * this.seedSizeBytes) + 32);
        return bArr2;
    }

    private boolean contains(int[] r42, int r52, int r6) {
        for (int r12 = 0; r12 < r52; r12++) {
            if (r42[r12] == r6) {
                return true;
            }
        }
        return false;
    }

    private int countNonZeroChallenges(byte[] bArr, int r92) {
        int r42;
        int r02 = 0;
        int r12 = 0;
        int r22 = 0;
        while (true) {
            int r32 = r02 + 16;
            r42 = this.numMPCRounds;
            if (r32 > r42) {
                break;
            }
            int r03 = Pack.littleEndianToInt(bArr, (r02 >>> 2) + r92);
            int r43 = r03 >>> 1;
            r12 |= r03 & r43;
            r22 += Integers.bitCount((r03 ^ r43) & 1431655765);
            r02 = r32;
        }
        int r44 = (r42 - r02) * 2;
        if (r44 > 0) {
            int r82 = Pack.littleEndianToInt_Low(bArr, r92 + (r02 >>> 2), (r44 + 7) / 8) & Utils.getTrailingBitsMask(r44);
            int r93 = r82 >>> 1;
            r12 |= r82 & r93;
            r22 += Integers.bitCount((r82 ^ r93) & 1431655765);
        }
        if ((r12 & 1431655765) == 0) {
            return r22;
        }
        return -1;
    }

    private boolean createRandomTape(byte[] bArr, int r6, byte[] bArr2, int r82, int r92, byte[] bArr3, int r11) {
        if (r11 < this.digestSizeBytes) {
            return false;
        }
        this.digest.update((byte) 2);
        this.digest.update(bArr, r6, this.seedSizeBytes);
        this.digest.doFinal(bArr3, 0, this.digestSizeBytes);
        this.digest.update(bArr3, 0, this.digestSizeBytes);
        this.digest.update(bArr2, 0, 32);
        this.digest.update(Pack.intToLittleEndian(r82), 0, 2);
        this.digest.update(Pack.intToLittleEndian(r92), 0, 2);
        this.digest.update(Pack.intToLittleEndian(r11), 0, 2);
        this.digest.doFinal(bArr3, 0, r11);
        return true;
    }

    private void createRandomTapes(Tape tape, byte[][] bArr, int r10, byte[] bArr2, int r12) {
        int r02 = this.andSizeBytes * 2;
        for (int r32 = 0; r32 < this.numMPCParties; r32++) {
            this.digest.update(bArr[r32 + r10], 0, this.seedSizeBytes);
            this.digest.update(bArr2, 0, 32);
            this.digest.update(Pack.intToLittleEndian(r12), 0, 2);
            this.digest.update(Pack.intToLittleEndian(r32), 0, 2);
            this.digest.doFinal(tape.tapes[r32], 0, r02);
        }
    }

    private int deserializeSignature(Signature signature, byte[] bArr, int r14, int r15) {
        int r52;
        Signature.Proof[] proofArr = signature.proofs;
        byte[] bArr2 = signature.challengeBits;
        int r22 = Utils.numBytes(this.numMPCRounds * 2);
        if (r14 < r22 || (r52 = countNonZeroChallenges(bArr, r15)) < 0) {
            return -1;
        }
        int r6 = this.stateSizeBytes * r52;
        int r82 = this.numMPCRounds;
        int r92 = (((this.seedSizeBytes * 2) + this.andSizeBytes + this.digestSizeBytes) * r82) + r22 + 32 + r6;
        if (this.transform == 1) {
            r92 = (this.UnruhGWithoutInputBytes * r52) + ((r82 - r52) * this.UnruhGWithInputBytes) + r92;
        }
        if (r14 != r92) {
            LOG.fine("sigBytesLen = " + r14 + ", expected bytesRequired = " + r92);
            return -1;
        }
        System.arraycopy(bArr, r15, bArr2, 0, r22);
        int r152 = r15 + r22;
        System.arraycopy(bArr, r152, signature.salt, 0, 32);
        int r153 = r152 + 32;
        for (int r12 = 0; r12 < this.numMPCRounds; r12++) {
            int challenge = getChallenge(bArr2, r12);
            System.arraycopy(bArr, r153, proofArr[r12].view3Commitment, 0, this.digestSizeBytes);
            int r154 = r153 + this.digestSizeBytes;
            if (this.transform == 1) {
                int r53 = challenge == 0 ? this.UnruhGWithInputBytes : this.UnruhGWithoutInputBytes;
                System.arraycopy(bArr, r154, proofArr[r12].view3UnruhG, 0, r53);
                r154 += r53;
            }
            System.arraycopy(bArr, r154, proofArr[r12].communicatedBits, 0, this.andSizeBytes);
            int r155 = r154 + this.andSizeBytes;
            System.arraycopy(bArr, r155, proofArr[r12].seed1, 0, this.seedSizeBytes);
            int r54 = this.seedSizeBytes;
            int r156 = r155 + r54;
            System.arraycopy(bArr, r156, proofArr[r12].seed2, 0, r54);
            r153 = r156 + this.seedSizeBytes;
            if (challenge == 1 || challenge == 2) {
                Pack.littleEndianToInt(bArr, r153, proofArr[r12].inputShare, 0, this.stateSizeBytes / 4);
                int r23 = this.stateSizeBits;
                if (r23 == 129) {
                    proofArr[r12].inputShare[this.stateSizeWords - 1] = bArr[(this.stateSizeBytes + r153) - 1] & 255;
                }
                r153 += this.stateSizeBytes;
                if (!arePaddingBitsZero(proofArr[r12].inputShare, r23)) {
                    return -1;
                }
            }
        }
        return 0;
    }

    private int deserializeSignature2(Signature2 signature2, byte[] bArr, int r12, int r13) {
        Logger logger;
        String str;
        int r02 = this.digestSizeBytes;
        int r14 = r02 + 32;
        if (bArr.length < r14) {
            return -1;
        }
        System.arraycopy(bArr, r13, signature2.challengeHash, 0, r02);
        int r132 = r13 + this.digestSizeBytes;
        System.arraycopy(bArr, r132, signature2.salt, 0, 32);
        int r133 = r132 + 32;
        expandChallengeHash(signature2.challengeHash, signature2.challengeC, signature2.challengeP);
        int r03 = new Tree(this, this.numMPCRounds, this.seedSizeBytes).revealSeedsSize(signature2.challengeC, this.numOpenedRounds);
        signature2.iSeedInfoLen = r03;
        int r15 = r14 + r03;
        int r04 = new Tree(this, this.numMPCRounds, this.digestSizeBytes).openMerkleTreeSize(getMissingLeavesList(signature2.challengeC), this.numMPCRounds - this.numOpenedRounds);
        signature2.cvInfoLen = r04;
        int r16 = r15 + r04;
        int r22 = new Tree(this, this.numMPCParties, this.seedSizeBytes).revealSeedsSize(new int[1], 1);
        for (int r52 = 0; r52 < this.numMPCRounds; r52++) {
            if (contains(signature2.challengeC, this.numOpenedRounds, r52)) {
                if (signature2.challengeP[indexOf(signature2.challengeC, this.numOpenedRounds, r52)] != this.numMPCParties - 1) {
                    r16 += this.andSizeBytes;
                }
                r16 = r16 + r22 + this.stateSizeBytes + this.andSizeBytes + this.digestSizeBytes;
            }
        }
        if (r12 == r16) {
            int r122 = signature2.iSeedInfoLen;
            byte[] bArr2 = new byte[r122];
            signature2.iSeedInfo = bArr2;
            System.arraycopy(bArr, r133, bArr2, 0, r122);
            int r134 = r133 + signature2.iSeedInfoLen;
            int r123 = signature2.cvInfoLen;
            byte[] bArr3 = new byte[r123];
            signature2.cvInfo = bArr3;
            System.arraycopy(bArr, r134, bArr3, 0, r123);
            int r135 = r134 + signature2.cvInfoLen;
            for (int r124 = 0; r124 < this.numMPCRounds; r124++) {
                if (contains(signature2.challengeC, this.numOpenedRounds, r124)) {
                    signature2.proofs[r124] = new Signature2.Proof2(this);
                    Signature2.Proof2 proof2 = signature2.proofs[r124];
                    proof2.seedInfoLen = r22;
                    byte[] bArr4 = new byte[r22];
                    proof2.seedInfo = bArr4;
                    System.arraycopy(bArr, r135, bArr4, 0, r22);
                    int r136 = r135 + signature2.proofs[r124].seedInfoLen;
                    if (signature2.challengeP[indexOf(signature2.challengeC, this.numOpenedRounds, r124)] != this.numMPCParties - 1) {
                        System.arraycopy(bArr, r136, signature2.proofs[r124].aux, 0, this.andSizeBytes);
                        r136 += this.andSizeBytes;
                        if (!arePaddingBitsZero(signature2.proofs[r124].aux, this.numRounds * 3 * this.numSboxes)) {
                            logger = LOG;
                            str = "failed while deserializing aux bits";
                        }
                    }
                    System.arraycopy(bArr, r136, signature2.proofs[r124].input, 0, this.stateSizeBytes);
                    int r137 = r136 + this.stateSizeBytes;
                    int r17 = this.andSizeBytes;
                    System.arraycopy(bArr, r137, signature2.proofs[r124].msgs, 0, r17);
                    int r138 = r137 + r17;
                    if (arePaddingBitsZero(signature2.proofs[r124].msgs, this.numRounds * 3 * this.numSboxes)) {
                        System.arraycopy(bArr, r138, signature2.proofs[r124].C, 0, this.digestSizeBytes);
                        r135 = r138 + this.digestSizeBytes;
                    } else {
                        logger = LOG;
                        str = "failed while deserializing msgs bits";
                    }
                }
            }
            return 0;
        }
        logger = LOG;
        str = "sigLen = " + r12 + ", expected bytesRequired = " + r16;
        logger.fine(str);
        return -1;
    }

    private void expandChallengeHash(byte[] bArr, int[] r12, int[] r13) {
        int r02 = Utils.ceil_log2(this.numMPCRounds);
        int r14 = Utils.ceil_log2(this.numMPCParties);
        int[] r22 = new int[(this.digestSizeBytes * 8) / Math.min(r02, r14)];
        byte[] bArr2 = new byte[64];
        System.arraycopy(bArr, 0, bArr2, 0, this.digestSizeBytes);
        int r11 = 0;
        while (r11 < this.numOpenedRounds) {
            int r42 = bitsToChunks(r02, bArr2, this.digestSizeBytes, r22);
            for (int r72 = 0; r72 < r42; r72++) {
                int r82 = r22[r72];
                if (r82 < this.numMPCRounds) {
                    r11 = appendUnique(r12, r82, r11);
                }
                if (r11 == this.numOpenedRounds) {
                    break;
                }
            }
            this.digest.update((byte) 1);
            this.digest.update(bArr2, 0, this.digestSizeBytes);
            this.digest.doFinal(bArr2, 0, this.digestSizeBytes);
        }
        int r112 = 0;
        while (r112 < this.numOpenedRounds) {
            int r122 = bitsToChunks(r14, bArr2, this.digestSizeBytes, r22);
            for (int r03 = 0; r03 < r122; r03++) {
                int r43 = r22[r03];
                if (r43 < this.numMPCParties) {
                    r13[r112] = r43;
                    r112++;
                }
                if (r112 == this.numOpenedRounds) {
                    break;
                }
            }
            this.digest.update((byte) 1);
            this.digest.update(bArr2, 0, this.digestSizeBytes);
            this.digest.doFinal(bArr2, 0, this.digestSizeBytes);
        }
    }

    public static int extend(int r02) {
        return ~(r02 - 1);
    }

    private void getAuxBits(byte[] bArr, Tape tape) {
        byte[] bArr2 = tape.tapes[this.numMPCParties - 1];
        int r02 = this.stateSizeBits;
        int r32 = 0;
        int r42 = 0;
        for (int r22 = 0; r22 < this.numRounds; r22++) {
            r32 += r02;
            int r52 = 0;
            while (r52 < r02) {
                Utils.setBit(bArr, r42, Utils.getBit(bArr2, r32));
                r52++;
                r42++;
                r32++;
            }
        }
    }

    private int[] getMissingLeavesList(int[] r52) {
        int[] r02 = new int[this.numMPCRounds - this.numOpenedRounds];
        int r22 = 0;
        for (int r12 = 0; r12 < this.numMPCRounds; r12++) {
            if (!contains(r52, this.numOpenedRounds, r12)) {
                r02[r22] = r12;
                r22++;
            }
        }
        return r02;
    }

    private void implH3(int[] r14, int[] r15, byte[][][] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4, byte[][][] bArr5) {
        byte[] bArr6 = new byte[this.digestSizeBytes];
        bArr2[Utils.numBytes(this.numMPCRounds * 2) - 1] = 0;
        for (int r42 = 0; r42 < this.numMPCRounds; r42++) {
            for (int r82 = 0; r82 < 3; r82++) {
                this.digest.update(bArr[r42][r82], 0, this.digestSizeBytes);
            }
        }
        if (this.transform == 1) {
            for (int r43 = 0; r43 < this.numMPCRounds; r43++) {
                int r83 = 0;
                while (r83 < 3) {
                    this.digest.update(bArr5[r43][r83], 0, r83 == 2 ? this.UnruhGWithInputBytes : this.UnruhGWithoutInputBytes);
                    r83++;
                }
            }
        }
        this.digest.update(Pack.intToLittleEndian(r14), 0, this.stateSizeBytes);
        this.digest.update(Pack.intToLittleEndian(r15), 0, this.stateSizeBytes);
        this.digest.update(bArr3, 0, 32);
        this.digest.update(bArr4, 0, bArr4.length);
        this.digest.doFinal(bArr6, 0, this.digestSizeBytes);
        boolean z10 = true;
        int r44 = 0;
        while (z10) {
            for (int r52 = 0; r52 < this.digestSizeBytes; r52++) {
                byte b10 = bArr6[r52];
                int r10 = 0;
                while (true) {
                    if (r10 >= 8) {
                        break;
                    }
                    int r11 = (b10 >>> (6 - r10)) & 3;
                    if (r11 < 3) {
                        setChallenge(bArr2, r44, r11);
                        r44++;
                        if (r44 == this.numMPCRounds) {
                            z10 = false;
                            break;
                        }
                    }
                    r10 += 2;
                }
                if (!z10) {
                    break;
                }
            }
            if (!z10) {
                return;
            }
            this.digest.update((byte) 1);
            this.digest.update(bArr6, 0, this.digestSizeBytes);
            this.digest.doFinal(bArr6, 0, this.digestSizeBytes);
        }
    }

    public static int indexOf(int[] r22, int r32, int r42) {
        for (int r02 = 0; r02 < r32; r02++) {
            if (r22[r02] == r42) {
                return r02;
            }
        }
        return -1;
    }

    public static boolean is_picnic3(int r12) {
        return r12 == 7 || r12 == 8 || r12 == 9;
    }

    private int mpc_AND(int r22, int r32, int r42, int r52, Tape tape, Msg msg) {
        int bit = ((r42 & extend(r32)) ^ (r52 & extend(r22))) ^ tape.tapesToWord();
        int r53 = msg.unopened;
        if (r53 >= 0) {
            bit = Utils.setBit(bit, msg.unopened, Utils.getBit(msg.msgs[r53], msg.pos));
        }
        wordToMsgs(bit, msg);
        return (r22 & r32) ^ Utils.parity16(bit);
    }

    private void mpc_AND(int[] r15, int[] r16, int[] r17, Tape tape, View[] viewArr) {
        byte bit = Utils.getBit(tape.tapes[0], tape.pos);
        byte bit2 = Utils.getBit(tape.tapes[1], tape.pos);
        byte bit3 = Utils.getBit(tape.tapes[2], tape.pos);
        int r72 = r15[0];
        int r82 = r16[1];
        int r10 = r15[1];
        int r11 = r16[0];
        int r73 = (((r72 & r11) ^ ((r72 & r82) ^ (r10 & r11))) ^ bit) ^ bit2;
        r17[0] = r73;
        int r92 = r16[2];
        int r12 = r15[2];
        r17[1] = (bit2 ^ ((r82 & r10) ^ ((r10 & r92) ^ (r12 & r82)))) ^ bit3;
        r17[2] = bit ^ ((((r16[0] & r12) ^ (r15[0] & r92)) ^ (r12 & r92)) ^ bit3);
        Utils.setBit(viewArr[0].communicatedBits, tape.pos, (byte) r73);
        Utils.setBit(viewArr[1].communicatedBits, tape.pos, (byte) r17[1]);
        Utils.setBit(viewArr[2].communicatedBits, tape.pos, (byte) r17[2]);
        tape.pos++;
    }

    private void mpc_LowMC(Tape tape, View[] viewArr, int[] r19, int[] r20) {
        Arrays.fill(r20, 0, r20.length, 0);
        int r52 = this.stateSizeWords;
        mpc_xor_constant(r20, r52 * 3, r19, 0, r52);
        KMatricesWithPointer kMatricesWithPointerKMatrix = this.lowmcConstants.KMatrix(this, 0);
        for (int r12 = 0; r12 < 3; r12++) {
            matrix_mul_offset(r20, r12 * this.stateSizeWords, viewArr[r12].inputShare, 0, kMatricesWithPointerKMatrix.getData(), kMatricesWithPointerKMatrix.getMatrixPointer());
        }
        mpc_xor(r20, r20, 3);
        for (int r122 = 1; r122 <= this.numRounds; r122++) {
            KMatricesWithPointer kMatricesWithPointerKMatrix2 = this.lowmcConstants.KMatrix(this, r122);
            for (int r14 = 0; r14 < 3; r14++) {
                matrix_mul_offset(r20, r14 * this.stateSizeWords, viewArr[r14].inputShare, 0, kMatricesWithPointerKMatrix2.getData(), kMatricesWithPointerKMatrix2.getMatrixPointer());
            }
            mpc_substitution(r20, tape, viewArr);
            int r15 = r122 - 1;
            KMatricesWithPointer kMatricesWithPointerLMatrix = this.lowmcConstants.LMatrix(this, r15);
            int r13 = this.stateSizeWords;
            mpc_matrix_mul(r20, r13 * 3, r20, r13 * 3, kMatricesWithPointerLMatrix.getData(), kMatricesWithPointerLMatrix.getMatrixPointer(), 3);
            KMatricesWithPointer kMatricesWithPointerRConstant = this.lowmcConstants.RConstant(this, r15);
            mpc_xor_constant(r20, this.stateSizeWords * 3, kMatricesWithPointerRConstant.getData(), kMatricesWithPointerRConstant.getMatrixPointer(), this.stateSizeWords);
            mpc_xor(r20, r20, 3);
        }
        for (int r02 = 0; r02 < 3; r02++) {
            int r22 = this.stateSizeWords;
            System.arraycopy(r20, (r02 + 3) * r22, viewArr[r02].outputShare, 0, r22);
        }
    }

    private void mpc_matrix_mul(int[] r11, int r12, int[] r13, int r14, int[] r15, int r16, int r17) {
        for (int r02 = 0; r02 < r17; r02++) {
            int r22 = this.stateSizeWords;
            matrix_mul_offset(r11, (r02 * r22) + r12, r13, (r22 * r02) + r14, r15, r16);
        }
    }

    private void mpc_sbox(int[] r20, int[] r21, Tape tape, Msg msg) {
        for (int r12 = 0; r12 < this.numSboxes * 3; r12 += 3) {
            int r10 = r12 + 2;
            int bitFromWordArray = Utils.getBitFromWordArray(r20, r10);
            int r122 = r21[r10];
            int r13 = r12 + 1;
            int bitFromWordArray2 = Utils.getBitFromWordArray(r20, r13);
            int r15 = r21[r13];
            int bitFromWordArray3 = Utils.getBitFromWordArray(r20, r12);
            int r17 = r21[r12];
            int r18 = mpc_AND(bitFromWordArray, bitFromWordArray2, r122, r15, tape, msg);
            int r152 = mpc_AND(bitFromWordArray2, bitFromWordArray3, r15, r17, tape, msg);
            int r42 = bitFromWordArray ^ bitFromWordArray2;
            int r22 = mpc_AND(bitFromWordArray3, bitFromWordArray, r17, r122, tape, msg) ^ r42;
            Utils.setBitInWordArray(r20, r10, bitFromWordArray ^ r152);
            Utils.setBitInWordArray(r20, r13, r22);
            Utils.setBitInWordArray(r20, r12, (r42 ^ bitFromWordArray3) ^ r18);
        }
    }

    private void mpc_substitution(int[] r18, Tape tape, View[] viewArr) {
        int[] r92 = new int[3];
        int[] r10 = new int[3];
        int[] r11 = new int[3];
        int[] r12 = new int[3];
        int[] r13 = new int[3];
        int[] r14 = new int[3];
        int r52 = 0;
        while (r52 < this.numSboxes * 3) {
            for (int r02 = 0; r02 < 3; r02++) {
                int r15 = ((r02 + 3) * this.stateSizeWords * 32) + r52;
                r92[r02] = Utils.getBitFromWordArray(r18, r15 + 2);
                r10[r02] = Utils.getBitFromWordArray(r18, r15 + 1);
                r11[r02] = Utils.getBitFromWordArray(r18, r15);
            }
            int r16 = r52;
            mpc_AND(r92, r10, r12, tape, viewArr);
            mpc_AND(r10, r11, r13, tape, viewArr);
            mpc_AND(r11, r92, r14, tape, viewArr);
            for (int r03 = 0; r03 < 3; r03++) {
                int r17 = ((r03 + 3) * this.stateSizeWords * 32) + r16;
                Utils.setBitInWordArray(r18, r17 + 2, r92[r03] ^ r13[r03]);
                Utils.setBitInWordArray(r18, r17 + 1, (r92[r03] ^ r10[r03]) ^ r14[r03]);
                Utils.setBitInWordArray(r18, r17, ((r92[r03] ^ r10[r03]) ^ r11[r03]) ^ r12[r03]);
            }
            r52 = r16 + 3;
        }
    }

    private void mpc_xor(int[] r6, int[] r72, int r82) {
        int r02 = this.stateSizeWords * r82;
        for (int r12 = 0; r12 < r02; r12++) {
            int r22 = (this.stateSizeWords * r82) + r12;
            r6[r22] = r6[r22] ^ r72[r12];
        }
    }

    private void mpc_xor_constant(int[] r52, int r6, int[] r72, int r82, int r92) {
        for (int r02 = 0; r02 < r92; r02++) {
            int r12 = r02 + r6;
            r52[r12] = r52[r12] ^ r72[r02 + r82];
        }
    }

    private void mpc_xor_constant_verify(int[] r52, int[] r6, int r72, int r82, int r92) {
        int r93;
        if (r92 == 0) {
            r93 = this.stateSizeWords * 2;
        } else if (r92 != 2) {
            return;
        } else {
            r93 = this.stateSizeWords * 3;
        }
        for (int r02 = 0; r02 < r82; r02++) {
            int r12 = r02 + r93;
            r52[r12] = r52[r12] ^ r6[r02 + r72];
        }
    }

    private void picnic_keygen(byte[] bArr, byte[] bArr2, byte[] bArr3, SecureRandom secureRandom) {
        int[] r02 = new int[bArr3.length / 4];
        int[] r12 = new int[bArr.length / 4];
        int[] r22 = new int[bArr2.length / 4];
        secureRandom.nextBytes(bArr3);
        Pack.littleEndianToInt(bArr3, 0, r02);
        Utils.zeroTrailingBits(r02, this.stateSizeBits);
        secureRandom.nextBytes(bArr);
        Pack.littleEndianToInt(bArr, 0, r12);
        Utils.zeroTrailingBits(r12, this.stateSizeBits);
        LowMCEnc(r12, r22, r02);
        Pack.intToLittleEndian(r02, bArr3, 0);
        Pack.intToLittleEndian(r12, bArr, 0);
        Pack.intToLittleEndian(r22, bArr2, 0);
    }

    private void picnic_read_public_key(int[] r6, int[] r72, byte[] bArr) {
        int r02 = this.stateSizeBytes;
        int r12 = r02 + 1;
        int r03 = r02 / 4;
        Pack.littleEndianToInt(bArr, 1, r6, 0, r03);
        Pack.littleEndianToInt(bArr, r12, r72, 0, r03);
        if (r03 < this.stateSizeWords) {
            int r22 = r03 * 4;
            int r32 = this.stateSizeBytes - r22;
            r6[r03] = Pack.littleEndianToInt_Low(bArr, r22 + 1, r32);
            r72[r03] = Pack.littleEndianToInt_Low(bArr, r12 + r22, r32);
        }
    }

    private boolean picnic_sign(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        int r12;
        int r02 = this.stateSizeWords;
        int[] r22 = new int[r02];
        int[] r32 = new int[r02];
        int[] r42 = new int[r02];
        int r03 = this.stateSizeBytes;
        int r13 = r03 + 1;
        int r52 = (r03 * 2) + 1;
        int r04 = r03 / 4;
        Pack.littleEndianToInt(bArr, 1, r22, 0, r04);
        Pack.littleEndianToInt(bArr, r13, r32, 0, r04);
        Pack.littleEndianToInt(bArr, r52, r42, 0, r04);
        if (r04 < this.stateSizeWords) {
            int r6 = r04 * 4;
            int r92 = this.stateSizeBytes - r6;
            r22[r04] = Pack.littleEndianToInt_Low(bArr, r6 + 1, r92);
            r32[r04] = Pack.littleEndianToInt_Low(bArr, r13 + r6, r92);
            r42[r04] = Pack.littleEndianToInt_Low(bArr, r52 + r6, r92);
        }
        if (is_picnic3(this.parameters)) {
            Signature2 signature2 = new Signature2(this);
            if (!sign_picnic3(r22, r32, r42, bArr2, signature2)) {
                LOG.fine("Failed to create signature");
                return false;
            }
            r12 = serializeSignature2(signature2, bArr3, bArr2.length + 4);
            if (r12 < 0) {
                LOG.fine("Failed to serialize signature");
                return false;
            }
        } else {
            Signature signature = new Signature(this);
            if (sign_picnic1(r22, r32, r42, bArr2, signature) != 0) {
                LOG.fine("Failed to create signature");
                return false;
            }
            r12 = serializeSignature(signature, bArr3, bArr2.length + 4);
            if (r12 < 0) {
                LOG.fine("Failed to serialize signature");
                return false;
            }
        }
        this.signatureLength = r12;
        Pack.intToLittleEndian(r12, bArr3, 0);
        return true;
    }

    private int picnic_verify(byte[] bArr, byte[] bArr2, byte[] bArr3, int r82) {
        Logger logger;
        String str;
        int r02 = this.stateSizeWords;
        int[] r12 = new int[r02];
        int[] r03 = new int[r02];
        picnic_read_public_key(r12, r03, bArr);
        if (is_picnic3(this.parameters)) {
            Signature2 signature2 = new Signature2(this);
            if (deserializeSignature2(signature2, bArr3, r82, bArr2.length + 4) == 0) {
                return verify_picnic3(signature2, r12, r03, bArr2);
            }
            logger = LOG;
            str = "Error couldn't deserialize signature (2)!";
        } else {
            Signature signature = new Signature(this);
            if (deserializeSignature(signature, bArr3, r82, bArr2.length + 4) == 0) {
                return verify(signature, r12, r03, bArr2);
            }
            logger = LOG;
            str = "Error couldn't deserialize signature!";
        }
        logger.fine(str);
        return -1;
    }

    private int picnic_write_private_key(byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4) {
        int r02 = this.stateSizeBytes;
        int r12 = (r02 * 3) + 1;
        if (bArr4.length < r12) {
            LOG.fine("Failed writing private key!");
            return -1;
        }
        bArr4[0] = (byte) this.parameters;
        System.arraycopy(bArr, 0, bArr4, 1, r02);
        int r6 = this.stateSizeBytes;
        System.arraycopy(bArr2, 0, bArr4, r6 + 1, r6);
        int r62 = this.stateSizeBytes;
        System.arraycopy(bArr3, 0, bArr4, (r62 * 2) + 1, r62);
        return r12;
    }

    private int picnic_write_public_key(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        int r02 = this.stateSizeBytes;
        int r12 = (r02 * 2) + 1;
        if (bArr3.length < r12) {
            LOG.fine("Failed writing public key!");
            return -1;
        }
        bArr3[0] = (byte) this.parameters;
        System.arraycopy(bArr, 0, bArr3, 1, r02);
        int r6 = this.stateSizeBytes;
        System.arraycopy(bArr2, 0, bArr3, r6 + 1, r6);
        return r12;
    }

    private int serializeSignature2(Signature2 signature2, byte[] bArr, int r10) {
        int r02 = this.digestSizeBytes + 32 + signature2.iSeedInfoLen + signature2.cvInfoLen;
        for (int r32 = 0; r32 < this.numMPCRounds; r32++) {
            if (contains(signature2.challengeC, this.numOpenedRounds, r32)) {
                int r42 = signature2.challengeP[indexOf(signature2.challengeC, this.numOpenedRounds, r32)];
                int r03 = r02 + signature2.proofs[r32].seedInfoLen;
                if (r42 != this.numMPCParties - 1) {
                    r03 += this.andSizeBytes;
                }
                r02 = r03 + this.stateSizeBytes + this.andSizeBytes + this.digestSizeBytes;
            }
        }
        if (bArr.length < r02) {
            return -1;
        }
        System.arraycopy(signature2.challengeHash, 0, bArr, r10, this.digestSizeBytes);
        int r04 = this.digestSizeBytes + r10;
        System.arraycopy(signature2.salt, 0, bArr, r04, 32);
        int r05 = r04 + 32;
        System.arraycopy(signature2.iSeedInfo, 0, bArr, r05, signature2.iSeedInfoLen);
        int r06 = r05 + signature2.iSeedInfoLen;
        System.arraycopy(signature2.cvInfo, 0, bArr, r06, signature2.cvInfoLen);
        int r07 = r06 + signature2.cvInfoLen;
        for (int r12 = 0; r12 < this.numMPCRounds; r12++) {
            if (contains(signature2.challengeC, this.numOpenedRounds, r12)) {
                Signature2.Proof2 proof2 = signature2.proofs[r12];
                System.arraycopy(proof2.seedInfo, 0, bArr, r07, proof2.seedInfoLen);
                int r08 = r07 + signature2.proofs[r12].seedInfoLen;
                if (signature2.challengeP[indexOf(signature2.challengeC, this.numOpenedRounds, r12)] != this.numMPCParties - 1) {
                    System.arraycopy(signature2.proofs[r12].aux, 0, bArr, r08, this.andSizeBytes);
                    r08 += this.andSizeBytes;
                }
                System.arraycopy(signature2.proofs[r12].input, 0, bArr, r08, this.stateSizeBytes);
                int r09 = r08 + this.stateSizeBytes;
                System.arraycopy(signature2.proofs[r12].msgs, 0, bArr, r09, this.andSizeBytes);
                int r010 = r09 + this.andSizeBytes;
                System.arraycopy(signature2.proofs[r12].C, 0, bArr, r010, this.digestSizeBytes);
                r07 = r010 + this.digestSizeBytes;
            }
        }
        return r07 - r10;
    }

    private void setChallenge(byte[] bArr, int r32, int r42) {
        int r33 = r32 * 2;
        Utils.setBit(bArr, r33, (byte) (r42 & 1));
        Utils.setBit(bArr, r33 + 1, (byte) ((r42 >>> 1) & 1));
    }

    private int sign_picnic1(int[] r24, int[] r25, int[] r26, byte[] bArr, Signature signature) {
        byte[] bArr2;
        int r82 = 2;
        char c10 = 1;
        char c11 = 0;
        View[][] viewArr = (View[][]) Array.newInstance((Class<?>) View.class, this.numMPCRounds, 3);
        byte[][][] bArr3 = (byte[][][]) Array.newInstance((Class<?>) Byte.TYPE, this.numMPCRounds, this.numMPCParties, this.digestSizeBytes);
        byte[][][] bArr4 = (byte[][][]) Array.newInstance((Class<?>) Byte.TYPE, this.numMPCRounds, 3, this.UnruhGWithInputBytes);
        byte[] bArrComputeSeeds = computeSeeds(r24, r25, r26, bArr);
        int r16 = this.numMPCParties * this.seedSizeBytes;
        System.arraycopy(bArrComputeSeeds, this.numMPCRounds * r16, signature.salt, 0, 32);
        Tape tape = new Tape(this);
        int r02 = this.stateSizeBytes;
        int r52 = Math.max(r02 * 9, r02 + this.andSizeBytes);
        byte[] bArr5 = new byte[r52];
        int r32 = 0;
        while (r32 < this.numMPCRounds) {
            viewArr[r32][c11] = new View(this);
            viewArr[r32][c10] = new View(this);
            viewArr[r32][r82] = new View(this);
            int r22 = 0;
            while (r22 < r82) {
                byte[][][] bArr6 = bArr4;
                int r19 = r22;
                int r11 = r32;
                byte[] bArr7 = bArr5;
                int r20 = r52;
                byte[][][] bArr8 = bArr3;
                Tape tape2 = tape;
                byte[] bArr9 = bArrComputeSeeds;
                if (!createRandomTape(bArrComputeSeeds, (this.seedSizeBytes * r22) + (r16 * r32), signature.salt, r11, r19, bArr7, this.stateSizeBytes + this.andSizeBytes)) {
                    LOG.fine("createRandomTape failed");
                    return -1;
                }
                int[] r03 = viewArr[r11][r19].inputShare;
                Pack.littleEndianToInt(bArr7, 0, r03);
                Utils.zeroTrailingBits(r03, this.stateSizeBits);
                System.arraycopy(bArr7, this.stateSizeBytes, tape2.tapes[r19], 0, this.andSizeBytes);
                r22 = r19 + 1;
                r32 = r11;
                bArr5 = bArr7;
                tape = tape2;
                bArr4 = bArr6;
                r52 = r20;
                bArr3 = bArr8;
                bArrComputeSeeds = bArr9;
                r82 = 2;
            }
            int r112 = r32;
            byte[] bArr10 = bArr5;
            int r202 = r52;
            byte[] bArr11 = bArrComputeSeeds;
            byte[][][] bArr12 = bArr3;
            byte[][][] bArr13 = bArr4;
            Tape tape3 = tape;
            int r83 = r16 * r112;
            if (!createRandomTape(bArr11, (this.seedSizeBytes * 2) + r83, signature.salt, r112, 2, tape3.tapes[2], this.andSizeBytes)) {
                LOG.fine("createRandomTape failed");
                return -1;
            }
            View[] viewArr2 = viewArr[r112];
            xor_three(viewArr2[2].inputShare, r24, viewArr2[0].inputShare, viewArr2[1].inputShare);
            tape3.pos = 0;
            int[] r04 = Pack.littleEndianToInt(bArr10, 0, r202 / 4);
            mpc_LowMC(tape3, viewArr[r112], r26, r04);
            Pack.intToLittleEndian(r04, bArr10, 0);
            int[] r05 = new int[16];
            View[] viewArr3 = viewArr[r112];
            xor_three(r05, viewArr3[0].outputShare, viewArr3[1].outputShare, viewArr3[2].outputShare);
            if (!subarrayEquals(r05, r25, this.stateSizeWords)) {
                LOG.fine("Simulation failed; output does not match public key (round = " + r112 + ")");
                return -1;
            }
            Commit(bArr11, (this.seedSizeBytes * 0) + r83, viewArr[r112][0], bArr12[r112][0]);
            Commit(bArr11, (this.seedSizeBytes * 1) + r83, viewArr[r112][1], bArr12[r112][1]);
            Commit(bArr11, (this.seedSizeBytes * 2) + r83, viewArr[r112][2], bArr12[r112][2]);
            if (this.transform == 1) {
                bArr2 = bArr11;
                G(0, bArr11, (this.seedSizeBytes * 0) + r83, viewArr[r112][0], bArr13[r112][0]);
                G(1, bArr2, (this.seedSizeBytes * 1) + r83, viewArr[r112][1], bArr13[r112][1]);
                G(2, bArr2, (this.seedSizeBytes * 2) + r83, viewArr[r112][2], bArr13[r112][2]);
            } else {
                bArr2 = bArr11;
            }
            r32 = r112 + 1;
            bArr5 = bArr10;
            tape = tape3;
            bArr4 = bArr13;
            bArrComputeSeeds = bArr2;
            r52 = r202;
            bArr3 = bArr12;
            r82 = 2;
            c10 = 1;
            c11 = 0;
        }
        byte[] bArr14 = bArrComputeSeeds;
        byte[][][] bArr15 = bArr3;
        byte[][][] bArr16 = bArr4;
        H3(r25, r26, viewArr, bArr15, signature.challengeBits, signature.salt, bArr, bArr16);
        for (int r84 = 0; r84 < this.numMPCRounds; r84++) {
            prove(signature.proofs[r84], getChallenge(signature.challengeBits, r84), bArr14, r16 * r84, viewArr[r84], bArr15[r84], this.transform != 1 ? null : bArr16[r84]);
        }
        return 0;
    }

    private boolean sign_picnic3(int[] r22, int[] r23, int[] r24, byte[] bArr, Signature2 signature2) {
        int r02;
        int r12;
        int r03;
        int r04;
        int r72 = this.seedSizeBytes + 32;
        byte[] bArr2 = new byte[r72];
        computeSaltAndRootSeed(bArr2, r22, r23, r24, bArr);
        byte[] bArrCopyOfRange = Arrays.copyOfRange(bArr2, 32, r72);
        signature2.salt = Arrays.copyOfRange(bArr2, 0, 32);
        Tree tree = new Tree(this, this.numMPCRounds, this.seedSizeBytes);
        tree.generateSeeds(bArrCopyOfRange, signature2.salt, 0);
        byte[][] leaves = tree.getLeaves();
        int leavesOffset = tree.getLeavesOffset();
        int r05 = this.numMPCRounds;
        Tape[] tapeArr = new Tape[r05];
        Tree[] treeArr = new Tree[r05];
        int r82 = 0;
        while (true) {
            r02 = this.numMPCRounds;
            if (r82 >= r02) {
                break;
            }
            tapeArr[r82] = new Tape(this);
            Tree tree2 = new Tree(this, this.numMPCParties, this.seedSizeBytes);
            treeArr[r82] = tree2;
            tree2.generateSeeds(leaves[r82 + leavesOffset], signature2.salt, r82);
            createRandomTapes(tapeArr[r82], treeArr[r82].getLeaves(), treeArr[r82].getLeavesOffset(), signature2.salt, r82);
            r82++;
        }
        byte[][] bArr3 = (byte[][]) Array.newInstance((Class<?>) Byte.TYPE, r02, this.stateSizeWords * 4);
        byte[] bArr4 = new byte[MAX_AUX_BYTES];
        int r06 = 0;
        while (true) {
            r12 = this.numMPCRounds;
            if (r06 >= r12) {
                break;
            }
            tapeArr[r06].computeAuxTape(bArr3[r06]);
            r06++;
        }
        byte[][][] bArr5 = (byte[][][]) Array.newInstance((Class<?>) Byte.TYPE, r12, this.numMPCParties, this.digestSizeBytes);
        int r6 = 0;
        while (true) {
            r03 = this.numMPCRounds;
            if (r6 >= r03) {
                break;
            }
            int r52 = 0;
            while (true) {
                r04 = this.numMPCParties;
                if (r52 < r04 - 1) {
                    int r18 = r52;
                    commit(bArr5[r6][r52], treeArr[r6].getLeaf(r52), null, signature2.salt, r6, r18);
                    r52 = r18 + 1;
                    r6 = r6;
                }
            }
            int r19 = r6;
            int r62 = r04 - 1;
            getAuxBits(bArr4, tapeArr[r19]);
            commit(bArr5[r19][r62], treeArr[r19].getLeaf(r62), bArr4, signature2.salt, r19, r62);
            r6 = r19 + 1;
        }
        Msg[] msgArr = new Msg[r03];
        int[] r63 = new int[this.stateSizeBits];
        int r53 = 0;
        while (true) {
            int r07 = this.numMPCRounds;
            if (r53 >= r07) {
                byte[][] bArr6 = (byte[][]) Array.newInstance((Class<?>) Byte.TYPE, r07, this.digestSizeBytes);
                byte[][] bArr7 = (byte[][]) Array.newInstance((Class<?>) Byte.TYPE, this.numMPCRounds, this.digestSizeBytes);
                for (int r13 = 0; r13 < this.numMPCRounds; r13++) {
                    commit_h(bArr6[r13], bArr5[r13]);
                    commit_v(bArr7[r13], bArr3[r13], msgArr[r13]);
                }
                Tree tree3 = new Tree(this, this.numMPCRounds, this.digestSizeBytes);
                tree3.buildMerkleTree(bArr7, signature2.salt);
                int r08 = this.numOpenedRounds;
                int[] r25 = new int[r08];
                signature2.challengeC = r25;
                int[] r32 = new int[r08];
                signature2.challengeP = r32;
                byte[] bArr8 = new byte[this.digestSizeBytes];
                signature2.challengeHash = bArr8;
                HCP(bArr8, r25, r32, bArr6, tree3.nodes[0], signature2.salt, r23, r24, bArr);
                int[] r26 = new int[1];
                signature2.cvInfo = tree3.openMerkleTree(getMissingLeavesList(signature2.challengeC), this.numMPCRounds - this.numOpenedRounds, r26);
                signature2.cvInfoLen = r26[0];
                int r09 = this.numMPCRounds;
                int r14 = this.seedSizeBytes;
                byte[] bArr9 = new byte[r09 * r14];
                signature2.iSeedInfo = bArr9;
                signature2.iSeedInfoLen = tree.revealSeeds(signature2.challengeC, this.numOpenedRounds, bArr9, r09 * r14);
                signature2.proofs = new Signature2.Proof2[this.numMPCRounds];
                for (int r010 = 0; r010 < this.numMPCRounds; r010++) {
                    if (contains(signature2.challengeC, this.numOpenedRounds, r010)) {
                        signature2.proofs[r010] = new Signature2.Proof2(this);
                        int r15 = indexOf(signature2.challengeC, this.numOpenedRounds, r010);
                        int[] r27 = {signature2.challengeP[r15]};
                        Signature2.Proof2 proof2 = signature2.proofs[r010];
                        int r42 = this.numMPCParties;
                        int r54 = this.seedSizeBytes;
                        byte[] bArr10 = new byte[r42 * r54];
                        proof2.seedInfo = bArr10;
                        proof2.seedInfoLen = treeArr[r010].revealSeeds(r27, 1, bArr10, r42 * r54);
                        if (signature2.challengeP[r15] != this.numMPCParties - 1) {
                            getAuxBits(signature2.proofs[r010].aux, tapeArr[r010]);
                        }
                        System.arraycopy(bArr3[r010], 0, signature2.proofs[r010].input, 0, this.stateSizeBytes);
                        System.arraycopy(msgArr[r010].msgs[signature2.challengeP[r15]], 0, signature2.proofs[r010].msgs, 0, this.andSizeBytes);
                        System.arraycopy(bArr5[r010][signature2.challengeP[r15]], 0, signature2.proofs[r010].C, 0, this.digestSizeBytes);
                    }
                }
                return true;
            }
            msgArr[r53] = new Msg(this);
            int[] r43 = Pack.littleEndianToInt(bArr3[r53], 0, this.stateSizeWords);
            xor_array(r43, r43, r22, 0);
            int r182 = r53;
            int[] r20 = r63;
            if (simulateOnline(r43, tapeArr[r53], r63, msgArr[r53], r24, r23) != 0) {
                LOG.fine("MPC simulation failed, aborting signature");
                return false;
            }
            Pack.intToLittleEndian(r43, bArr3[r182], 0);
            r53 = r182 + 1;
            r63 = r20;
        }
    }

    private int simulateOnline(int[] r72, Tape tape, int[] r92, Msg msg, int[] r11, int[] r12) {
        int[] r13 = new int[16];
        int[] r02 = new int[16];
        KMatricesWithPointer kMatricesWithPointerKMatrix = this.lowmcConstants.KMatrix(this, 0);
        matrix_mul(r13, r72, kMatricesWithPointerKMatrix.getData(), kMatricesWithPointerKMatrix.getMatrixPointer());
        xor_array(r02, r13, r11, 0);
        for (int r112 = 1; r112 <= this.numRounds; r112++) {
            tapesToWords(r92, tape);
            mpc_sbox(r02, r92, tape, msg);
            int r42 = r112 - 1;
            KMatricesWithPointer kMatricesWithPointerLMatrix = this.lowmcConstants.LMatrix(this, r42);
            matrix_mul(r02, r02, kMatricesWithPointerLMatrix.getData(), kMatricesWithPointerLMatrix.getMatrixPointer());
            KMatricesWithPointer kMatricesWithPointerRConstant = this.lowmcConstants.RConstant(this, r42);
            xor_array(r02, r02, kMatricesWithPointerRConstant.getData(), kMatricesWithPointerRConstant.getMatrixPointer());
            KMatricesWithPointer kMatricesWithPointerKMatrix2 = this.lowmcConstants.KMatrix(this, r112);
            matrix_mul(r13, r72, kMatricesWithPointerKMatrix2.getData(), kMatricesWithPointerKMatrix2.getMatrixPointer());
            xor_array(r02, r13, r02, 0);
        }
        return !subarrayEquals(r02, r12, this.stateSizeWords) ? -1 : 0;
    }

    private static boolean subarrayEquals(byte[] bArr, byte[] bArr2, int r6) {
        if (bArr.length < r6 || bArr2.length < r6) {
            return false;
        }
        for (int r02 = 0; r02 < r6; r02++) {
            if (bArr[r02] != bArr2[r02]) {
                return false;
            }
        }
        return true;
    }

    private static boolean subarrayEquals(int[] r42, int[] r52, int r6) {
        if (r42.length < r6 || r52.length < r6) {
            return false;
        }
        for (int r02 = 0; r02 < r6; r02++) {
            if (r42[r02] != r52[r02]) {
                return false;
            }
        }
        return true;
    }

    private void substitution(int[] r82) {
        for (int r02 = 0; r02 < this.numSboxes * 3; r02 += 3) {
            int r12 = r02 + 2;
            int bitFromWordArray = Utils.getBitFromWordArray(r82, r12);
            int r32 = r02 + 1;
            int bitFromWordArray2 = Utils.getBitFromWordArray(r82, r32);
            int bitFromWordArray3 = Utils.getBitFromWordArray(r82, r02);
            Utils.setBitInWordArray(r82, r12, (bitFromWordArray2 & bitFromWordArray3) ^ bitFromWordArray);
            int r13 = bitFromWordArray ^ bitFromWordArray2;
            Utils.setBitInWordArray(r82, r32, (bitFromWordArray & bitFromWordArray3) ^ r13);
            Utils.setBitInWordArray(r82, r02, (r13 ^ bitFromWordArray3) ^ (bitFromWordArray & bitFromWordArray2));
        }
    }

    private void tapesToWords(int[] r32, Tape tape) {
        for (int r02 = 0; r02 < this.stateSizeBits; r02++) {
            r32[r02] = tape.tapesToWord();
        }
    }

    private void updateDigest(int[] r32, byte[] bArr) {
        Pack.intToLittleEndian(r32, bArr, 0);
        this.digest.update(bArr, 0, this.stateSizeBytes);
    }

    private int verify(Signature signature, int[] r29, int[] r30, byte[] bArr) {
        byte[][][] bArr2 = (byte[][][]) Array.newInstance((Class<?>) Byte.TYPE, this.numMPCRounds, this.numMPCParties, this.digestSizeBytes);
        byte[][][] bArr3 = (byte[][][]) Array.newInstance((Class<?>) Byte.TYPE, this.numMPCRounds, 3, this.UnruhGWithInputBytes);
        int[][][] r18 = (int[][][]) Array.newInstance((Class<?>) Integer.TYPE, this.numMPCRounds, 3, this.stateSizeBytes);
        Signature.Proof[] proofArr = signature.proofs;
        byte[] bArr4 = signature.challengeBits;
        int r02 = this.stateSizeBytes;
        byte[] bArr5 = new byte[Math.max(r02 * 6, r02 + this.andSizeBytes)];
        Tape tape = new Tape(this);
        int r03 = this.numMPCRounds;
        View[] viewArr = new View[r03];
        View[] viewArr2 = new View[r03];
        int r32 = 0;
        while (true) {
            int r04 = this.numMPCRounds;
            if (r32 >= r04) {
                byte[] bArr6 = new byte[Utils.numBytes(r04 * 2)];
                H3(r29, r30, r18, bArr2, bArr6, signature.salt, bArr, bArr3);
                if (subarrayEquals(bArr4, bArr6, Utils.numBytes(this.numMPCRounds * 2))) {
                    return 0;
                }
                LOG.fine("Invalid signature. Did not verify");
                return -1;
            }
            viewArr[r32] = new View(this);
            View view = new View(this);
            viewArr2[r32] = view;
            int r21 = r32;
            View[] viewArr3 = viewArr2;
            View[] viewArr4 = viewArr;
            Tape tape2 = tape;
            byte[] bArr7 = bArr5;
            byte[] bArr8 = bArr4;
            Signature.Proof[] proofArr2 = proofArr;
            if (!verifyProof(proofArr[r32], viewArr[r32], view, getChallenge(bArr4, r32), signature.salt, r21, bArr5, r30, tape2)) {
                LOG.fine("Invalid signature. Did not verify");
                return -1;
            }
            int challenge = getChallenge(bArr8, r21);
            Commit(proofArr2[r21].seed1, 0, viewArr4[r21], bArr2[r21][challenge]);
            int r82 = (challenge + 1) % 3;
            Commit(proofArr2[r21].seed2, 0, viewArr3[r21], bArr2[r21][r82]);
            int r92 = (challenge + 2) % 3;
            System.arraycopy(proofArr2[r21].view3Commitment, 0, bArr2[r21][r92], 0, this.digestSizeBytes);
            if (this.transform == 1) {
                G(challenge, proofArr2[r21].seed1, 0, viewArr4[r21], bArr3[r21][challenge]);
                G(r82, proofArr2[r21].seed2, 0, viewArr3[r21], bArr3[r21][r82]);
                System.arraycopy(proofArr2[r21].view3UnruhG, 0, bArr3[r21][r92], 0, challenge == 0 ? this.UnruhGWithInputBytes : this.UnruhGWithoutInputBytes);
            }
            r18[r21][challenge] = viewArr4[r21].outputShare;
            r18[r21][r82] = viewArr3[r21].outputShare;
            int[] r05 = new int[this.stateSizeWords];
            xor_three(r05, viewArr4[r21].outputShare, viewArr3[r21].outputShare, r29);
            r18[r21][r92] = r05;
            r32 = r21 + 1;
            bArr4 = bArr8;
            viewArr = viewArr4;
            tape = tape2;
            viewArr2 = viewArr3;
            bArr5 = bArr7;
            proofArr = proofArr2;
        }
    }

    private int verify_picnic3(Signature2 signature2, int[] r33, int[] r34, byte[] bArr) {
        int r12;
        Logger logger;
        String str;
        int r15;
        Tree[] treeArr;
        byte[] bArr2;
        Tree tree;
        int r21;
        Tree tree2;
        int r14;
        byte[][][] bArr3 = (byte[][][]) Array.newInstance((Class<?>) Byte.TYPE, this.numMPCRounds, this.numMPCParties, this.digestSizeBytes);
        byte[][] bArr4 = (byte[][]) Array.newInstance((Class<?>) Byte.TYPE, this.numMPCRounds, this.digestSizeBytes);
        byte[][] bArr5 = (byte[][]) Array.newInstance((Class<?>) Byte.TYPE, this.numMPCRounds, this.digestSizeBytes);
        Msg[] msgArr = new Msg[this.numMPCRounds];
        Tree tree3 = new Tree(this, this.numMPCRounds, this.digestSizeBytes);
        byte[] bArr6 = new byte[64];
        int r02 = this.numMPCRounds;
        Tree[] treeArr2 = new Tree[r02];
        Tape[] tapeArr = new Tape[r02];
        Tree tree4 = new Tree(this, this.numMPCRounds, this.seedSizeBytes);
        if (tree4.reconstructSeeds(signature2.challengeC, this.numOpenedRounds, signature2.iSeedInfo, signature2.iSeedInfoLen, signature2.salt, 0) != 0) {
            return -1;
        }
        int r13 = 0;
        while (true) {
            if (r13 < this.numMPCRounds) {
                if (contains(signature2.challengeC, this.numOpenedRounds, r13)) {
                    treeArr2[r13] = new Tree(this, this.numMPCParties, this.seedSizeBytes);
                    int[] r42 = {signature2.challengeP[indexOf(signature2.challengeC, this.numOpenedRounds, r13)]};
                    Tree tree5 = treeArr2[r13];
                    Signature2.Proof2 proof2 = signature2.proofs[r13];
                    if (tree5.reconstructSeeds(r42, 1, proof2.seedInfo, proof2.seedInfoLen, signature2.salt, r13) != 0) {
                        logger = LOG;
                        str = "Failed to reconstruct seeds for round " + r13;
                        break;
                    }
                } else {
                    Tree tree6 = new Tree(this, this.numMPCParties, this.seedSizeBytes);
                    treeArr2[r13] = tree6;
                    tree6.generateSeeds(tree4.getLeaf(r13), signature2.salt, r13);
                }
                r13++;
            } else {
                int r72 = this.numMPCParties - 1;
                byte[] bArr7 = new byte[MAX_AUX_BYTES];
                int r32 = 0;
                while (r32 < this.numMPCRounds) {
                    Tape tape = new Tape(this);
                    tapeArr[r32] = tape;
                    byte[] bArr8 = bArr6;
                    int r17 = r32;
                    byte[] bArr9 = bArr7;
                    Tape[] tapeArr2 = tapeArr;
                    createRandomTapes(tape, treeArr2[r32].getLeaves(), treeArr2[r32].getLeavesOffset(), signature2.salt, r17);
                    if (contains(signature2.challengeC, this.numOpenedRounds, r17)) {
                        r15 = r17;
                        treeArr = treeArr2;
                        bArr2 = bArr9;
                        int r6 = signature2.challengeP[indexOf(signature2.challengeC, this.numOpenedRounds, r15)];
                        int r52 = 0;
                        while (r52 < r72) {
                            if (r52 != r6) {
                                r21 = r52;
                                tree2 = tree3;
                                r14 = r6;
                                commit(bArr3[r15][r52], treeArr[r15].getLeaf(r52), null, signature2.salt, r15, r21);
                            } else {
                                r21 = r52;
                                tree2 = tree3;
                                r14 = r6;
                            }
                            r52 = r21 + 1;
                            r6 = r14;
                            tree3 = tree2;
                        }
                        tree = tree3;
                        int r142 = r6;
                        if (r72 != r142) {
                            commit(bArr3[r15][r72], treeArr[r15].getLeaf(r72), signature2.proofs[r15].aux, signature2.salt, r15, r72);
                        }
                        System.arraycopy(signature2.proofs[r15].C, 0, bArr3[r15][r142], 0, this.digestSizeBytes);
                    } else {
                        tapeArr2[r17].computeAuxTape(null);
                        int r152 = 0;
                        while (r152 < r72) {
                            commit(bArr3[r17][r152], treeArr2[r17].getLeaf(r152), null, signature2.salt, r17, r152);
                            r152++;
                            treeArr2 = treeArr2;
                        }
                        r15 = r17;
                        treeArr = treeArr2;
                        getAuxBits(bArr9, tapeArr2[r15]);
                        bArr2 = bArr9;
                        commit(bArr3[r15][r72], treeArr[r15].getLeaf(r72), bArr9, signature2.salt, r17, r72);
                        tree = tree3;
                    }
                    r32 = r15 + 1;
                    bArr7 = bArr2;
                    tapeArr = tapeArr2;
                    treeArr2 = treeArr;
                    bArr6 = bArr8;
                    tree3 = tree;
                }
                Tape[] tapeArr3 = tapeArr;
                Tree tree7 = tree3;
                byte[] bArr10 = bArr6;
                for (int r03 = 0; r03 < this.numMPCRounds; r03++) {
                    commit_h(bArr4[r03], bArr3[r03]);
                }
                int[] r82 = new int[this.stateSizeBits];
                int r143 = 0;
                while (true) {
                    int r04 = this.numMPCRounds;
                    if (r143 < r04) {
                        msgArr[r143] = new Msg(this);
                        if (contains(signature2.challengeC, this.numOpenedRounds, r143)) {
                            int r05 = signature2.challengeP[indexOf(signature2.challengeC, this.numOpenedRounds, r143)];
                            if (r05 != r72) {
                                tapeArr3[r143].setAuxBits(signature2.proofs[r143].aux);
                            }
                            System.arraycopy(signature2.proofs[r143].msgs, 0, msgArr[r143].msgs[r05], 0, this.andSizeBytes);
                            Arrays.fill(tapeArr3[r143].tapes[r05], (byte) 0);
                            msgArr[r143].unopened = r05;
                            byte[] bArr11 = new byte[this.stateSizeWords * 4];
                            byte[] bArr12 = signature2.proofs[r143].input;
                            System.arraycopy(bArr12, 0, bArr11, 0, bArr12.length);
                            int r16 = this.stateSizeWords;
                            int[] r22 = new int[r16];
                            Pack.littleEndianToInt(bArr11, 0, r22, 0, r16);
                            if (simulateOnline(r22, tapeArr3[r143], r82, msgArr[r143], r34, r33) != 0) {
                                logger = LOG;
                                str = "MPC simulation failed for round " + r143 + ", signature invalid";
                                break;
                            }
                            commit_v(bArr5[r143], signature2.proofs[r143].input, msgArr[r143]);
                        } else {
                            bArr5[r143] = null;
                        }
                        r143++;
                    } else {
                        if (tree7.addMerkleNodes(getMissingLeavesList(signature2.challengeC), r04 - this.numOpenedRounds, signature2.cvInfo, signature2.cvInfoLen) != 0 || (r12 = tree7.verifyMerkleTree(bArr5, signature2.salt)) != 0) {
                            return -1;
                        }
                        HCP(bArr10, null, null, bArr4, tree7.nodes[0], signature2.salt, r33, r34, bArr);
                        if (subarrayEquals(signature2.challengeHash, bArr10, this.digestSizeBytes)) {
                            return r12;
                        }
                        logger = LOG;
                        str = "Challenge does not match, signature invalid";
                    }
                }
            }
        }
        logger.fine(str);
        return -1;
    }

    private void wordToMsgs(int r52, Msg msg) {
        for (int r02 = 0; r02 < this.numMPCParties; r02++) {
            Utils.setBit(msg.msgs[r02], msg.pos, (byte) Utils.getBit(r52, r02));
        }
        msg.pos++;
    }

    private void xor_three(int[] r42, int[] r52, int[] r6, int[] r72) {
        for (int r02 = 0; r02 < this.stateSizeWords; r02++) {
            r42[r02] = (r52[r02] ^ r6[r02]) ^ r72[r02];
        }
    }

    public void aux_mpc_sbox(int[] r82, int[] r92, Tape tape) {
        for (int r02 = 0; r02 < this.numSboxes * 3; r02 += 3) {
            int r12 = r02 + 2;
            int bitFromWordArray = Utils.getBitFromWordArray(r82, r12);
            int r32 = r02 + 1;
            int bitFromWordArray2 = Utils.getBitFromWordArray(r82, r32);
            int bitFromWordArray3 = Utils.getBitFromWordArray(r82, r02);
            int bitFromWordArray4 = Utils.getBitFromWordArray(r92, r12);
            int bitFromWordArray5 = Utils.getBitFromWordArray(r92, r32);
            aux_mpc_AND(bitFromWordArray, bitFromWordArray2, ((Utils.getBitFromWordArray(r92, r02) ^ bitFromWordArray) ^ bitFromWordArray2) ^ bitFromWordArray3, tape);
            aux_mpc_AND(bitFromWordArray2, bitFromWordArray3, bitFromWordArray4 ^ bitFromWordArray, tape);
            aux_mpc_AND(bitFromWordArray3, bitFromWordArray, (bitFromWordArray5 ^ bitFromWordArray) ^ bitFromWordArray2, tape);
        }
    }

    public void crypto_sign(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        if (picnic_sign(bArr3, bArr2, bArr)) {
            System.arraycopy(bArr2, 0, bArr, 4, bArr2.length);
        }
    }

    public void crypto_sign_keypair(byte[] bArr, byte[] bArr2, SecureRandom secureRandom) {
        int r02 = this.stateSizeWords;
        byte[] bArr3 = new byte[r02 * 4];
        byte[] bArr4 = new byte[r02 * 4];
        byte[] bArr5 = new byte[r02 * 4];
        picnic_keygen(bArr3, bArr4, bArr5, secureRandom);
        picnic_write_public_key(bArr4, bArr3, bArr);
        picnic_write_private_key(bArr5, bArr4, bArr3, bArr2);
    }

    public boolean crypto_sign_open(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        if (picnic_verify(bArr3, Arrays.copyOfRange(bArr2, 4, bArr.length + 4), bArr2, Pack.littleEndianToInt(bArr2, 0)) == -1) {
            return false;
        }
        System.arraycopy(bArr2, 4, bArr, 0, bArr.length);
        return true;
    }

    public int getChallenge(byte[] bArr, int r22) {
        return Utils.getCrumbAligned(bArr, r22);
    }

    public int getPublicKeySize() {
        return this.CRYPTO_PUBLICKEYBYTES;
    }

    public int getSecretKeySize() {
        return this.CRYPTO_SECRETKEYBYTES;
    }

    public int getSignatureSize(int r22) {
        return this.CRYPTO_BYTES + r22;
    }

    public int getTrueSignatureSize() {
        return this.signatureLength;
    }

    public void matrix_mul(int[] r82, int[] r92, int[] r10, int r11) {
        matrix_mul_offset(r82, 0, r92, 0, r10, r11);
    }

    public void matrix_mul_offset(int[] r12, int r13, int[] r14, int r15, int[] r16, int r17) {
        int[] r18 = new int[16];
        int r22 = this.stateSizeWords;
        r18[r22 - 1] = 0;
        int r32 = this.stateSizeBits;
        int r52 = r32 / 32;
        int r23 = (r22 * 32) - r32;
        int r33 = Bits.bitPermuteStepSimple(Bits.bitPermuteStepSimple(Bits.bitPermuteStepSimple((-1) >>> r23, 1431655765, 1), 858993459, 2), 252645135, 4);
        for (int r6 = 0; r6 < this.stateSizeBits; r6++) {
            int r82 = 0;
            for (int r72 = 0; r72 < r52; r72++) {
                r82 ^= r16[r17 + ((this.stateSizeWords * r6) + r72)] & r14[r15 + r72];
            }
            if (r23 > 0) {
                r82 ^= (r16[r17 + ((this.stateSizeWords * r6) + r52)] & r14[r15 + r52]) & r33;
            }
            Utils.setBit(r18, r6, Utils.parity32(r82));
        }
        System.arraycopy(r18, 0, r12, r13, this.stateSizeWords);
    }

    public void mpc_AND_verify(int[] r72, int[] r82, int[] r92, Tape tape, View view, View view2) {
        byte bit = Utils.getBit(tape.tapes[0], tape.pos);
        byte bit2 = Utils.getBit(tape.tapes[1], tape.pos);
        int r42 = r72[0];
        int r73 = r72[1];
        int r52 = r82[0];
        int r74 = ((((r73 & r52) ^ (r82[1] & r42)) ^ (r42 & r52)) ^ bit) ^ bit2;
        r92[0] = r74;
        Utils.setBit(view.communicatedBits, tape.pos, (byte) r74);
        r92[1] = Utils.getBit(view2.communicatedBits, tape.pos);
        tape.pos++;
    }

    public void mpc_LowMC_verify(View view, View view2, Tape tape, int[] r21, int[] r22, int r23) {
        Arrays.fill(r21, 0, r21.length, 0);
        mpc_xor_constant_verify(r21, r22, 0, this.stateSizeWords, r23);
        KMatricesWithPointer kMatricesWithPointerKMatrix = this.lowmcConstants.KMatrix(this, 0);
        matrix_mul_offset(r21, 0, view.inputShare, 0, kMatricesWithPointerKMatrix.getData(), kMatricesWithPointerKMatrix.getMatrixPointer());
        matrix_mul_offset(r21, this.stateSizeWords, view2.inputShare, 0, kMatricesWithPointerKMatrix.getData(), kMatricesWithPointerKMatrix.getMatrixPointer());
        mpc_xor(r21, r21, 2);
        for (int r14 = 1; r14 <= this.numRounds; r14++) {
            KMatricesWithPointer kMatricesWithPointerKMatrix2 = this.lowmcConstants.KMatrix(this, r14);
            matrix_mul_offset(r21, 0, view.inputShare, 0, kMatricesWithPointerKMatrix2.getData(), kMatricesWithPointerKMatrix2.getMatrixPointer());
            matrix_mul_offset(r21, this.stateSizeWords, view2.inputShare, 0, kMatricesWithPointerKMatrix2.getData(), kMatricesWithPointerKMatrix2.getMatrixPointer());
            mpc_substitution_verify(r21, tape, view, view2);
            int r72 = r14 - 1;
            KMatricesWithPointer kMatricesWithPointerLMatrix = this.lowmcConstants.LMatrix(this, r72);
            int r12 = this.stateSizeWords;
            mpc_matrix_mul(r21, r12 * 2, r21, r12 * 2, kMatricesWithPointerLMatrix.getData(), kMatricesWithPointerLMatrix.getMatrixPointer(), 2);
            KMatricesWithPointer kMatricesWithPointerRConstant = this.lowmcConstants.RConstant(this, r72);
            mpc_xor_constant_verify(r21, kMatricesWithPointerRConstant.getData(), kMatricesWithPointerRConstant.getMatrixPointer(), this.stateSizeWords, r23);
            mpc_xor(r21, r21, 2);
        }
        int r02 = this.stateSizeWords;
        System.arraycopy(r21, r02 * 2, view.outputShare, 0, r02);
        int r03 = this.stateSizeWords;
        System.arraycopy(r21, r03 * 3, view2.outputShare, 0, r03);
    }

    public void mpc_substitution_verify(int[] r19, Tape tape, View view, View view2) {
        int[] r10 = new int[2];
        int[] r11 = new int[2];
        int[] r12 = new int[2];
        int[] r13 = new int[2];
        int[] r14 = new int[2];
        int[] r15 = new int[2];
        int r6 = 0;
        while (r6 < this.numSboxes * 3) {
            for (int r02 = 0; r02 < 2; r02++) {
                int r16 = ((r02 + 2) * this.stateSizeWords * 32) + r6;
                r10[r02] = Utils.getBitFromWordArray(r19, r16 + 2);
                r11[r02] = Utils.getBitFromWordArray(r19, r16 + 1);
                r12[r02] = Utils.getBitFromWordArray(r19, r16);
            }
            int r17 = r6;
            mpc_AND_verify(r10, r11, r13, tape, view, view2);
            mpc_AND_verify(r11, r12, r14, tape, view, view2);
            mpc_AND_verify(r12, r10, r15, tape, view, view2);
            for (int r03 = 0; r03 < 2; r03++) {
                int r18 = ((r03 + 2) * this.stateSizeWords * 32) + r17;
                Utils.setBitInWordArray(r19, r18 + 2, r10[r03] ^ r14[r03]);
                Utils.setBitInWordArray(r19, r18 + 1, (r10[r03] ^ r11[r03]) ^ r15[r03]);
                Utils.setBitInWordArray(r19, r18, ((r10[r03] ^ r11[r03]) ^ r12[r03]) ^ r13[r03]);
            }
            r6 = r17 + 3;
        }
    }

    public void prove(Signature.Proof proof, int r82, byte[] bArr, int r10, View[] viewArr, byte[][] bArr2, byte[][] bArr3) {
        if (r82 == 0) {
            int r32 = this.seedSizeBytes;
            System.arraycopy(bArr, (r32 * 0) + r10, proof.seed1, 0, r32);
            int r33 = this.seedSizeBytes;
            System.arraycopy(bArr, (r33 * 1) + r10, proof.seed2, 0, r33);
        } else if (r82 == 1) {
            int r34 = this.seedSizeBytes;
            System.arraycopy(bArr, (r34 * 1) + r10, proof.seed1, 0, r34);
            int r35 = this.seedSizeBytes;
            System.arraycopy(bArr, (r35 * 2) + r10, proof.seed2, 0, r35);
        } else {
            if (r82 != 2) {
                LOG.fine("Invalid challenge");
                throw new IllegalArgumentException("challenge");
            }
            int r36 = this.seedSizeBytes;
            System.arraycopy(bArr, (r36 * 2) + r10, proof.seed1, 0, r36);
            int r37 = this.seedSizeBytes;
            System.arraycopy(bArr, (r37 * 0) + r10, proof.seed2, 0, r37);
        }
        if (r82 == 1 || r82 == 2) {
            System.arraycopy(viewArr[2].inputShare, 0, proof.inputShare, 0, this.stateSizeWords);
        }
        System.arraycopy(viewArr[(r82 + 1) % 3].communicatedBits, 0, proof.communicatedBits, 0, this.andSizeBytes);
        int r92 = (r82 + 2) % 3;
        System.arraycopy(bArr2[r92], 0, proof.view3Commitment, 0, this.digestSizeBytes);
        if (this.transform == 1) {
            System.arraycopy(bArr3[r92], 0, proof.view3UnruhG, 0, r82 == 0 ? this.UnruhGWithInputBytes : this.UnruhGWithoutInputBytes);
        }
    }

    public int serializeSignature(Signature signature, byte[] bArr, int r12) {
        Signature.Proof[] proofArr = signature.proofs;
        byte[] bArr2 = signature.challengeBits;
        int r22 = Utils.numBytes(this.numMPCRounds * 2) + 32;
        int r52 = this.numMPCRounds;
        int r6 = (((this.seedSizeBytes * 2) + this.stateSizeBytes + this.andSizeBytes + this.digestSizeBytes) * r52) + r22;
        if (this.transform == 1) {
            r6 += this.UnruhGWithoutInputBytes * r52;
        }
        if (this.CRYPTO_BYTES < r6) {
            return -1;
        }
        System.arraycopy(bArr2, 0, bArr, r12, Utils.numBytes(r52 * 2));
        int r23 = Utils.numBytes(this.numMPCRounds * 2) + r12;
        System.arraycopy(signature.salt, 0, bArr, r23, 32);
        int r24 = r23 + 32;
        for (int r10 = 0; r10 < this.numMPCRounds; r10++) {
            int challenge = getChallenge(bArr2, r10);
            System.arraycopy(proofArr[r10].view3Commitment, 0, bArr, r24, this.digestSizeBytes);
            int r25 = r24 + this.digestSizeBytes;
            if (this.transform == 1) {
                int r62 = challenge == 0 ? this.UnruhGWithInputBytes : this.UnruhGWithoutInputBytes;
                System.arraycopy(proofArr[r10].view3UnruhG, 0, bArr, r25, r62);
                r25 += r62;
            }
            System.arraycopy(proofArr[r10].communicatedBits, 0, bArr, r25, this.andSizeBytes);
            int r26 = r25 + this.andSizeBytes;
            System.arraycopy(proofArr[r10].seed1, 0, bArr, r26, this.seedSizeBytes);
            int r63 = this.seedSizeBytes;
            int r27 = r26 + r63;
            System.arraycopy(proofArr[r10].seed2, 0, bArr, r27, r63);
            r24 = r27 + this.seedSizeBytes;
            if (challenge == 1 || challenge == 2) {
                Pack.intToLittleEndian(proofArr[r10].inputShare, 0, this.stateSizeWords, bArr, r24);
                r24 += this.stateSizeBytes;
            }
        }
        return r24 - r12;
    }

    public boolean verifyProof(Signature.Proof proof, View view, View view2, int r22, byte[] bArr, int r24, byte[] bArr2, int[] r26, Tape tape) {
        boolean z10;
        boolean z11;
        System.arraycopy(proof.communicatedBits, 0, view2.communicatedBits, 0, this.andSizeBytes);
        tape.pos = 0;
        if (r22 == 0) {
            z10 = true;
            boolean zCreateRandomTape = createRandomTape(proof.seed1, 0, bArr, r24, 0, bArr2, this.stateSizeBytes + this.andSizeBytes);
            Pack.littleEndianToInt(bArr2, 0, view.inputShare);
            System.arraycopy(bArr2, this.stateSizeBytes, tape.tapes[0], 0, this.andSizeBytes);
            z11 = zCreateRandomTape && createRandomTape(proof.seed2, 0, bArr, r24, 1, bArr2, this.stateSizeBytes + this.andSizeBytes);
            if (z11) {
                Pack.littleEndianToInt(bArr2, 0, view2.inputShare);
                System.arraycopy(bArr2, this.stateSizeBytes, tape.tapes[1], 0, this.andSizeBytes);
            }
        } else if (r22 == 1) {
            z10 = true;
            boolean zCreateRandomTape2 = createRandomTape(proof.seed1, 0, bArr, r24, 1, bArr2, this.stateSizeBytes + this.andSizeBytes);
            Pack.littleEndianToInt(bArr2, 0, view.inputShare);
            System.arraycopy(bArr2, this.stateSizeBytes, tape.tapes[0], 0, this.andSizeBytes);
            z11 = zCreateRandomTape2 && createRandomTape(proof.seed2, 0, bArr, r24, 2, tape.tapes[1], this.andSizeBytes);
            if (z11) {
                System.arraycopy(proof.inputShare, 0, view2.inputShare, 0, this.stateSizeWords);
            }
        } else if (r22 != 2) {
            LOG.fine("Invalid Challenge!");
            z11 = false;
            z10 = true;
        } else {
            z10 = true;
            boolean zCreateRandomTape3 = createRandomTape(proof.seed1, 0, bArr, r24, 2, tape.tapes[0], this.andSizeBytes);
            System.arraycopy(proof.inputShare, 0, view.inputShare, 0, this.stateSizeWords);
            z11 = zCreateRandomTape3 && createRandomTape(proof.seed2, 0, bArr, r24, 0, bArr2, this.stateSizeBytes + this.andSizeBytes);
            if (z11) {
                Pack.littleEndianToInt(bArr2, 0, view2.inputShare);
                System.arraycopy(bArr2, this.stateSizeBytes, tape.tapes[1], 0, this.andSizeBytes);
            }
        }
        if (!z11) {
            LOG.fine("Failed to generate random tapes, signature verification will fail (but signature may actually be valid)");
            return false;
        }
        Utils.zeroTrailingBits(view.inputShare, this.stateSizeBits);
        Utils.zeroTrailingBits(view2.inputShare, this.stateSizeBits);
        mpc_LowMC_verify(view, view2, tape, Pack.littleEndianToInt(bArr2, 0, bArr2.length / 4), r26, r22);
        return z10;
    }

    public void xor_array(int[] r42, int[] r52, int[] r6, int r72) {
        for (int r02 = 0; r02 < this.stateSizeWords; r02++) {
            r42[r02] = r52[r02] ^ r6[r02 + r72];
        }
    }
}
