package org.bouncycastle.pqc.crypto.sphincsplus;

import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.Pack;

/* loaded from: classes2.dex */
class WotsPlus {
    private final SPHINCSPlusEngine engine;
    private final int w;

    public WotsPlus(SPHINCSPlusEngine sPHINCSPlusEngine) {
        this.engine = sPHINCSPlusEngine;
        this.w = sPHINCSPlusEngine.WOTS_W;
    }

    public void base_w(byte[] bArr, int r92, int r10, int[] r11, int r12, int r13) {
        int r02 = 0;
        int r14 = 0;
        int r22 = 0;
        while (r02 < r13) {
            if (r14 == 0) {
                r14 += 8;
                r22 = bArr[r92];
                r92++;
            }
            r14 -= this.engine.WOTS_LOGW;
            r11[r12] = (r22 >>> r14) & (r10 - 1);
            r02++;
            r12++;
        }
    }

    public byte[] chain(byte[] bArr, int r42, int r52, byte[] bArr2, ADRS adrs) {
        if (r52 == 0) {
            return Arrays.clone(bArr);
        }
        if (r42 + r52 > this.w - 1) {
            return null;
        }
        for (int r02 = 0; r02 < r52; r02++) {
            adrs.setHashAddress(r42 + r02);
            bArr = this.engine.F(bArr2, adrs, bArr);
        }
        return bArr;
    }

    public byte[] pkFromSig(byte[] bArr, byte[] bArr2, byte[] bArr3, ADRS adrs) {
        SPHINCSPlusEngine sPHINCSPlusEngine;
        ADRS adrs2 = new ADRS(adrs);
        SPHINCSPlusEngine sPHINCSPlusEngine2 = this.engine;
        int[] r10 = new int[sPHINCSPlusEngine2.WOTS_LEN];
        base_w(bArr2, 0, this.w, r10, 0, sPHINCSPlusEngine2.WOTS_LEN1);
        int r02 = 0;
        int r12 = 0;
        while (true) {
            sPHINCSPlusEngine = this.engine;
            if (r02 >= sPHINCSPlusEngine.WOTS_LEN1) {
                break;
            }
            r12 += (this.w - 1) - r10[r02];
            r02++;
        }
        int r03 = sPHINCSPlusEngine.WOTS_LEN2;
        int r22 = sPHINCSPlusEngine.WOTS_LOGW;
        byte[] bArrIntToBigEndian = Pack.intToBigEndian(r12 << (8 - ((r03 * r22) % 8)));
        int r23 = 4 - (((r03 * r22) + 7) / 8);
        int r32 = this.w;
        SPHINCSPlusEngine sPHINCSPlusEngine3 = this.engine;
        base_w(bArrIntToBigEndian, r23, r32, r10, sPHINCSPlusEngine3.WOTS_LEN1, sPHINCSPlusEngine3.WOTS_LEN2);
        SPHINCSPlusEngine sPHINCSPlusEngine4 = this.engine;
        byte[] bArr4 = new byte[sPHINCSPlusEngine4.N];
        byte[][] bArr5 = new byte[sPHINCSPlusEngine4.WOTS_LEN][];
        for (int r14 = 0; r14 < this.engine.WOTS_LEN; r14++) {
            adrs.setChainAddress(r14);
            int r04 = this.engine.N;
            System.arraycopy(bArr, r14 * r04, bArr4, 0, r04);
            int r24 = r10[r14];
            bArr5[r14] = chain(bArr4, r24, (this.w - 1) - r24, bArr3, adrs);
        }
        adrs2.setType(1);
        adrs2.setKeyPairAddress(adrs.getKeyPairAddress());
        return this.engine.T_l(bArr3, adrs2, Arrays.concatenate(bArr5));
    }

    public byte[] pkGen(byte[] bArr, byte[] bArr2, ADRS adrs) {
        ADRS adrs2 = new ADRS(adrs);
        byte[][] bArr3 = new byte[this.engine.WOTS_LEN][];
        for (int r32 = 0; r32 < this.engine.WOTS_LEN; r32++) {
            ADRS adrs3 = new ADRS(adrs);
            adrs3.setType(5);
            adrs3.setKeyPairAddress(adrs.getKeyPairAddress());
            adrs3.setChainAddress(r32);
            adrs3.setHashAddress(0);
            byte[] bArrPRF = this.engine.PRF(bArr2, bArr, adrs3);
            adrs3.setType(0);
            adrs3.setKeyPairAddress(adrs.getKeyPairAddress());
            adrs3.setChainAddress(r32);
            adrs3.setHashAddress(0);
            bArr3[r32] = chain(bArrPRF, 0, this.w - 1, bArr2, adrs3);
        }
        adrs2.setType(1);
        adrs2.setKeyPairAddress(adrs.getKeyPairAddress());
        return this.engine.T_l(bArr2, adrs2, Arrays.concatenate(bArr3));
    }

    public byte[] sign(byte[] bArr, byte[] bArr2, byte[] bArr3, ADRS adrs) {
        SPHINCSPlusEngine sPHINCSPlusEngine;
        ADRS adrs2 = new ADRS(adrs);
        SPHINCSPlusEngine sPHINCSPlusEngine2 = this.engine;
        int[] r10 = new int[sPHINCSPlusEngine2.WOTS_LEN];
        base_w(bArr, 0, this.w, r10, 0, sPHINCSPlusEngine2.WOTS_LEN1);
        int r02 = 0;
        int r12 = 0;
        while (true) {
            sPHINCSPlusEngine = this.engine;
            if (r02 >= sPHINCSPlusEngine.WOTS_LEN1) {
                break;
            }
            r12 += (this.w - 1) - r10[r02];
            r02++;
        }
        int r03 = sPHINCSPlusEngine.WOTS_LOGW;
        if (r03 % 8 != 0) {
            r12 <<= 8 - ((sPHINCSPlusEngine.WOTS_LEN2 * r03) % 8);
        }
        int r22 = ((sPHINCSPlusEngine.WOTS_LEN2 * r03) + 7) / 8;
        int r32 = this.w;
        SPHINCSPlusEngine sPHINCSPlusEngine3 = this.engine;
        base_w(Pack.intToBigEndian(r12), 4 - r22, r32, r10, sPHINCSPlusEngine3.WOTS_LEN1, sPHINCSPlusEngine3.WOTS_LEN2);
        byte[][] bArr4 = new byte[this.engine.WOTS_LEN][];
        for (int r122 = 0; r122 < this.engine.WOTS_LEN; r122++) {
            adrs2.setType(5);
            adrs2.setKeyPairAddress(adrs.getKeyPairAddress());
            adrs2.setChainAddress(r122);
            adrs2.setHashAddress(0);
            byte[] bArrPRF = this.engine.PRF(bArr3, bArr2, adrs2);
            adrs2.setType(0);
            adrs2.setKeyPairAddress(adrs.getKeyPairAddress());
            adrs2.setChainAddress(r122);
            adrs2.setHashAddress(0);
            bArr4[r122] = chain(bArrPRF, 0, r10[r122], bArr3, adrs2);
        }
        return Arrays.concatenate(bArr4);
    }
}
