package org.bouncycastle.jcajce.spec;

import java.math.BigInteger;
import javax.crypto.spec.DHParameterSpec;
import org.bouncycastle.crypto.params.DHParameters;
import org.bouncycastle.crypto.params.DHValidationParameters;

/* loaded from: classes2.dex */
public class DHDomainParameterSpec extends DHParameterSpec {

    /* renamed from: j, reason: collision with root package name */
    private final BigInteger f11677j;

    /* renamed from: m, reason: collision with root package name */
    private final int f11678m;

    /* renamed from: q, reason: collision with root package name */
    private final BigInteger f11679q;
    private DHValidationParameters validationParameters;

    public DHDomainParameterSpec(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3) {
        this(bigInteger, bigInteger2, bigInteger3, null, 0);
    }

    public DHDomainParameterSpec(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, int r10) {
        this(bigInteger, bigInteger2, bigInteger3, null, r10);
    }

    public DHDomainParameterSpec(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, BigInteger bigInteger4, int r12) {
        this(bigInteger, bigInteger2, bigInteger3, bigInteger4, 0, r12);
    }

    public DHDomainParameterSpec(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, BigInteger bigInteger4, int r52, int r6) {
        super(bigInteger, bigInteger3, r6);
        this.f11679q = bigInteger2;
        this.f11677j = bigInteger4;
        this.f11678m = r52;
    }

    public DHDomainParameterSpec(DHParameters dHParameters) {
        this(dHParameters.getP(), dHParameters.getQ(), dHParameters.getG(), dHParameters.getJ(), dHParameters.getM(), dHParameters.getL());
        this.validationParameters = dHParameters.getValidationParameters();
    }

    public DHParameters getDomainParameters() {
        return new DHParameters(getP(), getG(), this.f11679q, this.f11678m, getL(), this.f11677j, this.validationParameters);
    }

    public BigInteger getJ() {
        return this.f11677j;
    }

    public int getM() {
        return this.f11678m;
    }

    public BigInteger getQ() {
        return this.f11679q;
    }
}
