package org.bouncycastle.math.ec.custom.sec;

import org.bouncycastle.math.ec.ECCurve;
import org.bouncycastle.math.ec.ECFieldElement;
import org.bouncycastle.math.ec.ECPoint;
import org.bouncycastle.math.raw.Nat;

/* loaded from: classes2.dex */
public class SecP521R1Point extends ECPoint.AbstractFp {
    public SecP521R1Point(ECCurve eCCurve, ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2) {
        super(eCCurve, eCFieldElement, eCFieldElement2);
    }

    public SecP521R1Point(ECCurve eCCurve, ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, ECFieldElement[] eCFieldElementArr) {
        super(eCCurve, eCFieldElement, eCFieldElement2, eCFieldElementArr);
    }

    @Override // org.bouncycastle.math.ec.ECPoint
    public ECPoint add(ECPoint eCPoint) {
        int[] r52;
        int[] r6;
        int[] r32;
        int[] r42;
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
        SecP521R1FieldElement secP521R1FieldElement = (SecP521R1FieldElement) this.f11727x;
        SecP521R1FieldElement secP521R1FieldElement2 = (SecP521R1FieldElement) this.f11728y;
        SecP521R1FieldElement secP521R1FieldElement3 = (SecP521R1FieldElement) eCPoint.getXCoord();
        SecP521R1FieldElement secP521R1FieldElement4 = (SecP521R1FieldElement) eCPoint.getYCoord();
        SecP521R1FieldElement secP521R1FieldElement5 = (SecP521R1FieldElement) this.zs[0];
        SecP521R1FieldElement secP521R1FieldElement6 = (SecP521R1FieldElement) eCPoint.getZCoord(0);
        int[] r92 = Nat.create(33);
        int r10 = 17;
        int[] r11 = Nat.create(17);
        int[] r12 = Nat.create(17);
        int[] r13 = Nat.create(17);
        int[] r14 = Nat.create(17);
        boolean zIsOne = secP521R1FieldElement5.isOne();
        if (zIsOne) {
            r52 = secP521R1FieldElement3.f11757x;
            r6 = secP521R1FieldElement4.f11757x;
        } else {
            SecP521R1Field.square(secP521R1FieldElement5.f11757x, r13, r92);
            SecP521R1Field.multiply(r13, secP521R1FieldElement3.f11757x, r12, r92);
            SecP521R1Field.multiply(r13, secP521R1FieldElement5.f11757x, r13, r92);
            SecP521R1Field.multiply(r13, secP521R1FieldElement4.f11757x, r13, r92);
            r52 = r12;
            r6 = r13;
        }
        boolean zIsOne2 = secP521R1FieldElement6.isOne();
        if (zIsOne2) {
            r32 = secP521R1FieldElement.f11757x;
            r42 = secP521R1FieldElement2.f11757x;
        } else {
            SecP521R1Field.square(secP521R1FieldElement6.f11757x, r14, r92);
            SecP521R1Field.multiply(r14, secP521R1FieldElement.f11757x, r11, r92);
            SecP521R1Field.multiply(r14, secP521R1FieldElement6.f11757x, r14, r92);
            SecP521R1Field.multiply(r14, secP521R1FieldElement2.f11757x, r14, r92);
            r32 = r11;
            r42 = r14;
            r10 = 17;
        }
        int[] r02 = Nat.create(r10);
        SecP521R1Field.subtract(r32, r52, r02);
        SecP521R1Field.subtract(r42, r6, r12);
        if (Nat.isZero(r10, r02)) {
            return Nat.isZero(r10, r12) ? twice() : curve.getInfinity();
        }
        SecP521R1Field.square(r02, r13, r92);
        int[] r53 = Nat.create(r10);
        SecP521R1Field.multiply(r13, r02, r53, r92);
        SecP521R1Field.multiply(r13, r32, r13, r92);
        SecP521R1Field.multiply(r42, r53, r11, r92);
        SecP521R1FieldElement secP521R1FieldElement7 = new SecP521R1FieldElement(r14);
        SecP521R1Field.square(r12, secP521R1FieldElement7.f11757x, r92);
        int[] r43 = secP521R1FieldElement7.f11757x;
        SecP521R1Field.add(r43, r53, r43);
        int[] r44 = secP521R1FieldElement7.f11757x;
        SecP521R1Field.subtract(r44, r13, r44);
        int[] r45 = secP521R1FieldElement7.f11757x;
        SecP521R1Field.subtract(r45, r13, r45);
        SecP521R1FieldElement secP521R1FieldElement8 = new SecP521R1FieldElement(r53);
        SecP521R1Field.subtract(r13, secP521R1FieldElement7.f11757x, secP521R1FieldElement8.f11757x);
        SecP521R1Field.multiply(secP521R1FieldElement8.f11757x, r12, r12, r92);
        SecP521R1Field.subtract(r12, r11, secP521R1FieldElement8.f11757x);
        SecP521R1FieldElement secP521R1FieldElement9 = new SecP521R1FieldElement(r02);
        if (!zIsOne) {
            int[] r03 = secP521R1FieldElement9.f11757x;
            SecP521R1Field.multiply(r03, secP521R1FieldElement5.f11757x, r03, r92);
        }
        if (!zIsOne2) {
            int[] r04 = secP521R1FieldElement9.f11757x;
            SecP521R1Field.multiply(r04, secP521R1FieldElement6.f11757x, r04, r92);
        }
        return new SecP521R1Point(curve, secP521R1FieldElement7, secP521R1FieldElement8, new ECFieldElement[]{secP521R1FieldElement9});
    }

