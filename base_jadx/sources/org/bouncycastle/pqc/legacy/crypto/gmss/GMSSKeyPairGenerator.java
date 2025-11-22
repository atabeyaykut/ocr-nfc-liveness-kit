package org.bouncycastle.pqc.legacy.crypto.gmss;

import java.lang.reflect.Array;
import java.security.SecureRandom;
import java.util.Vector;
import org.bouncycastle.crypto.AsymmetricCipherKeyPair;
import org.bouncycastle.crypto.AsymmetricCipherKeyPairGenerator;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.KeyGenerationParameters;
import org.bouncycastle.crypto.params.AsymmetricKeyParameter;
import org.bouncycastle.pqc.legacy.crypto.gmss.util.GMSSRandom;
import org.bouncycastle.pqc.legacy.crypto.gmss.util.WinternitzOTSVerify;
import org.bouncycastle.pqc.legacy.crypto.gmss.util.WinternitzOTSignature;

/* loaded from: classes2.dex */
public class GMSSKeyPairGenerator implements AsymmetricCipherKeyPairGenerator {
    public static final String OID = "1.3.6.1.4.1.8301.3.1.3.3";
    private int[] K;
    private byte[][] currentRootSigs;
    private byte[][] currentSeeds;
    private GMSSDigestProvider digestProvider;
    private GMSSParameters gmssPS;
    private GMSSKeyGenerationParameters gmssParams;
    private GMSSRandom gmssRandom;
    private int[] heightOfTrees;
    private boolean initialized = false;
    private int mdLength;
    private Digest messDigestTree;
    private byte[][] nextNextSeeds;
    private int numLayer;
    private int[] otsIndex;

    public GMSSKeyPairGenerator(GMSSDigestProvider gMSSDigestProvider) {
        this.digestProvider = gMSSDigestProvider;
        Digest digest = gMSSDigestProvider.get();
        this.messDigestTree = digest;
        this.mdLength = digest.getDigestSize();
        this.gmssRandom = new GMSSRandom(this.messDigestTree);
    }

