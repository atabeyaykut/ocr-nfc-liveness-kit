package org.bouncycastle.math.ec.custom.gm;

import java.math.BigInteger;
import java.security.SecureRandom;
import org.bouncycastle.math.ec.AbstractECLookupTable;
import org.bouncycastle.math.ec.ECConstants;
import org.bouncycastle.math.ec.ECCurve;
import org.bouncycastle.math.ec.ECFieldElement;
import org.bouncycastle.math.ec.ECLookupTable;
import org.bouncycastle.math.ec.ECPoint;
import org.bouncycastle.math.raw.Nat256;
import org.bouncycastle.util.encoders.Hex;

/* loaded from: classes2.dex */
public class SM2P256V1Curve extends ECCurve.AbstractFp {
    private static final int SM2P256V1_DEFAULT_COORDS = 2;
    protected SM2P256V1Point infinity;

    /* renamed from: q, reason: collision with root package name */
    public static final BigInteger f11733q = SM2P256V1FieldElement.Q;
    private static final ECFieldElement[] SM2P256V1_AFFINE_ZS = {new SM2P256V1FieldElement(ECConstants.ONE)};

    public SM2P256V1Curve() {
        super(f11733q);
        this.infinity = new SM2P256V1Point(this, null, null);
        this.f11714a = fromBigInteger(new BigInteger(1, Hex.decodeStrict("FFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000FFFFFFFFFFFFFFFC")));
        this.f11715b = fromBigInteger(new BigInteger(1, Hex.decodeStrict("28E9FA9E9D9F5E344D5A9E4BCF6509A7F39789F515AB8F92DDBCBD414D940E93")));
        this.order = new BigInteger(1, Hex.decodeStrict("FFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFF7203DF6B21C6052B53BBF40939D54123"));
        this.cofactor = BigInteger.valueOf(1L);
        this.coord = 2;
    }

    @Override // org.bouncycastle.math.ec.ECCurve
    public ECCurve cloneCurve() {
        return new SM2P256V1Curve();
    }

    @Override // org.bouncycastle.math.ec.ECCurve
    public ECLookupTable createCacheSafeLookupTable(ECPoint[] eCPointArr, int r82, final int r92) {
        final int[] r02 = new int[r92 * 8 * 2];
        int r32 = 0;
        for (int r22 = 0; r22 < r92; r22++) {
            ECPoint eCPoint = eCPointArr[r82 + r22];
            Nat256.copy(((SM2P256V1FieldElement) eCPoint.getRawXCoord()).f11734x, 0, r02, r32);
            int r33 = r32 + 8;
            Nat256.copy(((SM2P256V1FieldElement) eCPoint.getRawYCoord()).f11734x, 0, r02, r33);
            r32 = r33 + 8;
        }
        return new AbstractECLookupTable() { // from class: org.bouncycastle.math.ec.custom.gm.SM2P256V1Curve.1
            private ECPoint createPoint(int[] r34, int[] r42) {
                return SM2P256V1Curve.this.createRawPoint(new SM2P256V1FieldElement(r34), new SM2P256V1FieldElement(r42), SM2P256V1Curve.SM2P256V1_AFFINE_ZS);
            }

            @Override // org.bouncycastle.math.ec.ECLookupTable
            public int getSize() {
                return r92;
            }

            @Override // org.bouncycastle.math.ec.ECLookupTable
            public ECPoint lookup(int r11) {
                int[] r03 = Nat256.create();
                int[] r12 = Nat256.create();
                int r42 = 0;
                for (int r34 = 0; r34 < r92; r34++) {
                    int r52 = ((r34 ^ r11) - 1) >> 31;
                    for (int r6 = 0; r6 < 8; r6++) {
                        int r72 = r03[r6];
                        int[] r83 = r02;
                        r03[r6] = r72 ^ (r83[r42 + r6] & r52);
                        r12[r6] = r12[r6] ^ (r83[(r42 + 8) + r6] & r52);
                    }
                    r42 += 16;
                }
                return createPoint(r03, r12);
            }

            @Override // org.bouncycastle.math.ec.AbstractECLookupTable, org.bouncycastle.math.ec.ECLookupTable
            public ECPoint lookupVar(int r72) {
                int[] r03 = Nat256.create();
                int[] r12 = Nat256.create();
                int r73 = r72 * 8 * 2;
                for (int r34 = 0; r34 < 8; r34++) {
                    int[] r42 = r02;
                    r03[r34] = r42[r73 + r34];
                    r12[r34] = r42[r73 + 8 + r34];
                }
                return createPoint(r03, r12);
            }
        };
    }

    @Override // org.bouncycastle.math.ec.ECCurve
    public ECPoint createRawPoint(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2) {
        return new SM2P256V1Point(this, eCFieldElement, eCFieldElement2);
    }

    @Override // org.bouncycastle.math.ec.ECCurve
    public ECPoint createRawPoint(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, ECFieldElement[] eCFieldElementArr) {
        return new SM2P256V1Point(this, eCFieldElement, eCFieldElement2, eCFieldElementArr);
    }

    @Override // org.bouncycastle.math.ec.ECCurve
    public ECFieldElement fromBigInteger(BigInteger bigInteger) {
        return new SM2P256V1FieldElement(bigInteger);
    }

    @Override // org.bouncycastle.math.ec.ECCurve
    public int getFieldSize() {
        return f11733q.bitLength();
    }

    @Override // org.bouncycastle.math.ec.ECCurve
    public ECPoint getInfinity() {
        return this.infinity;
    }

    public BigInteger getQ() {
        return f11733q;
    }

    @Override // org.bouncycastle.math.ec.ECCurve.AbstractFp, org.bouncycastle.math.ec.ECCurve
    public ECFieldElement randomFieldElement(SecureRandom secureRandom) {
        int[] r02 = Nat256.create();
        SM2P256V1Field.random(secureRandom, r02);
        return new SM2P256V1FieldElement(r02);
    }

    @Override // org.bouncycastle.math.ec.ECCurve.AbstractFp, org.bouncycastle.math.ec.ECCurve
    public ECFieldElement randomFieldElementMult(SecureRandom secureRandom) {
        int[] r02 = Nat256.create();
        SM2P256V1Field.randomMult(secureRandom, r02);
        return new SM2P256V1FieldElement(r02);
    }

    @Override // org.bouncycastle.math.ec.ECCurve
    public boolean supportsCoordinateSystem(int r22) {
        return r22 == 2;
    }
}
