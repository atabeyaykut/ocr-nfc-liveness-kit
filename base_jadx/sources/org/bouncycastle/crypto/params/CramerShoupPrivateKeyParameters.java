package org.bouncycastle.crypto.params;

import java.math.BigInteger;

/* loaded from: classes2.dex */
public class CramerShoupPrivateKeyParameters extends CramerShoupKeyParameters {
    private CramerShoupPublicKeyParameters pk;

    /* renamed from: x1, reason: collision with root package name */
    private BigInteger f11596x1;

    /* renamed from: x2, reason: collision with root package name */
    private BigInteger f11597x2;

    /* renamed from: y1, reason: collision with root package name */
    private BigInteger f11598y1;

    /* renamed from: y2, reason: collision with root package name */
    private BigInteger f11599y2;

    /* renamed from: z, reason: collision with root package name */
    private BigInteger f11600z;

    public CramerShoupPrivateKeyParameters(CramerShoupParameters cramerShoupParameters, BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, BigInteger bigInteger4, BigInteger bigInteger5) {
        super(true, cramerShoupParameters);
        this.f11596x1 = bigInteger;
        this.f11597x2 = bigInteger2;
        this.f11598y1 = bigInteger3;
        this.f11599y2 = bigInteger4;
        this.f11600z = bigInteger5;
    }

    @Override // org.bouncycastle.crypto.params.CramerShoupKeyParameters
    public boolean equals(Object obj) {
        if (!(obj instanceof CramerShoupPrivateKeyParameters)) {
            return false;
        }
        CramerShoupPrivateKeyParameters cramerShoupPrivateKeyParameters = (CramerShoupPrivateKeyParameters) obj;
        return cramerShoupPrivateKeyParameters.getX1().equals(this.f11596x1) && cramerShoupPrivateKeyParameters.getX2().equals(this.f11597x2) && cramerShoupPrivateKeyParameters.getY1().equals(this.f11598y1) && cramerShoupPrivateKeyParameters.getY2().equals(this.f11599y2) && cramerShoupPrivateKeyParameters.getZ().equals(this.f11600z) && super.equals(obj);
    }

    public CramerShoupPublicKeyParameters getPk() {
        return this.pk;
    }

    public BigInteger getX1() {
        return this.f11596x1;
    }

    public BigInteger getX2() {
        return this.f11597x2;
    }

    public BigInteger getY1() {
        return this.f11598y1;
    }

    public BigInteger getY2() {
        return this.f11599y2;
    }

    public BigInteger getZ() {
        return this.f11600z;
    }

    @Override // org.bouncycastle.crypto.params.CramerShoupKeyParameters
    public int hashCode() {
        return ((((this.f11596x1.hashCode() ^ this.f11597x2.hashCode()) ^ this.f11598y1.hashCode()) ^ this.f11599y2.hashCode()) ^ this.f11600z.hashCode()) ^ super.hashCode();
    }

    public void setPk(CramerShoupPublicKeyParameters cramerShoupPublicKeyParameters) {
        this.pk = cramerShoupPublicKeyParameters;
    }
}
