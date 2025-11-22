package org.bouncycastle.math.ec;

import androidx.camera.core.impl.a;
import java.math.BigInteger;
import org.bouncycastle.math.ec.ECCurve;
import org.bouncycastle.math.ec.endo.ECEndomorphism;
import org.bouncycastle.math.ec.endo.EndoUtil;
import org.bouncycastle.math.ec.endo.GLVEndomorphism;
import org.bouncycastle.math.field.FiniteField;
import org.bouncycastle.math.field.PolynomialExtensionField;
import org.bouncycastle.math.raw.Nat;

/* loaded from: classes2.dex */
public class ECAlgorithms {
    public static ECPoint cleanPoint(ECCurve eCCurve, ECPoint eCPoint) {
        if (eCCurve.equals(eCPoint.getCurve())) {
            return eCCurve.decodePoint(eCPoint.getEncoded(false));
        }
        throw new IllegalArgumentException("Point must be on the same curve");
    }

    public static ECPoint implCheckResult(ECPoint eCPoint) {
        if (eCPoint.isValidPartial()) {
            return eCPoint;
        }
        throw new IllegalStateException("Invalid result");
    }

    private static ECPoint implShamirsTrickFixedPoint(ECPoint eCPoint, BigInteger bigInteger, ECPoint eCPoint2, BigInteger bigInteger2) {
        ECPoint eCPointAdd;
        ECPoint offset;
        ECCurve curve = eCPoint.getCurve();
        int combSize = FixedPointUtil.getCombSize(curve);
        if (bigInteger.bitLength() > combSize || bigInteger2.bitLength() > combSize) {
            throw new IllegalStateException("fixed-point comb doesn't support scalars larger than the curve order");
        }
        FixedPointPreCompInfo fixedPointPreCompInfoPrecompute = FixedPointUtil.precompute(eCPoint);
        FixedPointPreCompInfo fixedPointPreCompInfoPrecompute2 = FixedPointUtil.precompute(eCPoint2);
        ECLookupTable lookupTable = fixedPointPreCompInfoPrecompute.getLookupTable();
        ECLookupTable lookupTable2 = fixedPointPreCompInfoPrecompute2.getLookupTable();
        int width = fixedPointPreCompInfoPrecompute.getWidth();
        if (width != fixedPointPreCompInfoPrecompute2.getWidth()) {
            FixedPointCombMultiplier fixedPointCombMultiplier = new FixedPointCombMultiplier();
            eCPointAdd = fixedPointCombMultiplier.multiply(eCPoint, bigInteger);
            offset = fixedPointCombMultiplier.multiply(eCPoint2, bigInteger2);
        } else {
            int r32 = ((combSize + width) - 1) / width;
            ECPoint infinity = curve.getInfinity();
            int r82 = width * r32;
            int[] r02 = Nat.fromBigInteger(r82, bigInteger);
            int[] r12 = Nat.fromBigInteger(r82, bigInteger2);
            int r83 = r82 - 1;
            for (int r92 = 0; r92 < r32; r92++) {
                int r11 = 0;
                int r122 = 0;
                for (int r10 = r83 - r92; r10 >= 0; r10 -= r32) {
                    int r13 = r10 >>> 5;
                    int r15 = r10 & 31;
                    int r14 = r02[r13] >>> r15;
                    r11 = ((r11 ^ (r14 >>> 1)) << 1) ^ r14;
                    int r132 = r12[r13] >>> r15;
                    r122 = ((r122 ^ (r132 >>> 1)) << 1) ^ r132;
                }
                infinity = infinity.twicePlus(lookupTable.lookupVar(r11).add(lookupTable2.lookupVar(r122)));
            }
            eCPointAdd = infinity.add(fixedPointPreCompInfoPrecompute.getOffset());
            offset = fixedPointPreCompInfoPrecompute2.getOffset();
        }
        return eCPointAdd.add(offset);
    }

