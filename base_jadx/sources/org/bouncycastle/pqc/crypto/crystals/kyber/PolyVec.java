package org.bouncycastle.pqc.crypto.crystals.kyber;

import org.bouncycastle.pqc.crypto.crystals.dilithium.DilithiumEngine;
import org.bouncycastle.util.Arrays;

/* loaded from: classes2.dex */
class PolyVec {
    private KyberEngine engine;
    private int kyberK;
    private int polyVecBytes;
    Poly[] vec;

    public PolyVec() throws Exception {
        throw new Exception("Requires Parameter");
    }

    public PolyVec(KyberEngine kyberEngine) {
        this.engine = kyberEngine;
        this.kyberK = kyberEngine.getKyberK();
        this.polyVecBytes = kyberEngine.getKyberPolyVecBytes();
        this.vec = new Poly[this.kyberK];
        for (int r02 = 0; r02 < this.kyberK; r02++) {
            this.vec[r02] = new Poly(kyberEngine);
        }
    }

    public static void pointwiseAccountMontgomery(Poly poly, PolyVec polyVec, PolyVec polyVec2, KyberEngine kyberEngine) {
        Poly poly2 = new Poly(kyberEngine);
        Poly.baseMultMontgomery(poly, polyVec.getVectorIndex(0), polyVec2.getVectorIndex(0));
        for (int r12 = 1; r12 < kyberEngine.getKyberK(); r12++) {
            Poly.baseMultMontgomery(poly2, polyVec.getVectorIndex(r12), polyVec2.getVectorIndex(r12));
            poly.addCoeffs(poly2);
        }
        poly.reduce();
    }

    public void addPoly(PolyVec polyVec) {
        for (int r02 = 0; r02 < this.kyberK; r02++) {
            getVectorIndex(r02).addCoeffs(polyVec.getVectorIndex(r02));
        }
    }

    public byte[] compressPolyVec() {
        conditionalSubQ();
        byte[] bArr = new byte[this.engine.getKyberPolyVecCompressedBytes()];
        int r42 = 32;
        int r10 = 4;
        if (this.engine.getKyberPolyVecCompressedBytes() == this.kyberK * DilithiumEngine.DilithiumPolyT1PackedBytes) {
            short[] sArr = new short[4];
            int r32 = 0;
            int r13 = 0;
            while (r32 < this.kyberK) {
                int r14 = 0;
                while (r14 < 64) {
                    int r15 = 0;
                    while (r15 < r10) {
                        sArr[r15] = (short) (((((getVectorIndex(r32).getCoeffIndex((r14 * 4) + r15) << 10) + 1665) * 1290167) >> 32) & 1023);
                        r15++;
                        r10 = 4;
                    }
                    short s7 = sArr[0];
                    bArr[r13 + 0] = (byte) (s7 >> 0);
                    short s10 = sArr[1];
                    bArr[r13 + 1] = (byte) ((s7 >> 8) | (s10 << 2));
                    short s11 = sArr[2];
                    bArr[r13 + 2] = (byte) ((s10 >> 6) | (s11 << 4));
                    int r102 = s11 >> 4;
                    short s12 = sArr[3];
                    bArr[r13 + 3] = (byte) ((s12 << 6) | r102);
                    bArr[r13 + 4] = (byte) (s12 >> 2);
                    r13 += 5;
                    r14++;
                    r10 = 4;
                }
                r32++;
                r10 = 4;
            }
        } else {
            if (this.engine.getKyberPolyVecCompressedBytes() != this.kyberK * 352) {
                throw new RuntimeException("Kyber PolyVecCompressedBytes neither 320 * KyberK or 352 * KyberK!");
            }
            short[] sArr2 = new short[8];
            int r33 = 0;
            int r6 = 0;
            while (r33 < this.kyberK) {
                int r92 = 0;
                while (r92 < r42) {
                    for (int r103 = 0; r103 < 8; r103++) {
                        sArr2[r103] = (short) (((((getVectorIndex(r33).getCoeffIndex((r92 * 8) + r103) << 11) + 1664) * 645084) >> 31) & 2047);
                    }
                    short s13 = sArr2[0];
                    bArr[r6 + 0] = (byte) (s13 >> 0);
                    short s14 = sArr2[1];
                    bArr[r6 + 1] = (byte) ((s13 >> 8) | (s14 << 3));
                    short s15 = sArr2[2];
                    bArr[r6 + 2] = (byte) ((s14 >> 5) | (s15 << 6));
                    bArr[r6 + 3] = (byte) (s15 >> 2);
                    int r142 = s15 >> 10;
                    short s16 = sArr2[3];
                    bArr[r6 + 4] = (byte) (r142 | (s16 << 1));
                    short s17 = sArr2[4];
                    bArr[r6 + 5] = (byte) ((s16 >> 7) | (s17 << 4));
                    short s18 = sArr2[5];
                    bArr[r6 + 6] = (byte) ((s17 >> 4) | (s18 << 7));
                    bArr[r6 + 7] = (byte) (s18 >> 1);
                    int r104 = s18 >> 9;
                    short s19 = sArr2[6];
                    bArr[r6 + 8] = (byte) (r104 | (s19 << 2));
                    int r105 = s19 >> 6;
                    short s20 = sArr2[7];
                    bArr[r6 + 9] = (byte) (r105 | (s20 << 5));
                    bArr[r6 + 10] = (byte) (s20 >> 3);
                    r6 += 11;
                    r92++;
                    r42 = 32;
                }
                r33++;
                r42 = 32;
            }
        }
        return bArr;
    }

