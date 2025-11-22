package org.bouncycastle.math.ec.custom.sec;

import java.math.BigInteger;
import java.security.SecureRandom;
import org.bouncycastle.math.ec.AbstractECLookupTable;
import org.bouncycastle.math.ec.ECConstants;
import org.bouncycastle.math.ec.ECCurve;
import org.bouncycastle.math.ec.ECFieldElement;
import org.bouncycastle.math.ec.ECLookupTable;
import org.bouncycastle.math.ec.ECPoint;
import org.bouncycastle.math.raw.Nat;
import org.bouncycastle.util.encoders.Hex;

/* loaded from: classes2.dex */
public class SecP521R1Curve extends ECCurve.AbstractFp {
    private static final int SECP521R1_DEFAULT_COORDS = 2;
    protected SecP521R1Point infinity;

    /* renamed from: q, reason: collision with root package name */
    public static final BigInteger f11756q = SecP521R1FieldElement.Q;
    private static final ECFieldElement[] SECP521R1_AFFINE_ZS = {new SecP521R1FieldElement(ECConstants.ONE)};

    public SecP521R1Curve() {
        super(f11756q);
        this.infinity = new SecP521R1Point(this, null, null);
        this.f11714a = fromBigInteger(new BigInteger(1, Hex.decodeStrict("01FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC")));
        this.f11715b = fromBigInteger(new BigInteger(1, Hex.decodeStrict("0051953EB9618E1C9A1F929A21A0B68540EEA2DA725B99B315F3B8B489918EF109E156193951EC7E937B1652C0BD3BB1BF073573DF883D2C34F1EF451FD46B503F00")));
        this.order = new BigInteger(1, Hex.decodeStrict("01FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA51868783BF2F966B7FCC0148F709A5D03BB5C9B8899C47AEBB6FB71E91386409"));
        this.cofactor = BigInteger.valueOf(1L);
        this.coord = 2;
    }

    @Override // org.bouncycastle.math.ec.ECCurve
    public ECCurve cloneCurve() {
        return new SecP521R1Curve();
    }

    @Override // org.bouncycastle.math.ec.ECCurve
    public ECLookupTable createCacheSafeLookupTable(ECPoint[] eCPointArr, int r92, final int r10) {
        final int[] r02 = new int[r10 * 17 * 2];
        int r32 = 0;
        for (int r22 = 0; r22 < r10; r22++) {
            ECPoint eCPoint = eCPointArr[r92 + r22];
            Nat.copy(17, ((SecP521R1FieldElement) eCPoint.getRawXCoord()).f11757x, 0, r02, r32);
            int r33 = r32 + 17;
            Nat.copy(17, ((SecP521R1FieldElement) eCPoint.getRawYCoord()).f11757x, 0, r02, r33);
            r32 = r33 + 17;
        }
        return new AbstractECLookupTable() { // from class: org.bouncycastle.math.ec.custom.sec.SecP521R1Curve.1
            private ECPoint createPoint(int[] r34, int[] r42) {
                return SecP521R1Curve.this.createRawPoint(new SecP521R1FieldElement(r34), new SecP521R1FieldElement(r42), SecP521R1Curve.SECP521R1_AFFINE_ZS);
            }

            @Override // org.bouncycastle.math.ec.ECLookupTable
            public int getSize() {
                return r10;
            }

            @Override // org.bouncycastle.math.ec.ECLookupTable
            public ECPoint lookup(int r12) {
                int[] r13 = Nat.create(17);
                int[] r23 = Nat.create(17);
                int r52 = 0;
                for (int r42 = 0; r42 < r10; r42++) {
                    int r6 = ((r42 ^ r12) - 1) >> 31;
                    for (int r72 = 0; r72 < 17; r72++) {
                        int r82 = r13[r72];
                        int[] r93 = r02;
                        r13[r72] = r82 ^ (r93[r52 + r72] & r6);
                        r23[r72] = r23[r72] ^ (r93[(r52 + 17) + r72] & r6);
                    }
                    r52 += 34;
                }
                return createPoint(r13, r23);
            }

            @Override // org.bouncycastle.math.ec.AbstractECLookupTable, org.bouncycastle.math.ec.ECLookupTable
            public ECPoint lookupVar(int r82) {
                int[] r12 = Nat.create(17);
                int[] r23 = Nat.create(17);
                int r83 = r82 * 17 * 2;
                for (int r34 = 0; r34 < 17; r34++) {
                    int r42 = r12[r34];
                    int[] r52 = r02;
                    r12[r34] = r42 ^ r52[r83 + r34];
                    r23[r34] = r23[r34] ^ r52[(r83 + 17) + r34];
                }
                return createPoint(r12, r23);
            }
        };
    }

    @Override // org.bouncycastle.math.ec.ECCurve
    public ECPoint createRawPoint(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2) {
        return new SecP521R1Point(this, eCFieldElement, eCFieldElement2);
    }

    @Override // org.bouncycastle.math.ec.ECCurve
    public ECPoint createRawPoint(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, ECFieldElement[] eCFieldElementArr) {
        return new SecP521R1Point(this, eCFieldElement, eCFieldElement2, eCFieldElementArr);
    }

    @Override // org.bouncycastle.math.ec.ECCurve
    public ECFieldElement fromBigInteger(BigInteger bigInteger) {
        return new SecP521R1FieldElement(bigInteger);
    }

    @Override // org.bouncycastle.math.ec.ECCurve
    public int getFieldSize() {
        return f11756q.bitLength();
    }

    @Override // org.bouncycastle.math.ec.ECCurve
    public ECPoint getInfinity() {
        return this.infinity;
    }

    public BigInteger getQ() {
        return f11756q;
    }

    @Override // org.bouncycastle.math.ec.ECCurve.AbstractFp, org.bouncycastle.math.ec.ECCurve
    public ECFieldElement randomFieldElement(SecureRandom secureRandom) {
        int[] r02 = Nat.create(17);
        SecP521R1Field.random(secureRandom, r02);
        return new SecP521R1FieldElement(r02);
    }

    @Override // org.bouncycastle.math.ec.ECCurve.AbstractFp, org.bouncycastle.math.ec.ECCurve
    public ECFieldElement randomFieldElementMult(SecureRandom secureRandom) {
        int[] r02 = Nat.create(17);
        SecP521R1Field.randomMult(secureRandom, r02);
        return new SecP521R1FieldElement(r02);
    }

    @Override // org.bouncycastle.math.ec.ECCurve
    public boolean supportsCoordinateSystem(int r22) {
        return r22 == 2;
    }
}
