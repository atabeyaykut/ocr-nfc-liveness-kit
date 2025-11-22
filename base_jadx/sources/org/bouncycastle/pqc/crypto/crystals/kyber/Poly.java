package org.bouncycastle.pqc.crypto.crystals.kyber;

import org.bouncycastle.crypto.hpke.HPKE;

/* loaded from: classes2.dex */
class Poly {
    private KyberEngine engine;
    private int eta1;
    private int polyCompressedBytes;
    private Symmetric symmetric;
    private short[] coeffs = new short[256];
    private int eta2 = KyberEngine.getKyberEta2();

    public Poly(KyberEngine kyberEngine) {
        this.engine = kyberEngine;
        this.polyCompressedBytes = kyberEngine.getKyberPolyCompressedBytes();
        this.eta1 = kyberEngine.getKyberEta1();
        this.symmetric = kyberEngine.getSymmetric();
    }

    public static void baseMultMontgomery(Poly poly, Poly poly2, Poly poly3) {
        for (int r22 = 0; r22 < 64; r22++) {
            int r32 = r22 * 4;
            short coeffIndex = poly2.getCoeffIndex(r32);
            int r42 = r32 + 1;
            short coeffIndex2 = poly2.getCoeffIndex(r42);
            short coeffIndex3 = poly3.getCoeffIndex(r32);
            short coeffIndex4 = poly3.getCoeffIndex(r42);
            short[] sArr = Ntt.nttZetas;
            int r12 = r22 + 64;
            Ntt.baseMult(poly, r32, coeffIndex, coeffIndex2, coeffIndex3, coeffIndex4, sArr[r12]);
            int r14 = r32 + 2;
            int r33 = r32 + 3;
            Ntt.baseMult(poly, r14, poly2.getCoeffIndex(r14), poly2.getCoeffIndex(r33), poly3.getCoeffIndex(r14), poly3.getCoeffIndex(r33), (short) (sArr[r12] * (-1)));
        }
    }

    public void addCoeffs(Poly poly) {
        for (int r02 = 0; r02 < 256; r02++) {
            setCoeffIndex(r02, (short) (getCoeffIndex(r02) + poly.getCoeffIndex(r02)));
        }
    }

    public byte[] compressPoly() {
        int r12 = 8;
        byte[] bArr = new byte[8];
        byte[] bArr2 = new byte[this.polyCompressedBytes];
        conditionalSubQ();
        int r42 = this.polyCompressedBytes;
        if (r42 == 128) {
            int r43 = 0;
            int r52 = 0;
            while (r43 < 32) {
                int r15 = 0;
                while (r15 < r12) {
                    bArr[r15] = (byte) (((((getCoeffIndex((r43 * 8) + r15) << 4) + 1665) * 80635) >> 28) & 15);
                    r15++;
                    r12 = 8;
                }
                bArr2[r52 + 0] = (byte) (bArr[0] | (bArr[1] << 4));
                bArr2[r52 + 1] = (byte) (bArr[2] | (bArr[3] << 4));
                bArr2[r52 + 2] = (byte) (bArr[4] | (bArr[5] << 4));
                bArr2[r52 + 3] = (byte) (bArr[6] | (bArr[7] << 4));
                r52 += 4;
                r43++;
                r12 = 8;
            }
        } else {
            if (r42 != 160) {
                throw new RuntimeException("PolyCompressedBytes is neither 128 or 160!");
            }
            int r13 = 0;
            int r44 = 0;
            for (int r6 = 32; r13 < r6; r6 = 32) {
                for (int r53 = 0; r53 < 8; r53++) {
                    bArr[r53] = (byte) (((((getCoeffIndex((r13 * 8) + r53) << 5) + 1664) * 40318) >> 27) & 31);
                }
                bArr2[r44 + 0] = (byte) ((bArr[0] >> 0) | (bArr[1] << 5));
                bArr2[r44 + 1] = (byte) ((bArr[1] >> 3) | (bArr[2] << 2) | (bArr[3] << 7));
                bArr2[r44 + 2] = (byte) ((bArr[3] >> 1) | (bArr[4] << 4));
                bArr2[r44 + 3] = (byte) ((bArr[4] >> 4) | (bArr[5] << 1) | (bArr[6] << 6));
                bArr2[r44 + 4] = (byte) ((bArr[6] >> 2) | (bArr[7] << 3));
                r44 += 5;
                r13++;
            }
        }
        return bArr2;
    }

    public void conditionalSubQ() {
        for (int r02 = 0; r02 < 256; r02++) {
            setCoeffIndex(r02, Reduce.conditionalSubQ(getCoeffIndex(r02)));
        }
    }

    public void convertToMont() {
        for (int r02 = 0; r02 < 256; r02++) {
            setCoeffIndex(r02, Reduce.montgomeryReduce(getCoeffIndex(r02) * 1353));
        }
    }

