package org.bouncycastle.pqc.crypto.picnic;

import java.lang.reflect.Array;
import org.bouncycastle.util.Pack;

/* loaded from: classes2.dex */
class Tape {
    private PicnicEngine engine;
    int nTapes;
    int pos = 0;
    byte[][] tapes;

    public Tape(PicnicEngine picnicEngine) {
        this.engine = picnicEngine;
        this.tapes = (byte[][]) Array.newInstance((Class<?>) Byte.TYPE, picnicEngine.numMPCParties, picnicEngine.andSizeBytes * 2);
        this.nTapes = picnicEngine.numMPCParties;
    }

    private void tapesToParityBits(int[] r32, int r42) {
        for (int r02 = 0; r02 < r42; r02++) {
            Utils.setBitInWordArray(r32, r02, Utils.parity16(tapesToWord()));
        }
    }

    public void computeAuxTape(byte[] bArr) {
        int[] r12 = new int[16];
        int[] r22 = new int[16];
        int[] r32 = new int[16];
        int[] r42 = new int[16];
        int[] r52 = new int[16];
        PicnicEngine picnicEngine = this.engine;
        r52[picnicEngine.stateSizeWords - 1] = 0;
        tapesToParityBits(r52, picnicEngine.stateSizeBits);
        PicnicEngine picnicEngine2 = this.engine;
        KMatricesWithPointer kMatricesWithPointerKMatrixInv = picnicEngine2.lowmcConstants.KMatrixInv(picnicEngine2);
        this.engine.matrix_mul(r42, r52, kMatricesWithPointerKMatrixInv.getData(), kMatricesWithPointerKMatrixInv.getMatrixPointer());
        if (bArr != null) {
            Pack.intToLittleEndian(r42, 0, this.engine.stateSizeWords, bArr, 0);
        }
        for (int r13 = this.engine.numRounds; r13 > 0; r13--) {
            PicnicEngine picnicEngine3 = this.engine;
            KMatricesWithPointer kMatricesWithPointerKMatrix = picnicEngine3.lowmcConstants.KMatrix(picnicEngine3, r13);
            this.engine.matrix_mul(r12, r42, kMatricesWithPointerKMatrix.getData(), kMatricesWithPointerKMatrix.getMatrixPointer());
            this.engine.xor_array(r22, r22, r12, 0);
            PicnicEngine picnicEngine4 = this.engine;
            int r10 = r13 - 1;
            KMatricesWithPointer kMatricesWithPointerLMatrixInv = picnicEngine4.lowmcConstants.LMatrixInv(picnicEngine4, r10);
            this.engine.matrix_mul(r32, r22, kMatricesWithPointerLMatrixInv.getData(), kMatricesWithPointerLMatrixInv.getMatrixPointer());
            if (r13 == 1) {
                System.arraycopy(r52, 0, r22, 0, 16);
            } else {
                int r6 = this.engine.stateSizeBits;
                this.pos = r6 * 2 * r10;
                tapesToParityBits(r22, r6);
            }
            PicnicEngine picnicEngine5 = this.engine;
            int r72 = picnicEngine5.stateSizeBits;
            this.pos = (r72 * 2 * r10) + r72;
            picnicEngine5.aux_mpc_sbox(r22, r32, this);
        }
        this.pos = 0;
    }

    public void setAuxBits(byte[] bArr) {
        PicnicEngine picnicEngine = this.engine;
        int r12 = picnicEngine.numMPCParties - 1;
        int r02 = picnicEngine.stateSizeBits;
        int r42 = 0;
        for (int r32 = 0; r32 < this.engine.numRounds; r32++) {
            int r52 = 0;
            while (r52 < r02) {
                Utils.setBit(this.tapes[r12], (r02 * 2 * r32) + r02 + r52, Utils.getBit(bArr, r42));
                r52++;
                r42++;
            }
        }
    }

    public int tapesToWord() {
        int r12 = this.pos;
        int r22 = r12 >>> 3;
        int r32 = (r12 & 7) ^ 7;
        int r6 = 1 << r32;
        byte[][] bArr = this.tapes;
        int r23 = ((bArr[15][r22] & r6) << 8) | ((bArr[7][r22] & r6) << 0) | ((bArr[0][r22] & r6) << 7) | 0 | ((bArr[1][r22] & r6) << 6) | ((bArr[2][r22] & r6) << 5) | ((bArr[3][r22] & r6) << 4) | ((bArr[4][r22] & r6) << 3) | ((bArr[5][r22] & r6) << 2) | ((bArr[6][r22] & r6) << 1) | ((bArr[8][r22] & r6) << 15) | ((bArr[9][r22] & r6) << 14) | ((bArr[10][r22] & r6) << 13) | ((bArr[11][r22] & r6) << 12) | ((bArr[12][r22] & r6) << 11) | ((bArr[13][r22] & r6) << 10) | ((bArr[14][r22] & r6) << 9);
        this.pos = r12 + 1;
        return r23 >>> r32;
    }
}
