package org.bouncycastle.math.ec.custom.sec;

import org.bouncycastle.math.ec.ECCurve;
import org.bouncycastle.math.ec.ECFieldElement;
import org.bouncycastle.math.ec.ECPoint;
import org.bouncycastle.math.raw.Nat;
import org.bouncycastle.math.raw.Nat192;

/* loaded from: classes2.dex */
public class SecP192R1Point extends ECPoint.AbstractFp {
    public SecP192R1Point(ECCurve eCCurve, ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2) {
        super(eCCurve, eCFieldElement, eCFieldElement2);
    }

    public SecP192R1Point(ECCurve eCCurve, ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, ECFieldElement[] eCFieldElementArr) {
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
        SecP192R1FieldElement secP192R1FieldElement = (SecP192R1FieldElement) this.f11727x;
        SecP192R1FieldElement secP192R1FieldElement2 = (SecP192R1FieldElement) this.f11728y;
        SecP192R1FieldElement secP192R1FieldElement3 = (SecP192R1FieldElement) eCPoint.getXCoord();
        SecP192R1FieldElement secP192R1FieldElement4 = (SecP192R1FieldElement) eCPoint.getYCoord();
        SecP192R1FieldElement secP192R1FieldElement5 = (SecP192R1FieldElement) this.zs[0];
        SecP192R1FieldElement secP192R1FieldElement6 = (SecP192R1FieldElement) eCPoint.getZCoord(0);
        int[] r72 = Nat192.createExt();
        int[] r82 = Nat192.create();
        int[] r92 = Nat192.create();
        int[] r10 = Nat192.create();
        boolean zIsOne = secP192R1FieldElement5.isOne();
        if (zIsOne) {
            r32 = secP192R1FieldElement3.f11745x;
            r42 = secP192R1FieldElement4.f11745x;
        } else {
            SecP192R1Field.square(secP192R1FieldElement5.f11745x, r92);
            SecP192R1Field.multiply(r92, secP192R1FieldElement3.f11745x, r82);
            SecP192R1Field.multiply(r92, secP192R1FieldElement5.f11745x, r92);
            SecP192R1Field.multiply(r92, secP192R1FieldElement4.f11745x, r92);
            r32 = r82;
            r42 = r92;
        }
        boolean zIsOne2 = secP192R1FieldElement6.isOne();
        if (zIsOne2) {
            r12 = secP192R1FieldElement.f11745x;
            r22 = secP192R1FieldElement2.f11745x;
        } else {
            SecP192R1Field.square(secP192R1FieldElement6.f11745x, r10);
            SecP192R1Field.multiply(r10, secP192R1FieldElement.f11745x, r72);
            SecP192R1Field.multiply(r10, secP192R1FieldElement6.f11745x, r10);
            SecP192R1Field.multiply(r10, secP192R1FieldElement2.f11745x, r10);
            r12 = r72;
            r22 = r10;
        }
        int[] r13 = Nat192.create();
        SecP192R1Field.subtract(r12, r32, r13);
        SecP192R1Field.subtract(r22, r42, r82);
        if (Nat192.isZero(r13)) {
            return Nat192.isZero(r82) ? twice() : curve.getInfinity();
        }
        SecP192R1Field.square(r13, r92);
        int[] r33 = Nat192.create();
        SecP192R1Field.multiply(r92, r13, r33);
        SecP192R1Field.multiply(r92, r12, r92);
        SecP192R1Field.negate(r33, r33);
        Nat192.mul(r22, r33, r72);
        SecP192R1Field.reduce32(Nat192.addBothTo(r92, r92, r33), r33);
        SecP192R1FieldElement secP192R1FieldElement7 = new SecP192R1FieldElement(r10);
        SecP192R1Field.square(r82, secP192R1FieldElement7.f11745x);
        int[] r23 = secP192R1FieldElement7.f11745x;
        SecP192R1Field.subtract(r23, r33, r23);
        SecP192R1FieldElement secP192R1FieldElement8 = new SecP192R1FieldElement(r33);
        SecP192R1Field.subtract(r92, secP192R1FieldElement7.f11745x, secP192R1FieldElement8.f11745x);
        SecP192R1Field.multiplyAddToExt(secP192R1FieldElement8.f11745x, r82, r72);
        SecP192R1Field.reduce(r72, secP192R1FieldElement8.f11745x);
        SecP192R1FieldElement secP192R1FieldElement9 = new SecP192R1FieldElement(r13);
        if (!zIsOne) {
            int[] r43 = secP192R1FieldElement9.f11745x;
            SecP192R1Field.multiply(r43, secP192R1FieldElement5.f11745x, r43);
        }
        if (!zIsOne2) {
            int[] r44 = secP192R1FieldElement9.f11745x;
            SecP192R1Field.multiply(r44, secP192R1FieldElement6.f11745x, r44);
        }
        return new SecP192R1Point(curve, secP192R1FieldElement7, secP192R1FieldElement8, new ECFieldElement[]{secP192R1FieldElement9});
    }

