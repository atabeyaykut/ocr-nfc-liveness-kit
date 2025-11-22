package org.bouncycastle.jce.spec;

import java.math.BigInteger;

/* loaded from: classes2.dex */
public class GOST3410PublicKeyParameterSetSpec {

    /* renamed from: a, reason: collision with root package name */
    private BigInteger f11707a;

    /* renamed from: p, reason: collision with root package name */
    private BigInteger f11708p;

    /* renamed from: q, reason: collision with root package name */
    private BigInteger f11709q;

    public GOST3410PublicKeyParameterSetSpec(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3) {
        this.f11708p = bigInteger;
        this.f11709q = bigInteger2;
        this.f11707a = bigInteger3;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof GOST3410PublicKeyParameterSetSpec)) {
            return false;
        }
        GOST3410PublicKeyParameterSetSpec gOST3410PublicKeyParameterSetSpec = (GOST3410PublicKeyParameterSetSpec) obj;
        return this.f11707a.equals(gOST3410PublicKeyParameterSetSpec.f11707a) && this.f11708p.equals(gOST3410PublicKeyParameterSetSpec.f11708p) && this.f11709q.equals(gOST3410PublicKeyParameterSetSpec.f11709q);
    }

    public BigInteger getA() {
        return this.f11707a;
    }

    public BigInteger getP() {
        return this.f11708p;
    }

    public BigInteger getQ() {
        return this.f11709q;
    }

    public int hashCode() {
        return (this.f11707a.hashCode() ^ this.f11708p.hashCode()) ^ this.f11709q.hashCode();
    }
}
