package org.bouncycastle.pqc.legacy.crypto.gmss;

import java.lang.reflect.Array;
import java.util.Vector;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.pqc.legacy.crypto.gmss.util.GMSSRandom;
import org.bouncycastle.pqc.legacy.crypto.gmss.util.WinternitzOTSignature;
import org.bouncycastle.util.Arrays;

/* loaded from: classes2.dex */
public class GMSSPrivateKeyParameters extends GMSSKeyParameters {
    private int[] K;
    private byte[][][] currentAuthPaths;
    private Vector[][] currentRetain;
    private byte[][] currentRootSig;
    private byte[][] currentSeeds;
    private Vector[] currentStack;
    private Treehash[][] currentTreehash;
    private GMSSDigestProvider digestProvider;
    private GMSSParameters gmssPS;
    private GMSSRandom gmssRandom;
    private int[] heightOfTrees;
    private int[] index;
    private byte[][][] keep;
    private int mdLength;
    private Digest messDigestTrees;
    private int[] minTreehash;
    private byte[][][] nextAuthPaths;
    private GMSSLeaf[] nextNextLeaf;
    private GMSSRootCalc[] nextNextRoot;
    private byte[][] nextNextSeeds;
    private Vector[][] nextRetain;
    private byte[][] nextRoot;
    private GMSSRootSig[] nextRootSig;
    private Vector[] nextStack;
    private Treehash[][] nextTreehash;
    private int numLayer;
    private int[] numLeafs;
    private int[] otsIndex;
    private GMSSLeaf[] upperLeaf;
    private GMSSLeaf[] upperTreehashLeaf;
    private boolean used;

    private GMSSPrivateKeyParameters(GMSSPrivateKeyParameters gMSSPrivateKeyParameters) {
        super(true, gMSSPrivateKeyParameters.getParameters());
        this.used = false;
        this.index = Arrays.clone(gMSSPrivateKeyParameters.index);
        this.currentSeeds = Arrays.clone(gMSSPrivateKeyParameters.currentSeeds);
        this.nextNextSeeds = Arrays.clone(gMSSPrivateKeyParameters.nextNextSeeds);
        this.currentAuthPaths = Arrays.clone(gMSSPrivateKeyParameters.currentAuthPaths);
        this.nextAuthPaths = Arrays.clone(gMSSPrivateKeyParameters.nextAuthPaths);
        this.currentTreehash = gMSSPrivateKeyParameters.currentTreehash;
        this.nextTreehash = gMSSPrivateKeyParameters.nextTreehash;
        this.currentStack = gMSSPrivateKeyParameters.currentStack;
        this.nextStack = gMSSPrivateKeyParameters.nextStack;
        this.currentRetain = gMSSPrivateKeyParameters.currentRetain;
        this.nextRetain = gMSSPrivateKeyParameters.nextRetain;
        this.keep = Arrays.clone(gMSSPrivateKeyParameters.keep);
        this.nextNextLeaf = gMSSPrivateKeyParameters.nextNextLeaf;
        this.upperLeaf = gMSSPrivateKeyParameters.upperLeaf;
        this.upperTreehashLeaf = gMSSPrivateKeyParameters.upperTreehashLeaf;
        this.minTreehash = gMSSPrivateKeyParameters.minTreehash;
        this.gmssPS = gMSSPrivateKeyParameters.gmssPS;
        this.nextRoot = Arrays.clone(gMSSPrivateKeyParameters.nextRoot);
        this.nextNextRoot = gMSSPrivateKeyParameters.nextNextRoot;
        this.currentRootSig = gMSSPrivateKeyParameters.currentRootSig;
        this.nextRootSig = gMSSPrivateKeyParameters.nextRootSig;
        this.digestProvider = gMSSPrivateKeyParameters.digestProvider;
        this.heightOfTrees = gMSSPrivateKeyParameters.heightOfTrees;
        this.otsIndex = gMSSPrivateKeyParameters.otsIndex;
        this.K = gMSSPrivateKeyParameters.K;
        this.numLayer = gMSSPrivateKeyParameters.numLayer;
        this.messDigestTrees = gMSSPrivateKeyParameters.messDigestTrees;
        this.mdLength = gMSSPrivateKeyParameters.mdLength;
        this.gmssRandom = gMSSPrivateKeyParameters.gmssRandom;
        this.numLeafs = gMSSPrivateKeyParameters.numLeafs;
    }

