package org.bouncycastle.math.ec;

import java.math.BigInteger;

/* loaded from: classes2.dex */
public class FixedPointUtil {
    public static final String PRECOMP_NAME = "bc_fixed_point";

    public static int getCombSize(ECCurve eCCurve) {
        BigInteger order = eCCurve.getOrder();
        return order == null ? eCCurve.getFieldSize() + 1 : order.bitLength();
    }

    public static FixedPointPreCompInfo getFixedPointPreCompInfo(PreCompInfo preCompInfo) {
        if (preCompInfo instanceof FixedPointPreCompInfo) {
            return (FixedPointPreCompInfo) preCompInfo;
        }
        return null;
    }

    public static FixedPointPreCompInfo precompute(final ECPoint eCPoint) {
        final ECCurve curve = eCPoint.getCurve();
        return (FixedPointPreCompInfo) curve.precompute(eCPoint, PRECOMP_NAME, new PreCompCallback() { // from class: org.bouncycastle.math.ec.FixedPointUtil.1
            private boolean checkExisting(FixedPointPreCompInfo fixedPointPreCompInfo, int r22) {
                return fixedPointPreCompInfo != null && checkTable(fixedPointPreCompInfo.getLookupTable(), r22);
            }

            private boolean checkTable(ECLookupTable eCLookupTable, int r22) {
                return eCLookupTable != null && eCLookupTable.getSize() >= r22;
            }

            @Override // org.bouncycastle.math.ec.PreCompCallback
            public PreCompInfo precompute(PreCompInfo preCompInfo) {
                FixedPointPreCompInfo fixedPointPreCompInfo = preCompInfo instanceof FixedPointPreCompInfo ? (FixedPointPreCompInfo) preCompInfo : null;
                int combSize = FixedPointUtil.getCombSize(curve);
                int r12 = combSize > 250 ? 6 : 5;
                int r32 = 1 << r12;
                if (checkExisting(fixedPointPreCompInfo, r32)) {
                    return fixedPointPreCompInfo;
                }
                int r02 = ((combSize + r12) - 1) / r12;
                ECPoint[] eCPointArr = new ECPoint[r12 + 1];
                eCPointArr[0] = eCPoint;
                for (int r42 = 1; r42 < r12; r42++) {
                    eCPointArr[r42] = eCPointArr[r42 - 1].timesPow2(r02);
                }
                eCPointArr[r12] = eCPointArr[0].subtract(eCPointArr[1]);
                curve.normalizeAll(eCPointArr);
                ECPoint[] eCPointArr2 = new ECPoint[r32];
                eCPointArr2[0] = eCPointArr[0];
                for (int r43 = r12 - 1; r43 >= 0; r43--) {
                    ECPoint eCPoint2 = eCPointArr[r43];
                    int r72 = 1 << r43;
                    for (int r82 = r72; r82 < r32; r82 += r72 << 1) {
                        eCPointArr2[r82] = eCPointArr2[r82 - r72].add(eCPoint2);
                    }
                }
                curve.normalizeAll(eCPointArr2);
                FixedPointPreCompInfo fixedPointPreCompInfo2 = new FixedPointPreCompInfo();
                fixedPointPreCompInfo2.setLookupTable(curve.createCacheSafeLookupTable(eCPointArr2, 0, r32));
                fixedPointPreCompInfo2.setOffset(eCPointArr[r12]);
                fixedPointPreCompInfo2.setWidth(r12);
                return fixedPointPreCompInfo2;
            }
        });
    }
}
