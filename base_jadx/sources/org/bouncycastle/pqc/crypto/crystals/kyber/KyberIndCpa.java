package org.bouncycastle.pqc.crypto.crystals.kyber;

import org.bouncycastle.util.Arrays;

/* loaded from: classes2.dex */
class KyberIndCpa {
    public final int KyberGenerateMatrixNBlocks;
    private KyberEngine engine;
    private int eta1;
    private int indCpaBytes;
    private int indCpaPublicKeyBytes;
    private int kyberK;
    private int polyCompressedBytes;
    private int polyVecBytes;
    private int polyVecCompressedBytes;
    private Symmetric symmetric;

    public KyberIndCpa(KyberEngine kyberEngine) {
        this.engine = kyberEngine;
        this.kyberK = kyberEngine.getKyberK();
        this.eta1 = kyberEngine.getKyberEta1();
        this.indCpaPublicKeyBytes = kyberEngine.getKyberPublicKeyBytes();
        this.polyVecBytes = kyberEngine.getKyberPolyVecBytes();
        this.indCpaBytes = kyberEngine.getKyberIndCpaBytes();
        this.polyVecCompressedBytes = kyberEngine.getKyberPolyVecCompressedBytes();
        this.polyCompressedBytes = kyberEngine.getKyberPolyCompressedBytes();
        Symmetric symmetric = kyberEngine.getSymmetric();
        this.symmetric = symmetric;
        int r22 = symmetric.xofBlockBytes;
        this.KyberGenerateMatrixNBlocks = (r22 + 472) / r22;
    }

    private byte[] packCipherText(PolyVec polyVec, Poly poly) {
        byte[] bArr = new byte[this.indCpaBytes];
        System.arraycopy(polyVec.compressPolyVec(), 0, bArr, 0, this.polyVecCompressedBytes);
        System.arraycopy(poly.compressPoly(), 0, bArr, this.polyVecCompressedBytes, this.polyCompressedBytes);
        return bArr;
    }

    private static int rejectionSampling(Poly poly, int r82, int r92, byte[] bArr, int r11) {
        int r12 = 0;
        int r22 = 0;
        while (r12 < r92) {
            int r32 = r22 + 3;
            if (r32 > r11) {
                break;
            }
            int r42 = ((short) (bArr[r22] & 255)) >> 0;
            byte b10 = bArr[r22 + 1];
            short s7 = (short) ((r42 | (((short) (b10 & 255)) << 8)) & 4095);
            short s10 = (short) (((((short) (bArr[r22 + 2] & 255)) << 4) | (((short) (b10 & 255)) >> 4)) & 4095);
            if (s7 < 3329) {
                poly.setCoeffIndex(r82 + r12, s7);
                r12++;
            }
            if (r12 < r92 && s10 < 3329) {
                poly.setCoeffIndex(r82 + r12, s10);
                r12++;
            }
            r22 = r32;
        }
        return r12;
    }

    private void unpackCipherText(PolyVec polyVec, Poly poly, byte[] bArr) {
        polyVec.decompressPolyVec(Arrays.copyOfRange(bArr, 0, this.engine.getKyberPolyVecCompressedBytes()));
        poly.decompressPoly(Arrays.copyOfRange(bArr, this.engine.getKyberPolyVecCompressedBytes(), bArr.length));
    }

    public byte[] decrypt(byte[] bArr, byte[] bArr2) {
        byte[] bArr3 = new byte[KyberEngine.getKyberIndCpaMsgBytes()];
        PolyVec polyVec = new PolyVec(this.engine);
        PolyVec polyVec2 = new PolyVec(this.engine);
        Poly poly = new Poly(this.engine);
        Poly poly2 = new Poly(this.engine);
        unpackCipherText(polyVec, poly, bArr);
        unpackSecretKey(polyVec2, bArr2);
        polyVec.polyVecNtt();
        PolyVec.pointwiseAccountMontgomery(poly2, polyVec2, polyVec, this.engine);
        poly2.polyInverseNttToMont();
        poly2.polySubtract(poly);
        poly2.reduce();
        return poly2.toMsg();
    }

    public byte[] encrypt(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        PolyVec polyVec = new PolyVec(this.engine);
        PolyVec polyVec2 = new PolyVec(this.engine);
        PolyVec polyVec3 = new PolyVec(this.engine);
        PolyVec polyVec4 = new PolyVec(this.engine);
        PolyVec[] polyVecArr = new PolyVec[this.engine.getKyberK()];
        Poly poly = new Poly(this.engine);
        Poly poly2 = new Poly(this.engine);
        Poly poly3 = new Poly(this.engine);
        byte[] bArrUnpackPublicKey = unpackPublicKey(polyVec2, bArr2);
        poly3.fromMsg(bArr);
        for (int r82 = 0; r82 < this.kyberK; r82++) {
            polyVecArr[r82] = new PolyVec(this.engine);
        }
        generateMatrix(polyVecArr, bArrUnpackPublicKey, true);
        byte b10 = 0;
        for (int r13 = 0; r13 < this.kyberK; r13++) {
            polyVec.getVectorIndex(r13).getEta1Noise(bArr3, b10);
            b10 = (byte) (b10 + 1);
        }
        for (int r132 = 0; r132 < this.kyberK; r132++) {
            polyVec3.getVectorIndex(r132).getEta2Noise(bArr3, b10);
            b10 = (byte) (b10 + 1);
        }
        poly.getEta2Noise(bArr3, b10);
        polyVec.polyVecNtt();
        for (int r12 = 0; r12 < this.kyberK; r12++) {
            PolyVec.pointwiseAccountMontgomery(polyVec4.getVectorIndex(r12), polyVecArr[r12], polyVec, this.engine);
        }
        PolyVec.pointwiseAccountMontgomery(poly2, polyVec2, polyVec, this.engine);
        polyVec4.polyVecInverseNttToMont();
        poly2.polyInverseNttToMont();
        polyVec4.addPoly(polyVec3);
        poly2.addCoeffs(poly);
        poly2.addCoeffs(poly3);
        polyVec4.reducePoly();
        poly2.reduce();
        return packCipherText(polyVec4, poly2);
    }