    public GMSSPrivateKeyParameters(int[] r17, byte[][] bArr, byte[][] bArr2, byte[][][] bArr3, byte[][][] bArr4, byte[][][] bArr5, Treehash[][] treehashArr, Treehash[][] treehashArr2, Vector[] vectorArr, Vector[] vectorArr2, Vector[][] vectorArr3, Vector[][] vectorArr4, GMSSLeaf[] gMSSLeafArr, GMSSLeaf[] gMSSLeafArr2, GMSSLeaf[] gMSSLeafArr3, int[] r32, byte[][] bArr6, GMSSRootCalc[] gMSSRootCalcArr, byte[][] bArr7, GMSSRootSig[] gMSSRootSigArr, GMSSParameters gMSSParameters, GMSSDigestProvider gMSSDigestProvider) {
        super(true, gMSSParameters);
        this.used = false;
        Digest digest = gMSSDigestProvider.get();
        this.messDigestTrees = digest;
        this.mdLength = digest.getDigestSize();
        this.gmssPS = gMSSParameters;
        this.otsIndex = gMSSParameters.getWinternitzParameter();
        this.K = gMSSParameters.getK();
        this.heightOfTrees = gMSSParameters.getHeightOfTrees();
        int numOfLayers = this.gmssPS.getNumOfLayers();
        this.numLayer = numOfLayers;
        if (r17 == null) {
            this.index = new int[numOfLayers];
            for (int r12 = 0; r12 < this.numLayer; r12++) {
                this.index[r12] = 0;
            }
        } else {
            this.index = r17;
        }
        this.currentSeeds = bArr;
        this.nextNextSeeds = bArr2;
        this.currentAuthPaths = Arrays.clone(bArr3);
        this.nextAuthPaths = bArr4;
        int r13 = 2;
        if (bArr5 == null) {
            this.keep = new byte[this.numLayer][][];
            int r33 = 0;
            while (r33 < this.numLayer) {
                this.keep[r33] = (byte[][]) Array.newInstance((Class<?>) Byte.TYPE, (int) Math.floor(this.heightOfTrees[r33] / r13), this.mdLength);
                r33++;
                r13 = 2;
            }
        } else {
            this.keep = bArr5;
        }
        if (vectorArr == null) {
            this.currentStack = new Vector[this.numLayer];
            for (int r14 = 0; r14 < this.numLayer; r14++) {
                this.currentStack[r14] = new Vector();
            }
        } else {
            this.currentStack = vectorArr;
        }
        if (vectorArr2 == null) {
            this.nextStack = new Vector[this.numLayer - 1];
            int r15 = 0;
            for (int r22 = 1; r15 < this.numLayer - r22; r22 = 1) {
                this.nextStack[r15] = new Vector();
                r15++;
            }
        } else {
            this.nextStack = vectorArr2;
        }
        this.currentTreehash = treehashArr;
        this.nextTreehash = treehashArr2;
        this.currentRetain = vectorArr3;
        this.nextRetain = vectorArr4;
        this.nextRoot = bArr6;
        this.digestProvider = gMSSDigestProvider;
        if (gMSSRootCalcArr == null) {
            this.nextNextRoot = new GMSSRootCalc[this.numLayer - 1];
            int r23 = 0;
            for (int r34 = 1; r23 < this.numLayer - r34; r34 = 1) {
                int r11 = r23 + 1;
                this.nextNextRoot[r23] = new GMSSRootCalc(this.heightOfTrees[r11], this.K[r11], this.digestProvider);
                r23 = r11;
            }
        } else {
            this.nextNextRoot = gMSSRootCalcArr;
        }
        this.currentRootSig = bArr7;
        this.numLeafs = new int[this.numLayer];
        for (int r24 = 0; r24 < this.numLayer; r24++) {
            this.numLeafs[r24] = 1 << this.heightOfTrees[r24];
        }
        this.gmssRandom = new GMSSRandom(this.messDigestTrees);
        int r25 = this.numLayer;
        if (r25 <= 1) {
            this.nextNextLeaf = new GMSSLeaf[0];
        } else if (gMSSLeafArr == null) {
            this.nextNextLeaf = new GMSSLeaf[r25 - 2];
            int r26 = 0;
            while (r26 < this.numLayer - 2) {
                int r122 = r26 + 1;
                this.nextNextLeaf[r26] = new GMSSLeaf(gMSSDigestProvider.get(), this.otsIndex[r122], this.numLeafs[r26 + 2], this.nextNextSeeds[r26]);
                r26 = r122;
            }
        } else {
            this.nextNextLeaf = gMSSLeafArr;
        }
        if (gMSSLeafArr2 == null) {
            this.upperLeaf = new GMSSLeaf[this.numLayer - 1];
            int r27 = 0;
            for (int r35 = 1; r27 < this.numLayer - r35; r35 = 1) {
                int r112 = r27 + 1;
                this.upperLeaf[r27] = new GMSSLeaf(gMSSDigestProvider.get(), this.otsIndex[r27], this.numLeafs[r112], this.currentSeeds[r27]);
                r27 = r112;
            }
        } else {
            this.upperLeaf = gMSSLeafArr2;
        }
        if (gMSSLeafArr3 == null) {
            this.upperTreehashLeaf = new GMSSLeaf[this.numLayer - 1];
            int r28 = 0;
            for (int r36 = 1; r28 < this.numLayer - r36; r36 = 1) {
                int r82 = r28 + 1;
                this.upperTreehashLeaf[r28] = new GMSSLeaf(gMSSDigestProvider.get(), this.otsIndex[r28], this.numLeafs[r82]);
                r28 = r82;
            }
        } else {
            this.upperTreehashLeaf = gMSSLeafArr3;
        }
        if (r32 == null) {
            this.minTreehash = new int[this.numLayer - 1];
            int r29 = 0;
            for (int r37 = 1; r29 < this.numLayer - r37; r37 = 1) {
                this.minTreehash[r29] = -1;
                r29++;
            }
        } else {
            this.minTreehash = r32;
        }
        int r210 = this.mdLength;
        byte[] bArr8 = new byte[r210];
        byte[] bArr9 = new byte[r210];
        if (gMSSRootSigArr != null) {
            this.nextRootSig = gMSSRootSigArr;
            return;
        }
        this.nextRootSig = new GMSSRootSig[this.numLayer - 1];
        int r211 = 0;
        while (r211 < this.numLayer - 1) {
            System.arraycopy(bArr[r211], 0, bArr8, 0, this.mdLength);
            this.gmssRandom.nextSeed(bArr8);
            byte[] bArrNextSeed = this.gmssRandom.nextSeed(bArr8);
            int r123 = r211 + 1;
            this.nextRootSig[r211] = new GMSSRootSig(gMSSDigestProvider.get(), this.otsIndex[r211], this.heightOfTrees[r123]);
            this.nextRootSig[r211].initSign(bArrNextSeed, bArr6[r211]);
            r211 = r123;
        }
    }

