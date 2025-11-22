package org.bouncycastle.pqc.crypto.crystals.dilithium;

import org.bouncycastle.crypto.digests.SHAKEDigest;
import org.jmrtd.PassportService;
import org.jmrtd.cbeff.ISO781611;

/* loaded from: classes2.dex */
class Poly {
    private final DilithiumEngine engine;
    private final int polyUniformNBlocks;
    private final Symmetric symmetric;
    private final int dilithiumN = 256;
    private int[] coeffs = new int[256];

    public Poly(DilithiumEngine dilithiumEngine) {
        this.engine = dilithiumEngine;
        Symmetric symmetricGetSymmetric = dilithiumEngine.GetSymmetric();
        this.symmetric = symmetricGetSymmetric;
        this.polyUniformNBlocks = ((r2 + 768) - 1) / symmetricGetSymmetric.stream128BlockBytes;
    }

    private static int rejectEta(Poly poly, int r82, int r92, byte[] bArr, int r11, int r12) {
        int r02 = 0;
        int r13 = 0;
        while (r02 < r92 && r13 < r11) {
            byte b10 = bArr[r13];
            int r32 = b10 & 255 & 15;
            r13++;
            int r22 = (b10 & 255) >> 4;
            if (r12 == 2) {
                if (r32 < 15) {
                    poly.setCoeffIndex(r82 + r02, 2 - (r32 - (((r32 * 205) >> 10) * 5)));
                    r02++;
                }
                if (r22 < 15 && r02 < r92) {
                    poly.setCoeffIndex(r82 + r02, 2 - (r22 - (((r22 * 205) >> 10) * 5)));
                    r02++;
                }
            } else if (r12 == 4) {
                if (r32 < 9) {
                    poly.setCoeffIndex(r82 + r02, 4 - r32);
                    r02++;
                }
                if (r22 < 9 && r02 < r92) {
                    poly.setCoeffIndex(r82 + r02, 4 - r22);
                    r02++;
                }
            }
        }
        return r02;
    }

    private static int rejectUniform(Poly poly, int r52, int r6, byte[] bArr, int r82) {
        int r02 = 0;
        int r12 = 0;
        while (r02 < r6 && r12 + 3 <= r82) {
            int r22 = r12 + 1;
            int r32 = r22 + 1;
            int r13 = (bArr[r12] & 255) | ((bArr[r22] & 255) << 8);
            int r23 = r32 + 1;
            int r14 = (r13 | ((bArr[r32] & 255) << 16)) & 8388607;
            if (r14 < 8380417) {
                poly.setCoeffIndex(r52 + r02, r14);
                r02++;
            }
            r12 = r23;
        }
        return r02;
    }

    private void unpackZ(byte[] bArr) {
        int r22 = 0;
        if (this.engine.getDilithiumGamma1() != 131072) {
            if (this.engine.getDilithiumGamma1() != 524288) {
                throw new RuntimeException("Wrong Dilithiumn Gamma1!");
            }
            while (r22 < this.dilithiumN / 2) {
                int r02 = r22 * 2;
                int r12 = r02 + 0;
                int r32 = r22 * 5;
                int r52 = r32 + 2;
                setCoeffIndex(r12, ((bArr[r32 + 0] & 255) | ((bArr[r32 + 1] & 255) << 8) | ((bArr[r52] & 255) << 16)) & 1048575);
                int r03 = r02 + 1;
                setCoeffIndex(r03, (((bArr[r32 + 4] & 255) << 12) | ((bArr[r52] & 255) >> 4) | ((bArr[r32 + 3] & 255) << 4)) & 1048575);
                setCoeffIndex(r12, this.engine.getDilithiumGamma1() - getCoeffIndex(r12));
                setCoeffIndex(r03, this.engine.getDilithiumGamma1() - getCoeffIndex(r03));
                r22++;
            }
            return;
        }
        while (r22 < this.dilithiumN / 4) {
            int r04 = r22 * 4;
            int r13 = r04 + 0;
            int r33 = r22 * 9;
            int r53 = r33 + 2;
            setCoeffIndex(r13, ((bArr[r33 + 0] & 255) | ((bArr[r33 + 1] & 255) << 8) | ((bArr[r53] & 255) << 16)) & 262143);
            int r42 = r04 + 1;
            int r72 = r33 + 4;
            setCoeffIndex(r42, (((bArr[r53] & 255) >> 2) | ((bArr[r33 + 3] & 255) << 6) | ((bArr[r72] & 255) << 14)) & 262143);
            int r54 = r04 + 2;
            int r82 = r33 + 6;
            setCoeffIndex(r54, (((bArr[r72] & 255) >> 4) | ((bArr[r33 + 5] & 255) << 4) | ((bArr[r82] & 255) << 12)) & 262143);
            int r05 = r04 + 3;
            setCoeffIndex(r05, (((bArr[r33 + 8] & 255) << 10) | ((bArr[r82] & 255) >> 6) | ((bArr[r33 + 7] & 255) << 2)) & 262143);
            setCoeffIndex(r13, this.engine.getDilithiumGamma1() - getCoeffIndex(r13));
            setCoeffIndex(r42, this.engine.getDilithiumGamma1() - getCoeffIndex(r42));
            setCoeffIndex(r54, this.engine.getDilithiumGamma1() - getCoeffIndex(r54));
            setCoeffIndex(r05, this.engine.getDilithiumGamma1() - getCoeffIndex(r05));
            r22++;
        }
    }

