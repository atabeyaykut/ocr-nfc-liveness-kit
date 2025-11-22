package org.bouncycastle.math.ec.custom.sec;

import java.math.BigInteger;
import org.bouncycastle.math.ec.AbstractECLookupTable;
import org.bouncycastle.math.ec.ECConstants;
import org.bouncycastle.math.ec.ECCurve;
import org.bouncycastle.math.ec.ECFieldElement;
import org.bouncycastle.math.ec.ECLookupTable;
import org.bouncycastle.math.ec.ECPoint;
import org.bouncycastle.math.raw.Nat256;
import org.bouncycastle.util.encoders.Hex;

/* loaded from: classes2.dex */
public class SecT193R1Curve extends ECCurve.AbstractF2m {
    private static final ECFieldElement[] SECT193R1_AFFINE_ZS = {new SecT193FieldElement(ECConstants.ONE)};
    private static final int SECT193R1_DEFAULT_COORDS = 6;
    protected SecT193R1Point infinity;

    public SecT193R1Curve() {
        super(193, 15, 0, 0);
        this.infinity = new SecT193R1Point(this, null, null);
        this.f11714a = fromBigInteger(new BigInteger(1, Hex.decodeStrict("0017858FEB7A98975169E171F77B4087DE098AC8A911DF7B01")));
        this.f11715b = fromBigInteger(new BigInteger(1, Hex.decodeStrict("00FDFB49BFE6C3A89FACADAA7A1E5BBC7CC1C2E5D831478814")));
        this.order = new BigInteger(1, Hex.decodeStrict("01000000000000000000000000C7F34A778F443ACC920EBA49"));
        this.cofactor = BigInteger.valueOf(2L);
        this.coord = 6;
    }

    @Override // org.bouncycastle.math.ec.ECCurve
    public ECCurve cloneCurve() {
        return new SecT193R1Curve();
    }

    @Override // org.bouncycastle.math.ec.ECCurve
    public ECLookupTable createCacheSafeLookupTable(ECPoint[] eCPointArr, int r82, final int r92) {
        final long[] jArr = new long[r92 * 4 * 2];
        int r32 = 0;
        for (int r22 = 0; r22 < r92; r22++) {
            ECPoint eCPoint = eCPointArr[r82 + r22];
            Nat256.copy64(((SecT193FieldElement) eCPoint.getRawXCoord()).f11761x, 0, jArr, r32);
            int r33 = r32 + 4;
            Nat256.copy64(((SecT193FieldElement) eCPoint.getRawYCoord()).f11761x, 0, jArr, r33);
            r32 = r33 + 4;
        }
        return new AbstractECLookupTable() { // from class: org.bouncycastle.math.ec.custom.sec.SecT193R1Curve.1
            private ECPoint createPoint(long[] jArr2, long[] jArr3) {
                return SecT193R1Curve.this.createRawPoint(new SecT193FieldElement(jArr2), new SecT193FieldElement(jArr3), SecT193R1Curve.SECT193R1_AFFINE_ZS);
            }

            @Override // org.bouncycastle.math.ec.ECLookupTable
            public int getSize() {
                return r92;
            }

            @Override // org.bouncycastle.math.ec.ECLookupTable
            public ECPoint lookup(int r14) {
                long[] jArrCreate64 = Nat256.create64();
                long[] jArrCreate642 = Nat256.create64();
                int r42 = 0;
                for (int r34 = 0; r34 < r92; r34++) {
                    long j10 = ((r34 ^ r14) - 1) >> 31;
                    for (int r72 = 0; r72 < 4; r72++) {
                        long j11 = jArrCreate64[r72];
                        long[] jArr2 = jArr;
                        jArrCreate64[r72] = j11 ^ (jArr2[r42 + r72] & j10);
                        jArrCreate642[r72] = jArrCreate642[r72] ^ (jArr2[(r42 + 4) + r72] & j10);
                    }
                    r42 += 8;
                }
                return createPoint(jArrCreate64, jArrCreate642);
            }

            @Override // org.bouncycastle.math.ec.AbstractECLookupTable, org.bouncycastle.math.ec.ECLookupTable
            public ECPoint lookupVar(int r83) {
                long[] jArrCreate64 = Nat256.create64();
                long[] jArrCreate642 = Nat256.create64();
                int r84 = r83 * 4 * 2;
                for (int r34 = 0; r34 < 4; r34++) {
                    long[] jArr2 = jArr;
                    jArrCreate64[r34] = jArr2[r84 + r34];
                    jArrCreate642[r34] = jArr2[r84 + 4 + r34];
                }
                return createPoint(jArrCreate64, jArrCreate642);
            }
        };
    }

    @Override // org.bouncycastle.math.ec.ECCurve
    public ECPoint createRawPoint(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2) {
        return new SecT193R1Point(this, eCFieldElement, eCFieldElement2);
    }

    @Override // org.bouncycastle.math.ec.ECCurve
    public ECPoint createRawPoint(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, ECFieldElement[] eCFieldElementArr) {
        return new SecT193R1Point(this, eCFieldElement, eCFieldElement2, eCFieldElementArr);
    }

    @Override // org.bouncycastle.math.ec.ECCurve
    public ECFieldElement fromBigInteger(BigInteger bigInteger) {
        return new SecT193FieldElement(bigInteger);
    }

    @Override // org.bouncycastle.math.ec.ECCurve
    public int getFieldSize() {
        return 193;
    }

    @Override // org.bouncycastle.math.ec.ECCurve
    public ECPoint getInfinity() {
        return this.infinity;
    }

    public int getK1() {
        return 15;
    }

    public int getK2() {
        return 0;
    }

    public int getK3() {
        return 0;
    }

    public int getM() {
        return 193;
    }

    @Override // org.bouncycastle.math.ec.ECCurve.AbstractF2m
    public boolean isKoblitz() {
        return false;
    }

    public boolean isTrinomial() {
        return true;
    }

    @Override // org.bouncycastle.math.ec.ECCurve
    public boolean supportsCoordinateSystem(int r22) {
        return r22 == 6;
    }
}