    public GMSSPrivateKeyParameters(byte[][] bArr, byte[][] bArr2, byte[][][] bArr3, byte[][][] bArr4, Treehash[][] treehashArr, Treehash[][] treehashArr2, Vector[] vectorArr, Vector[] vectorArr2, Vector[][] vectorArr3, Vector[][] vectorArr4, byte[][] bArr5, byte[][] bArr6, GMSSParameters gMSSParameters, GMSSDigestProvider gMSSDigestProvider) {
        this(null, bArr, bArr2, bArr3, bArr4, null, treehashArr, treehashArr2, vectorArr, vectorArr2, vectorArr3, vectorArr4, null, null, null, null, bArr5, null, bArr6, null, gMSSParameters, gMSSDigestProvider);
    }

    private void computeAuthPaths(int r14) {
        int r52;
        byte[] publicKey;
        int r02 = this.index[r14];
        int r12 = this.heightOfTrees[r14];
        int r22 = this.K[r14];
        int r42 = 0;
        while (true) {
            r52 = r12 - r22;
            if (r42 >= r52) {
                break;
            }
            this.currentTreehash[r14][r42].updateNextSeed(this.gmssRandom);
            r42++;
        }
        int r23 = heightOfPhi(r02);
        byte[] bArr = new byte[this.mdLength];
        byte[] bArrNextSeed = this.gmssRandom.nextSeed(this.currentSeeds[r14]);
        int r6 = (r02 >>> (r23 + 1)) & 1;
        int r82 = this.mdLength;
        byte[] bArr2 = new byte[r82];
        int r13 = r12 - 1;
        if (r23 < r13 && r6 == 0) {
            System.arraycopy(this.currentAuthPaths[r14][r23], 0, bArr2, 0, r82);
        }
        int r83 = this.mdLength;
        byte[] bArr3 = new byte[r83];
        if (r23 == 0) {
            if (r14 == this.numLayer - 1) {
                publicKey = new WinternitzOTSignature(bArrNextSeed, this.digestProvider.get(), this.otsIndex[r14]).getPublicKey();
            } else {
                byte[] bArr4 = new byte[r83];
                System.arraycopy(this.currentSeeds[r14], 0, bArr4, 0, r83);
                this.gmssRandom.nextSeed(bArr4);
                byte[] leaf = this.upperLeaf[r14].getLeaf();
                this.upperLeaf[r14].initLeafCalc(bArr4);
                publicKey = leaf;
            }
            System.arraycopy(publicKey, 0, this.currentAuthPaths[r14][0], 0, this.mdLength);
        } else {
            int r43 = r83 << 1;
            byte[] bArr5 = new byte[r43];
            System.arraycopy(this.currentAuthPaths[r14][r23 - 1], 0, bArr5, 0, r83);
            byte[] bArr6 = this.keep[r14][(int) Math.floor(r12 / 2)];
            int r11 = this.mdLength;
            System.arraycopy(bArr6, 0, bArr5, r11, r11);
            this.messDigestTrees.update(bArr5, 0, r43);
            this.currentAuthPaths[r14][r23] = new byte[this.messDigestTrees.getDigestSize()];
            this.messDigestTrees.doFinal(this.currentAuthPaths[r14][r23], 0);
            for (int r44 = 0; r44 < r23; r44++) {
                if (r44 < r52) {
                    if (this.currentTreehash[r14][r44].wasFinished()) {
                        System.arraycopy(this.currentTreehash[r14][r44].getFirstNode(), 0, this.currentAuthPaths[r14][r44], 0, this.mdLength);
                        this.currentTreehash[r14][r44].destroy();
                    } else {
                        System.err.println("Treehash (" + r14 + "," + r44 + ") not finished when needed in AuthPathComputation");
                    }
                }
                if (r44 < r13 && r44 >= r52) {
                    int r10 = r44 - r52;
                    if (this.currentRetain[r14][r10].size() > 0) {
                        System.arraycopy(this.currentRetain[r14][r10].lastElement(), 0, this.currentAuthPaths[r14][r44], 0, this.mdLength);
                        Vector vector = this.currentRetain[r14][r10];
                        vector.removeElementAt(vector.size() - 1);
                    }
                }
                if (r44 < r52 && ((1 << r44) * 3) + r02 < this.numLeafs[r14]) {
                    this.currentTreehash[r14][r44].initialize();
                }
            }
        }
        if (r23 < r13 && r6 == 0) {
            System.arraycopy(bArr2, 0, this.keep[r14][(int) Math.floor(r23 / 2)], 0, this.mdLength);
        }
        if (r14 != this.numLayer - 1) {
            this.minTreehash[r14] = getMinTreehashIndex(r14);
            return;
        }
        for (int r72 = 1; r72 <= r52 / 2; r72++) {
            int minTreehashIndex = getMinTreehashIndex(r14);
            if (minTreehashIndex >= 0) {
                try {
                    byte[] bArr7 = new byte[this.mdLength];
                    System.arraycopy(this.currentTreehash[r14][minTreehashIndex].getSeedActive(), 0, bArr7, 0, this.mdLength);
                    this.currentTreehash[r14][minTreehashIndex].update(this.gmssRandom, new WinternitzOTSignature(this.gmssRandom.nextSeed(bArr7), this.digestProvider.get(), this.otsIndex[r14]).getPublicKey());
                } catch (Exception e10) {
                    System.out.println(e10);
                }
            }
        }
    }