    public static ECPoint implShamirsTrickJsf(ECPoint eCPoint, BigInteger bigInteger, ECPoint eCPoint2, BigInteger bigInteger2) {
        ECCurve curve = eCPoint.getCurve();
        ECPoint infinity = curve.getInfinity();
        ECPoint[] eCPointArr = {eCPoint2, eCPoint.subtract(eCPoint2), eCPoint, eCPoint.add(eCPoint2)};
        curve.normalizeAll(eCPointArr);
        ECPoint[] eCPointArr2 = {eCPointArr[3].negate(), eCPointArr[2].negate(), eCPointArr[1].negate(), eCPointArr[0].negate(), infinity, eCPointArr[0], eCPointArr[1], eCPointArr[2], eCPointArr[3]};
        byte[] bArrGenerateJSF = WNafUtil.generateJSF(bigInteger, bigInteger2);
        int length = bArrGenerateJSF.length;
        while (true) {
            length--;
            if (length < 0) {
                return infinity;
            }
            byte b10 = bArrGenerateJSF[length];
            infinity = infinity.twicePlus(eCPointArr2[a.d((b10 << 24) >> 28, 3, 4, (b10 << 28) >> 28)]);
        }
    }

    public static ECPoint implShamirsTrickWNaf(ECPoint eCPoint, BigInteger bigInteger, ECPoint eCPoint2, BigInteger bigInteger2) {
        boolean z10 = bigInteger.signum() < 0;
        boolean z11 = bigInteger2.signum() < 0;
        BigInteger bigIntegerAbs = bigInteger.abs();
        BigInteger bigIntegerAbs2 = bigInteger2.abs();
        int windowSize = WNafUtil.getWindowSize(bigIntegerAbs.bitLength(), 8);
        int windowSize2 = WNafUtil.getWindowSize(bigIntegerAbs2.bitLength(), 8);
        WNafPreCompInfo wNafPreCompInfoPrecompute = WNafUtil.precompute(eCPoint, windowSize, true);
        WNafPreCompInfo wNafPreCompInfoPrecompute2 = WNafUtil.precompute(eCPoint2, windowSize2, true);
        int combSize = FixedPointUtil.getCombSize(eCPoint.getCurve());
        if (!z10 && !z11 && bigInteger.bitLength() <= combSize && bigInteger2.bitLength() <= combSize && wNafPreCompInfoPrecompute.isPromoted() && wNafPreCompInfoPrecompute2.isPromoted()) {
            return implShamirsTrickFixedPoint(eCPoint, bigInteger, eCPoint2, bigInteger2);
        }
        int r12 = Math.min(8, wNafPreCompInfoPrecompute.getWidth());
        int r13 = Math.min(8, wNafPreCompInfoPrecompute2.getWidth());
        return implShamirsTrickWNaf(z10 ? wNafPreCompInfoPrecompute.getPreCompNeg() : wNafPreCompInfoPrecompute.getPreComp(), z10 ? wNafPreCompInfoPrecompute.getPreComp() : wNafPreCompInfoPrecompute.getPreCompNeg(), WNafUtil.generateWindowNaf(r12, bigIntegerAbs), z11 ? wNafPreCompInfoPrecompute2.getPreCompNeg() : wNafPreCompInfoPrecompute2.getPreComp(), z11 ? wNafPreCompInfoPrecompute2.getPreComp() : wNafPreCompInfoPrecompute2.getPreCompNeg(), WNafUtil.generateWindowNaf(r13, bigIntegerAbs2));
    }