    @Override // org.bouncycastle.math.ec.ECPoint
    public ECPoint detach() {
        return new SecP192R1Point(null, getAffineXCoord(), getAffineYCoord());
    }

    @Override // org.bouncycastle.math.ec.ECPoint
    public ECPoint negate() {
        return isInfinity() ? this : new SecP192R1Point(this.curve, this.f11727x, this.f11728y.negate(), this.zs);
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
        SecP192R1FieldElement secP192R1FieldElement = (SecP192R1FieldElement) this.f11728y;
        if (secP192R1FieldElement.isZero()) {
            return curve.getInfinity();
        }
        SecP192R1FieldElement secP192R1FieldElement2 = (SecP192R1FieldElement) this.f11727x;
        SecP192R1FieldElement secP192R1FieldElement3 = (SecP192R1FieldElement) this.zs[0];
        int[] r52 = Nat192.create();
        int[] r6 = Nat192.create();
        int[] r72 = Nat192.create();
        SecP192R1Field.square(secP192R1FieldElement.f11745x, r72);
        int[] r82 = Nat192.create();
        SecP192R1Field.square(r72, r82);
        boolean zIsOne = secP192R1FieldElement3.isOne();
        int[] r10 = secP192R1FieldElement3.f11745x;
        if (!zIsOne) {
            SecP192R1Field.square(r10, r6);
            r10 = r6;
        }
        SecP192R1Field.subtract(secP192R1FieldElement2.f11745x, r10, r52);
        SecP192R1Field.add(secP192R1FieldElement2.f11745x, r10, r6);
        SecP192R1Field.multiply(r6, r52, r6);
        SecP192R1Field.reduce32(Nat192.addBothTo(r6, r6, r6), r6);
        SecP192R1Field.multiply(r72, secP192R1FieldElement2.f11745x, r72);
        SecP192R1Field.reduce32(Nat.shiftUpBits(6, r72, 2, 0), r72);
        SecP192R1Field.reduce32(Nat.shiftUpBits(6, r82, 3, 0, r52), r52);
        SecP192R1FieldElement secP192R1FieldElement4 = new SecP192R1FieldElement(r82);
        SecP192R1Field.square(r6, secP192R1FieldElement4.f11745x);
        int[] r83 = secP192R1FieldElement4.f11745x;
        SecP192R1Field.subtract(r83, r72, r83);
        int[] r84 = secP192R1FieldElement4.f11745x;
        SecP192R1Field.subtract(r84, r72, r84);
        SecP192R1FieldElement secP192R1FieldElement5 = new SecP192R1FieldElement(r72);
        SecP192R1Field.subtract(r72, secP192R1FieldElement4.f11745x, secP192R1FieldElement5.f11745x);
        int[] r73 = secP192R1FieldElement5.f11745x;
        SecP192R1Field.multiply(r73, r6, r73);
        int[] r74 = secP192R1FieldElement5.f11745x;
        SecP192R1Field.subtract(r74, r52, r74);
        SecP192R1FieldElement secP192R1FieldElement6 = new SecP192R1FieldElement(r6);
        SecP192R1Field.twice(secP192R1FieldElement.f11745x, secP192R1FieldElement6.f11745x);
        if (!zIsOne) {
            int[] r12 = secP192R1FieldElement6.f11745x;
            SecP192R1Field.multiply(r12, secP192R1FieldElement3.f11745x, r12);
        }
        return new SecP192R1Point(curve, secP192R1FieldElement4, secP192R1FieldElement5, new ECFieldElement[]{secP192R1FieldElement6});
    }

    @Override // org.bouncycastle.math.ec.ECPoint
    public ECPoint twicePlus(ECPoint eCPoint) {
        return this == eCPoint ? threeTimes() : isInfinity() ? eCPoint : eCPoint.isInfinity() ? twice() : this.f11728y.isZero() ? eCPoint : twice().add(eCPoint);
    }
}