    public void addPoly(Poly poly) {
        for (int r02 = 0; r02 < this.dilithiumN; r02++) {
            setCoeffIndex(r02, getCoeffIndex(r02) + poly.getCoeffIndex(r02));
        }
    }

    public void challenge(byte[] bArr) {
        int r22;
        int r6;
        int r14;
        int r23;
        byte[] bArr2 = new byte[this.symmetric.stream256BlockBytes];
        SHAKEDigest sHAKEDigest = new SHAKEDigest(256);
        sHAKEDigest.update(bArr, 0, 32);
        sHAKEDigest.doOutput(bArr2, 0, this.symmetric.stream256BlockBytes);
        long j10 = 0;
        int r142 = 0;
        while (true) {
            r22 = 8;
            if (r142 >= 8) {
                break;
            }
            j10 |= (bArr2[r142] & 255) << (r142 * 8);
            r142++;
        }
        int r143 = 0;
        while (true) {
            r6 = this.dilithiumN;
            if (r143 >= r6) {
                break;
            }
            setCoeffIndex(r143, 0);
            r143++;
        }
        int dilithiumTau = r6 - this.engine.getDilithiumTau();
        while (dilithiumTau < this.dilithiumN) {
            while (true) {
                int r144 = this.symmetric.stream256BlockBytes;
                if (r22 >= r144) {
                    sHAKEDigest.doOutput(bArr2, 0, r144);
                    r22 = 0;
                }
                r14 = r22 + 1;
                r23 = bArr2[r22] & 255;
                if (r23 <= dilithiumTau) {
                    break;
                } else {
                    r22 = r14;
                }
            }
            setCoeffIndex(dilithiumTau, getCoeffIndex(r23));
            setCoeffIndex(r23, (int) (1 - ((j10 & 1) * 2)));
            j10 >>= 1;
            dilithiumTau++;
            r22 = r14;
        }
    }

    public boolean checkNorm(int r72) {
        if (r72 > 1047552) {
            return true;
        }
        for (int r22 = 0; r22 < this.dilithiumN; r22++) {
            if (getCoeffIndex(r22) - ((getCoeffIndex(r22) >> 31) & (getCoeffIndex(r22) * 2)) >= r72) {
                return true;
            }
        }
        return false;
    }

    public void conditionalAddQ() {
        for (int r02 = 0; r02 < this.dilithiumN; r02++) {
            setCoeffIndex(r02, Reduce.conditionalAddQ(getCoeffIndex(r02)));
        }
    }

    public void decompose(Poly poly) {
        for (int r12 = 0; r12 < this.dilithiumN; r12++) {
            int[] r22 = Rounding.decompose(getCoeffIndex(r12), this.engine.getDilithiumGamma2());
            setCoeffIndex(r12, r22[1]);
            poly.setCoeffIndex(r12, r22[0]);
        }
    }

    public int getCoeffIndex(int r22) {
        return this.coeffs[r22];
    }

    public int[] getCoeffs() {
        return this.coeffs;
    }

    public void invNttToMont() {
        setCoeffs(Ntt.invNttToMont(getCoeffs()));
    }