    private AsymmetricCipherKeyPair genKeyPair() {
        int r42;
        int r15;
        if (!this.initialized) {
            initializeDefault();
        }
        int r12 = this.numLayer;
        byte[][][] bArr = new byte[r12][][];
        byte[][][] bArr2 = new byte[r12 - 1][][];
        Treehash[][] treehashArr = new Treehash[r12][];
        Treehash[][] treehashArr2 = new Treehash[r12 - 1][];
        Vector[] vectorArr = new Vector[r12];
        Vector[] vectorArr2 = new Vector[r12 - 1];
        Vector[][] vectorArr3 = new Vector[r12][];
        int r22 = 1;
        Vector[][] vectorArr4 = new Vector[r12 - 1][];
        int r32 = 0;
        while (true) {
            r42 = this.numLayer;
            if (r32 >= r42) {
                break;
            }
            bArr[r32] = (byte[][]) Array.newInstance((Class<?>) Byte.TYPE, this.heightOfTrees[r32], this.mdLength);
            int r43 = this.heightOfTrees[r32];
            treehashArr[r32] = new Treehash[r43 - this.K[r32]];
            if (r32 > 0) {
                int r14 = r32 - 1;
                bArr2[r14] = (byte[][]) Array.newInstance((Class<?>) Byte.TYPE, r43, this.mdLength);
                treehashArr2[r14] = new Treehash[this.heightOfTrees[r32] - this.K[r32]];
            }
            vectorArr[r32] = new Vector();
            if (r32 > 0) {
                vectorArr2[r32 - 1] = new Vector();
            }
            r32++;
        }
        byte[][] bArr3 = (byte[][]) Array.newInstance((Class<?>) Byte.TYPE, r42, this.mdLength);
        byte[][] bArr4 = (byte[][]) Array.newInstance((Class<?>) Byte.TYPE, this.numLayer - 1, this.mdLength);
        byte[][] bArr5 = (byte[][]) Array.newInstance((Class<?>) Byte.TYPE, this.numLayer, this.mdLength);
        int r142 = 0;
        while (true) {
            r15 = this.numLayer;
            if (r142 >= r15) {
                break;
            }
            System.arraycopy(this.currentSeeds[r142], 0, bArr5[r142], 0, this.mdLength);
            r142++;
            r22 = 1;
        }
        int[] r82 = new int[2];
        r82[r22] = this.mdLength;
        r82[0] = r15 - r22;
        this.currentRootSigs = (byte[][]) Array.newInstance((Class<?>) Byte.TYPE, r82);
        int r83 = this.numLayer - r22;
        while (r83 >= 0) {
            GMSSRootCalc gMSSRootCalcGenerateCurrentAuthpathAndRoot = r83 == this.numLayer - r22 ? generateCurrentAuthpathAndRoot(null, vectorArr[r83], bArr5[r83], r83) : generateCurrentAuthpathAndRoot(bArr3[r83 + 1], vectorArr[r83], bArr5[r83], r83);
            int r143 = 0;
            while (r143 < this.heightOfTrees[r83]) {
                System.arraycopy(gMSSRootCalcGenerateCurrentAuthpathAndRoot.getAuthPath()[r143], 0, bArr[r83][r143], 0, this.mdLength);
                r143++;
                vectorArr = vectorArr;
            }
            vectorArr3[r83] = gMSSRootCalcGenerateCurrentAuthpathAndRoot.getRetain();
            treehashArr[r83] = gMSSRootCalcGenerateCurrentAuthpathAndRoot.getTreehash();
            System.arraycopy(gMSSRootCalcGenerateCurrentAuthpathAndRoot.getRoot(), 0, bArr3[r83], 0, this.mdLength);
            r83--;
            vectorArr = vectorArr;
            r22 = 1;
        }
        Vector[] vectorArr5 = vectorArr;
        int r23 = this.numLayer - 2;
        while (r23 >= 0) {
            int r92 = r23 + 1;
            GMSSRootCalc gMSSRootCalcGenerateNextAuthpathAndRoot = generateNextAuthpathAndRoot(vectorArr2[r23], bArr5[r92], r92);
            int r13 = 0;
            while (r13 < this.heightOfTrees[r92]) {
                System.arraycopy(gMSSRootCalcGenerateNextAuthpathAndRoot.getAuthPath()[r13], 0, bArr2[r23][r13], 0, this.mdLength);
                r13++;
                vectorArr3 = vectorArr3;
            }
            vectorArr4[r23] = gMSSRootCalcGenerateNextAuthpathAndRoot.getRetain();
            treehashArr2[r23] = gMSSRootCalcGenerateNextAuthpathAndRoot.getTreehash();
            System.arraycopy(gMSSRootCalcGenerateNextAuthpathAndRoot.getRoot(), 0, bArr4[r23], 0, this.mdLength);
            System.arraycopy(bArr5[r92], 0, this.nextNextSeeds[r23], 0, this.mdLength);
            r23--;
            vectorArr3 = vectorArr3;
        }
        return new AsymmetricCipherKeyPair((AsymmetricKeyParameter) new GMSSPublicKeyParameters(bArr3[0], this.gmssPS), (AsymmetricKeyParameter) new GMSSPrivateKeyParameters(this.currentSeeds, this.nextNextSeeds, bArr, bArr2, treehashArr, treehashArr2, vectorArr5, vectorArr2, vectorArr3, vectorArr4, bArr4, this.currentRootSigs, this.gmssPS, this.digestProvider));
    }

    private GMSSRootCalc generateCurrentAuthpathAndRoot(byte[] bArr, Vector vector, byte[] bArr2, int r11) {
        byte[] bArrVerify;
        int r02 = this.mdLength;
        byte[] bArr3 = new byte[r02];
        byte[] bArr4 = new byte[r02];
        byte[] bArrNextSeed = this.gmssRandom.nextSeed(bArr2);
        GMSSRootCalc gMSSRootCalc = new GMSSRootCalc(this.heightOfTrees[r11], this.K[r11], this.digestProvider);
        gMSSRootCalc.initialize(vector);
        if (r11 == this.numLayer - 1) {
            bArrVerify = new WinternitzOTSignature(bArrNextSeed, this.digestProvider.get(), this.otsIndex[r11]).getPublicKey();
        } else {
            this.currentRootSigs[r11] = new WinternitzOTSignature(bArrNextSeed, this.digestProvider.get(), this.otsIndex[r11]).getSignature(bArr);
            bArrVerify = new WinternitzOTSVerify(this.digestProvider.get(), this.otsIndex[r11]).Verify(bArr, this.currentRootSigs[r11]);
        }
        gMSSRootCalc.update(bArrVerify);
        int r82 = 3;
        int r92 = 0;
        int r03 = 1;
        while (true) {
            int r32 = this.heightOfTrees[r11];
            if (r03 >= (1 << r32)) {
                break;
            }
            if (r03 == r82 && r92 < r32 - this.K[r11]) {
                gMSSRootCalc.initializeTreehashSeed(bArr2, r92);
                r82 *= 2;
                r92++;
            }
            gMSSRootCalc.update(new WinternitzOTSignature(this.gmssRandom.nextSeed(bArr2), this.digestProvider.get(), this.otsIndex[r11]).getPublicKey());
            r03++;
        }
        if (gMSSRootCalc.wasFinished()) {
            return gMSSRootCalc;
        }
        System.err.println("Baum noch nicht fertig konstruiert!!!");
        return null;
    }

