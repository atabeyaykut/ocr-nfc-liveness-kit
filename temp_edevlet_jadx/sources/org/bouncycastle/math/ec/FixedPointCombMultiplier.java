package org.bouncycastle.math.ec;

import java.math.BigInteger;
import org.bouncycastle.math.raw.Nat;

/* loaded from: classes2.dex */
public class FixedPointCombMultiplier extends AbstractECMultiplier {
    @Override // org.bouncycastle.math.ec.AbstractECMultiplier
    public ECPoint multiplyPositive(ECPoint eCPoint, BigInteger bigInteger) {
        ECCurve curve = eCPoint.getCurve();
        if (bigInteger.bitLength() > FixedPointUtil.getCombSize(curve)) {
            throw new IllegalStateException("fixed-point comb doesn't support scalars larger than the curve order");
        }
        FixedPointPreCompInfo fixedPointPreCompInfoPrecompute = FixedPointUtil.precompute(eCPoint);
        ECLookupTable lookupTable = fixedPointPreCompInfoPrecompute.getLookupTable();
        int width = fixedPointPreCompInfoPrecompute.getWidth();
        int r12 = ((r1 + width) - 1) / width;
        ECPoint infinity = curve.getInfinity();
        int r32 = width * r12;
        int[] r11 = Nat.fromBigInteger(r32, bigInteger);
        int r33 = r32 - 1;
        for (int r42 = 0; r42 < r12; r42++) {
            int r6 = 0;
            for (int r52 = r33 - r42; r52 >= 0; r52 -= r12) {
                int r72 = r11[r52 >>> 5] >>> (r52 & 31);
                r6 = ((r6 ^ (r72 >>> 1)) << 1) ^ r72;
            }
            infinity = infinity.twicePlus(lookupTable.lookup(r6));
        }
        return infinity.add(fixedPointPreCompInfoPrecompute.getOffset());
    }
}
