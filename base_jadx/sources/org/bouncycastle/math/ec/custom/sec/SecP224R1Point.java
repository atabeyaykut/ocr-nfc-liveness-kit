package org.bouncycastle.math.ec.custom.sec;

import org.bouncycastle.math.ec.ECCurve;
import org.bouncycastle.math.ec.ECFieldElement;
import org.bouncycastle.math.ec.ECPoint;
import org.bouncycastle.math.raw.Nat;
import org.bouncycastle.math.raw.Nat224;

/* loaded from: classes2.dex */
public class SecP224R1Point extends ECPoint.AbstractFp {
    public SecP224R1Point(ECCurve eCCurve, ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2) {
        super(eCCurve, eCFieldElement, eCFieldElement2);
    }

    public SecP224R1Point(ECCurve eCCurve, ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, ECFieldElement[] eCFieldElementArr) {
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
        SecP224R1FieldElement secP224R1FieldElement = (SecP224R1FieldElement) this.f11727x;
        SecP224R1FieldElement secP224R1FieldElement2 = (SecP224R1FieldElement) this.f11728y;
        SecP224R1FieldElement secP224R1FieldElement3 = (SecP224R1FieldElement) eCPoint.getXCoord();
        SecP224R1FieldElement secP224R1FieldElement4 = (SecP224R1FieldElement) eCPoint.getYCoord();
        SecP224R1FieldElement secP224R1FieldElement5 = (SecP224R1FieldElement) this.zs[0];
        SecP224R1FieldElement secP224R1FieldElement6 = (SecP224R1FieldElement) eCPoint.getZCoord(0);
        int[] r72 = Nat224.createExt();
        int[] r82 = Nat224.create();
        int[] r92 = Nat224.create();
        int[] r10 = Nat224.create();
        boolean zIsOne = secP224R1FieldElement5.isOne();
        if (zIsOne) {
            r32 = secP224R1FieldElement3.f11749x;
            r42 = secP224R1FieldElement4.f11749x;
        } else {
            SecP224R1Field.square(secP224R1FieldElement5.f11749x, r92);
            SecP224R1Field.multiply(r92, secP224R1FieldElement3.f11749x, r82);
            SecP224R1Field.multiply(r92, secP224R1FieldElement5.f11749x, r92);
            SecP224R1Field.multiply(r92, secP224R1FieldElement4.f11749x, r92);
            r32 = r82;
            r42 = r92;
        }
        boolean zIsOne2 = secP224R1FieldElement6.isOne();
        if (zIsOne2) {
            r12 = secP224R1FieldElement.f11749x;
            r22 = secP224R1FieldElement2.f11749x;
        } else {
            SecP224R1Field.square(secP224R1FieldElement6.f11749x, r10);
            SecP224R1Field.multiply(r10, secP224R1FieldElement.f11749x, r72);
            SecP224R1Field.multiply(r10, secP224R1FieldElement6.f11749x, r10);
            SecP224R1Field.multiply(r10, secP224R1FieldElement2.f11749x, r10);
            r12 = r72;
            r22 = r10;
        }
        int[] r13 = Nat224.create();
        SecP224R1Field.subtract(r12, r32, r13);
        SecP224R1Field.subtract(r22, r42, r82);
        if (Nat224.isZero(r13)) {
            return Nat224.isZero(r82) ? twice() : curve.getInfinity();
        }
        SecP224R1Field.square(r13, r92);
        int[] r33 = Nat224.create();
        SecP224R1Field.multiply(r92, r13, r33);
        SecP224R1Field.multiply(r92, r12, r92);
        SecP224R1Field.negate(r33, r33);
        Nat224.mul(r22, r33, r72);
        SecP224R1Field.reduce32(Nat224.addBothTo(r92, r92, r33), r33);
        SecP224R1FieldElement secP224R1FieldElement7 = new SecP224R1FieldElement(r10);
        SecP224R1Field.square(r82, secP224R1FieldElement7.f11749x);
        int[] r23 = secP224R1FieldElement7.f11749x;
        SecP224R1Field.subtract(r23, r33, r23);
        SecP224R1FieldElement secP224R1FieldElement8 = new SecP224R1FieldElement(r33);
        SecP224R1Field.subtract(r92, secP224R1FieldElement7.f11749x, secP224R1FieldElement8.f11749x);
        SecP224R1Field.multiplyAddToExt(secP224R1FieldElement8.f11749x, r82, r72);
        SecP224R1Field.reduce(r72, secP224R1FieldElement8.f11749x);
        SecP224R1FieldElement secP224R1FieldElement9 = new SecP224R1FieldElement(r13);
        if (!zIsOne) {
            int[] r43 = secP224R1FieldElement9.f11749x;
            SecP224R1Field.multiply(r43, secP224R1FieldElement5.f11749x, r43);
        }
        if (!zIsOne2) {
            int[] r44 = secP224R1FieldElement9.f11749x;
            SecP224R1Field.multiply(r44, secP224R1FieldElement6.f11749x, r44);
        }
        return new SecP224R1Point(curve, secP224R1FieldElement7, secP224R1FieldElement8, new ECFieldElement[]{secP224R1FieldElement9});
    }