    private GMSSRootCalc generateNextAuthpathAndRoot(Vector vector, byte[] bArr, int r10) {
        byte[] bArr2 = new byte[this.numLayer];
        GMSSRootCalc gMSSRootCalc = new GMSSRootCalc(this.heightOfTrees[r10], this.K[r10], this.digestProvider);
        gMSSRootCalc.initialize(vector);
        int r82 = 3;
        int r12 = 0;
        int r22 = 0;
        while (true) {
            int r32 = this.heightOfTrees[r10];
            if (r12 >= (1 << r32)) {
                break;
            }
            if (r12 == r82 && r22 < r32 - this.K[r10]) {
                gMSSRootCalc.initializeTreehashSeed(bArr, r22);
                r82 *= 2;
                r22++;
            }
            gMSSRootCalc.update(new WinternitzOTSignature(this.gmssRandom.nextSeed(bArr), this.digestProvider.get(), this.otsIndex[r10]).getPublicKey());
            r12++;
        }
        if (gMSSRootCalc.wasFinished()) {
            return gMSSRootCalc;
        }
        System.err.println("N�chster Baum noch nicht fertig konstruiert!!!");
        return null;
    }

    private void initializeDefault() {
        initialize(new GMSSKeyGenerationParameters(null, new GMSSParameters(4, new int[]{10, 10, 10, 10}, new int[]{3, 3, 3, 3}, new int[]{2, 2, 2, 2})));
    }

    @Override // org.bouncycastle.crypto.AsymmetricCipherKeyPairGenerator
    public AsymmetricCipherKeyPair generateKeyPair() {
        return genKeyPair();
    }

    @Override // org.bouncycastle.crypto.AsymmetricCipherKeyPairGenerator
    public void init(KeyGenerationParameters keyGenerationParameters) {
        initialize(keyGenerationParameters);
    }

    public void initialize(int r6, SecureRandom secureRandom) {
        GMSSKeyGenerationParameters gMSSKeyGenerationParameters;
        if (r6 <= 10) {
            gMSSKeyGenerationParameters = new GMSSKeyGenerationParameters(secureRandom, new GMSSParameters(1, new int[]{10}, new int[]{3}, new int[]{2}));
        } else {
            gMSSKeyGenerationParameters = r6 <= 20 ? new GMSSKeyGenerationParameters(secureRandom, new GMSSParameters(2, new int[]{10, 10}, new int[]{5, 4}, new int[]{2, 2})) : new GMSSKeyGenerationParameters(secureRandom, new GMSSParameters(4, new int[]{10, 10, 10, 10}, new int[]{9, 9, 9, 3}, new int[]{2, 2, 2, 2}));
        }
        initialize(gMSSKeyGenerationParameters);
    }

    public void initialize(KeyGenerationParameters keyGenerationParameters) {
        GMSSKeyGenerationParameters gMSSKeyGenerationParameters = (GMSSKeyGenerationParameters) keyGenerationParameters;
        this.gmssParams = gMSSKeyGenerationParameters;
        GMSSParameters gMSSParameters = new GMSSParameters(gMSSKeyGenerationParameters.getParameters().getNumOfLayers(), this.gmssParams.getParameters().getHeightOfTrees(), this.gmssParams.getParameters().getWinternitzParameter(), this.gmssParams.getParameters().getK());
        this.gmssPS = gMSSParameters;
        this.numLayer = gMSSParameters.getNumOfLayers();
        this.heightOfTrees = this.gmssPS.getHeightOfTrees();
        this.otsIndex = this.gmssPS.getWinternitzParameter();
        this.K = this.gmssPS.getK();
        this.currentSeeds = (byte[][]) Array.newInstance((Class<?>) Byte.TYPE, this.numLayer, this.mdLength);
        this.nextNextSeeds = (byte[][]) Array.newInstance((Class<?>) Byte.TYPE, this.numLayer - 1, this.mdLength);
        SecureRandom random = keyGenerationParameters.getRandom();
        for (int r12 = 0; r12 < this.numLayer; r12++) {
            random.nextBytes(this.currentSeeds[r12]);
            this.gmssRandom.nextSeed(this.currentSeeds[r12]);
        }
        this.initialized = true;
    }
}
