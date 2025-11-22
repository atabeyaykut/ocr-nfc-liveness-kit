package org.bouncycastle.crypto.params;

import java.math.BigInteger;

/* loaded from: classes2.dex */
public class DSAPrivateKeyParameters extends DSAKeyParameters {

    /* renamed from: x, reason: collision with root package name */
    private BigInteger f11617x;

    public DSAPrivateKeyParameters(BigInteger bigInteger, DSAParameters dSAParameters) {
        super(true, dSAParameters);
        this.f11617x = bigInteger;
    }

    public BigInteger getX() {
        return this.f11617x;
    }
}
