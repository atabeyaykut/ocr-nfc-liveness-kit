package org.bouncycastle.crypto.params;

import java.math.BigInteger;

/* loaded from: classes2.dex */
public class CramerShoupPublicKeyParameters extends CramerShoupKeyParameters {

    /* renamed from: c, reason: collision with root package name */
    private BigInteger f11601c;

    /* renamed from: d, reason: collision with root package name */
    private BigInteger f11602d;

    /* renamed from: h, reason: collision with root package name */
    private BigInteger f11603h;

    public CramerShoupPublicKeyParameters(CramerShoupParameters cramerShoupParameters, BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3) {
        super(false, cramerShoupParameters);
        this.f11601c = bigInteger;
        this.f11602d = bigInteger2;
        this.f11603h = bigInteger3;
    }

    @Override // org.bouncycastle.crypto.params.CramerShoupKeyParameters
    public boolean equals(Object obj) {
        if (!(obj instanceof CramerShoupPublicKeyParameters)) {
            return false;
        }
        CramerShoupPublicKeyParameters cramerShoupPublicKeyParameters = (CramerShoupPublicKeyParameters) obj;
        return cramerShoupPublicKeyParameters.getC().equals(this.f11601c) && cramerShoupPublicKeyParameters.getD().equals(this.f11602d) && cramerShoupPublicKeyParameters.getH().equals(this.f11603h) && super.equals(obj);
    }

    public BigInteger getC() {
        return this.f11601c;
    }

    public BigInteger getD() {
        return this.f11602d;
    }

    public BigInteger getH() {
        return this.f11603h;
    }

    @Override // org.bouncycastle.crypto.params.CramerShoupKeyParameters
    public int hashCode() {
        return ((this.f11601c.hashCode() ^ this.f11602d.hashCode()) ^ this.f11603h.hashCode()) ^ super.hashCode();
    }
}
