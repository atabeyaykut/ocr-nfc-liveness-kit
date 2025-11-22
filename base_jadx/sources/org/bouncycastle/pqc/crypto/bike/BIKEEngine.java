package org.bouncycastle.pqc.crypto.bike;

import java.security.SecureRandom;
import org.bouncycastle.crypto.digests.SHA3Digest;
import org.bouncycastle.crypto.digests.SHAKEDigest;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.Bytes;

/* loaded from: classes2.dex */
class BIKEEngine {
    private int L_BYTE;
    private int R2_BYTE;
    private int R_BYTE;
    private final BIKERing bikeRing;
    private int hw;
    private int nbIter;

    /* renamed from: r, reason: collision with root package name */
    private int f11844r;

    /* renamed from: t, reason: collision with root package name */
    private int f11845t;
    private int tau;
    private int w;

    public BIKEEngine(int r12, int r22, int r32, int r42, int r52, int r6) {
        this.f11844r = r12;
        this.w = r22;
        this.f11845t = r32;
        this.nbIter = r52;
        this.tau = r6;
        this.hw = r22 / 2;
        this.L_BYTE = r42 / 8;
        this.R_BYTE = (r12 + 7) >>> 3;
        this.R2_BYTE = ((r12 * 2) + 7) >>> 3;
        this.bikeRing = new BIKERing(r12);
    }

    private void BFIter(byte[] bArr, byte[] bArr2, int r14, int[] r15, int[] r16, int[] r17, int[] r18, byte[] bArr3, byte[] bArr4, byte[] bArr5) {
        ctrAll(r17, bArr, bArr5);
        int r02 = bArr5[0] & 255;
        int r22 = ((r02 - r14) >> 31) + 1;
        int r03 = ((r02 - (r14 - this.tau)) >> 31) + 1;
        byte b10 = (byte) r22;
        bArr2[0] = (byte) (bArr2[0] ^ b10);
        bArr3[0] = b10;
        bArr4[0] = (byte) r03;
        int r04 = 1;
        while (true) {
            int r23 = this.f11844r;
            if (r04 >= r23) {
                break;
            }
            int r32 = bArr5[r04] & 255;
            int r42 = ((r32 - r14) >> 31) + 1;
            int r33 = ((r32 - (r14 - this.tau)) >> 31) + 1;
            int r24 = r23 - r04;
            byte b11 = (byte) r42;
            bArr2[r24] = (byte) (bArr2[r24] ^ b11);
            bArr3[r04] = b11;
            bArr4[r04] = (byte) r33;
            r04++;
        }
        ctrAll(r18, bArr, bArr5);
        int r05 = bArr5[0] & 255;
        int r25 = ((r05 - r14) >> 31) + 1;
        int r06 = ((r05 - (r14 - this.tau)) >> 31) + 1;
        int r34 = this.f11844r;
        byte b12 = (byte) r25;
        bArr2[r34] = (byte) (bArr2[r34] ^ b12);
        bArr3[r34] = b12;
        bArr4[r34] = (byte) r06;
        int r07 = 1;
        while (true) {
            int r26 = this.f11844r;
            if (r07 >= r26) {
                break;
            }
            int r35 = bArr5[r07] & 255;
            int r43 = ((r35 - r14) >> 31) + 1;
            int r36 = ((r35 - (r14 - this.tau)) >> 31) + 1;
            int r52 = (r26 + r26) - r07;
            byte b13 = (byte) r43;
            bArr2[r52] = (byte) (bArr2[r52] ^ b13);
            bArr3[r26 + r07] = b13;
            bArr4[r26 + r07] = (byte) r36;
            r07++;
        }
        for (int r10 = 0; r10 < this.f11844r * 2; r10++) {
            recomputeSyndrome(bArr, r10, r15, r16, bArr3[r10] != 0);
        }
    }