    public void pointwiseAccountMontgomery(PolyVecL polyVecL, PolyVecL polyVecL2) {
        Poly poly = new Poly(this.engine);
        pointwiseMontgomery(polyVecL.getVectorIndex(0), polyVecL2.getVectorIndex(0));
        for (int r12 = 1; r12 < this.engine.getDilithiumL(); r12++) {
            poly.pointwiseMontgomery(polyVecL.getVectorIndex(r12), polyVecL2.getVectorIndex(r12));
            addPoly(poly);
        }
    }

    public void pointwiseMontgomery(Poly poly, Poly poly2) {
        for (int r02 = 0; r02 < this.dilithiumN; r02++) {
            setCoeffIndex(r02, Reduce.montgomeryReduce(poly.getCoeffIndex(r02) * poly2.getCoeffIndex(r02)));
        }
    }

    public byte[] polyEtaPack(byte[] bArr, int r18) {
        byte[] bArr2 = new byte[8];
        if (this.engine.getDilithiumEta() == 2) {
            for (int r32 = 0; r32 < this.dilithiumN / 8; r32++) {
                int r92 = r32 * 8;
                bArr2[0] = (byte) (this.engine.getDilithiumEta() - getCoeffIndex(r92 + 0));
                bArr2[1] = (byte) (this.engine.getDilithiumEta() - getCoeffIndex(r92 + 1));
                bArr2[2] = (byte) (this.engine.getDilithiumEta() - getCoeffIndex(r92 + 2));
                bArr2[3] = (byte) (this.engine.getDilithiumEta() - getCoeffIndex(r92 + 3));
                bArr2[4] = (byte) (this.engine.getDilithiumEta() - getCoeffIndex(r92 + 4));
                bArr2[5] = (byte) (this.engine.getDilithiumEta() - getCoeffIndex(r92 + 5));
                bArr2[6] = (byte) (this.engine.getDilithiumEta() - getCoeffIndex(r92 + 6));
                bArr2[7] = (byte) (this.engine.getDilithiumEta() - getCoeffIndex(r92 + 7));
                int r82 = (r32 * 3) + r18;
                bArr[r82 + 0] = (byte) ((bArr2[0] >> 0) | (bArr2[1] << 3) | (bArr2[2] << 6));
                bArr[r82 + 1] = (byte) ((bArr2[3] << 1) | (bArr2[2] >> 2) | (bArr2[4] << 4) | (bArr2[5] << 7));
                bArr[r82 + 2] = (byte) ((bArr2[5] >> 1) | (bArr2[6] << 2) | (bArr2[7] << 5));
            }
        } else {
            if (this.engine.getDilithiumEta() != 4) {
                throw new RuntimeException("Eta needs to be 2 or 4!");
            }
            for (int r12 = 0; r12 < this.dilithiumN / 2; r12++) {
                int r83 = r12 * 2;
                bArr2[0] = (byte) (this.engine.getDilithiumEta() - getCoeffIndex(r83 + 0));
                byte dilithiumEta = (byte) (this.engine.getDilithiumEta() - getCoeffIndex(r83 + 1));
                bArr2[1] = dilithiumEta;
                bArr[r18 + r12] = (byte) ((dilithiumEta << 4) | bArr2[0]);
            }
        }
        return bArr;
    }

