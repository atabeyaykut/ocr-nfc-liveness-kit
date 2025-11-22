package org.bouncycastle.crypto.macs;

import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.Mac;
import org.bouncycastle.crypto.engines.Zuc128CoreEngine;

/* loaded from: classes2.dex */
public final class Zuc128Mac implements Mac {
    private static final int TOPBIT = 128;
    private int theByteIndex;
    private final InternalZuc128Engine theEngine = new InternalZuc128Engine();
    private final int[] theKeyStream = new int[2];
    private int theMac;
    private Zuc128CoreEngine theState;
    private int theWordIndex;

    public static class InternalZuc128Engine extends Zuc128CoreEngine {
        private InternalZuc128Engine() {
        }

        public int createKeyStreamWord() {
            return super.makeKeyStreamWord();
        }
    }

    private int getFinalWord() {
        if (this.theByteIndex != 0) {
            return this.theEngine.createKeyStreamWord();
        }
        int r02 = this.theWordIndex + 1;
        int[] r12 = this.theKeyStream;
        int length = r02 % r12.length;
        this.theWordIndex = length;
        return r12[length];
    }

    private int getKeyStreamWord(int r52) {
        int[] r02 = this.theKeyStream;
        int r12 = this.theWordIndex;
        int r22 = r02[r12];
        if (r52 == 0) {
            return r22;
        }
        int r03 = r02[(r12 + 1) % r02.length];
        return (r03 >>> (32 - r52)) | (r22 << r52);
    }

    private void initKeyStream() {
        int r02 = 0;
        this.theMac = 0;
        while (true) {
            int[] r12 = this.theKeyStream;
            if (r02 >= r12.length - 1) {
                this.theWordIndex = r12.length - 1;
                this.theByteIndex = 3;
                return;
            } else {
                r12[r02] = this.theEngine.createKeyStreamWord();
                r02++;
            }
        }
    }

    private void shift4NextByte() {
        int r02 = (this.theByteIndex + 1) % 4;
        this.theByteIndex = r02;
        if (r02 == 0) {
            this.theKeyStream[this.theWordIndex] = this.theEngine.createKeyStreamWord();
            this.theWordIndex = (this.theWordIndex + 1) % this.theKeyStream.length;
        }
    }

    private void updateMac(int r22) {
        this.theMac = getKeyStreamWord(r22) ^ this.theMac;
    }

    @Override // org.bouncycastle.crypto.Mac
    public int doFinal(byte[] bArr, int r42) {
        shift4NextByte();
        int keyStreamWord = this.theMac ^ getKeyStreamWord(this.theByteIndex * 8);
        this.theMac = keyStreamWord;
        int finalWord = keyStreamWord ^ getFinalWord();
        this.theMac = finalWord;
        Zuc128CoreEngine.encode32be(finalWord, bArr, r42);
        reset();
        return getMacSize();
    }

    @Override // org.bouncycastle.crypto.Mac
    public String getAlgorithmName() {
        return "Zuc128Mac";
    }

    @Override // org.bouncycastle.crypto.Mac
    public int getMacSize() {
        return 4;
    }

    @Override // org.bouncycastle.crypto.Mac
    public void init(CipherParameters cipherParameters) {
        this.theEngine.init(true, cipherParameters);
        this.theState = (Zuc128CoreEngine) this.theEngine.copy();
        initKeyStream();
    }

    @Override // org.bouncycastle.crypto.Mac
    public void reset() {
        Zuc128CoreEngine zuc128CoreEngine = this.theState;
        if (zuc128CoreEngine != null) {
            this.theEngine.reset(zuc128CoreEngine);
        }
        initKeyStream();
    }

    @Override // org.bouncycastle.crypto.Mac
    public void update(byte b10) {
        shift4NextByte();
        int r02 = this.theByteIndex * 8;
        int r12 = 128;
        int r22 = 0;
        while (r12 > 0) {
            if ((b10 & r12) != 0) {
                updateMac(r02 + r22);
            }
            r12 >>= 1;
            r22++;
        }
    }

    @Override // org.bouncycastle.crypto.Mac
    public void update(byte[] bArr, int r42, int r52) {
        for (int r02 = 0; r02 < r52; r02++) {
            update(bArr[r42 + r02]);
        }
    }
}