    private void BFIter2(byte[] bArr, byte[] bArr2, int r15, int[] r16, int[] r17, int[] r18, int[] r19, byte[] bArr3) {
        int[] r82 = new int[this.f11844r * 2];
        ctrAll(r18, bArr, bArr3);
        int r12 = (((bArr3[0] & 255) - r15) >> 31) + 1;
        bArr2[0] = (byte) (bArr2[0] ^ ((byte) r12));
        r82[0] = r12;
        int r13 = 1;
        while (true) {
            int r22 = this.f11844r;
            if (r13 >= r22) {
                break;
            }
            int r32 = (((bArr3[r13] & 255) - r15) >> 31) + 1;
            int r23 = r22 - r13;
            bArr2[r23] = (byte) (bArr2[r23] ^ ((byte) r32));
            r82[r13] = r32;
            r13++;
        }
        ctrAll(r19, bArr, bArr3);
        int r14 = (((bArr3[0] & 255) - r15) >> 31) + 1;
        int r24 = this.f11844r;
        bArr2[r24] = (byte) (bArr2[r24] ^ ((byte) r14));
        r82[r24] = r14;
        int r110 = 1;
        while (true) {
            int r25 = this.f11844r;
            if (r110 >= r25) {
                break;
            }
            int r33 = (((bArr3[r110] & 255) - r15) >> 31) + 1;
            int r42 = (r25 + r25) - r110;
            bArr2[r42] = (byte) (bArr2[r42] ^ ((byte) r33));
            r82[r25 + r110] = r33;
            r110++;
        }
        for (int r11 = 0; r11 < this.f11844r * 2; r11++) {
            recomputeSyndrome(bArr, r11, r16, r17, r82[r11] == 1);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v0 */
    /* JADX WARN: Type inference failed for: r10v1, types: [boolean] */
    /* JADX WARN: Type inference failed for: r10v2 */
    /* JADX WARN: Type inference failed for: r4v2 */
    /* JADX WARN: Type inference failed for: r4v3, types: [boolean] */
    /* JADX WARN: Type inference failed for: r4v4 */
    private void BFMaskedIter(byte[] bArr, byte[] bArr2, byte[] bArr3, int r16, int[] r17, int[] r18, int[] r19, int[] r20) {
        int[] r82 = new int[this.f11844r * 2];
        int r22 = 0;
        while (true) {
            if (r22 >= this.f11844r) {
                break;
            }
            if (bArr3[r22] == 1) {
                ?? r10 = ctr(r19, bArr, r22) < r16 ? 0 : 1;
                updateNewErrorIndex(bArr2, r22, r10);
                r82[r22] = r10;
            }
            r22++;
        }
        int r23 = 0;
        while (true) {
            int r32 = this.f11844r;
            if (r23 >= r32) {
                break;
            }
            if (bArr3[r32 + r23] == 1) {
                ?? r42 = ctr(r20, bArr, r23) >= r16 ? 1 : 0;
                updateNewErrorIndex(bArr2, this.f11844r + r23, r42);
                r82[this.f11844r + r23] = r42;
            }
            r23++;
        }
        for (int r11 = 0; r11 < this.f11844r * 2; r11++) {
            recomputeSyndrome(bArr, r11, r17, r18, r82[r11] == 1);
        }
    }

    private byte[] BGFDecoder(byte[] bArr, int[] r22, int[] r23) {
        byte[] bArr2 = new byte[this.f11844r * 2];
        int[] columnFromCompactVersion = getColumnFromCompactVersion(r22);
        int[] columnFromCompactVersion2 = getColumnFromCompactVersion(r23);
        int r02 = this.f11844r;
        byte[] bArr3 = new byte[r02 * 2];
        byte[] bArr4 = new byte[r02];
        byte[] bArr5 = new byte[r02 * 2];
        BFIter(bArr, bArr2, threshold(BIKEUtils.getHammingWeight(bArr), this.f11844r), r22, r23, columnFromCompactVersion, columnFromCompactVersion2, bArr3, bArr5, bArr4);
        BFMaskedIter(bArr, bArr2, bArr3, ((this.hw + 1) / 2) + 1, r22, r23, columnFromCompactVersion, columnFromCompactVersion2);
        BFMaskedIter(bArr, bArr2, bArr5, ((this.hw + 1) / 2) + 1, r22, r23, columnFromCompactVersion, columnFromCompactVersion2);
        for (int r92 = 1; r92 < this.nbIter; r92++) {
            Arrays.fill(bArr3, (byte) 0);
            BFIter2(bArr, bArr2, threshold(BIKEUtils.getHammingWeight(bArr), this.f11844r), r22, r23, columnFromCompactVersion, columnFromCompactVersion2, bArr4);
        }
        if (BIKEUtils.getHammingWeight(bArr) == 0) {
            return bArr2;
        }
        return null;
    }

    private byte[] computeSyndrome(byte[] bArr, byte[] bArr2) {
        long[] jArrCreate = this.bikeRing.create();
        long[] jArrCreate2 = this.bikeRing.create();
        this.bikeRing.decodeBytes(bArr, jArrCreate);
        this.bikeRing.decodeBytes(bArr2, jArrCreate2);
        this.bikeRing.multiply(jArrCreate, jArrCreate2, jArrCreate);
        return this.bikeRing.encodeBitsTransposed(jArrCreate);
    }

    private void convertToCompact(int[] r92, byte[] bArr) {
        int r42;
        int r22 = 0;
        for (int r12 = 0; r12 < this.R_BYTE; r12++) {
            for (int r32 = 0; r32 < 8 && (r42 = (r12 * 8) + r32) != this.f11844r; r32++) {
                int r52 = (bArr[r12] >> r32) & 1;
                int r6 = -r52;
                r92[r22] = (r42 & r6) | ((~r6) & r92[r22]);
                r22 = (r22 + r52) % this.hw;
            }
        }
    }

    private int ctr(int[] r10, byte[] bArr, int r12) {
        int r02 = this.hw - 4;
        int r13 = 0;
        int r22 = 0;
        while (r13 <= r02) {
            int r32 = r10[r13 + 0] + r12;
            int r42 = this.f11844r;
            int r33 = r32 - r42;
            int r52 = (r10[r13 + 1] + r12) - r42;
            int r6 = (r10[r13 + 2] + r12) - r42;
            int r72 = (r10[r13 + 3] + r12) - r42;
            r22 = r22 + (bArr[r33 + ((r33 >> 31) & r42)] & 255) + (bArr[r52 + ((r52 >> 31) & r42)] & 255) + (bArr[r6 + ((r6 >> 31) & r42)] & 255) + (bArr[r72 + (r42 & (r72 >> 31))] & 255);
            r13 += 4;
        }
        while (r13 < this.hw) {
            int r03 = r10[r13] + r12;
            int r34 = this.f11844r;
            int r04 = r03 - r34;
            r22 += bArr[r04 + (r34 & (r04 >> 31))] & 255;
            r13++;
        }
        return r22;
    }

    private void ctrAll(int[] r11, byte[] bArr, byte[] bArr2) {
        int r12 = r11[0];
        int r22 = this.f11844r - r12;
        System.arraycopy(bArr, r12, bArr2, 0, r22);
        System.arraycopy(bArr, 0, bArr2, r22, r12);
        for (int r13 = 1; r13 < this.hw; r13++) {
            int r23 = r11[r13];
            int r32 = this.f11844r - r23;
            int r42 = r32 - 4;
            int r52 = 0;
            while (r52 <= r42) {
                int r6 = r52 + 0;
                int r82 = r23 + r52;
                bArr2[r6] = (byte) (bArr2[r6] + (bArr[r82 + 0] & 255));
                int r62 = r52 + 1;
                bArr2[r62] = (byte) (bArr2[r62] + (bArr[r82 + 1] & 255));
                int r63 = r52 + 2;
                bArr2[r63] = (byte) (bArr2[r63] + (bArr[r82 + 2] & 255));
                int r64 = r52 + 3;
                bArr2[r64] = (byte) (bArr2[r64] + (bArr[r82 + 3] & 255));
                r52 += 4;
            }
            while (r52 < r32) {
                bArr2[r52] = (byte) (bArr2[r52] + (bArr[r23 + r52] & 255));
                r52++;
            }
            int r24 = this.f11844r - 4;
            int r43 = r32;
            while (r43 <= r24) {
                int r53 = r43 + 0;
                bArr2[r53] = (byte) (bArr2[r53] + (bArr[r53 - r32] & 255));
                int r54 = r43 + 1;
                bArr2[r54] = (byte) (bArr2[r54] + (bArr[r54 - r32] & 255));
                int r55 = r43 + 2;
                bArr2[r55] = (byte) (bArr2[r55] + (bArr[r55 - r32] & 255));
                int r56 = r43 + 3;
                bArr2[r56] = (byte) (bArr2[r56] + (bArr[r56 - r32] & 255));
                r43 += 4;
            }
            while (r43 < this.f11844r) {
                bArr2[r43] = (byte) (bArr2[r43] + (bArr[r43 - r32] & 255));
                r43++;
            }
        }
    }

    private byte[] functionH(byte[] bArr) {
        byte[] bArr2 = new byte[this.R_BYTE * 2];
        SHAKEDigest sHAKEDigest = new SHAKEDigest(256);
        sHAKEDigest.update(bArr, 0, bArr.length);
        BIKEUtils.generateRandomByteArray(bArr2, this.f11844r * 2, this.f11845t, sHAKEDigest);
        return bArr2;
    }

    private void functionK(byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4) {
        byte[] bArr5 = new byte[48];
        SHA3Digest sHA3Digest = new SHA3Digest(KyberEngine.KyberPolyBytes);
        sHA3Digest.update(bArr, 0, bArr.length);
        sHA3Digest.update(bArr2, 0, bArr2.length);
        sHA3Digest.update(bArr3, 0, bArr3.length);
        sHA3Digest.doFinal(bArr5, 0);
        System.arraycopy(bArr5, 0, bArr4, 0, this.L_BYTE);
    }

    private void functionL(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        byte[] bArr4 = new byte[48];
        SHA3Digest sHA3Digest = new SHA3Digest(KyberEngine.KyberPolyBytes);
        sHA3Digest.update(bArr, 0, bArr.length);
        sHA3Digest.update(bArr2, 0, bArr2.length);
        sHA3Digest.doFinal(bArr4, 0);
        System.arraycopy(bArr4, 0, bArr3, 0, this.L_BYTE);
    }

    private int[] getColumnFromCompactVersion(int[] r52) {
        int[] r02 = new int[this.hw];
        int r12 = 0;
        if (r52[0] != 0) {
            while (true) {
                int r22 = this.hw;
                if (r12 >= r22) {
                    break;
                }
                r02[r12] = this.f11844r - r52[(r22 - 1) - r12];
                r12++;
            }
        } else {
            r02[0] = 0;
            int r13 = 1;
            while (true) {
                int r23 = this.hw;
                if (r13 >= r23) {
                    break;
                }
                r02[r13] = this.f11844r - r52[r23 - r13];
                r13++;
            }
        }
        return r02;
    }

    private void recomputeSyndrome(byte[] bArr, int r52, int[] r6, int[] r72, boolean z10) {
        int r12 = 0;
        if (r52 < this.f11844r) {
            while (r12 < this.hw) {
                int r73 = r6[r12];
                if (r73 <= r52) {
                    int r74 = r52 - r73;
                    bArr[r74] = (byte) (bArr[r74] ^ (z10 ? 1 : 0));
                } else {
                    int r02 = (this.f11844r + r52) - r73;
                    bArr[r02] = (byte) (bArr[r02] ^ (z10 ? 1 : 0));
                }
                r12++;
            }
            return;
        }
        while (r12 < this.hw) {
            int r62 = r72[r12];
            int r03 = this.f11844r;
            if (r62 <= r52 - r03) {
                int r04 = (r52 - r03) - r62;
                bArr[r04] = (byte) (bArr[r04] ^ (z10 ? 1 : 0));
            } else {
                int r05 = (r52 - r03) + (r03 - r62);
                bArr[r05] = (byte) (bArr[r05] ^ (z10 ? 1 : 0));
            }
            r12++;
        }
    }

    private void splitEBytes(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        int r02 = this.f11844r & 7;
        int r22 = 0;
        System.arraycopy(bArr, 0, bArr2, 0, this.R_BYTE - 1);
        int r12 = this.R_BYTE;
        byte b10 = bArr[r12 - 1];
        byte b11 = (byte) ((-1) << r02);
        bArr2[r12 - 1] = (byte) ((~b11) & b10);
        byte b12 = (byte) (b10 & b11);
        while (true) {
            int r13 = this.R_BYTE;
            if (r22 >= r13) {
                return;
            }
            byte b13 = bArr[r13 + r22];
            bArr3[r22] = (byte) (((b12 & 255) >>> r02) | (b13 << (8 - r02)));
            r22++;
            b12 = b13;
        }
    }

    private int threshold(int r82, int r92) {
        if (r92 == 12323) {
            return thresholdFromParameters(r82, 0.0069722d, 13.53d, 36);
        }
        if (r92 == 24659) {
            return thresholdFromParameters(r82, 0.005265d, 15.2588d, 52);
        }
        if (r92 == 40973) {
            return thresholdFromParameters(r82, 0.00402312d, 17.8785d, 69);
        }
        throw new IllegalArgumentException();
    }

    private static int thresholdFromParameters(int r22, double d10, double d11, int r72) {
        return Math.max(r72, (int) Math.floor((d10 * r22) + d11));
    }

    private void updateNewErrorIndex(byte[] bArr, int r42, boolean z10) {
        int r02;
        if (r42 != 0 && r42 != (r02 = this.f11844r)) {
            r42 = r42 > r02 ? ((r02 * 2) - r42) + r02 : r02 - r42;
        }
        bArr[r42] = (byte) ((z10 ? 1 : 0) ^ bArr[r42]);
    }

    public void decaps(byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4, byte[] bArr5, byte[] bArr6) {
        int r02 = this.hw;
        int[] r12 = new int[r02];
        int[] r03 = new int[r02];
        convertToCompact(r12, bArr2);
        convertToCompact(r03, bArr3);
        byte[] bArrBGFDecoder = BGFDecoder(computeSyndrome(bArr5, bArr2), r12, r03);
        byte[] bArr7 = new byte[this.R_BYTE * 2];
        BIKEUtils.fromBitArrayToByteArray(bArr7, bArrBGFDecoder, 0, this.f11844r * 2);
        int r92 = this.R_BYTE;
        byte[] bArr8 = new byte[r92];
        byte[] bArr9 = new byte[r92];
        splitEBytes(bArr7, bArr8, bArr9);
        byte[] bArr10 = new byte[this.L_BYTE];
        functionL(bArr8, bArr9, bArr10);
        Bytes.xorTo(this.L_BYTE, bArr6, bArr10);
        byte[] bArrFunctionH = functionH(bArr10);
        int r52 = this.R2_BYTE;
        if (Arrays.areEqual(bArr7, 0, r52, bArrFunctionH, 0, r52)) {
            functionK(bArr10, bArr5, bArr6, bArr);
        } else {
            functionK(bArr4, bArr5, bArr6, bArr);
        }
    }

    public void encaps(byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4, SecureRandom secureRandom) {
        byte[] bArr5 = new byte[this.L_BYTE];
        secureRandom.nextBytes(bArr5);
        byte[] bArrFunctionH = functionH(bArr5);
        int r12 = this.R_BYTE;
        byte[] bArr6 = new byte[r12];
        byte[] bArr7 = new byte[r12];
        splitEBytes(bArrFunctionH, bArr6, bArr7);
        long[] jArrCreate = this.bikeRing.create();
        long[] jArrCreate2 = this.bikeRing.create();
        this.bikeRing.decodeBytes(bArr6, jArrCreate);
        this.bikeRing.decodeBytes(bArr7, jArrCreate2);
        long[] jArrCreate3 = this.bikeRing.create();
        this.bikeRing.decodeBytes(bArr4, jArrCreate3);
        this.bikeRing.multiply(jArrCreate3, jArrCreate2, jArrCreate3);
        this.bikeRing.add(jArrCreate3, jArrCreate, jArrCreate3);
        this.bikeRing.encodeBytes(jArrCreate3, bArr);
        functionL(bArr6, bArr7, bArr2);
        Bytes.xorTo(this.L_BYTE, bArr5, bArr2);
        functionK(bArr5, bArr, bArr2, bArr3);
    }

    public void genKeyPair(byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4, SecureRandom secureRandom) {
        byte[] bArr5 = new byte[64];
        secureRandom.nextBytes(bArr5);
        SHAKEDigest sHAKEDigest = new SHAKEDigest(256);
        sHAKEDigest.update(bArr5, 0, this.L_BYTE);
        BIKEUtils.generateRandomByteArray(bArr, this.f11844r, this.hw, sHAKEDigest);
        BIKEUtils.generateRandomByteArray(bArr2, this.f11844r, this.hw, sHAKEDigest);
        long[] jArrCreate = this.bikeRing.create();
        long[] jArrCreate2 = this.bikeRing.create();
        this.bikeRing.decodeBytes(bArr, jArrCreate);
        this.bikeRing.decodeBytes(bArr2, jArrCreate2);
        long[] jArrCreate3 = this.bikeRing.create();
        this.bikeRing.inv(jArrCreate, jArrCreate3);
        this.bikeRing.multiply(jArrCreate3, jArrCreate2, jArrCreate3);
        this.bikeRing.encodeBytes(jArrCreate3, bArr4);
        System.arraycopy(bArr5, this.L_BYTE, bArr3, 0, bArr3.length);
    }

    public int getSessionKeySize() {
        return this.L_BYTE;
    }
}