    public void polyEtaUnpack(byte[] bArr, int r18) {
        int dilithiumEta = this.engine.getDilithiumEta();
        if (this.engine.getDilithiumEta() != 2) {
            if (this.engine.getDilithiumEta() == 4) {
                for (int r42 = 0; r42 < this.dilithiumN / 2; r42++) {
                    int r22 = r42 * 2;
                    int r6 = r22 + 0;
                    int r72 = r18 + r42;
                    setCoeffIndex(r6, bArr[r72] & PassportService.SFI_DG15);
                    int r23 = r22 + 1;
                    setCoeffIndex(r23, (bArr[r72] & 255) >> 4);
                    setCoeffIndex(r6, dilithiumEta - getCoeffIndex(r6));
                    setCoeffIndex(r23, dilithiumEta - getCoeffIndex(r23));
                }
                return;
            }
            return;
        }
        for (int r24 = 0; r24 < this.dilithiumN / 8; r24++) {
            int r62 = (r24 * 3) + r18;
            int r73 = r24 * 8;
            int r82 = r73 + 0;
            int r92 = r62 + 0;
            setCoeffIndex(r82, ((bArr[r92] & 255) >> 0) & 7);
            int r10 = r73 + 1;
            setCoeffIndex(r10, ((bArr[r92] & 255) >> 3) & 7);
            int r11 = r73 + 2;
            int r12 = r62 + 1;
            setCoeffIndex(r11, ((bArr[r92] & 255) >> 6) | (((bArr[r12] & 255) << 2) & 7));
            int r93 = r73 + 3;
            setCoeffIndex(r93, ((bArr[r12] & 255) >> 1) & 7);
            int r13 = r73 + 4;
            setCoeffIndex(r13, ((bArr[r12] & 255) >> 4) & 7);
            int r14 = r73 + 5;
            int r63 = r62 + 2;
            setCoeffIndex(r14, ((bArr[r12] & 255) >> 7) | (((bArr[r63] & 255) << 1) & 7));
            int r122 = r73 + 6;
            setCoeffIndex(r122, ((bArr[r63] & 255) >> 2) & 7);
            int r74 = r73 + 7;
            setCoeffIndex(r74, ((bArr[r63] & 255) >> 5) & 7);
            setCoeffIndex(r82, dilithiumEta - getCoeffIndex(r82));
            setCoeffIndex(r10, dilithiumEta - getCoeffIndex(r10));
            setCoeffIndex(r11, dilithiumEta - getCoeffIndex(r11));
            setCoeffIndex(r93, dilithiumEta - getCoeffIndex(r93));
            setCoeffIndex(r13, dilithiumEta - getCoeffIndex(r13));
            setCoeffIndex(r14, dilithiumEta - getCoeffIndex(r14));
            setCoeffIndex(r122, dilithiumEta - getCoeffIndex(r122));
            setCoeffIndex(r74, dilithiumEta - getCoeffIndex(r74));
        }
    }

    public int polyMakeHint(Poly poly, Poly poly2) {
        int coeffIndex = 0;
        for (int r02 = 0; r02 < this.dilithiumN; r02++) {
            setCoeffIndex(r02, Rounding.makeHint(poly.getCoeffIndex(r02), poly2.getCoeffIndex(r02), this.engine));
            coeffIndex += getCoeffIndex(r02);
        }
        return coeffIndex;
    }

    public void polyNtt() {
        setCoeffs(Ntt.ntt(this.coeffs));
    }

    public void polyUseHint(Poly poly, Poly poly2) {
        for (int r02 = 0; r02 < this.dilithiumN; r02++) {
            setCoeffIndex(r02, Rounding.useHint(poly.getCoeffIndex(r02), poly2.getCoeffIndex(r02), this.engine.getDilithiumGamma2()));
        }
    }

    public byte[] polyt0Pack(byte[] bArr, int r18) {
        int[] r22 = new int[8];
        char c10 = 0;
        int r42 = 0;
        while (r42 < this.dilithiumN / 8) {
            int r52 = r42 * 8;
            r22[c10] = 4096 - getCoeffIndex(r52 + 0);
            r22[1] = 4096 - getCoeffIndex(r52 + 1);
            r22[2] = 4096 - getCoeffIndex(r52 + 2);
            r22[3] = 4096 - getCoeffIndex(r52 + 3);
            r22[4] = 4096 - getCoeffIndex(r52 + 4);
            r22[5] = 4096 - getCoeffIndex(r52 + 5);
            r22[6] = 4096 - getCoeffIndex(r52 + 6);
            int coeffIndex = 4096 - getCoeffIndex(r52 + 7);
            r22[7] = coeffIndex;
            int r13 = (r42 * 13) + r18;
            int r15 = r22[c10];
            bArr[r13 + 0] = (byte) r15;
            int r32 = r13 + 1;
            byte b10 = (byte) (r15 >> 8);
            bArr[r32] = b10;
            int r72 = r22[1];
            bArr[r32] = (byte) (b10 | ((byte) (r72 << 5)));
            bArr[r13 + 2] = (byte) (r72 >> 3);
            int r33 = r13 + 3;
            byte b11 = (byte) (r72 >> 11);
            bArr[r33] = b11;
            int r82 = r22[2];
            bArr[r33] = (byte) (b11 | ((byte) (r82 << 2)));
            int r34 = r13 + 4;
            byte b12 = (byte) (r82 >> 6);
            bArr[r34] = b12;
            int r83 = r22[3];
            bArr[r34] = (byte) (b12 | ((byte) (r83 << 7)));
            bArr[r13 + 5] = (byte) (r83 >> 1);
            int r35 = r13 + 6;
            byte b13 = (byte) (r83 >> 9);
            bArr[r35] = b13;
            int r84 = r22[4];
            bArr[r35] = (byte) (b13 | ((byte) (r84 << 4)));
            bArr[r13 + 7] = (byte) (r84 >> 4);
            int r36 = r13 + 8;
            byte b14 = (byte) (r84 >> 12);
            bArr[r36] = b14;
            int r85 = r22[5];
            bArr[r36] = (byte) (b14 | ((byte) (r85 << 1)));
            int r37 = r13 + 9;
            byte b15 = (byte) (r85 >> 7);
            bArr[r37] = b15;
            int r73 = r22[6];
            bArr[r37] = (byte) (b15 | ((byte) (r73 << 6)));
            bArr[r13 + 10] = (byte) (r73 >> 2);
            int r38 = r13 + 11;
            byte b16 = (byte) (r73 >> 10);
            bArr[r38] = b16;
            bArr[r38] = (byte) (b16 | ((byte) (coeffIndex << 3)));
            bArr[r13 + 12] = (byte) (coeffIndex >> 5);
            r42++;
            c10 = 0;
        }
        return bArr;
    }