    @Override // org.bouncycastle.math.ec.ECPoint
    public ECPoint detach() {
        return new SecP521R1Point(null, getAffineXCoord(), getAffineYCoord());
    }

    public ECFieldElement doubleProductFromSquares(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, ECFieldElement eCFieldElement3, ECFieldElement eCFieldElement4) {
        return eCFieldElement.add(eCFieldElement2).square().subtract(eCFieldElement3).subtract(eCFieldElement4);
    }

    public ECFieldElement eight(ECFieldElement eCFieldElement) {
        return four(two(eCFieldElement));
    }

    public ECFieldElement four(ECFieldElement eCFieldElement) {
        return two(two(eCFieldElement));
    }

    @Override // org.bouncycastle.math.ec.ECPoint
    public ECPoint negate() {
        return isInfinity() ? this : new SecP521R1Point(this.curve, this.f11727x, this.f11728y.negate(), this.zs);
    }

    public ECFieldElement three(ECFieldElement eCFieldElement) {
        return two(eCFieldElement).add(eCFieldElement);
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
        SecP521R1FieldElement secP521R1FieldElement = (SecP521R1FieldElement) this.f11728y;
        if (secP521R1FieldElement.isZero()) {
            return curve.getInfinity();
        }
        SecP521R1FieldElement secP521R1FieldElement2 = (SecP521R1FieldElement) this.f11727x;
        SecP521R1FieldElement secP521R1FieldElement3 = (SecP521R1FieldElement) this.zs[0];
        int[] r52 = Nat.create(33);
        int[] r72 = Nat.create(17);
        int[] r82 = Nat.create(17);
        int[] r92 = Nat.create(17);
        SecP521R1Field.square(secP521R1FieldElement.f11757x, r92, r52);
        int[] r10 = Nat.create(17);
        SecP521R1Field.square(r92, r10, r52);
        boolean zIsOne = secP521R1FieldElement3.isOne();
        int[] r12 = secP521R1FieldElement3.f11757x;
        if (!zIsOne) {
            SecP521R1Field.square(r12, r82, r52);
            r12 = r82;
        }
        SecP521R1Field.subtract(secP521R1FieldElement2.f11757x, r12, r72);
        SecP521R1Field.add(secP521R1FieldElement2.f11757x, r12, r82);
        SecP521R1Field.multiply(r82, r72, r82, r52);
        Nat.addBothTo(17, r82, r82, r82);
        SecP521R1Field.reduce23(r82);
        SecP521R1Field.multiply(r92, secP521R1FieldElement2.f11757x, r92, r52);
        Nat.shiftUpBits(17, r92, 2, 0);
        SecP521R1Field.reduce23(r92);
        Nat.shiftUpBits(17, r10, 3, 0, r72);
        SecP521R1Field.reduce23(r72);
        SecP521R1FieldElement secP521R1FieldElement4 = new SecP521R1FieldElement(r10);
        SecP521R1Field.square(r82, secP521R1FieldElement4.f11757x, r52);
        int[] r6 = secP521R1FieldElement4.f11757x;
        SecP521R1Field.subtract(r6, r92, r6);
        int[] r62 = secP521R1FieldElement4.f11757x;
        SecP521R1Field.subtract(r62, r92, r62);
        SecP521R1FieldElement secP521R1FieldElement5 = new SecP521R1FieldElement(r92);
        SecP521R1Field.subtract(r92, secP521R1FieldElement4.f11757x, secP521R1FieldElement5.f11757x);
        int[] r93 = secP521R1FieldElement5.f11757x;
        SecP521R1Field.multiply(r93, r82, r93, r52);
        int[] r94 = secP521R1FieldElement5.f11757x;
        SecP521R1Field.subtract(r94, r72, r94);
        SecP521R1FieldElement secP521R1FieldElement6 = new SecP521R1FieldElement(r82);
        SecP521R1Field.twice(secP521R1FieldElement.f11757x, secP521R1FieldElement6.f11757x);
        if (!zIsOne) {
            int[] r13 = secP521R1FieldElement6.f11757x;
            SecP521R1Field.multiply(r13, secP521R1FieldElement3.f11757x, r13, r52);
        }
        return new SecP521R1Point(curve, secP521R1FieldElement4, secP521R1FieldElement5, new ECFieldElement[]{secP521R1FieldElement6});
    }

    @Override // org.bouncycastle.math.ec.ECPoint
    public ECPoint twicePlus(ECPoint eCPoint) {
        return this == eCPoint ? threeTimes() : isInfinity() ? eCPoint : eCPoint.isInfinity() ? twice() : this.f11728y.isZero() ? eCPoint : twice().add(eCPoint);
    }

    public ECFieldElement two(ECFieldElement eCFieldElement) {
        return eCFieldElement.add(eCFieldElement);
    }
}