    public static ECPoint implShamirsTrickWNaf(ECEndomorphism eCEndomorphism, ECPoint eCPoint, BigInteger bigInteger, BigInteger bigInteger2) {
        boolean z10 = bigInteger.signum() < 0;
        boolean z11 = bigInteger2.signum() < 0;
        BigInteger bigIntegerAbs = bigInteger.abs();
        BigInteger bigIntegerAbs2 = bigInteger2.abs();
        WNafPreCompInfo wNafPreCompInfoPrecompute = WNafUtil.precompute(eCPoint, WNafUtil.getWindowSize(Math.max(bigIntegerAbs.bitLength(), bigIntegerAbs2.bitLength()), 8), true);
        WNafPreCompInfo wNafPreCompInfoPrecomputeWithPointMap = WNafUtil.precomputeWithPointMap(EndoUtil.mapPoint(eCEndomorphism, eCPoint), eCEndomorphism.getPointMap(), wNafPreCompInfoPrecompute, true);
        int r12 = Math.min(8, wNafPreCompInfoPrecompute.getWidth());
        int r22 = Math.min(8, wNafPreCompInfoPrecomputeWithPointMap.getWidth());
        return implShamirsTrickWNaf(z10 ? wNafPreCompInfoPrecompute.getPreCompNeg() : wNafPreCompInfoPrecompute.getPreComp(), z10 ? wNafPreCompInfoPrecompute.getPreComp() : wNafPreCompInfoPrecompute.getPreCompNeg(), WNafUtil.generateWindowNaf(r12, bigIntegerAbs), z11 ? wNafPreCompInfoPrecomputeWithPointMap.getPreCompNeg() : wNafPreCompInfoPrecomputeWithPointMap.getPreComp(), z11 ? wNafPreCompInfoPrecomputeWithPointMap.getPreComp() : wNafPreCompInfoPrecomputeWithPointMap.getPreCompNeg(), WNafUtil.generateWindowNaf(r22, bigIntegerAbs2));
    }

    private static ECPoint implShamirsTrickWNaf(ECPoint[] eCPointArr, ECPoint[] eCPointArr2, byte[] bArr, ECPoint[] eCPointArr3, ECPoint[] eCPointArr4, byte[] bArr2) {
        ECPoint eCPointAdd;
        int r02 = Math.max(bArr.length, bArr2.length);
        ECPoint infinity = eCPointArr[0].getCurve().getInfinity();
        int r03 = r02 - 1;
        ECPoint eCPointTwicePlus = infinity;
        int r32 = 0;
        while (r03 >= 0) {
            byte b10 = r03 < bArr.length ? bArr[r03] : (byte) 0;
            byte b11 = r03 < bArr2.length ? bArr2[r03] : (byte) 0;
            if ((b10 | b11) == 0) {
                r32++;
            } else {
                if (b10 != 0) {
                    eCPointAdd = infinity.add((b10 < 0 ? eCPointArr2 : eCPointArr)[Math.abs((int) b10) >>> 1]);
                } else {
                    eCPointAdd = infinity;
                }
                if (b11 != 0) {
                    eCPointAdd = eCPointAdd.add((b11 < 0 ? eCPointArr4 : eCPointArr3)[Math.abs((int) b11) >>> 1]);
                }
                if (r32 > 0) {
                    eCPointTwicePlus = eCPointTwicePlus.timesPow2(r32);
                    r32 = 0;
                }
                eCPointTwicePlus = eCPointTwicePlus.twicePlus(eCPointAdd);
            }
            r03--;
        }
        return r32 > 0 ? eCPointTwicePlus.timesPow2(r32) : eCPointTwicePlus;
    }