    public void polyt0Unpack(byte[] bArr, int r15) {
        for (int r02 = 0; r02 < this.dilithiumN / 8; r02++) {
            int r12 = (r02 * 13) + r15;
            int r22 = r02 * 8;
            int r32 = r22 + 0;
            int r52 = r12 + 1;
            setCoeffIndex(r32, ((bArr[r12 + 0] & 255) | ((bArr[r52] & 255) << 8)) & 8191);
            int r42 = r22 + 1;
            int r6 = r12 + 3;
            setCoeffIndex(r42, (((bArr[r52] & 255) >> 5) | ((bArr[r12 + 2] & 255) << 3) | ((bArr[r6] & 255) << 11)) & 8191);
            int r53 = r22 + 2;
            int r72 = r12 + 4;
            setCoeffIndex(r53, (((bArr[r6] & 255) >> 2) | ((bArr[r72] & 255) << 6)) & 8191);
            int r62 = r22 + 3;
            int r82 = r12 + 6;
            setCoeffIndex(r62, (((bArr[r72] & 255) >> 7) | ((bArr[r12 + 5] & 255) << 1) | ((bArr[r82] & 255) << 9)) & 8191);
            int r73 = r22 + 4;
            int r92 = r12 + 8;
            setCoeffIndex(r73, (((bArr[r82] & 255) >> 4) | ((bArr[r12 + 7] & 255) << 4) | ((bArr[r92] & 255) << 12)) & 8191);
            int r83 = r22 + 5;
            int r10 = r12 + 9;
            setCoeffIndex(r83, (((bArr[r92] & 255) >> 1) | ((bArr[r10] & 255) << 7)) & 8191);
            int r93 = r22 + 6;
            int r11 = r12 + 11;
            setCoeffIndex(r93, (((bArr[r10] & 255) >> 6) | ((bArr[r12 + 10] & 255) << 2) | ((bArr[r11] & 255) << 10)) & 8191);
            int r23 = r22 + 7;
            setCoeffIndex(r23, (((bArr[r12 + 12] & 255) << 5) | ((bArr[r11] & 255) >> 3)) & 8191);
            setCoeffIndex(r32, 4096 - getCoeffIndex(r32));
            setCoeffIndex(r42, 4096 - getCoeffIndex(r42));
            setCoeffIndex(r53, 4096 - getCoeffIndex(r53));
            setCoeffIndex(r62, 4096 - getCoeffIndex(r62));
            setCoeffIndex(r73, 4096 - getCoeffIndex(r73));
            setCoeffIndex(r83, 4096 - getCoeffIndex(r83));
            setCoeffIndex(r93, 4096 - getCoeffIndex(r93));
            setCoeffIndex(r23, 4096 - getCoeffIndex(r23));
        }
    }