    public void conditionalSubQ() {
        for (int r02 = 0; r02 < this.kyberK; r02++) {
            getVectorIndex(r02).conditionalSubQ();
        }
    }

    public void decompressPolyVec(byte[] bArr) {
        if (this.engine.getKyberPolyVecCompressedBytes() == this.kyberK * DilithiumEngine.DilithiumPolyT1PackedBytes) {
            short[] sArr = new short[4];
            int r10 = 0;
            for (int r22 = 0; r22 < this.kyberK; r22++) {
                for (int r11 = 0; r11 < 64; r11++) {
                    int r12 = (bArr[r10] & 255) >> 0;
                    byte b10 = bArr[r10 + 1];
                    sArr[0] = (short) (r12 | ((short) ((b10 & 255) << 8)));
                    int r122 = (b10 & 255) >> 2;
                    byte b11 = bArr[r10 + 2];
                    sArr[1] = (short) (r122 | ((short) ((b11 & 255) << 6)));
                    int r123 = (b11 & 255) >> 4;
                    byte b12 = bArr[r10 + 3];
                    sArr[2] = (short) (r123 | ((short) ((b12 & 255) << 4)));
                    sArr[3] = (short) (((b12 & 255) >> 6) | ((short) ((bArr[r10 + 4] & 255) << 2)));
                    r10 += 5;
                    for (int r124 = 0; r124 < 4; r124++) {
                        this.vec[r22].setCoeffIndex((r11 * 4) + r124, (short) ((((sArr[r124] & 1023) * KyberEngine.KyberQ) + 512) >> 10));
                    }
                }
            }
            return;
        }
        if (this.engine.getKyberPolyVecCompressedBytes() != this.kyberK * 352) {
            throw new RuntimeException("Kyber PolyVecCompressedBytes neither 320 * KyberK or 352 * KyberK!");
        }
        short[] sArr2 = new short[8];
        int r102 = 0;
        for (int r23 = 0; r23 < this.kyberK; r23++) {
            for (int r112 = 0; r112 < 32; r112++) {
                int r125 = (bArr[r102] & 255) >> 0;
                byte b13 = bArr[r102 + 1];
                sArr2[0] = (short) (r125 | (((short) (b13 & 255)) << 8));
                int r126 = (b13 & 255) >> 3;
                byte b14 = bArr[r102 + 2];
                sArr2[1] = (short) (r126 | (((short) (b14 & 255)) << 5));
                int r127 = ((b14 & 255) >> 6) | (((short) (bArr[r102 + 3] & 255)) << 2);
                byte b15 = bArr[r102 + 4];
                sArr2[2] = (short) (r127 | ((short) ((b15 & 255) << 10)));
                int r128 = (b15 & 255) >> 1;
                byte b16 = bArr[r102 + 5];
                sArr2[3] = (short) (r128 | (((short) (b16 & 255)) << 7));
                int r129 = (b16 & 255) >> 4;
                byte b17 = bArr[r102 + 6];
                sArr2[4] = (short) (r129 | (((short) (b17 & 255)) << 4));
                int r1210 = ((b17 & 255) >> 7) | (((short) (bArr[r102 + 7] & 255)) << 1);
                byte b18 = bArr[r102 + 8];
                sArr2[5] = (short) (r1210 | ((short) ((b18 & 255) << 9)));
                int r1211 = (b18 & 255) >> 2;
                byte b19 = bArr[r102 + 9];
                sArr2[6] = (short) (r1211 | (((short) (b19 & 255)) << 6));
                sArr2[7] = (short) (((b19 & 255) >> 5) | (((short) (bArr[r102 + 10] & 255)) << 3));
                r102 += 11;
                for (int r1212 = 0; r1212 < 8; r1212++) {
                    this.vec[r23].setCoeffIndex((r112 * 8) + r1212, (short) ((((sArr2[r1212] & 2047) * KyberEngine.KyberQ) + 1024) >> 11));
                }
            }
        }
    }

    public void fromBytes(byte[] bArr) {
        int r02 = 0;
        while (r02 < this.kyberK) {
            Poly vectorIndex = getVectorIndex(r02);
            int r22 = r02 * KyberEngine.KyberPolyBytes;
            r02++;
            vectorIndex.fromBytes(Arrays.copyOfRange(bArr, r22, r02 * KyberEngine.KyberPolyBytes));
        }
    }

    public Poly getVectorIndex(int r22) {
        return this.vec[r22];
    }

    public void polyVecInverseNttToMont() {
        for (int r02 = 0; r02 < this.kyberK; r02++) {
            getVectorIndex(r02).polyInverseNttToMont();
        }
    }

    public void polyVecNtt() {
        for (int r02 = 0; r02 < this.kyberK; r02++) {
            getVectorIndex(r02).polyNtt();
        }
    }

    public void reducePoly() {
        for (int r02 = 0; r02 < this.kyberK; r02++) {
            getVectorIndex(r02).reduce();
        }
    }

    public byte[] toBytes() {
        byte[] bArr = new byte[this.polyVecBytes];
        for (int r22 = 0; r22 < this.kyberK; r22++) {
            System.arraycopy(this.vec[r22].toBytes(), 0, bArr, r22 * KyberEngine.KyberPolyBytes, KyberEngine.KyberPolyBytes);
        }
        return bArr;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer("[");
        for (int r12 = 0; r12 < this.kyberK; r12++) {
            stringBuffer.append(this.vec[r12].toString());
            if (r12 != this.kyberK - 1) {
                stringBuffer.append(", ");
            }
        }
        stringBuffer.append("]");
        return stringBuffer.toString();
    }
}
