package org.bouncycastle.math.ec.custom.sec;

import java.math.BigInteger;
import org.bouncycastle.math.ec.AbstractECLookupTable;
import org.bouncycastle.math.ec.ECConstants;
import org.bouncycastle.math.ec.ECCurve;
import org.bouncycastle.math.ec.ECFieldElement;
import org.bouncycastle.math.ec.ECLookupTable;
import org.bouncycastle.math.ec.ECMultiplier;
import org.bouncycastle.math.ec.ECPoint;
import org.bouncycastle.math.ec.WTauNafMultiplier;
import org.bouncycastle.math.raw.Nat320;
import org.bouncycastle.util.encoders.Hex;

/* loaded from: classes2.dex */
public class SecT283K1Curve extends ECCurve.AbstractF2m {
    private static final ECFieldElement[] SECT283K1_AFFINE_ZS = {new SecT283FieldElement(ECConstants.ONE)};
    private static final int SECT283K1_DEFAULT_COORDS = 6;
    protected SecT283K1Point infinity;

    public SecT283K1Curve() {
        super(283, 5, 7, 12);
        this.infinity = new SecT283K1Point(this, null, null);
        this.f11714a = fromBigInteger(BigInteger.valueOf(0L));
        this.f11715b = fromBigInteger(BigInteger.valueOf(1L));
        this.order = new BigInteger(1, Hex.decodeStrict("01FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9AE2ED07577265DFF7F94451E061E163C61"));
        this.cofactor = BigInteger.valueOf(4L);
        this.coord = 6;
    }

    @Override // org.bouncycastle.math.ec.ECCurve
    public ECCurve cloneCurve() {
        return new SecT283K1Curve();
    }

    @Override // org.bouncycastle.math.ec.ECCurve
    public ECLookupTable createCacheSafeLookupTable(ECPoint[] eCPointArr, int r82, final int r92) {
        final long[] jArr = new long[r92 * 5 * 2];
        int r32 = 0;
        for (int r22 = 0; r22 < r92; r22++) {
            ECPoint eCPoint = eCPointArr[r82 + r22];
            Nat320.copy64(((SecT283FieldElement) eCPoint.getRawXCoord()).f11764x, 0, jArr, r32);
            int r33 = r32 + 5;
            Nat320.copy64(((SecT283FieldElement) eCPoint.getRawYCoord()).f11764x, 0, jArr, r33);
            r32 = r33 + 5;
        }
        return new AbstractECLookupTable() { // from class: org.bouncycastle.math.ec.custom.sec.SecT283K1Curve.1
            private ECPoint createPoint(long[] jArr2, long[] jArr3) {
                return SecT283K1Curve.this.createRawPoint(new SecT283FieldElement(jArr2), new SecT283FieldElement(jArr3), SecT283K1Curve.SECT283K1_AFFINE_ZS);
            }

            @Override // org.bouncycastle.math.ec.ECLookupTable
            public int getSize() {
                return r92;
            }

            @Override // org.bouncycastle.math.ec.ECLookupTable
            public ECPoint lookup(int r14) {
                long[] jArrCreate64 = Nat320.create64();
                long[] jArrCreate642 = Nat320.create64();
                int r42 = 0;
                for (int r34 = 0; r34 < r92; r34++) {
                    long j10 = ((r34 ^ r14) - 1) >> 31;
                    for (int r72 = 0; r72 < 5; r72++) {
                        long j11 = jArrCreate64[r72];
                        long[] jArr2 = jArr;
                        jArrCreate64[r72] = j11 ^ (jArr2[r42 + r72] & j10);
                        jArrCreate642[r72] = jArrCreate642[r72] ^ (jArr2[(r42 + 5) + r72] & j10);
                    }
                    r42 += 10;
                }
                return createPoint(jArrCreate64, jArrCreate642);
            }

            @Override // org.bouncycastle.math.ec.AbstractECLookupTable, org.bouncycastle.math.ec.ECLookupTable
            public ECPoint lookupVar(int r83) {
                long[] jArrCreate64 = Nat320.create64();
                long[] jArrCreate642 = Nat320.create64();
                int r84 = r83 * 5 * 2;
                for (int r34 = 0; r34 < 5; r34++) {
                    long[] jArr2 = jArr;
                    jArrCreate64[r34] = jArr2[r84 + r34];
                    jArrCreate642[r34] = jArr2[r84 + 5 + r34];
                }
                return createPoint(jArrCreate64, jArrCreate642);
            }
        };
    }

    @Override // org.bouncycastle.math.ec.ECCurve
    public ECMultiplier createDefaultMultiplier() {
        return new WTauNafMultiplier();
    }

    @Override // org.bouncycastle.math.ec.ECCurve
    public ECPoint createRawPoint(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2) {
        return new SecT283K1Point(this, eCFieldElement, eCFieldElement2);
    }

    @Override // org.bouncycastle.math.ec.ECCurve
    public ECPoint createRawPoint(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, ECFieldElement[] eCFieldElementArr) {
        return new SecT283K1Point(this, eCFieldElement, eCFieldElement2, eCFieldElementArr);
    }

    @Override // org.bouncycastle.math.ec.ECCurve
    public ECFieldElement fromBigInteger(BigInteger bigInteger) {
        return new SecT283FieldElement(bigInteger);
    }

    @Override // org.bouncycastle.math.ec.ECCurve
    public int getFieldSize() {
        return 283;
    }

    @Override // org.bouncycastle.math.ec.ECCurve
    public ECPoint getInfinity() {
        return this.infinity;
    }

    public int getK1() {
        return 5;
    }

    public int getK2() {
        return 7;
    }

    public int getK3() {
        return 12;
    }

    public int getM() {
        return 283;
    }

    @Override // org.bouncycastle.math.ec.ECCurve.AbstractF2m
    public boolean isKoblitz() {
        return true;
    }

    public boolean isTrinomial() {
        return false;
    }

    @Override // org.bouncycastle.math.ec.ECCurve
    public boolean supportsCoordinateSystem(int r22) {
        return r22 == 6;
    }
}