    public byte[] polyt1Pack() {
        byte[] bArr = new byte[DilithiumEngine.DilithiumPolyT1PackedBytes];
        for (int r12 = 0; r12 < this.dilithiumN / 4; r12++) {
            int r22 = r12 * 5;
            int[] r42 = this.coeffs;
            int r52 = r12 * 4;
            int r6 = r42[r52 + 0];
            bArr[r22 + 0] = (byte) (r6 >> 0);
            int r72 = r42[r52 + 1];
            bArr[r22 + 1] = (byte) ((r6 >> 8) | (r72 << 2));
            int r62 = r72 >> 6;
            int r73 = r42[r52 + 2];
            bArr[r22 + 2] = (byte) (r62 | (r73 << 4));
            int r43 = r42[r52 + 3];
            bArr[r22 + 3] = (byte) ((r43 << 6) | (r73 >> 4));
            bArr[r22 + 4] = (byte) (r43 >> 2);
        }
        return bArr;
    }

    public void polyt1Unpack(byte[] bArr) {
        for (int r12 = 0; r12 < this.dilithiumN / 4; r12++) {
            int r22 = r12 * 4;
            int r42 = r12 * 5;
            int r6 = r42 + 1;
            setCoeffIndex(r22 + 0, (((bArr[r42 + 0] & 255) >> 0) | ((bArr[r6] & 255) << 8)) & 1023);
            int r52 = (bArr[r6] & 255) >> 2;
            int r62 = r42 + 2;
            setCoeffIndex(r22 + 1, (r52 | ((bArr[r62] & 255) << 6)) & 1023);
            int r53 = (bArr[r62] & 255) >> 4;
            int r63 = r42 + 3;
            setCoeffIndex(r22 + 2, (r53 | ((bArr[r63] & 255) << 4)) & 1023);
            setCoeffIndex(r22 + 3, (((bArr[r63] & 255) >> 6) | ((bArr[r42 + 4] & 255) << 2)) & 1023);
        }
    }

    public void power2Round(Poly poly) {
        for (int r12 = 0; r12 < this.dilithiumN; r12++) {
            int[] r22 = Rounding.power2Round(getCoeffIndex(r12));
            setCoeffIndex(r12, r22[0]);
            poly.setCoeffIndex(r12, r22[1]);
        }
    }

    public void reduce() {
        for (int r02 = 0; r02 < this.dilithiumN; r02++) {
            setCoeffIndex(r02, Reduce.reduce32(getCoeffIndex(r02)));
        }
    }

    public void setCoeffIndex(int r22, int r32) {
        this.coeffs[r22] = r32;
    }

    public void setCoeffs(int[] r12) {
        this.coeffs = r12;
    }

    public void shiftLeft() {
        for (int r02 = 0; r02 < this.dilithiumN; r02++) {
            setCoeffIndex(r02, getCoeffIndex(r02) << 13);
        }
    }

    public void subtract(Poly poly) {
        for (int r02 = 0; r02 < this.dilithiumN; r02++) {
            setCoeffIndex(r02, getCoeffIndex(r02) - poly.getCoeffIndex(r02));
        }
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer("[");
        int r12 = 0;
        while (true) {
            int[] r22 = this.coeffs;
            if (r12 >= r22.length) {
                stringBuffer.append("]");
                return stringBuffer.toString();
            }
            stringBuffer.append(r22[r12]);
            if (r12 != this.coeffs.length - 1) {
                stringBuffer.append(", ");
            }
            r12++;
        }
    }

    public void uniformBlocks(byte[] bArr, short s7) {
        int r02 = this.polyUniformNBlocks;
        Symmetric symmetric = this.symmetric;
        int r03 = r02 * symmetric.stream128BlockBytes;
        byte[] bArr2 = new byte[r03 + 2];
        symmetric.stream128init(bArr, s7);
        this.symmetric.stream128squeezeBlocks(bArr2, 0, r03);
        int r6 = rejectUniform(this, 0, this.dilithiumN, bArr2, r03);
        while (r6 < this.dilithiumN) {
            int r12 = r03 % 3;
            for (int r32 = 0; r32 < r12; r32++) {
                bArr2[r32] = bArr2[(r03 - r12) + r32];
            }
            Symmetric symmetric2 = this.symmetric;
            symmetric2.stream128squeezeBlocks(bArr2, r12, symmetric2.stream128BlockBytes);
            r03 = this.symmetric.stream128BlockBytes + r12;
            r6 += rejectUniform(this, r6, this.dilithiumN - r6, bArr2, r03);
        }
    }

