package org.bouncycastle.pqc.crypto.sphincsplus;

import java.util.LinkedList;
import org.bouncycastle.util.Arrays;

/* loaded from: classes2.dex */
class Fors {
    SPHINCSPlusEngine engine;

    public Fors(SPHINCSPlusEngine sPHINCSPlusEngine) {
        this.engine = sPHINCSPlusEngine;
    }

    public static int[] message_to_idxs(byte[] bArr, int r92, int r10) {
        int[] r02 = new int[r92];
        int r32 = 0;
        for (int r22 = 0; r22 < r92; r22++) {
            r02[r22] = 0;
            for (int r42 = 0; r42 < r10; r42++) {
                r02[r22] = r02[r22] ^ (((bArr[r32 >> 3] >> (r32 & 7)) & 1) << r42);
                r32++;
            }
        }
        return r02;
    }

    public byte[] pkFromSig(SIG_FORS[] r17, byte[] bArr, byte[] bArr2, ADRS adrs) {
        int r32 = 2;
        byte[][] bArr3 = new byte[2][];
        SPHINCSPlusEngine sPHINCSPlusEngine = this.engine;
        int r6 = sPHINCSPlusEngine.K;
        byte[][] bArr4 = new byte[r6][];
        int r82 = sPHINCSPlusEngine.T;
        int[] r52 = message_to_idxs(bArr, r6, sPHINCSPlusEngine.A);
        int r92 = 0;
        while (r92 < this.engine.K) {
            int r10 = r52[r92];
            byte[] sk = r17[r92].getSK();
            adrs.setTreeHeight(0);
            int r12 = (r92 * r82) + r10;
            adrs.setTreeIndex(r12);
            bArr3[0] = this.engine.F(bArr2, adrs, sk);
            byte[][] authPath = r17[r92].getAuthPath();
            adrs.setTreeIndex(r12);
            int r122 = 0;
            while (r122 < this.engine.A) {
                int r13 = r122 + 1;
                adrs.setTreeHeight(r13);
                if ((r10 / (1 << r122)) % r32 == 0) {
                    adrs.setTreeIndex(adrs.getTreeIndex() / r32);
                    bArr3[1] = this.engine.H(bArr2, adrs, bArr3[0], authPath[r122]);
                } else {
                    adrs.setTreeIndex((adrs.getTreeIndex() - 1) / 2);
                    bArr3[1] = this.engine.H(bArr2, adrs, authPath[r122], bArr3[0]);
                }
                bArr3[0] = bArr3[1];
                r122 = r13;
                r32 = 2;
            }
            bArr4[r92] = bArr3[0];
            r92++;
            r32 = 2;
        }
        ADRS adrs2 = new ADRS(adrs);
        adrs2.setType(4);
        adrs2.setKeyPairAddress(adrs.getKeyPairAddress());
        return this.engine.T_l(bArr2, adrs2, Arrays.concatenate(bArr4));
    }

    public SIG_FORS[] sign(byte[] bArr, byte[] bArr2, byte[] bArr3, ADRS adrs) {
        Fors fors = this;
        ADRS adrs2 = new ADRS(adrs);
        SPHINCSPlusEngine sPHINCSPlusEngine = fors.engine;
        int[] r92 = message_to_idxs(bArr, sPHINCSPlusEngine.K, sPHINCSPlusEngine.A);
        SPHINCSPlusEngine sPHINCSPlusEngine2 = fors.engine;
        SIG_FORS[] r10 = new SIG_FORS[sPHINCSPlusEngine2.K];
        int r11 = sPHINCSPlusEngine2.T;
        int r12 = 0;
        int r13 = 0;
        while (r13 < fors.engine.K) {
            int r14 = r92[r13];
            adrs2.setType(6);
            adrs2.setKeyPairAddress(adrs.getKeyPairAddress());
            adrs2.setTreeHeight(r12);
            int r15 = r13 * r11;
            adrs2.setTreeIndex(r15 + r14);
            byte[] bArrPRF = fors.engine.PRF(bArr3, bArr2, adrs2);
            adrs2.changeType(3);
            byte[][] bArr4 = new byte[fors.engine.A][];
            int r16 = 0;
            while (r16 < fors.engine.A) {
                int r162 = 1 << r16;
                int r17 = r16;
                byte[][] bArr5 = bArr4;
                bArr5[r17] = treehash(bArr2, (((r14 / r162) ^ 1) * r162) + r15, r17, bArr3, adrs2);
                r16 = r17 + 1;
                bArrPRF = bArrPRF;
                bArr4 = bArr5;
                fors = this;
            }
            r10[r13] = new SIG_FORS(bArrPRF, bArr4);
            r13++;
            r12 = 0;
            fors = this;
        }
        return r10;
    }

    public byte[] treehash(byte[] bArr, int r10, int r11, byte[] bArr2, ADRS adrs) {
        LinkedList linkedList = new LinkedList();
        int r112 = 1 << r11;
        if (r10 % r112 != 0) {
            return null;
        }
        ADRS adrs2 = new ADRS(adrs);
        for (int r42 = 0; r42 < r112; r42++) {
            adrs2.setType(6);
            adrs2.setKeyPairAddress(adrs.getKeyPairAddress());
            adrs2.setTreeHeight(0);
            adrs2.setTreeIndex(r10 + r42);
            byte[] bArrPRF = this.engine.PRF(bArr2, bArr, adrs2);
            adrs2.changeType(3);
            byte[] bArrF = this.engine.F(bArr2, adrs2, bArrPRF);
            adrs2.setTreeHeight(1);
            while (!linkedList.isEmpty() && ((NodeEntry) linkedList.get(0)).nodeHeight == adrs2.getTreeHeight()) {
                adrs2.setTreeIndex((adrs2.getTreeIndex() - 1) / 2);
                bArrF = this.engine.H(bArr2, adrs2, ((NodeEntry) linkedList.remove(0)).nodeValue, bArrF);
                adrs2.setTreeHeight(adrs2.getTreeHeight() + 1);
            }
            linkedList.add(0, new NodeEntry(bArrF, adrs2.getTreeHeight()));
        }
        return ((NodeEntry) linkedList.get(0)).nodeValue;
    }
}
