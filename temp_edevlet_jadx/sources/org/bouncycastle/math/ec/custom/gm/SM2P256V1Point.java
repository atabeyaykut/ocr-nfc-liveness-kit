package org.bouncycastle.math.ec.custom.gm;

import org.bouncycastle.math.ec.ECCurve;
import org.bouncycastle.math.ec.ECFieldElement;
import org.bouncycastle.math.ec.ECPoint;
import org.bouncycastle.math.raw.Nat;
import org.bouncycastle.math.raw.Nat256;

/* loaded from: classes2.dex */
public class SM2P256V1Point extends ECPoint.AbstractFp {
    public SM2P256V1Point(ECCurve eCCurve, ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2) {
        super(eCCurve, eCFieldElement, eCFieldElement2);
    }

    public SM2P256V1Point(ECCurve eCCurve, ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, ECFieldElement[] eCFieldElementArr) {
        super(eCCurve, eCFieldElement, eCFieldElement2, eCFieldElementArr);
    }

    @Override // org.bouncycastle.math.ec.ECPoint
    public ECPoint add(ECPoint eCPoint) {
        int[] r32;
        int[] r42;
        int[] r12;
        int[] r22;
        if (isInfinity()) {
            return eCPoint;
        }
        if (eCPoint.isInfinity()) {
            return this;
        }
        if (this == eCPoint) {
            return twice();
        }
        ECCurve curve = getCurve();
        SM2P256V1FieldElement sM2P256V1FieldElement = (SM2P256V1FieldElement) this.f11727x;
        SM2P256V1FieldElement sM2P256V1FieldElement2 = (SM2P256V1FieldElement) this.f11728y;
        SM2P256V1FieldElement sM2P256V1FieldElement3 = (SM2P256V1FieldElement) eCPoint.getXCoord();
        SM2P256V1FieldElement sM2P256V1FieldElement4 = (SM2P256V1FieldElement) eCPoint.getYCoord();
        SM2P256V1FieldElement sM2P256V1FieldElement5 = (SM2P256V1FieldElement) this.zs[0];
        SM2P256V1FieldElement sM2P256V1FieldElement6 = (SM2P256V1FieldElement) eCPoint.getZCoord(0);
        int[] r72 = Nat256.createExt();
        int[] r82 = Nat256.create();
        int[] r92 = Nat256.create();
        int[] r10 = Nat256.create();
        boolean zIsOne = sM2P256V1FieldElement5.isOne();
        if (zIsOne) {
            r32 = sM2P256V1FieldElement3.f11734x;
            r42 = sM2P256V1FieldElement4.f11734x;
        } else {
            SM2P256V1Field.square(sM2P256V1FieldElement5.f11734x, r92);
            SM2P256V1Field.multiply(r92, sM2P256V1FieldElement3.f11734x, r82);
            SM2P256V1Field.multiply(r92, sM2P256V1FieldElement5.f11734x, r92);
            SM2P256V1Field.multiply(r92, sM2P256V1FieldElement4.f11734x, r92);
            r32 = r82;
            r42 = r92;
        }
        boolean zIsOne2 = sM2P256V1FieldElement6.isOne();
        if (zIsOne2) {
            r12 = sM2P256V1FieldElement.f11734x;
            r22 = sM2P256V1FieldElement2.f11734x;
        } else {
            SM2P256V1Field.square(sM2P256V1FieldElement6.f11734x, r10);
            SM2P256V1Field.multiply(r10, sM2P256V1FieldElement.f11734x, r72);
            SM2P256V1Field.multiply(r10, sM2P256V1FieldElement6.f11734x, r10);
            SM2P256V1Field.multiply(r10, sM2P256V1FieldElement2.f11734x, r10);
            r12 = r72;
            r22 = r10;
        }
        int[] r13 = Nat256.create();
        SM2P256V1Field.subtract(r12, r32, r13);
        SM2P256V1Field.subtract(r22, r42, r82);
        if (Nat256.isZero(r13)) {
            return Nat256.isZero(r82) ? twice() : curve.getInfinity();
        }
        SM2P256V1Field.square(r13, r92);
        int[] r33 = Nat256.create();
        SM2P256V1Field.multiply(r92, r13, r33);
        SM2P256V1Field.multiply(r92, r12, r92);
        SM2P256V1Field.negate(r33, r33);
        Nat256.mul(r22, r33, r72);
        SM2P256V1Field.reduce32(Nat256.addBothTo(r92, r92, r33), r33);
        SM2P256V1FieldElement sM2P256V1FieldElement7 = new SM2P256V1FieldElement(r10);
        SM2P256V1Field.square(r82, sM2P256V1FieldElement7.f11734x);
        int[] r23 = sM2P256V1FieldElement7.f11734x;
        SM2P256V1Field.subtract(r23, r33, r23);
        SM2P256V1FieldElement sM2P256V1FieldElement8 = new SM2P256V1FieldElement(r33);
        SM2P256V1Field.subtract(r92, sM2P256V1FieldElement7.f11734x, sM2P256V1FieldElement8.f11734x);
        SM2P256V1Field.multiplyAddToExt(sM2P256V1FieldElement8.f11734x, r82, r72);
        SM2P256V1Field.reduce(r72, sM2P256V1FieldElement8.f11734x);
        SM2P256V1FieldElement sM2P256V1FieldElement9 = new SM2P256V1FieldElement(r13);
        if (!zIsOne) {
            int[] r43 = sM2P256V1FieldElement9.f11734x;
            SM2P256V1Field.multiply(r43, sM2P256V1FieldElement5.f11734x, r43);
        }
        if (!zIsOne2) {
            int[] r44 = sM2P256V1FieldElement9.f11734x;
            SM2P256V1Field.multiply(r44, sM2P256V1FieldElement6.f11734x, r44);
        }
        return new SM2P256V1Point(curve, sM2P256V1FieldElement7, sM2P256V1FieldElement8, new ECFieldElement[]{sM2P256V1FieldElement9});
    }