    public void uniformEta(byte[] bArr, short s7) {
        int r12;
        int r22;
        int dilithiumEta = this.engine.getDilithiumEta();
        if (this.engine.getDilithiumEta() == 2) {
            r12 = this.symmetric.stream256BlockBytes;
            r22 = r12 + ISO781611.FORMAT_TYPE_TAG;
        } else {
            if (this.engine.getDilithiumEta() != 4) {
                throw new RuntimeException("Wrong Dilithium Eta!");
            }
            r12 = this.symmetric.stream256BlockBytes;
            r22 = r12 + 227;
        }
        int r23 = (r22 - 1) / r12;
        Symmetric symmetric = this.symmetric;
        int r52 = r23 * symmetric.stream256BlockBytes;
        byte[] bArr2 = new byte[r52];
        symmetric.stream256init(bArr, s7);
        this.symmetric.stream256squeezeBlocks(bArr2, 0, r52);
        int r92 = rejectEta(this, 0, this.dilithiumN, bArr2, r52, dilithiumEta);
        while (r92 < 256) {
            Symmetric symmetric2 = this.symmetric;
            symmetric2.stream256squeezeBlocks(bArr2, 0, symmetric2.stream256BlockBytes);
            r92 += rejectEta(this, r92, this.dilithiumN - r92, bArr2, this.symmetric.stream256BlockBytes, dilithiumEta);
        }
    }

    public void uniformGamma1(byte[] bArr, short s7) {
        int polyUniformGamma1NBlocks = this.engine.getPolyUniformGamma1NBlocks();
        Symmetric symmetric = this.symmetric;
        byte[] bArr2 = new byte[polyUniformGamma1NBlocks * symmetric.stream256BlockBytes];
        symmetric.stream256init(bArr, s7);
        this.symmetric.stream256squeezeBlocks(bArr2, 0, this.engine.getPolyUniformGamma1NBlocks() * this.symmetric.stream256BlockBytes);
        unpackZ(bArr2);
    }

    public byte[] w1Pack() {
        byte[] bArr = new byte[this.engine.getDilithiumPolyW1PackedBytes()];
        int r32 = 0;
        if (this.engine.getDilithiumGamma2() == 95232) {
            while (r32 < this.dilithiumN / 4) {
                int r12 = r32 * 3;
                int r42 = r32 * 4;
                int r6 = r42 + 1;
                bArr[r12 + 0] = (byte) (((byte) getCoeffIndex(r42 + 0)) | (getCoeffIndex(r6) << 6));
                byte coeffIndex = (byte) (getCoeffIndex(r6) >> 2);
                int r62 = r42 + 2;
                bArr[r12 + 1] = (byte) (coeffIndex | (getCoeffIndex(r62) << 4));
                bArr[r12 + 2] = (byte) (((byte) (getCoeffIndex(r62) >> 4)) | (getCoeffIndex(r42 + 3) << 2));
                r32++;
            }
        } else if (this.engine.getDilithiumGamma2() == 261888) {
            while (r32 < this.dilithiumN / 2) {
                int r13 = r32 * 2;
                bArr[r32] = (byte) ((getCoeffIndex(r13 + 1) << 4) | getCoeffIndex(r13 + 0));
                r32++;
            }
        }
        return bArr;
    }