    public static ECPoint implSumOfMultiplies(ECEndomorphism eCEndomorphism, ECPoint[] eCPointArr, BigInteger[] bigIntegerArr) {
        ECPoint[] eCPointArr2 = eCPointArr;
        int length = eCPointArr2.length;
        int r22 = length << 1;
        boolean[] zArr = new boolean[r22];
        WNafPreCompInfo[] wNafPreCompInfoArr = new WNafPreCompInfo[r22];
        byte[][] bArr = new byte[r22][];
        ECPointMap pointMap = eCEndomorphism.getPointMap();
        int r72 = 0;
        while (r72 < length) {
            int r82 = r72 << 1;
            int r92 = r82 + 1;
            BigInteger bigInteger = bigIntegerArr[r82];
            zArr[r82] = bigInteger.signum() < 0;
            BigInteger bigIntegerAbs = bigInteger.abs();
            BigInteger bigInteger2 = bigIntegerArr[r92];
            zArr[r92] = bigInteger2.signum() < 0;
            BigInteger bigIntegerAbs2 = bigInteger2.abs();
            int windowSize = WNafUtil.getWindowSize(Math.max(bigIntegerAbs.bitLength(), bigIntegerAbs2.bitLength()), 8);
            ECPoint eCPoint = eCPointArr2[r72];
            WNafPreCompInfo wNafPreCompInfoPrecompute = WNafUtil.precompute(eCPoint, windowSize, true);
            WNafPreCompInfo wNafPreCompInfoPrecomputeWithPointMap = WNafUtil.precomputeWithPointMap(EndoUtil.mapPoint(eCEndomorphism, eCPoint), pointMap, wNafPreCompInfoPrecompute, true);
            int r15 = Math.min(8, wNafPreCompInfoPrecompute.getWidth());
            int r02 = Math.min(8, wNafPreCompInfoPrecomputeWithPointMap.getWidth());
            wNafPreCompInfoArr[r82] = wNafPreCompInfoPrecompute;
            wNafPreCompInfoArr[r92] = wNafPreCompInfoPrecomputeWithPointMap;
            bArr[r82] = WNafUtil.generateWindowNaf(r15, bigIntegerAbs);
            bArr[r92] = WNafUtil.generateWindowNaf(r02, bigIntegerAbs2);
            r72++;
            eCPointArr2 = eCPointArr;
        }
        return implSumOfMultiplies(zArr, wNafPreCompInfoArr, bArr);
    }

    public static ECPoint implSumOfMultiplies(ECPoint[] eCPointArr, BigInteger[] bigIntegerArr) {
        int length = eCPointArr.length;
        boolean[] zArr = new boolean[length];
        WNafPreCompInfo[] wNafPreCompInfoArr = new WNafPreCompInfo[length];
        byte[][] bArr = new byte[length][];
        for (int r52 = 0; r52 < length; r52++) {
            BigInteger bigInteger = bigIntegerArr[r52];
            zArr[r52] = bigInteger.signum() < 0;
            BigInteger bigIntegerAbs = bigInteger.abs();
            WNafPreCompInfo wNafPreCompInfoPrecompute = WNafUtil.precompute(eCPointArr[r52], WNafUtil.getWindowSize(bigIntegerAbs.bitLength(), 8), true);
            int r82 = Math.min(8, wNafPreCompInfoPrecompute.getWidth());
            wNafPreCompInfoArr[r52] = wNafPreCompInfoPrecompute;
            bArr[r52] = WNafUtil.generateWindowNaf(r82, bigIntegerAbs);
        }
        return implSumOfMultiplies(zArr, wNafPreCompInfoArr, bArr);
    }

    private static ECPoint implSumOfMultiplies(boolean[] zArr, WNafPreCompInfo[] wNafPreCompInfoArr, byte[][] bArr) {
        int length = bArr.length;
        int r32 = 0;
        for (byte[] bArr2 : bArr) {
            r32 = Math.max(r32, bArr2.length);
        }
        ECPoint infinity = wNafPreCompInfoArr[0].getPreComp()[0].getCurve().getInfinity();
        int r33 = r32 - 1;
        ECPoint eCPointTwicePlus = infinity;
        int r52 = 0;
        while (r33 >= 0) {
            ECPoint eCPointAdd = infinity;
            for (int r72 = 0; r72 < length; r72++) {
                byte[] bArr3 = bArr[r72];
                byte b10 = r33 < bArr3.length ? bArr3[r33] : (byte) 0;
                if (b10 != 0) {
                    int r10 = Math.abs((int) b10);
                    WNafPreCompInfo wNafPreCompInfo = wNafPreCompInfoArr[r72];
                    eCPointAdd = eCPointAdd.add(((b10 < 0) == zArr[r72] ? wNafPreCompInfo.getPreComp() : wNafPreCompInfo.getPreCompNeg())[r10 >>> 1]);
                }
            }
            if (eCPointAdd == infinity) {
                r52++;
            } else {
                if (r52 > 0) {
                    eCPointTwicePlus = eCPointTwicePlus.timesPow2(r52);
                    r52 = 0;
                }
                eCPointTwicePlus = eCPointTwicePlus.twicePlus(eCPointAdd);
            }
            r33--;
        }
        return r52 > 0 ? eCPointTwicePlus.timesPow2(r52) : eCPointTwicePlus;
    }