    private int getMinTreehashIndex(int r6) {
        int r22 = -1;
        for (int r12 = 0; r12 < this.heightOfTrees[r6] - this.K[r6]; r12++) {
            if (this.currentTreehash[r6][r12].wasInitialized() && !this.currentTreehash[r6][r12].wasFinished() && (r22 == -1 || this.currentTreehash[r6][r12].getLowestNodeHeight() < this.currentTreehash[r6][r22].getLowestNodeHeight())) {
                r22 = r12;
            }
        }
        return r22;
    }

    private int heightOfPhi(int r52) {
        if (r52 == 0) {
            return -1;
        }
        int r12 = 0;
        int r22 = 1;
        while (r52 % r22 == 0) {
            r22 *= 2;
            r12++;
        }
        return r12 - 1;
    }

    private void nextKey(int r52) {
        int r02 = this.numLayer;
        if (r52 == r02 - 1) {
            int[] r12 = this.index;
            r12[r52] = r12[r52] + 1;
        }
        if (this.index[r52] != this.numLeafs[r52]) {
            updateKey(r52);
        } else if (r02 != 1) {
            nextTree(r52);
            this.index[r52] = 0;
        }
    }

    private void nextTree(int r82) {
        if (r82 > 0) {
            int[] r02 = this.index;
            int r12 = r82 - 1;
            r02[r12] = r02[r12] + 1;
            int r03 = r82;
            boolean z10 = true;
            do {
                r03--;
                if (this.index[r03] < this.numLeafs[r03]) {
                    z10 = false;
                }
                if (!z10) {
                    break;
                }
            } while (r03 > 0);
            if (z10) {
                return;
            }
            this.gmssRandom.nextSeed(this.currentSeeds[r82]);
            this.nextRootSig[r12].updateSign();
            if (r82 > 1) {
                GMSSLeaf[] gMSSLeafArr = this.nextNextLeaf;
                int r22 = r12 - 1;
                gMSSLeafArr[r22] = gMSSLeafArr[r22].nextLeaf();
            }
            GMSSLeaf[] gMSSLeafArr2 = this.upperLeaf;
            gMSSLeafArr2[r12] = gMSSLeafArr2[r12].nextLeaf();
            if (this.minTreehash[r12] >= 0) {
                GMSSLeaf[] gMSSLeafArr3 = this.upperTreehashLeaf;
                gMSSLeafArr3[r12] = gMSSLeafArr3[r12].nextLeaf();
                try {
                    this.currentTreehash[r12][this.minTreehash[r12]].update(this.gmssRandom, this.upperTreehashLeaf[r12].getLeaf());
                    this.currentTreehash[r12][this.minTreehash[r12]].wasFinished();
                } catch (Exception e10) {
                    System.out.println(e10);
                }
            }
            updateNextNextAuthRoot(r82);
            this.currentRootSig[r12] = this.nextRootSig[r12].getSig();
            for (int r04 = 0; r04 < this.heightOfTrees[r82] - this.K[r82]; r04++) {
                Treehash[] treehashArr = this.currentTreehash[r82];
                Treehash[][] treehashArr2 = this.nextTreehash;
                treehashArr[r04] = treehashArr2[r12][r04];
                treehashArr2[r12][r04] = this.nextNextRoot[r12].getTreehash()[r04];
            }
            for (int r05 = 0; r05 < this.heightOfTrees[r82]; r05++) {
                System.arraycopy(this.nextAuthPaths[r12][r05], 0, this.currentAuthPaths[r82][r05], 0, this.mdLength);
                System.arraycopy(this.nextNextRoot[r12].getAuthPath()[r05], 0, this.nextAuthPaths[r12][r05], 0, this.mdLength);
            }
            for (int r06 = 0; r06 < this.K[r82] - 1; r06++) {
                Vector[] vectorArr = this.currentRetain[r82];
                Vector[][] vectorArr2 = this.nextRetain;
                vectorArr[r06] = vectorArr2[r12][r06];
                vectorArr2[r12][r06] = this.nextNextRoot[r12].getRetain()[r06];
            }
            Vector[] vectorArr3 = this.currentStack;
            Vector[] vectorArr4 = this.nextStack;
            vectorArr3[r82] = vectorArr4[r12];
            vectorArr4[r12] = this.nextNextRoot[r12].getStack();
            this.nextRoot[r12] = this.nextNextRoot[r12].getRoot();
            int r83 = this.mdLength;
            byte[] bArr = new byte[r83];
            byte[] bArr2 = new byte[r83];
            System.arraycopy(this.currentSeeds[r12], 0, bArr2, 0, r83);
            this.gmssRandom.nextSeed(bArr2);
            this.gmssRandom.nextSeed(bArr2);
            this.nextRootSig[r12].initSign(this.gmssRandom.nextSeed(bArr2), this.nextRoot[r12]);
            nextKey(r12);
        }
    }