    public byte[] zPack() {
        byte[] bArr = new byte[this.engine.getDilithiumPolyZPackedBytes()];
        int[] r22 = new int[4];
        if (this.engine.getDilithiumGamma1() == 131072) {
            for (int r32 = 0; r32 < this.dilithiumN / 4; r32++) {
                int r82 = r32 * 4;
                r22[0] = this.engine.getDilithiumGamma1() - getCoeffIndex(r82 + 0);
                r22[1] = this.engine.getDilithiumGamma1() - getCoeffIndex(r82 + 1);
                r22[2] = this.engine.getDilithiumGamma1() - getCoeffIndex(r82 + 2);
                int dilithiumGamma1 = this.engine.getDilithiumGamma1() - getCoeffIndex(r82 + 3);
                r22[3] = dilithiumGamma1;
                int r83 = r32 * 9;
                int r10 = r22[0];
                bArr[r83 + 0] = (byte) r10;
                bArr[r83 + 1] = (byte) (r10 >> 8);
                int r11 = r22[1];
                bArr[r83 + 2] = (byte) (((byte) (r10 >> 16)) | (r11 << 2));
                bArr[r83 + 3] = (byte) (r11 >> 6);
                byte b10 = (byte) (r11 >> 14);
                int r112 = r22[2];
                bArr[r83 + 4] = (byte) (b10 | (r112 << 4));
                bArr[r83 + 5] = (byte) (r112 >> 4);
                bArr[r83 + 6] = (byte) (((byte) (r112 >> 12)) | (dilithiumGamma1 << 6));
                bArr[r83 + 7] = (byte) (dilithiumGamma1 >> 2);
                bArr[r83 + 8] = (byte) (dilithiumGamma1 >> 10);
            }
        } else {
            if (this.engine.getDilithiumGamma1() != 524288) {
                throw new RuntimeException("Wrong Dilithium Gamma1!");
            }
            for (int r33 = 0; r33 < this.dilithiumN / 2; r33++) {
                int r84 = r33 * 2;
                r22[0] = this.engine.getDilithiumGamma1() - getCoeffIndex(r84 + 0);
                int dilithiumGamma12 = this.engine.getDilithiumGamma1() - getCoeffIndex(r84 + 1);
                r22[1] = dilithiumGamma12;
                int r85 = r33 * 5;
                int r102 = r22[0];
                bArr[r85 + 0] = (byte) r102;
                bArr[r85 + 1] = (byte) (r102 >> 8);
                bArr[r85 + 2] = (byte) (((byte) (r102 >> 16)) | (dilithiumGamma12 << 4));
                bArr[r85 + 3] = (byte) (dilithiumGamma12 >> 4);
                bArr[r85 + 4] = (byte) (dilithiumGamma12 >> 12);
            }
        }
        return bArr;
    }

    public void zUnpack(byte[] bArr) {
        int r22 = 0;
        if (this.engine.getDilithiumGamma1() != 131072) {
            if (this.engine.getDilithiumGamma1() != 524288) {
                throw new RuntimeException("Wrong Dilithium Gamma1!");
            }
            while (r22 < this.dilithiumN / 2) {
                int r02 = r22 * 2;
                int r12 = r02 + 0;
                int r32 = r22 * 5;
                int r52 = r32 + 2;
                setCoeffIndex(r12, ((bArr[r32 + 0] & 255) | ((bArr[r32 + 1] & 255) << 8) | ((bArr[r52] & 255) << 16)) & 1048575);
                int r03 = r02 + 1;
                setCoeffIndex(r03, (((bArr[r32 + 4] & 255) << 12) | ((bArr[r52] & 255) >>> 4) | ((bArr[r32 + 3] & 255) << 4)) & 1048575);
                setCoeffIndex(r12, this.engine.getDilithiumGamma1() - getCoeffIndex(r12));
                setCoeffIndex(r03, this.engine.getDilithiumGamma1() - getCoeffIndex(r03));
                r22++;
            }
            return;
        }
        while (r22 < this.dilithiumN / 4) {
            int r04 = r22 * 4;
            int r13 = r04 + 0;
            int r33 = r22 * 9;
            int r53 = r33 + 2;
            setCoeffIndex(r13, ((bArr[r33 + 0] & 255) | ((bArr[r33 + 1] & 255) << 8) | ((bArr[r53] & 255) << 16)) & 262143);
            int r42 = r04 + 1;
            int r72 = r33 + 4;
            setCoeffIndex(r42, (((bArr[r53] & 255) >>> 2) | ((bArr[r33 + 3] & 255) << 6) | ((bArr[r72] & 255) << 14)) & 262143);
            int r54 = r04 + 2;
            int r82 = r33 + 6;
            setCoeffIndex(r54, (((bArr[r72] & 255) >>> 4) | ((bArr[r33 + 5] & 255) << 4) | ((bArr[r82] & 255) << 12)) & 262143);
            int r05 = r04 + 3;
            setCoeffIndex(r05, (((bArr[r33 + 8] & 255) << 10) | ((bArr[r82] & 255) >>> 6) | ((bArr[r33 + 7] & 255) << 2)) & 262143);
            setCoeffIndex(r13, this.engine.getDilithiumGamma1() - getCoeffIndex(r13));
            setCoeffIndex(r42, this.engine.getDilithiumGamma1() - getCoeffIndex(r42));
            setCoeffIndex(r54, this.engine.getDilithiumGamma1() - getCoeffIndex(r54));
            setCoeffIndex(r05, this.engine.getDilithiumGamma1() - getCoeffIndex(r05));
            r22++;
        }
    }
}
