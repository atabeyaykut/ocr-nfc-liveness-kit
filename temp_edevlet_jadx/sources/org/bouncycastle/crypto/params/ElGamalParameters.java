package org.bouncycastle.crypto.params;

import java.math.BigInteger;
import org.bouncycastle.crypto.CipherParameters;

/* loaded from: classes2.dex */
public class ElGamalParameters implements CipherParameters {

    /* renamed from: g, reason: collision with root package name */
    private BigInteger f11623g;

    /* renamed from: l, reason: collision with root package name */
    private int f11624l;

    /* renamed from: p, reason: collision with root package name */
    private BigInteger f11625p;

    public ElGamalParameters(BigInteger bigInteger, BigInteger bigInteger2) {
        this(bigInteger, bigInteger2, 0);
    }

    public ElGamalParameters(BigInteger bigInteger, BigInteger bigInteger2, int r32) {
        this.f11623g = bigInteger2;
        this.f11625p = bigInteger;
        this.f11624l = r32;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof ElGamalParameters)) {
            return false;
        }
        ElGamalParameters elGamalParameters = (ElGamalParameters) obj;
        return elGamalParameters.getP().equals(this.f11625p) && elGamalParameters.getG().equals(this.f11623g) && elGamalParameters.getL() == this.f11624l;
    }

    public BigInteger getG() {
        return this.f11623g;
    }

    public int getL() {
        return this.f11624l;
    }

    public BigInteger getP() {
        return this.f11625p;
    }

    public int hashCode() {
        return (getP().hashCode() ^ getG().hashCode()) + this.f11624l;
    }
}