    public void decompressPoly(byte[] bArr) {
        if (this.engine.getKyberPolyCompressedBytes() == 128) {
            int r12 = 0;
            for (int r52 = 0; r52 < 128; r52++) {
                int r72 = r52 * 2;
                setCoeffIndex(r72 + 0, (short) (((((short) ((bArr[r12] & 255) & 15)) * 3329) + 8) >> 4));
                setCoeffIndex(r72 + 1, (short) (((((short) ((bArr[r12] & 255) >> 4)) * 3329) + 8) >> 4));
                r12++;
            }
            return;
        }
        if (this.engine.getKyberPolyCompressedBytes() != 160) {
            throw new RuntimeException("PolyCompressedBytes is neither 128 or 160!");
        }
        byte[] bArr2 = new byte[8];
        int r73 = 0;
        for (int r6 = 0; r6 < 32; r6++) {
            int r82 = r73 + 0;
            bArr2[0] = (byte) ((bArr[r82] & 255) >> 0);
            int r10 = r73 + 1;
            bArr2[1] = (byte) (((bArr[r82] & 255) >> 5) | ((bArr[r10] & 255) << 3));
            bArr2[2] = (byte) ((bArr[r10] & 255) >> 2);
            int r13 = r73 + 2;
            bArr2[3] = (byte) (((bArr[r10] & 255) >> 7) | ((bArr[r13] & 255) << 1));
            int r83 = (bArr[r13] & 255) >> 4;
            int r132 = r73 + 3;
            bArr2[4] = (byte) (r83 | ((bArr[r132] & 255) << 4));
            bArr2[5] = (byte) ((bArr[r132] & 255) >> 1);
            int r14 = r73 + 4;
            bArr2[6] = (byte) (((bArr[r132] & 255) >> 6) | ((bArr[r14] & 255) << 2));
            bArr2[7] = (byte) ((bArr[r14] & 255) >> 3);
            r73 += 5;
            for (int r84 = 0; r84 < 8; r84++) {
                setCoeffIndex((r6 * 8) + r84, (short) ((((bArr2[r84] & 31) * KyberEngine.KyberQ) + 16) >> 5));
            }
        }
    }

    public void fromBytes(byte[] bArr) {
        for (int r12 = 0; r12 < 128; r12++) {
            int r22 = r12 * 2;
            int r32 = r12 * 3;
            setCoeffIndex(r22, (short) ((((bArr[r32 + 0] & 255) >> 0) | ((bArr[r32 + 1] & 255) << 8)) & 4095));
            setCoeffIndex(r22 + 1, (short) ((((bArr[r5] & 255) >> 4) | ((bArr[r32 + 2] & 255) << 4)) & 4095));
        }
    }

    public void fromMsg(byte[] bArr) {
        if (bArr.length != 32) {
            throw new RuntimeException("KYBER_INDCPA_MSGBYTES must be equal to KYBER_N/8 bytes!");
        }
        for (int r22 = 0; r22 < 32; r22++) {
            for (int r32 = 0; r32 < 8; r32++) {
                setCoeffIndex((r22 * 8) + r32, (short) (((short) (((short) (((bArr[r22] & 255) >> r32) & 1)) * (-1))) & 1665));
            }
        }
    }

    public short getCoeffIndex(int r22) {
        return this.coeffs[r22];
    }

    public short[] getCoeffs() {
        return this.coeffs;
    }

    public void getEta1Noise(byte[] bArr, byte b10) {
        byte[] bArr2 = new byte[(this.eta1 * 256) / 4];
        this.symmetric.prf(bArr2, bArr, b10);
        CBD.kyberCBD(this, bArr2, this.eta1);
    }

    public void getEta2Noise(byte[] bArr, byte b10) {
        byte[] bArr2 = new byte[(this.eta2 * 256) / 4];
        this.symmetric.prf(bArr2, bArr, b10);
        CBD.kyberCBD(this, bArr2, this.eta2);
    }

    public void polyInverseNttToMont() {
        setCoeffs(Ntt.invNtt(getCoeffs()));
    }

    public void polyNtt() {
        setCoeffs(Ntt.ntt(getCoeffs()));
        reduce();
    }

    public void polySubtract(Poly poly) {
        for (int r02 = 0; r02 < 256; r02++) {
            setCoeffIndex(r02, (short) (poly.getCoeffIndex(r02) - getCoeffIndex(r02)));
        }
    }

    public void reduce() {
        for (int r02 = 0; r02 < 256; r02++) {
            setCoeffIndex(r02, Reduce.barretReduce(getCoeffIndex(r02)));
        }
    }

    public void setCoeffIndex(int r22, short s7) {
        this.coeffs[r22] = s7;
    }

    public void setCoeffs(short[] sArr) {
        this.coeffs = sArr;
    }

    public byte[] toBytes() {
        byte[] bArr = new byte[KyberEngine.KyberPolyBytes];
        conditionalSubQ();
        for (int r12 = 0; r12 < 128; r12++) {
            int r22 = r12 * 2;
            short coeffIndex = getCoeffIndex(r22);
            short coeffIndex2 = getCoeffIndex(r22 + 1);
            int r42 = r12 * 3;
            bArr[r42] = (byte) (coeffIndex >> 0);
            bArr[r42 + 1] = (byte) ((coeffIndex >> 8) | (coeffIndex2 << 4));
            bArr[r42 + 2] = (byte) (coeffIndex2 >> 4);
        }
        return bArr;
    }

    public byte[] toMsg() {
        byte[] bArr = new byte[KyberEngine.getKyberIndCpaMsgBytes()];
        conditionalSubQ();
        for (int r22 = 0; r22 < 32; r22++) {
            bArr[r22] = 0;
            for (int r32 = 0; r32 < 8; r32++) {
                bArr[r22] = (byte) (((byte) (((((((getCoeffIndex((r22 * 8) + r32) & HPKE.aead_EXPORT_ONLY) << 1) + 1665) * 80635) >> 28) & 1) << r32)) | bArr[r22]);
            }
        }
        return bArr;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer("[");
        int r12 = 0;
        while (true) {
            short[] sArr = this.coeffs;
            if (r12 >= sArr.length) {
                stringBuffer.append("]");
                return stringBuffer.toString();
            }
            stringBuffer.append((int) sArr[r12]);
            if (r12 != this.coeffs.length - 1) {
                stringBuffer.append(", ");
            }
            r12++;
        }
    }
}
