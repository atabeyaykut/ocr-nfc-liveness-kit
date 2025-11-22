package org.bouncycastle.math.ec.custom.sec;

import java.math.BigInteger;
import org.bouncycastle.math.ec.AbstractECLookupTable;
import org.bouncycastle.math.ec.ECConstants;
import org.bouncycastle.math.ec.ECCurve;
import org.bouncycastle.math.ec.ECFieldElement;
import org.bouncycastle.math.ec.ECLookupTable;
import org.bouncycastle.math.ec.ECPoint;
import org.bouncycastle.math.raw.Nat576;
import org.bouncycastle.util.encoders.Hex;

/* loaded from: classes2.dex */
public class SecT571R1Curve extends ECCurve.AbstractF2m {
    private static final ECFieldElement[] SECT571R1_AFFINE_ZS = {new SecT571FieldElement(ECConstants.ONE)};
    private static final int SECT571R1_DEFAULT_COORDS = 6;
    static final SecT571FieldElement SecT571R1_B;
    static final SecT571FieldElement SecT571R1_B_SQRT;
    protected SecT571R1Point infinity;

    static {
        SecT571FieldElement secT571FieldElement = new SecT571FieldElement(new BigInteger(1, Hex.decodeStrict("02F40E7E2221F295DE297117B7F3D62F5C6A97FFCB8CEFF1CD6BA8CE4A9A18AD84FFABBD8EFA59332BE7AD6756A66E294AFD185A78FF12AA520E4DE739BACA0C7FFEFF7F2955727A")));
        SecT571R1_B = secT571FieldElement;
        SecT571R1_B_SQRT = (SecT571FieldElement) secT571FieldElement.sqrt();
    }

    public SecT571R1Curve() {
        super(571, 2, 5, 10);
        this.infinity = new SecT571R1Point(this, null, null);
        this.f11714a = fromBigInteger(BigInteger.valueOf(1L));
        this.f11715b = SecT571R1_B;
        this.order = new BigInteger(1, Hex.decodeStrict("03FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE661CE18FF55987308059B186823851EC7DD9CA1161DE93D5174D66E8382E9BB2FE84E47"));
        this.cofactor = BigInteger.valueOf(2L);
        this.coord = 6;
    }

    @Override // org.bouncycastle.math.ec.ECCurve
    public ECCurve cloneCurve() {
        return new SecT571R1Curve();
    }

    @Override // org.bouncycastle.math.ec.ECCurve
    public ECLookupTable createCacheSafeLookupTable(ECPoint[] eCPointArr, int r82, final int r92) {
        final long[] jArr = new long[r92 * 9 * 2];
        int r32 = 0;
        for (int r22 = 0; r22 < r92; r22++) {
            ECPoint eCPoint = eCPointArr[r82 + r22];
            Nat576.copy64(((SecT571FieldElement) eCPoint.getRawXCoord()).f11766x, 0, jArr, r32);
            int r33 = r32 + 9;
            Nat576.copy64(((SecT571FieldElement) eCPoint.getRawYCoord()).f11766x, 0, jArr, r33);
            r32 = r33 + 9;
        }
        return new AbstractECLookupTable() { // from class: org.bouncycastle.math.ec.custom.sec.SecT571R1Curve.1
            private ECPoint createPoint(long[] jArr2, long[] jArr3) {
                return SecT571R1Curve.this.createRawPoint(new SecT571FieldElement(jArr2), new SecT571FieldElement(jArr3), SecT571R1Curve.SECT571R1_AFFINE_ZS);
            }

            @Override // org.bouncycastle.math.ec.ECLookupTable
            public int getSize() {
                return r92;
            }

            @Override // org.bouncycastle.math.ec.ECLookupTable
            public ECPoint lookup(int r14) {
                long[] jArrCreate64 = Nat576.create64();
                long[] jArrCreate642 = Nat576.create64();
                int r42 = 0;
                for (int r34 = 0; r34 < r92; r34++) {
                    long j10 = ((r34 ^ r14) - 1) >> 31;
                    for (int r72 = 0; r72 < 9; r72++) {
                        long j11 = jArrCreate64[r72];
                        long[] jArr2 = jArr;
                        jArrCreate64[r72] = j11 ^ (jArr2[r42 + r72] & j10);
                        jArrCreate642[r72] = jArrCreate642[r72] ^ (jArr2[(r42 + 9) + r72] & j10);
                    }
                    r42 += 18;
                }
                return createPoint(jArrCreate64, jArrCreate642);
            }

            @Override // org.bouncycastle.math.ec.AbstractECLookupTable, org.bouncycastle.math.ec.ECLookupTable
            public ECPoint lookupVar(int r83) {
                long[] jArrCreate64 = Nat576.create64();
                long[] jArrCreate642 = Nat576.create64();
                int r84 = r83 * 9 * 2;
                for (int r34 = 0; r34 < 9; r34++) {
                    long[] jArr2 = jArr;
                    jArrCreate64[r34] = jArr2[r84 + r34];
                    jArrCreate642[r34] = jArr2[r84 + 9 + r34];
                }
                return createPoint(jArrCreate64, jArrCreate642);
            }
        };
    }

    @Override // org.bouncycastle.math.ec.ECCurve
    public ECPoint createRawPoint(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2) {
        return new SecT571R1Point(this, eCFieldElement, eCFieldElement2);
    }

    @Override // org.bouncycastle.math.ec.ECCurve
    public ECPoint createRawPoint(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, ECFieldElement[] eCFieldElementArr) {
        return new SecT571R1Point(this, eCFieldElement, eCFieldElement2, eCFieldElementArr);
    }

    @Override // org.bouncycastle.math.ec.ECCurve
    public ECFieldElement fromBigInteger(BigInteger bigInteger) {
        return new SecT571FieldElement(bigInteger);
    }

    @Override // org.bouncycastle.math.ec.ECCurve
    public int getFieldSize() {
        return 571;
    }

    @Override // org.bouncycastle.math.ec.ECCurve
    public ECPoint getInfinity() {
        return this.infinity;
    }

    public int getK1() {
        return 2;
    }

    public int getK2() {
        return 5;
    }

    public int getK3() {
        return 10;
    }

    public int getM() {
        return 571;
    }

    @Override // org.bouncycastle.math.ec.ECCurve.AbstractF2m
    public boolean isKoblitz() {
        return false;
    }

    public boolean isTrinomial() {
        return false;
    }

    @Override // org.bouncycastle.math.ec.ECCurve
    public boolean supportsCoordinateSystem(int r22) {
        return r22 == 6;
    }
}
