package org.bouncycastle.crypto.params;

import java.math.BigInteger;
import org.bouncycastle.crypto.CipherParameters;

/* loaded from: classes2.dex */
public class GOST3410Parameters implements CipherParameters {

    /* renamed from: a, reason: collision with root package name */
    private BigInteger f11628a;

    /* renamed from: p, reason: collision with root package name */
    private BigInteger f11629p;

    /* renamed from: q, reason: collision with root package name */
    private BigInteger f11630q;
    private GOST3410ValidationParameters validation;

    public GOST3410Parameters(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3) {
        this.f11629p = bigInteger;
        this.f11630q = bigInteger2;
        this.f11628a = bigInteger3;
    }

    public GOST3410Parameters(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, GOST3410ValidationParameters gOST3410ValidationParameters) {
        this.f11628a = bigInteger3;
        this.f11629p = bigInteger;
        this.f11630q = bigInteger2;
        this.validation = gOST3410ValidationParameters;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof GOST3410Parameters)) {
            return false;
        }
        GOST3410Parameters gOST3410Parameters = (GOST3410Parameters) obj;
        return gOST3410Parameters.getP().equals(this.f11629p) && gOST3410Parameters.getQ().equals(this.f11630q) && gOST3410Parameters.getA().equals(this.f11628a);
    }

    public BigInteger getA() {
        return this.f11628a;
    }

    public BigInteger getP() {
        return this.f11629p;
    }

    public BigInteger getQ() {
        return this.f11630q;
    }

    public GOST3410ValidationParameters getValidationParameters() {
        return this.validation;
    }

    public int hashCode() {
        return (this.f11629p.hashCode() ^ this.f11630q.hashCode()) ^ this.f11628a.hashCode();
    }
}