    public static ECPoint implSumOfMultipliesGLV(ECPoint[] eCPointArr, BigInteger[] bigIntegerArr, GLVEndomorphism gLVEndomorphism) {
        BigInteger order = eCPointArr[0].getCurve().getOrder();
        int length = eCPointArr.length;
        int r32 = length << 1;
        BigInteger[] bigIntegerArr2 = new BigInteger[r32];
        int r6 = 0;
        for (int r52 = 0; r52 < length; r52++) {
            BigInteger[] bigIntegerArrDecomposeScalar = gLVEndomorphism.decomposeScalar(bigIntegerArr[r52].mod(order));
            int r82 = r6 + 1;
            bigIntegerArr2[r6] = bigIntegerArrDecomposeScalar[0];
            r6 = r82 + 1;
            bigIntegerArr2[r82] = bigIntegerArrDecomposeScalar[1];
        }
        if (gLVEndomorphism.hasEfficientPointMap()) {
            return implSumOfMultiplies(gLVEndomorphism, eCPointArr, bigIntegerArr2);
        }
        ECPoint[] eCPointArr2 = new ECPoint[r32];
        int r12 = 0;
        for (ECPoint eCPoint : eCPointArr) {
            ECPoint eCPointMapPoint = EndoUtil.mapPoint(gLVEndomorphism, eCPoint);
            int r62 = r12 + 1;
            eCPointArr2[r12] = eCPoint;
            r12 = r62 + 1;
            eCPointArr2[r62] = eCPointMapPoint;
        }
        return implSumOfMultiplies(eCPointArr2, bigIntegerArr2);
    }

    public static ECPoint importPoint(ECCurve eCCurve, ECPoint eCPoint) {
        if (eCCurve.equals(eCPoint.getCurve())) {
            return eCCurve.importPoint(eCPoint);
        }
        throw new IllegalArgumentException("Point must be on the same curve");
    }

    public static boolean isF2mCurve(ECCurve eCCurve) {
        return isF2mField(eCCurve.getField());
    }

    public static boolean isF2mField(FiniteField finiteField) {
        return finiteField.getDimension() > 1 && finiteField.getCharacteristic().equals(ECConstants.TWO) && (finiteField instanceof PolynomialExtensionField);
    }

    public static boolean isFpCurve(ECCurve eCCurve) {
        return isFpField(eCCurve.getField());
    }

    public static boolean isFpField(FiniteField finiteField) {
        return finiteField.getDimension() == 1;
    }

    public static void montgomeryTrick(ECFieldElement[] eCFieldElementArr, int r22, int r32) {
        montgomeryTrick(eCFieldElementArr, r22, r32, null);
    }

    public static void montgomeryTrick(ECFieldElement[] eCFieldElementArr, int r52, int r6, ECFieldElement eCFieldElement) {
        ECFieldElement[] eCFieldElementArr2 = new ECFieldElement[r6];
        int r22 = 0;
        eCFieldElementArr2[0] = eCFieldElementArr[r52];
        while (true) {
            r22++;
            if (r22 >= r6) {
                break;
            } else {
                eCFieldElementArr2[r22] = eCFieldElementArr2[r22 - 1].multiply(eCFieldElementArr[r52 + r22]);
            }
        }
        int r23 = r22 - 1;
        if (eCFieldElement != null) {
            eCFieldElementArr2[r23] = eCFieldElementArr2[r23].multiply(eCFieldElement);
        }
        ECFieldElement eCFieldElementInvert = eCFieldElementArr2[r23].invert();
        while (r23 > 0) {
            int r72 = r23 - 1;
            int r24 = r23 + r52;
            ECFieldElement eCFieldElement2 = eCFieldElementArr[r24];
            eCFieldElementArr[r24] = eCFieldElementArr2[r72].multiply(eCFieldElementInvert);
            eCFieldElementInvert = eCFieldElementInvert.multiply(eCFieldElement2);
            r23 = r72;
        }
        eCFieldElementArr[r52] = eCFieldElementInvert;
    }

