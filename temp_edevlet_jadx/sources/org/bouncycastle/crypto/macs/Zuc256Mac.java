package org.bouncycastle.crypto.macs;

import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.Mac;
import org.bouncycastle.crypto.engines.Zuc128CoreEngine;
import org.bouncycastle.crypto.engines.Zuc256CoreEngine;

/* loaded from: classes2.dex */
public final class Zuc256Mac implements Mac {
    private static final int TOPBIT = 128;
    private int theByteIndex;
    private final InternalZuc256Engine theEngine;
    private final int[] theKeyStream;
    private final int[] theMac;
    private final int theMacLength;
    private Zuc256CoreEngine theState;
    private int theWordIndex;

    public static class InternalZuc256Engine extends Zuc256CoreEngine {
        public InternalZuc256Engine(int r12) {
            super(r12);
        }

        public int createKeyStreamWord() {
            return super.makeKeyStreamWord();
        }
    }

    public Zuc256Mac(int r22) {
        this.theEngine = new InternalZuc256Engine(r22);
        this.theMacLength = r22;
        int r23 = r22 / 32;
        this.theMac = new int[r23];
        this.theKeyStream = new int[r23 + 1];
    }

    private int getKeyStreamWord(int r52, int r6) {
        int[] r02 = this.theKeyStream;
        int r12 = this.theWordIndex;
        int r22 = r02[(r12 + r52) % r02.length];
        if (r6 == 0) {
            return r22;
        }
        int r53 = r02[((r12 + r52) + 1) % r02.length];
        return (r53 >>> (32 - r6)) | (r22 << r6);
    }

    private void initKeyStream() {
        int r02 = 0;
        int r12 = 0;
        while (true) {
            int[] r22 = this.theMac;
            if (r12 >= r22.length) {
                break;
            }
            r22[r12] = this.theEngine.createKeyStreamWord();
            r12++;
        }
        while (true) {
            int[] r13 = this.theKeyStream;
            if (r02 >= r13.length - 1) {
                this.theWordIndex = r13.length - 1;
                this.theByteIndex = 3;
                return;
            } else {
                r13[r02] = this.theEngine.createKeyStreamWord();
                r02++;
            }
        }
    }

    private void shift4Final() {
        int r02 = (this.theByteIndex + 1) % 4;
        this.theByteIndex = r02;
        if (r02 == 0) {
            this.theWordIndex = (this.theWordIndex + 1) % this.theKeyStream.length;
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

    private void updateMac(int r52) {
        int r02 = 0;
        while (true) {
            int[] r12 = this.theMac;
            if (r02 >= r12.length) {
                return;
            }
            r12[r02] = r12[r02] ^ getKeyStreamWord(r02, r52);
            r02++;
        }
    }

    @Override // org.bouncycastle.crypto.Mac
    public int doFinal(byte[] bArr, int r52) {
        shift4Final();
        updateMac(this.theByteIndex * 8);
        int r02 = 0;
        while (true) {
            int[] r12 = this.theMac;
            if (r02 >= r12.length) {
                reset();
                return getMacSize();
            }
            Zuc128CoreEngine.encode32be(r12[r02], bArr, (r02 * 4) + r52);
            r02++;
        }
    }

    @Override // org.bouncycastle.crypto.Mac
    public String getAlgorithmName() {
        return "Zuc256Mac-" + this.theMacLength;
    }

    @Override // org.bouncycastle.crypto.Mac
    public int getMacSize() {
        return this.theMacLength / 8;
    }

    @Override // org.bouncycastle.crypto.Mac
    public void init(CipherParameters cipherParameters) {
        this.theEngine.init(true, cipherParameters);
        this.theState = (Zuc256CoreEngine) this.theEngine.copy();
        initKeyStream();
    }

    @Override // org.bouncycastle.crypto.Mac
    public void reset() {
        Zuc256CoreEngine zuc256CoreEngine = this.theState;
        if (zuc256CoreEngine != null) {
            this.theEngine.reset(zuc256CoreEngine);
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
