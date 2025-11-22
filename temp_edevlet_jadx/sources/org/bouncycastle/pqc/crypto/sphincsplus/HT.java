package org.bouncycastle.pqc.crypto.sphincsplus;

import java.util.LinkedList;
import org.bouncycastle.util.Arrays;

/* loaded from: classes2.dex */
class HT {
    SPHINCSPlusEngine engine;
    final byte[] htPubKey;
    private final byte[] pkSeed;
    private final byte[] skSeed;
    WotsPlus wots;

    public HT(SPHINCSPlusEngine sPHINCSPlusEngine, byte[] bArr, byte[] bArr2) {
        this.skSeed = bArr;
        this.pkSeed = bArr2;
        this.engine = sPHINCSPlusEngine;
        this.wots = new WotsPlus(sPHINCSPlusEngine);
        ADRS adrs = new ADRS();
        adrs.setLayerAddress(sPHINCSPlusEngine.D - 1);
        adrs.setTreeAddress(0L);
        if (bArr != null) {
            this.htPubKey = xmss_PKgen(bArr, bArr2, adrs);
        } else {
            this.htPubKey = null;
        }
    }

    public byte[] sign(byte[] bArr, long j10, int r21) {
        long j11 = j10;
        ADRS adrs = new ADRS();
        adrs.setLayerAddress(0);
        adrs.setTreeAddress(j11);
        SIG_XMSS r22 = xmss_sign(bArr, this.skSeed, r21, this.pkSeed, adrs);
        int r11 = this.engine.D;
        SIG_XMSS[] r12 = new SIG_XMSS[r11];
        r12[0] = r22;
        adrs.setLayerAddress(0);
        adrs.setTreeAddress(j11);
        byte[] bArrXmss_pkFromSig = xmss_pkFromSig(r21, r22, bArr, this.pkSeed, adrs);
        int r15 = 1;
        while (true) {
            SPHINCSPlusEngine sPHINCSPlusEngine = this.engine;
            if (r15 >= sPHINCSPlusEngine.D) {
                break;
            }
            int r52 = (int) (((1 << r0) - 1) & j11);
            j11 >>>= sPHINCSPlusEngine.H_PRIME;
            adrs.setLayerAddress(r15);
            adrs.setTreeAddress(j11);
            SIG_XMSS r23 = xmss_sign(bArrXmss_pkFromSig, this.skSeed, r52, this.pkSeed, adrs);
            r12[r15] = r23;
            if (r15 < this.engine.D - 1) {
                bArrXmss_pkFromSig = xmss_pkFromSig(r52, r23, bArrXmss_pkFromSig, this.pkSeed, adrs);
            }
            r15++;
        }
        byte[][] bArr2 = new byte[r11][];
        for (int r10 = 0; r10 != r11; r10++) {
            SIG_XMSS r13 = r12[r10];
            bArr2[r10] = Arrays.concatenate(r13.sig, Arrays.concatenate(r13.auth));
        }
        return Arrays.concatenate(bArr2);
    }

    public byte[] treehash(byte[] bArr, int r10, int r11, byte[] bArr2, ADRS adrs) {
        ADRS adrs2 = new ADRS(adrs);
        LinkedList linkedList = new LinkedList();
        int r112 = 1 << r11;
        if (r10 % r112 != 0) {
            return null;
        }
        for (int r32 = 0; r32 < r112; r32++) {
            adrs2.setType(0);
            int r42 = r10 + r32;
            adrs2.setKeyPairAddress(r42);
            byte[] bArrPkGen = this.wots.pkGen(bArr, bArr2, adrs2);
            adrs2.setType(2);
            adrs2.setTreeHeight(1);
            adrs2.setTreeIndex(r42);
            while (!linkedList.isEmpty() && ((NodeEntry) linkedList.get(0)).nodeHeight == adrs2.getTreeHeight()) {
                adrs2.setTreeIndex((adrs2.getTreeIndex() - 1) / 2);
                bArrPkGen = this.engine.H(bArr2, adrs2, ((NodeEntry) linkedList.remove(0)).nodeValue, bArrPkGen);
                adrs2.setTreeHeight(adrs2.getTreeHeight() + 1);
            }
            linkedList.add(0, new NodeEntry(bArrPkGen, adrs2.getTreeHeight()));
        }
        return ((NodeEntry) linkedList.get(0)).nodeValue;
    }

