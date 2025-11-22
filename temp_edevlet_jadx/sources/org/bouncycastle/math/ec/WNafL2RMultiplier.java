package org.bouncycastle.math.ec;

import java.math.BigInteger;
import org.bouncycastle.util.Integers;

/* loaded from: classes2.dex */
public class WNafL2RMultiplier extends AbstractECMultiplier {
    @Override // org.bouncycastle.math.ec.AbstractECMultiplier
    public ECPoint multiplyPositive(ECPoint eCPoint, BigInteger bigInteger) {
        ECPoint eCPointAdd;
        WNafPreCompInfo wNafPreCompInfoPrecompute = WNafUtil.precompute(eCPoint, WNafUtil.getWindowSize(bigInteger.bitLength()), true);
        ECPoint[] preComp = wNafPreCompInfoPrecompute.getPreComp();
        ECPoint[] preCompNeg = wNafPreCompInfoPrecompute.getPreCompNeg();
        int width = wNafPreCompInfoPrecompute.getWidth();
        int[] r12 = WNafUtil.generateCompactWindowNaf(width, bigInteger);
        ECPoint infinity = eCPoint.getCurve().getInfinity();
        int length = r12.length;
        if (length > 1) {
            length--;
            int r11 = r12[length];
            int r6 = r11 >> 16;
            int r112 = r11 & 65535;
            int r72 = Math.abs(r6);
            ECPoint[] eCPointArr = r6 < 0 ? preCompNeg : preComp;
            if ((r72 << 2) < (1 << width)) {
                int r82 = 32 - Integers.numberOfLeadingZeros(r72);
                int r92 = width - r82;
                eCPointAdd = eCPointArr[((1 << (width - 1)) - 1) >>> 1].add(eCPointArr[(((r72 ^ (1 << (r82 - 1))) << r92) + 1) >>> 1]);
                r112 -= r92;
            } else {
                eCPointAdd = eCPointArr[r72 >>> 1];
            }
            infinity = eCPointAdd.timesPow2(r112);
        }
        while (length > 0) {
            length--;
            int r02 = r12[length];
            int r62 = r02 >> 16;
            infinity = infinity.twicePlus((r62 < 0 ? preCompNeg : preComp)[Math.abs(r62) >>> 1]).timesPow2(r02 & 65535);
        }
        return infinity;
    }
}
