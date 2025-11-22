package org.bouncycastle.pqc.legacy.crypto.rainbow;

import org.bouncycastle.crypto.params.AsymmetricKeyParameter;

/* loaded from: classes2.dex */
public class RainbowKeyParameters extends AsymmetricKeyParameter {
    private int docLength;

    public RainbowKeyParameters(boolean z10, int r22) {
        super(z10);
        this.docLength = r22;
    }

    public int getDocLength() {
        return this.docLength;
    }
}
