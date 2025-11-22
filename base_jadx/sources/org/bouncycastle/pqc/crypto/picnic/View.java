package org.bouncycastle.pqc.crypto.picnic;

/* loaded from: classes2.dex */
class View {
    final byte[] communicatedBits;
    final int[] inputShare;
    final int[] outputShare;

    public View(PicnicEngine picnicEngine) {
        int r02 = picnicEngine.stateSizeWords;
        this.inputShare = new int[r02];
        this.communicatedBits = new byte[picnicEngine.andSizeBytes];
        this.outputShare = new int[r02];
    }
}