    public static ECPoint referenceMultiply(ECPoint eCPoint, BigInteger bigInteger) {
        BigInteger bigIntegerAbs = bigInteger.abs();
        ECPoint infinity = eCPoint.getCurve().getInfinity();
        int r22 = bigIntegerAbs.bitLength();
        if (r22 > 0) {
            if (bigIntegerAbs.testBit(0)) {
                infinity = eCPoint;
            }
            for (int r32 = 1; r32 < r22; r32++) {
                eCPoint = eCPoint.twice();
                if (bigIntegerAbs.testBit(r32)) {
                    infinity = infinity.add(eCPoint);
                }
            }
        }
        return bigInteger.signum() < 0 ? infinity.negate() : infinity;
    }

    public static ECPoint shamirsTrick(ECPoint eCPoint, BigInteger bigInteger, ECPoint eCPoint2, BigInteger bigInteger2) {
        return implCheckResult(implShamirsTrickJsf(eCPoint, bigInteger, importPoint(eCPoint.getCurve(), eCPoint2), bigInteger2));
    }

    public static ECPoint sumOfMultiplies(ECPoint[] eCPointArr, BigInteger[] bigIntegerArr) {
        if (eCPointArr != null && bigIntegerArr != null && eCPointArr.length == bigIntegerArr.length) {
            if (eCPointArr.length >= 1) {
                int length = eCPointArr.length;
                if (length == 1) {
                    return eCPointArr[0].multiply(bigIntegerArr[0]);
                }
                if (length == 2) {
                    return sumOfTwoMultiplies(eCPointArr[0], bigIntegerArr[0], eCPointArr[1], bigIntegerArr[1]);
                }
                ECPoint eCPoint = eCPointArr[0];
                ECCurve curve = eCPoint.getCurve();
                ECPoint[] eCPointArr2 = new ECPoint[length];
                eCPointArr2[0] = eCPoint;
                for (int r12 = 1; r12 < length; r12++) {
                    eCPointArr2[r12] = importPoint(curve, eCPointArr[r12]);
                }
                ECEndomorphism endomorphism = curve.getEndomorphism();
                return endomorphism instanceof GLVEndomorphism ? implCheckResult(implSumOfMultipliesGLV(eCPointArr2, bigIntegerArr, (GLVEndomorphism) endomorphism)) : implCheckResult(implSumOfMultiplies(eCPointArr2, bigIntegerArr));
            }
        }
        throw new IllegalArgumentException("point and scalar arrays should be non-null, and of equal, non-zero, length");
    }

    public static ECPoint sumOfTwoMultiplies(ECPoint eCPoint, BigInteger bigInteger, ECPoint eCPoint2, BigInteger bigInteger2) {
        ECPoint eCPointImplSumOfMultipliesGLV;
        ECCurve curve = eCPoint.getCurve();
        ECPoint eCPointImportPoint = importPoint(curve, eCPoint2);
        if ((curve instanceof ECCurve.AbstractF2m) && ((ECCurve.AbstractF2m) curve).isKoblitz()) {
            eCPointImplSumOfMultipliesGLV = eCPoint.multiply(bigInteger).add(eCPointImportPoint.multiply(bigInteger2));
        } else {
            ECEndomorphism endomorphism = curve.getEndomorphism();
            eCPointImplSumOfMultipliesGLV = endomorphism instanceof GLVEndomorphism ? implSumOfMultipliesGLV(new ECPoint[]{eCPoint, eCPointImportPoint}, new BigInteger[]{bigInteger, bigInteger2}, (GLVEndomorphism) endomorphism) : implShamirsTrickWNaf(eCPoint, bigInteger, eCPointImportPoint, bigInteger2);
        }
        return implCheckResult(eCPointImplSumOfMultipliesGLV);
    }

    public static ECPoint validatePoint(ECPoint eCPoint) {
        if (eCPoint.isValid()) {
            return eCPoint;
        }
        throw new IllegalStateException("Invalid point");
    }
}
