package org.bouncycastle.crypto.params;

/* loaded from: classes2.dex */
public class IESWithCipherParameters extends IESParameters {
    private int cipherKeySize;

    public IESWithCipherParameters(byte[] bArr, byte[] bArr2, int r32, int r42) {
        super(bArr, bArr2, r32);
        this.cipherKeySize = r42;
    }

    public int getCipherKeySize() {
        return this.cipherKeySize;
    }
}