    @Override // org.bouncycastle.math.ec.ECPoint
    public ECPoint detach() {
        return new SecP224R1Point(null, getAffineXCoord(), getAffineYCoord());
    }

    @Override // org.bouncycastle.math.ec.ECPoint
    public ECPoint negate() {
        return isInfinity() ? this : new SecP224R1Point(this.curve, this.f11727x, this.f11728y.negate(), this.zs);
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
        SecP224R1FieldElement secP224R1FieldElement = (SecP224R1FieldElement) this.f11728y;
        if (secP224R1FieldElement.isZero()) {
            return curve.getInfinity();
        }
        SecP224R1FieldElement secP224R1FieldElement2 = (SecP224R1FieldElement) this.f11727x;
        SecP224R1FieldElement secP224R1FieldElement3 = (SecP224R1FieldElement) this.zs[0];
        int[] r52 = Nat224.create();
        int[] r6 = Nat224.create();
        int[] r72 = Nat224.create();
        SecP224R1Field.square(secP224R1FieldElement.f11749x, r72);
        int[] r82 = Nat224.create();
        SecP224R1Field.square(r72, r82);
        boolean zIsOne = secP224R1FieldElement3.isOne();
        int[] r10 = secP224R1FieldElement3.f11749x;
        if (!zIsOne) {
            SecP224R1Field.square(r10, r6);
            r10 = r6;
        }
        SecP224R1Field.subtract(secP224R1FieldElement2.f11749x, r10, r52);
        SecP224R1Field.add(secP224R1FieldElement2.f11749x, r10, r6);
        SecP224R1Field.multiply(r6, r52, r6);
        SecP224R1Field.reduce32(Nat224.addBothTo(r6, r6, r6), r6);
        SecP224R1Field.multiply(r72, secP224R1FieldElement2.f11749x, r72);
        SecP224R1Field.reduce32(Nat.shiftUpBits(7, r72, 2, 0), r72);
        SecP224R1Field.reduce32(Nat.shiftUpBits(7, r82, 3, 0, r52), r52);
        SecP224R1FieldElement secP224R1FieldElement4 = new SecP224R1FieldElement(r82);
        SecP224R1Field.square(r6, secP224R1FieldElement4.f11749x);
        int[] r83 = secP224R1FieldElement4.f11749x;
        SecP224R1Field.subtract(r83, r72, r83);
        int[] r84 = secP224R1FieldElement4.f11749x;
        SecP224R1Field.subtract(r84, r72, r84);
        SecP224R1FieldElement secP224R1FieldElement5 = new SecP224R1FieldElement(r72);
        SecP224R1Field.subtract(r72, secP224R1FieldElement4.f11749x, secP224R1FieldElement5.f11749x);
        int[] r73 = secP224R1FieldElement5.f11749x;
        SecP224R1Field.multiply(r73, r6, r73);
        int[] r74 = secP224R1FieldElement5.f11749x;
        SecP224R1Field.subtract(r74, r52, r74);
        SecP224R1FieldElement secP224R1FieldElement6 = new SecP224R1FieldElement(r6);
        SecP224R1Field.twice(secP224R1FieldElement.f11749x, secP224R1FieldElement6.f11749x);
        if (!zIsOne) {
            int[] r12 = secP224R1FieldElement6.f11749x;
            SecP224R1Field.multiply(r12, secP224R1FieldElement3.f11749x, r12);
        }
        return new SecP224R1Point(curve, secP224R1FieldElement4, secP224R1FieldElement5, new ECFieldElement[]{secP224R1FieldElement6});
    }

    @Override // org.bouncycastle.math.ec.ECPoint
    public ECPoint twicePlus(ECPoint eCPoint) {
        return this == eCPoint ? threeTimes() : isInfinity() ? eCPoint : eCPoint.isInfinity() ? twice() : this.f11728y.isZero() ? eCPoint : twice().add(eCPoint);
    }
}
