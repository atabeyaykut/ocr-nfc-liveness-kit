package org.bouncycastle.math.ec;

import java.math.BigInteger;

/* loaded from: classes2.dex */
public abstract class AbstractECMultiplier implements ECMultiplier {
    public ECPoint checkResult(ECPoint eCPoint) {
        return ECAlgorithms.implCheckResult(eCPoint);
    }

    @Override // org.bouncycastle.math.ec.ECMultiplier
    public ECPoint multiply(ECPoint eCPoint, BigInteger bigInteger) {
        int r02 = bigInteger.signum();
        if (r02 == 0 || eCPoint.isInfinity()) {
            return eCPoint.getCurve().getInfinity();
        }
        ECPoint eCPointMultiplyPositive = multiplyPositive(eCPoint, bigInteger.abs());
        if (r02 <= 0) {
            eCPointMultiplyPositive = eCPointMultiplyPositive.negate();
        }
        return checkResult(eCPointMultiplyPositive);
    }

    public abstract ECPoint multiplyPositive(ECPoint eCPoint, BigInteger bigInteger);
}
