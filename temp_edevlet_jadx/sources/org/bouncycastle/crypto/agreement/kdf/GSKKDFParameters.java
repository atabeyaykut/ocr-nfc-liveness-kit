package org.bouncycastle.crypto.agreement.kdf;

import org.bouncycastle.crypto.DerivationParameters;

/* loaded from: classes2.dex */
public class GSKKDFParameters implements DerivationParameters {
    private final byte[] nonce;
    private final int startCounter;

    /* renamed from: z, reason: collision with root package name */
    private final byte[] f11428z;

    public GSKKDFParameters(byte[] bArr, int r32) {
        this(bArr, r32, null);
    }

    public GSKKDFParameters(byte[] bArr, int r22, byte[] bArr2) {
        this.f11428z = bArr;
        this.startCounter = r22;
        this.nonce = bArr2;
    }

    public byte[] getNonce() {
        return this.nonce;
    }

    public int getStartCounter() {
        return this.startCounter;
    }

    public byte[] getZ() {
        return this.f11428z;
    }
}
