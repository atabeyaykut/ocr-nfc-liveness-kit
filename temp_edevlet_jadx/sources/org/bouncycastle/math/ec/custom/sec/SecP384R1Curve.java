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
public class SecP384R1Curve extends ECCurve.AbstractFp {
    private static final int SECP384R1_DEFAULT_COORDS = 2;
    protected SecP384R1Point infinity;

    /* renamed from: q, reason: collision with root package name */
    public static final BigInteger f11754q = SecP384R1FieldElement.Q;
    private static final ECFieldElement[] SECP384R1_AFFINE_ZS = {new SecP384R1FieldElement(ECConstants.ONE)};

    public SecP384R1Curve() {
        super(f11754q);
        this.infinity = new SecP384R1Point(this, null, null);
        this.f11714a = fromBigInteger(new BigInteger(1, Hex.decodeStrict("FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFF0000000000000000FFFFFFFC")));
        this.f11715b = fromBigInteger(new BigInteger(1, Hex.decodeStrict("B3312FA7E23EE7E4988E056BE3F82D19181D9C6EFE8141120314088F5013875AC656398D8A2ED19D2A85C8EDD3EC2AEF")));
        this.order = new BigInteger(1, Hex.decodeStrict("FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7634D81F4372DDF581A0DB248B0A77AECEC196ACCC52973"));
        this.cofactor = BigInteger.valueOf(1L);
        this.coord = 2;
    }

    @Override // org.bouncycastle.math.ec.ECCurve
    public ECCurve cloneCurve() {
        return new SecP384R1Curve();
    }

    @Override // org.bouncycastle.math.ec.ECCurve
    public ECLookupTable createCacheSafeLookupTable(ECPoint[] eCPointArr, int r92, final int r10) {
        final int[] r02 = new int[r10 * 12 * 2];
        int r32 = 0;
        for (int r22 = 0; r22 < r10; r22++) {
            ECPoint eCPoint = eCPointArr[r92 + r22];
            Nat.copy(12, ((SecP384R1FieldElement) eCPoint.getRawXCoord()).f11755x, 0, r02, r32);
            int r33 = r32 + 12;
            Nat.copy(12, ((SecP384R1FieldElement) eCPoint.getRawYCoord()).f11755x, 0, r02, r33);
            r32 = r33 + 12;
        }
        return new AbstractECLookupTable() { // from class: org.bouncycastle.math.ec.custom.sec.SecP384R1Curve.1
            private ECPoint createPoint(int[] r34, int[] r42) {
                return SecP384R1Curve.this.createRawPoint(new SecP384R1FieldElement(r34), new SecP384R1FieldElement(r42), SecP384R1Curve.SECP384R1_AFFINE_ZS);
            }

            @Override // org.bouncycastle.math.ec.ECLookupTable
            public int getSize() {
                return r10;
            }

            @Override // org.bouncycastle.math.ec.ECLookupTable
            public ECPoint lookup(int r12) {
                int[] r13 = Nat.create(12);
                int[] r23 = Nat.create(12);
                int r52 = 0;
                for (int r42 = 0; r42 < r10; r42++) {
                    int r6 = ((r42 ^ r12) - 1) >> 31;
                    for (int r72 = 0; r72 < 12; r72++) {
                        int r82 = r13[r72];
                        int[] r93 = r02;
                        r13[r72] = r82 ^ (r93[r52 + r72] & r6);
                        r23[r72] = r23[r72] ^ (r93[(r52 + 12) + r72] & r6);
                    }
                    r52 += 24;
                }
                return createPoint(r13, r23);
            }

            @Override // org.bouncycastle.math.ec.AbstractECLookupTable, org.bouncycastle.math.ec.ECLookupTable
            public ECPoint lookupVar(int r72) {
                int[] r12 = Nat.create(12);
                int[] r23 = Nat.create(12);
                int r73 = r72 * 12 * 2;
                for (int r34 = 0; r34 < 12; r34++) {
                    int[] r42 = r02;
                    r12[r34] = r42[r73 + r34];
                    r23[r34] = r42[r73 + 12 + r34];
                }
                return createPoint(r12, r23);
            }
        };
    }

    @Override // org.bouncycastle.math.ec.ECCurve
    public ECPoint createRawPoint(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2) {
        return new SecP384R1Point(this, eCFieldElement, eCFieldElement2);
    }

    @Override // org.bouncycastle.math.ec.ECCurve
    public ECPoint createRawPoint(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, ECFieldElement[] eCFieldElementArr) {
        return new SecP384R1Point(this, eCFieldElement, eCFieldElement2, eCFieldElementArr);
    }

    @Override // org.bouncycastle.math.ec.ECCurve
    public ECFieldElement fromBigInteger(BigInteger bigInteger) {
        return new SecP384R1FieldElement(bigInteger);
    }

    @Override // org.bouncycastle.math.ec.ECCurve
    public int getFieldSize() {
        return f11754q.bitLength();
    }

    @Override // org.bouncycastle.math.ec.ECCurve
    public ECPoint getInfinity() {
        return this.infinity;
    }

    public BigInteger getQ() {
        return f11754q;
    }

    @Override // org.bouncycastle.math.ec.ECCurve.AbstractFp, org.bouncycastle.math.ec.ECCurve
    public ECFieldElement randomFieldElement(SecureRandom secureRandom) {
        int[] r02 = Nat.create(12);
        SecP384R1Field.random(secureRandom, r02);
        return new SecP384R1FieldElement(r02);
    }

    @Override // org.bouncycastle.math.ec.ECCurve.AbstractFp, org.bouncycastle.math.ec.ECCurve
    public ECFieldElement randomFieldElementMult(SecureRandom secureRandom) {
        int[] r02 = Nat.create(12);
        SecP384R1Field.randomMult(secureRandom, r02);
        return new SecP384R1FieldElement(r02);
    }

    @Override // org.bouncycastle.math.ec.ECCurve
    public boolean supportsCoordinateSystem(int r22) {
        return r22 == 2;
    }
}
