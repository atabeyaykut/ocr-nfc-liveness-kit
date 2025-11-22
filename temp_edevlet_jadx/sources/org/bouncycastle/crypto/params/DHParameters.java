package org.bouncycastle.crypto.params;

import java.math.BigInteger;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.util.Properties;

/* loaded from: classes2.dex */
public class DHParameters implements CipherParameters {
    private static final int DEFAULT_MINIMUM_LENGTH = 160;

    /* renamed from: g, reason: collision with root package name */
    private BigInteger f11604g;

    /* renamed from: j, reason: collision with root package name */
    private BigInteger f11605j;

    /* renamed from: l, reason: collision with root package name */
    private int f11606l;

    /* renamed from: m, reason: collision with root package name */
    private int f11607m;

    /* renamed from: p, reason: collision with root package name */
    private BigInteger f11608p;

    /* renamed from: q, reason: collision with root package name */
    private BigInteger f11609q;
    private DHValidationParameters validation;

    public DHParameters(BigInteger bigInteger, BigInteger bigInteger2) {
        this(bigInteger, bigInteger2, null, 0);
    }

    public DHParameters(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3) {
        this(bigInteger, bigInteger2, bigInteger3, 0);
    }

    public DHParameters(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, int r12) {
        this(bigInteger, bigInteger2, bigInteger3, getDefaultMParam(r12), r12, null, null);
    }

    public DHParameters(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, int r12, int r13) {
        this(bigInteger, bigInteger2, bigInteger3, r12, r13, null, null);
    }

    public DHParameters(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, int r52, int r6, BigInteger bigInteger4, DHValidationParameters dHValidationParameters) {
        if (r6 != 0) {
            if (r6 > bigInteger.bitLength()) {
                throw new IllegalArgumentException("when l value specified, it must satisfy 2^(l-1) <= p");
            }
            if (r6 < r52) {
                throw new IllegalArgumentException("when l value specified, it may not be less than m value");
            }
        }
        if (r52 > bigInteger.bitLength() && !Properties.isOverrideSet("org.bouncycastle.dh.allow_unsafe_p_value")) {
            throw new IllegalArgumentException("unsafe p value so small specific l required");
        }
        this.f11604g = bigInteger2;
        this.f11608p = bigInteger;
        this.f11609q = bigInteger3;
        this.f11607m = r52;
        this.f11606l = r6;
        this.f11605j = bigInteger4;
        this.validation = dHValidationParameters;
    }

    public DHParameters(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, BigInteger bigInteger4, DHValidationParameters dHValidationParameters) {
        this(bigInteger, bigInteger2, bigInteger3, 160, 0, bigInteger4, dHValidationParameters);
    }

    private static int getDefaultMParam(int r12) {
        if (r12 != 0 && r12 < 160) {
            return r12;
        }
        return 160;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof DHParameters)) {
            return false;
        }
        DHParameters dHParameters = (DHParameters) obj;
        if (getQ() != null) {
            if (!getQ().equals(dHParameters.getQ())) {
                return false;
            }
        } else if (dHParameters.getQ() != null) {
            return false;
        }
        return dHParameters.getP().equals(this.f11608p) && dHParameters.getG().equals(this.f11604g);
    }

    public BigInteger getG() {
        return this.f11604g;
    }

    public BigInteger getJ() {
        return this.f11605j;
    }

    public int getL() {
        return this.f11606l;
    }

    public int getM() {
        return this.f11607m;
    }

    public BigInteger getP() {
        return this.f11608p;
    }

    public BigInteger getQ() {
        return this.f11609q;
    }

    public DHValidationParameters getValidationParameters() {
        return this.validation;
    }

    public int hashCode() {
        return (getP().hashCode() ^ getG().hashCode()) ^ (getQ() != null ? getQ().hashCode() : 0);
    }
}