    public byte[][] generateKeyPair() {
        PolyVec polyVec = new PolyVec(this.engine);
        PolyVec polyVec2 = new PolyVec(this.engine);
        PolyVec polyVec3 = new PolyVec(this.engine);
        byte[] bArr = new byte[32];
        this.engine.getRandomBytes(bArr);
        byte[] bArr2 = new byte[64];
        this.symmetric.hash_g(bArr2, bArr);
        byte[] bArr3 = new byte[32];
        byte[] bArr4 = new byte[32];
        System.arraycopy(bArr2, 0, bArr3, 0, 32);
        System.arraycopy(bArr2, 32, bArr4, 0, 32);
        PolyVec[] polyVecArr = new PolyVec[this.kyberK];
        for (int r52 = 0; r52 < this.kyberK; r52++) {
            polyVecArr[r52] = new PolyVec(this.engine);
        }
        generateMatrix(polyVecArr, bArr3, false);
        byte b10 = 0;
        for (int r53 = 0; r53 < this.kyberK; r53++) {
            polyVec.getVectorIndex(r53).getEta1Noise(bArr4, b10);
            b10 = (byte) (b10 + 1);
        }
        for (int r54 = 0; r54 < this.kyberK; r54++) {
            polyVec3.getVectorIndex(r54).getEta1Noise(bArr4, b10);
            b10 = (byte) (b10 + 1);
        }
        polyVec.polyVecNtt();
        polyVec3.polyVecNtt();
        for (int r55 = 0; r55 < this.kyberK; r55++) {
            PolyVec.pointwiseAccountMontgomery(polyVec2.getVectorIndex(r55), polyVecArr[r55], polyVec, this.engine);
            polyVec2.getVectorIndex(r55).convertToMont();
        }
        polyVec2.addPoly(polyVec3);
        polyVec2.reducePoly();
        return new byte[][]{packPublicKey(polyVec2, bArr3), packSecretKey(polyVec)};
    }

    public void generateMatrix(PolyVec[] polyVecArr, byte[] bArr, boolean z10) {
        byte b10;
        byte b11;
        byte[] bArr2 = new byte[(this.KyberGenerateMatrixNBlocks * this.symmetric.xofBlockBytes) + 2];
        for (int r22 = 0; r22 < this.kyberK; r22++) {
            for (int r32 = 0; r32 < this.kyberK; r32++) {
                Symmetric symmetric = this.symmetric;
                if (z10) {
                    b10 = (byte) r22;
                    b11 = (byte) r32;
                } else {
                    b10 = (byte) r32;
                    b11 = (byte) r22;
                }
                symmetric.xofAbsorb(bArr, b10, b11);
                Symmetric symmetric2 = this.symmetric;
                symmetric2.xofSqueezeBlocks(bArr2, 0, symmetric2.xofBlockBytes * this.KyberGenerateMatrixNBlocks);
                int r42 = this.KyberGenerateMatrixNBlocks * this.symmetric.xofBlockBytes;
                int r52 = rejectionSampling(polyVecArr[r22].getVectorIndex(r32), 0, 256, bArr2, r42);
                while (r52 < 256) {
                    int r72 = r42 % 3;
                    for (int r82 = 0; r82 < r72; r82++) {
                        bArr2[r82] = bArr2[(r42 - r72) + r82];
                    }
                    Symmetric symmetric3 = this.symmetric;
                    symmetric3.xofSqueezeBlocks(bArr2, r72, symmetric3.xofBlockBytes * 2);
                    r42 = this.symmetric.xofBlockBytes + r72;
                    r52 += rejectionSampling(polyVecArr[r22].getVectorIndex(r32), r52, 256 - r52, bArr2, r42);
                }
            }
        }
    }

    public byte[] packPublicKey(PolyVec polyVec, byte[] bArr) {
        byte[] bArr2 = new byte[this.indCpaPublicKeyBytes];
        System.arraycopy(polyVec.toBytes(), 0, bArr2, 0, this.polyVecBytes);
        System.arraycopy(bArr, 0, bArr2, this.polyVecBytes, 32);
        return bArr2;
    }

    public byte[] packSecretKey(PolyVec polyVec) {
        return polyVec.toBytes();
    }

    public byte[] unpackPublicKey(PolyVec polyVec, byte[] bArr) {
        byte[] bArr2 = new byte[32];
        polyVec.fromBytes(bArr);
        System.arraycopy(bArr, this.polyVecBytes, bArr2, 0, 32);
        return bArr2;
    }

    public void unpackSecretKey(PolyVec polyVec, byte[] bArr) {
        polyVec.fromBytes(bArr);
    }
}
