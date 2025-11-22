package org.bouncycastle.math.ec.custom.sec;

import java.math.BigInteger;
import java.security.SecureRandom;
import org.bouncycastle.math.ec.AbstractECLookupTable;
import org.bouncycastle.math.ec.ECConstants;
import org.bouncycastle.math.ec.ECCurve;
import org.bouncycastle.math.ec.ECFieldElement;
import org.bouncycastle.math.ec.ECLookupTable;
import org.bouncycastle.math.ec.ECPoint;
import org.bouncycastle.math.raw.Nat224;
import org.bouncycastle.util.encoders.Hex;

/* loaded from: classes2.dex */
public class SecP224R1Curve extends ECCurve.AbstractFp {
    private static final int SECP224R1_DEFAULT_COORDS = 2;
    protected SecP224R1Point infinity;

    /* renamed from: q, reason: collision with root package name */
    public static final BigInteger f11748q = SecP224R1FieldElement.Q;
    private static final ECFieldElement[] SECP224R1_AFFINE_ZS = {new SecP224R1FieldElement(ECConstants.ONE)};

    public SecP224R1Curve() {
        super(f11748q);
        this.infinity = new SecP224R1Point(this, null, null);
        this.f11714a = fromBigInteger(new BigInteger(1, Hex.decodeStrict("FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFE")));
        this.f11715b = fromBigInteger(new BigInteger(1, Hex.decodeStrict("B4050A850C04B3ABF54132565044B0B7D7BFD8BA270B39432355FFB4")));
        this.order = new BigInteger(1, Hex.decodeStrict("FFFFFFFFFFFFFFFFFFFFFFFFFFFF16A2E0B8F03E13DD29455C5C2A3D"));
        this.cofactor = BigInteger.valueOf(1L);
        this.coord = 2;
    }

    @Override // org.bouncycastle.math.ec.ECCurve
    public ECCurve cloneCurve() {
        return new SecP224R1Curve();
    }

    @Override // org.bouncycastle.math.ec.ECCurve
    public ECLookupTable createCacheSafeLookupTable(ECPoint[] eCPointArr, int r82, final int r92) {
        final int[] r02 = new int[r92 * 7 * 2];
        int r32 = 0;
        for (int r22 = 0; r22 < r92; r22++) {
            ECPoint eCPoint = eCPointArr[r82 + r22];
            Nat224.copy(((SecP224R1FieldElement) eCPoint.getRawXCoord()).f11749x, 0, r02, r32);
            int r33 = r32 + 7;
            Nat224.copy(((SecP224R1FieldElement) eCPoint.getRawYCoord()).f11749x, 0, r02, r33);
            r32 = r33 + 7;
        }
        return new AbstractECLookupTable() { // from class: org.bouncycastle.math.ec.custom.sec.SecP224R1Curve.1
            private ECPoint createPoint(int[] r34, int[] r42) {
                return SecP224R1Curve.this.createRawPoint(new SecP224R1FieldElement(r34), new SecP224R1FieldElement(r42), SecP224R1Curve.SECP224R1_AFFINE_ZS);
            }

            @Override // org.bouncycastle.math.ec.ECLookupTable
            public int getSize() {
                return r92;
            }

            @Override // org.bouncycastle.math.ec.ECLookupTable
            public ECPoint lookup(int r11) {
                int[] r03 = Nat224.create();
                int[] r12 = Nat224.create();
                int r42 = 0;
                for (int r34 = 0; r34 < r92; r34++) {
                    int r52 = ((r34 ^ r11) - 1) >> 31;
                    for (int r6 = 0; r6 < 7; r6++) {
                        int r72 = r03[r6];
                        int[] r83 = r02;
                        r03[r6] = r72 ^ (r83[r42 + r6] & r52);
                        r12[r6] = r12[r6] ^ (r83[(r42 + 7) + r6] & r52);
                    }
                    r42 += 14;
                }
                return createPoint(r03, r12);
            }

            @Override // org.bouncycastle.math.ec.AbstractECLookupTable, org.bouncycastle.math.ec.ECLookupTable
            public ECPoint lookupVar(int r72) {
                int[] r03 = Nat224.create();
                int[] r12 = Nat224.create();
                int r73 = r72 * 7 * 2;
                for (int r34 = 0; r34 < 7; r34++) {
                    int[] r42 = r02;
                    r03[r34] = r42[r73 + r34];
                    r12[r34] = r42[r73 + 7 + r34];
                }
                return createPoint(r03, r12);
            }
        };
    }

    @Override // org.bouncycastle.math.ec.ECCurve
    public ECPoint createRawPoint(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2) {
        return new SecP224R1Point(this, eCFieldElement, eCFieldElement2);
    }

    @Override // org.bouncycastle.math.ec.ECCurve
    public ECPoint createRawPoint(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, ECFieldElement[] eCFieldElementArr) {
        return new SecP224R1Point(this, eCFieldElement, eCFieldElement2, eCFieldElementArr);
    }

    @Override // org.bouncycastle.math.ec.ECCurve
    public ECFieldElement fromBigInteger(BigInteger bigInteger) {
        return new SecP224R1FieldElement(bigInteger);
    }

    @Override // org.bouncycastle.math.ec.ECCurve
    public int getFieldSize() {
        return f11748q.bitLength();
    }

    @Override // org.bouncycastle.math.ec.ECCurve
    public ECPoint getInfinity() {
        return this.infinity;
    }

    public BigInteger getQ() {
        return f11748q;
    }

    @Override // org.bouncycastle.math.ec.ECCurve.AbstractFp, org.bouncycastle.math.ec.ECCurve
    public ECFieldElement randomFieldElement(SecureRandom secureRandom) {
        int[] r02 = Nat224.create();
        SecP224R1Field.random(secureRandom, r02);
        return new SecP224R1FieldElement(r02);
    }

    @Override // org.bouncycastle.math.ec.ECCurve.AbstractFp, org.bouncycastle.math.ec.ECCurve
    public ECFieldElement randomFieldElementMult(SecureRandom secureRandom) {
        int[] r02 = Nat224.create();
        SecP224R1Field.randomMult(secureRandom, r02);
        return new SecP224R1FieldElement(r02);
    }

    @Override // org.bouncycastle.math.ec.ECCurve
    public boolean supportsCoordinateSystem(int r22) {
        return r22 == 2;
    }
}