    public boolean verify(byte[] bArr, SIG_XMSS[] r92, byte[] bArr2, long j10, int r13, byte[] bArr3) {
        ADRS adrs = new ADRS();
        SIG_XMSS r22 = r92[0];
        adrs.setLayerAddress(0);
        adrs.setTreeAddress(j10);
        byte[] bArrXmss_pkFromSig = xmss_pkFromSig(r13, r22, bArr, bArr2, adrs);
        int r82 = 1;
        while (true) {
            SPHINCSPlusEngine sPHINCSPlusEngine = this.engine;
            if (r82 >= sPHINCSPlusEngine.D) {
                return Arrays.areEqual(bArr3, bArrXmss_pkFromSig);
            }
            int r12 = (int) (((1 << r0) - 1) & j10);
            j10 >>>= sPHINCSPlusEngine.H_PRIME;
            SIG_XMSS r23 = r92[r82];
            adrs.setLayerAddress(r82);
            adrs.setTreeAddress(j10);
            bArrXmss_pkFromSig = xmss_pkFromSig(r12, r23, bArrXmss_pkFromSig, bArr2, adrs);
            r82++;
        }
    }

    public byte[] xmss_PKgen(byte[] bArr, byte[] bArr2, ADRS adrs) {
        return treehash(bArr, 0, this.engine.H_PRIME, bArr2, adrs);
    }

    public byte[] xmss_pkFromSig(int r6, SIG_XMSS r72, byte[] bArr, byte[] bArr2, ADRS adrs) {
        ADRS adrs2 = new ADRS(adrs);
        int r10 = 0;
        adrs2.setType(0);
        adrs2.setKeyPairAddress(r6);
        byte[] wOTSSig = r72.getWOTSSig();
        byte[][] xmssauth = r72.getXMSSAUTH();
        byte[] bArrPkFromSig = this.wots.pkFromSig(wOTSSig, bArr, bArr2, adrs2);
        adrs2.setType(2);
        adrs2.setTreeIndex(r6);
        while (r10 < this.engine.H_PRIME) {
            int r22 = r10 + 1;
            adrs2.setTreeHeight(r22);
            if ((r6 / (1 << r10)) % 2 == 0) {
                adrs2.setTreeIndex(adrs2.getTreeIndex() / 2);
                bArrPkFromSig = this.engine.H(bArr2, adrs2, bArrPkFromSig, xmssauth[r10]);
            } else {
                adrs2.setTreeIndex((adrs2.getTreeIndex() - 1) / 2);
                bArrPkFromSig = this.engine.H(bArr2, adrs2, xmssauth[r10], bArrPkFromSig);
            }
            r10 = r22;
        }
        return bArrPkFromSig;
    }

    public SIG_XMSS xmss_sign(byte[] bArr, byte[] bArr2, int r12, byte[] bArr3, ADRS adrs) {
        byte[][] bArr4 = new byte[this.engine.H_PRIME][];
        ADRS adrs2 = new ADRS(adrs);
        adrs2.setType(2);
        adrs2.setLayerAddress(adrs.getLayerAddress());
        adrs2.setTreeAddress(adrs.getTreeAddress());
        for (int r82 = 0; r82 < this.engine.H_PRIME; r82++) {
            int r13 = 1 << r82;
            bArr4[r82] = treehash(bArr2, (1 ^ (r12 / r13)) * r13, r82, bArr3, adrs2);
        }
        ADRS adrs3 = new ADRS(adrs);
        adrs3.setType(1);
        adrs3.setKeyPairAddress(r12);
        return new SIG_XMSS(this.wots.sign(bArr, bArr2, bArr3, adrs3), bArr4);
    }
}
