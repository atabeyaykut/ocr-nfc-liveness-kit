package org.bouncycastle.math.ec.custom.sec;

import java.math.BigInteger;
import java.security.SecureRandom;
import org.bouncycastle.math.ec.AbstractECLookupTable;
import org.bouncycastle.math.ec.ECConstants;
import org.bouncycastle.math.ec.ECCurve;
import org.bouncycastle.math.ec.ECFieldElement;
import org.bouncycastle.math.ec.ECLookupTable;
import org.bouncycastle.math.ec.ECPoint;
import org.bouncycastle.math.raw.Nat160;
import org.bouncycastle.util.encoders.Hex;

/* loaded from: classes2.dex */
public class SecP160R1Curve extends ECCurve.AbstractFp {
    private static final int SECP160R1_DEFAULT_COORDS = 2;
    protected SecP160R1Point infinity;

    /* renamed from: q, reason: collision with root package name */
    public static final BigInteger f11738q = SecP160R1FieldElement.Q;
    private static final ECFieldElement[] SECP160R1_AFFINE_ZS = {new SecP160R1FieldElement(ECConstants.ONE)};

    public SecP160R1Curve() {
        super(f11738q);
        this.infinity = new SecP160R1Point(this, null, null);
        this.f11714a = fromBigInteger(new BigInteger(1, Hex.decodeStrict("FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7FFFFFFC")));
        this.f11715b = fromBigInteger(new BigInteger(1, Hex.decodeStrict("1C97BEFC54BD7A8B65ACF89F81D4D4ADC565FA45")));
        this.order = new BigInteger(1, Hex.decodeStrict("0100000000000000000001F4C8F927AED3CA752257"));
        this.cofactor = BigInteger.valueOf(1L);
        this.coord = 2;
    }

    @Override // org.bouncycastle.math.ec.ECCurve
    public ECCurve cloneCurve() {
        return new SecP160R1Curve();
    }

    @Override // org.bouncycastle.math.ec.ECCurve
    public ECLookupTable createCacheSafeLookupTable(ECPoint[] eCPointArr, int r82, final int r92) {
        final int[] r02 = new int[r92 * 5 * 2];
        int r32 = 0;
        for (int r22 = 0; r22 < r92; r22++) {
            ECPoint eCPoint = eCPointArr[r82 + r22];
            Nat160.copy(((SecP160R1FieldElement) eCPoint.getRawXCoord()).f11739x, 0, r02, r32);
            int r33 = r32 + 5;
            Nat160.copy(((SecP160R1FieldElement) eCPoint.getRawYCoord()).f11739x, 0, r02, r33);
            r32 = r33 + 5;
        }
        return new AbstractECLookupTable() { // from class: org.bouncycastle.math.ec.custom.sec.SecP160R1Curve.1
            private ECPoint createPoint(int[] r34, int[] r42) {
                return SecP160R1Curve.this.createRawPoint(new SecP160R1FieldElement(r34), new SecP160R1FieldElement(r42), SecP160R1Curve.SECP160R1_AFFINE_ZS);
            }

            @Override // org.bouncycastle.math.ec.ECLookupTable
            public int getSize() {
                return r92;
            }

            @Override // org.bouncycastle.math.ec.ECLookupTable
            public ECPoint lookup(int r11) {
                int[] r03 = Nat160.create();
                int[] r12 = Nat160.create();
                int r42 = 0;
                for (int r34 = 0; r34 < r92; r34++) {
                    int r52 = ((r34 ^ r11) - 1) >> 31;
                    for (int r6 = 0; r6 < 5; r6++) {
                        int r72 = r03[r6];
                        int[] r83 = r02;
                        r03[r6] = r72 ^ (r83[r42 + r6] & r52);
                        r12[r6] = r12[r6] ^ (r83[(r42 + 5) + r6] & r52);
                    }
                    r42 += 10;
                }
                return createPoint(r03, r12);
            }

            @Override // org.bouncycastle.math.ec.AbstractECLookupTable, org.bouncycastle.math.ec.ECLookupTable
            public ECPoint lookupVar(int r72) {
                int[] r03 = Nat160.create();
                int[] r12 = Nat160.create();
                int r73 = r72 * 5 * 2;
                for (int r34 = 0; r34 < 5; r34++) {
                    int[] r42 = r02;
                    r03[r34] = r42[r73 + r34];
                    r12[r34] = r42[r73 + 5 + r34];
                }
                return createPoint(r03, r12);
            }
        };
    }

    @Override // org.bouncycastle.math.ec.ECCurve
    public ECPoint createRawPoint(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2) {
        return new SecP160R1Point(this, eCFieldElement, eCFieldElement2);
    }

    @Override // org.bouncycastle.math.ec.ECCurve
    public ECPoint createRawPoint(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, ECFieldElement[] eCFieldElementArr) {
        return new SecP160R1Point(this, eCFieldElement, eCFieldElement2, eCFieldElementArr);
    }

    @Override // org.bouncycastle.math.ec.ECCurve
    public ECFieldElement fromBigInteger(BigInteger bigInteger) {
        return new SecP160R1FieldElement(bigInteger);
    }

    @Override // org.bouncycastle.math.ec.ECCurve
    public int getFieldSize() {
        return f11738q.bitLength();
    }

    @Override // org.bouncycastle.math.ec.ECCurve
    public ECPoint getInfinity() {
        return this.infinity;
    }

    public BigInteger getQ() {
        return f11738q;
    }

    @Override // org.bouncycastle.math.ec.ECCurve.AbstractFp, org.bouncycastle.math.ec.ECCurve
    public ECFieldElement randomFieldElement(SecureRandom secureRandom) {
        int[] r02 = Nat160.create();
        SecP160R1Field.random(secureRandom, r02);
        return new SecP160R1FieldElement(r02);
    }

    @Override // org.bouncycastle.math.ec.ECCurve.AbstractFp, org.bouncycastle.math.ec.ECCurve
    public ECFieldElement randomFieldElementMult(SecureRandom secureRandom) {
        int[] r02 = Nat160.create();
        SecP160R1Field.randomMult(secureRandom, r02);
        return new SecP160R1FieldElement(r02);
    }

    @Override // org.bouncycastle.math.ec.ECCurve
    public boolean supportsCoordinateSystem(int r22) {
        return r22 == 2;
    }
}
