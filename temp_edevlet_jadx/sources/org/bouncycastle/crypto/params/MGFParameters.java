package org.bouncycastle.crypto.params;

import org.bouncycastle.crypto.DerivationParameters;

/* loaded from: classes2.dex */
public class MGFParameters implements DerivationParameters {
    byte[] seed;

    public MGFParameters(byte[] bArr) {
        this(bArr, 0, bArr.length);
    }

    public MGFParameters(byte[] bArr, int r42, int r52) {
        byte[] bArr2 = new byte[r52];
        this.seed = bArr2;
        System.arraycopy(bArr, r42, bArr2, 0, r52);
    }

    public byte[] getSeed() {
        return this.seed;
    }
}