    private void updateKey(int r92) {
        computeAuthPaths(r92);
        if (r92 > 0) {
            if (r92 > 1) {
                GMSSLeaf[] gMSSLeafArr = this.nextNextLeaf;
                int r22 = (r92 - 1) - 1;
                gMSSLeafArr[r22] = gMSSLeafArr[r22].nextLeaf();
            }
            GMSSLeaf[] gMSSLeafArr2 = this.upperLeaf;
            int r23 = r92 - 1;
            gMSSLeafArr2[r23] = gMSSLeafArr2[r23].nextLeaf();
            int r12 = (int) Math.floor((getNumLeafs(r92) * 2) / (this.heightOfTrees[r23] - this.K[r23]));
            int r32 = this.index[r92];
            if (r32 % r12 == 1) {
                if (r32 > 1 && this.minTreehash[r23] >= 0) {
                    try {
                        this.currentTreehash[r23][this.minTreehash[r23]].update(this.gmssRandom, this.upperTreehashLeaf[r23].getLeaf());
                        this.currentTreehash[r23][this.minTreehash[r23]].wasFinished();
                    } catch (Exception e10) {
                        System.out.println(e10);
                    }
                }
                this.minTreehash[r23] = getMinTreehashIndex(r23);
                int r33 = this.minTreehash[r23];
                if (r33 >= 0) {
                    this.upperTreehashLeaf[r23] = new GMSSLeaf(this.digestProvider.get(), this.otsIndex[r23], r12, this.currentTreehash[r23][r33].getSeedActive());
                    GMSSLeaf[] gMSSLeafArr3 = this.upperTreehashLeaf;
                    gMSSLeafArr3[r23] = gMSSLeafArr3[r23].nextLeaf();
                }
            } else if (this.minTreehash[r23] >= 0) {
                GMSSLeaf[] gMSSLeafArr4 = this.upperTreehashLeaf;
                gMSSLeafArr4[r23] = gMSSLeafArr4[r23].nextLeaf();
            }
            this.nextRootSig[r23].updateSign();
            if (this.index[r92] == 1) {
                this.nextNextRoot[r23].initialize(new Vector());
            }
            updateNextNextAuthRoot(r92);
        }
    }