    @Override // org.bouncycastle.math.ec.ECPoint
    public ECPoint detach() {
        return new SM2P256V1Point(null, getAffineXCoord(), getAffineYCoord());
    }

    @Override // org.bouncycastle.math.ec.ECPoint
    public ECPoint negate() {
        return isInfinity() ? this : new SM2P256V1Point(this.curve, this.f11727x, this.f11728y.negate(), this.zs);
    }

    @Override // org.bouncycastle.math.ec.ECPoint
    public ECPoint threeTimes() {
        return (isInfinity() || this.f11728y.isZero()) ? this : twice().add(this);
    }

    @Override // org.bouncycastle.math.ec.ECPoint
    public ECPoint twice() {
        if (isInfinity()) {
            return this;
        }
        ECCurve curve = getCurve();
        SM2P256V1FieldElement sM2P256V1FieldElement = (SM2P256V1FieldElement) this.f11728y;
        if (sM2P256V1FieldElement.isZero()) {
            return curve.getInfinity();
        }
        SM2P256V1FieldElement sM2P256V1FieldElement2 = (SM2P256V1FieldElement) this.f11727x;
        SM2P256V1FieldElement sM2P256V1FieldElement3 = (SM2P256V1FieldElement) this.zs[0];
        int[] r52 = Nat256.create();
        int[] r6 = Nat256.create();
        int[] r72 = Nat256.create();
        SM2P256V1Field.square(sM2P256V1FieldElement.f11734x, r72);
        int[] r82 = Nat256.create();
        SM2P256V1Field.square(r72, r82);
        boolean zIsOne = sM2P256V1FieldElement3.isOne();
        int[] r10 = sM2P256V1FieldElement3.f11734x;
        if (!zIsOne) {
            SM2P256V1Field.square(r10, r6);
            r10 = r6;
        }
        SM2P256V1Field.subtract(sM2P256V1FieldElement2.f11734x, r10, r52);
        SM2P256V1Field.add(sM2P256V1FieldElement2.f11734x, r10, r6);
        SM2P256V1Field.multiply(r6, r52, r6);
        SM2P256V1Field.reduce32(Nat256.addBothTo(r6, r6, r6), r6);
        SM2P256V1Field.multiply(r72, sM2P256V1FieldElement2.f11734x, r72);
        SM2P256V1Field.reduce32(Nat.shiftUpBits(8, r72, 2, 0), r72);
        SM2P256V1Field.reduce32(Nat.shiftUpBits(8, r82, 3, 0, r52), r52);
        SM2P256V1FieldElement sM2P256V1FieldElement4 = new SM2P256V1FieldElement(r82);
        SM2P256V1Field.square(r6, sM2P256V1FieldElement4.f11734x);
        int[] r83 = sM2P256V1FieldElement4.f11734x;
        SM2P256V1Field.subtract(r83, r72, r83);
        int[] r84 = sM2P256V1FieldElement4.f11734x;
        SM2P256V1Field.subtract(r84, r72, r84);
        SM2P256V1FieldElement sM2P256V1FieldElement5 = new SM2P256V1FieldElement(r72);
        SM2P256V1Field.subtract(r72, sM2P256V1FieldElement4.f11734x, sM2P256V1FieldElement5.f11734x);
        int[] r73 = sM2P256V1FieldElement5.f11734x;
        SM2P256V1Field.multiply(r73, r6, r73);
        int[] r74 = sM2P256V1FieldElement5.f11734x;
        SM2P256V1Field.subtract(r74, r52, r74);
        SM2P256V1FieldElement sM2P256V1FieldElement6 = new SM2P256V1FieldElement(r6);
        SM2P256V1Field.twice(sM2P256V1FieldElement.f11734x, sM2P256V1FieldElement6.f11734x);
        if (!zIsOne) {
            int[] r12 = sM2P256V1FieldElement6.f11734x;
            SM2P256V1Field.multiply(r12, sM2P256V1FieldElement3.f11734x, r12);
        }
        return new SM2P256V1Point(curve, sM2P256V1FieldElement4, sM2P256V1FieldElement5, new ECFieldElement[]{sM2P256V1FieldElement6});
    }

    @Override // org.bouncycastle.math.ec.ECPoint
    public ECPoint twicePlus(ECPoint eCPoint) {
        return this == eCPoint ? threeTimes() : isInfinity() ? eCPoint : eCPoint.isInfinity() ? twice() : this.f11728y.isZero() ? eCPoint : twice().add(eCPoint);
    }
}
