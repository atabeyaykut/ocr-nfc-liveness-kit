package org.bouncycastle.pqc.legacy.crypto.gmss.util;

import org.bouncycastle.crypto.Digest;

/* loaded from: classes2.dex */
public class GMSSRandom {
    private Digest messDigestTree;

    public GMSSRandom(Digest digest) {
        this.messDigestTree = digest;
    }

    private void addByteArrays(byte[] bArr, byte[] bArr2) {
        byte b10 = 0;
        for (int r02 = 0; r02 < bArr.length; r02++) {
            int r22 = (bArr[r02] & 255) + (bArr2[r02] & 255) + b10;
            bArr[r02] = (byte) r22;
            b10 = (byte) (r22 >> 8);
        }
    }

    private void addOne(byte[] bArr) {
        byte b10 = 1;
        for (int r12 = 0; r12 < bArr.length; r12++) {
            int r22 = (bArr[r12] & 255) + b10;
            bArr[r12] = (byte) r22;
            b10 = (byte) (r22 >> 8);
        }
    }

    public byte[] nextSeed(byte[] bArr) {
        byte[] bArr2 = new byte[bArr.length];
        this.messDigestTree.update(bArr, 0, bArr.length);
        byte[] bArr3 = new byte[this.messDigestTree.getDigestSize()];
        this.messDigestTree.doFinal(bArr3, 0);
        addByteArrays(bArr, bArr3);
        addOne(bArr);
        return bArr3;
    }
}
