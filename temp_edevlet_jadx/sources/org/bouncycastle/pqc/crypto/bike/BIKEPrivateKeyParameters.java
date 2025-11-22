package org.bouncycastle.pqc.crypto.bike;

import org.bouncycastle.util.Arrays;

/* loaded from: classes2.dex */
public class BIKEPrivateKeyParameters extends BIKEKeyParameters {

    /* renamed from: h0, reason: collision with root package name */
    private byte[] f11851h0;

    /* renamed from: h1, reason: collision with root package name */
    private byte[] f11852h1;
    private byte[] sigma;

    public BIKEPrivateKeyParameters(BIKEParameters bIKEParameters, byte[] bArr, byte[] bArr2, byte[] bArr3) {
        super(true, bIKEParameters);
        this.f11851h0 = Arrays.clone(bArr);
        this.f11852h1 = Arrays.clone(bArr2);
        this.sigma = Arrays.clone(bArr3);
    }

    public byte[] getEncoded() {
        return Arrays.concatenate(this.f11851h0, this.f11852h1, this.sigma);
    }

    public byte[] getH0() {
        return this.f11851h0;
    }

    public byte[] getH1() {
        return this.f11852h1;
    }

    public byte[] getSigma() {
        return this.sigma;
    }
}