    private void updateNextNextAuthRoot(int r6) {
        byte[] bArr = new byte[this.mdLength];
        int r22 = r6 - 1;
        byte[] bArrNextSeed = this.gmssRandom.nextSeed(this.nextNextSeeds[r22]);
        if (r6 == this.numLayer - 1) {
            this.nextNextRoot[r22].update(this.nextNextSeeds[r22], new WinternitzOTSignature(bArrNextSeed, this.digestProvider.get(), this.otsIndex[r6]).getPublicKey());
        } else {
            this.nextNextRoot[r22].update(this.nextNextSeeds[r22], this.nextNextLeaf[r22].getLeaf());
            this.nextNextLeaf[r22].initLeafCalc(this.nextNextSeeds[r22]);
        }
    }

    public byte[][][] getCurrentAuthPaths() {
        return Arrays.clone(this.currentAuthPaths);
    }

    public byte[][] getCurrentSeeds() {
        return Arrays.clone(this.currentSeeds);
    }

    public int getIndex(int r22) {
        return this.index[r22];
    }

    public int[] getIndex() {
        return this.index;
    }

    public GMSSDigestProvider getName() {
        return this.digestProvider;
    }

    public int getNumLeafs(int r22) {
        return this.numLeafs[r22];
    }

    public byte[] getSubtreeRootSig(int r22) {
        return this.currentRootSig[r22];
    }

    public boolean isUsed() {
        return this.used;
    }

    public void markUsed() {
        this.used = true;
    }

    public GMSSPrivateKeyParameters nextKey() {
        GMSSPrivateKeyParameters gMSSPrivateKeyParameters = new GMSSPrivateKeyParameters(this);
        gMSSPrivateKeyParameters.nextKey(this.gmssPS.getNumOfLayers() - 1);
        return gMSSPrivateKeyParameters;
    }
}
