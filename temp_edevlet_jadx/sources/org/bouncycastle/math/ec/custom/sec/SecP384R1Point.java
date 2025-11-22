package org.bouncycastle.math.ec.custom.sec;

import org.bouncycastle.math.ec.ECCurve;
import org.bouncycastle.math.ec.ECFieldElement;
import org.bouncycastle.math.ec.ECPoint;
import org.bouncycastle.math.raw.Nat;
import org.bouncycastle.math.raw.Nat384;

/* loaded from: classes2.dex */
public class SecP384R1Point extends ECPoint.AbstractFp {
    public SecP384R1Point(ECCurve eCCurve, ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2) {
        super(eCCurve, eCFieldElement, eCFieldElement2);
    }

    public SecP384R1Point(ECCurve eCCurve, ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, ECFieldElement[] eCFieldElementArr) {
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
        SecP384R1FieldElement secP384R1FieldElement = (SecP384R1FieldElement) this.f11727x;
        SecP384R1FieldElement secP384R1FieldElement2 = (SecP384R1FieldElement) this.f11728y;
        SecP384R1FieldElement secP384R1FieldElement3 = (SecP384R1FieldElement) eCPoint.getXCoord();
        SecP384R1FieldElement secP384R1FieldElement4 = (SecP384R1FieldElement) eCPoint.getYCoord();
        SecP384R1FieldElement secP384R1FieldElement5 = (SecP384R1FieldElement) this.zs[0];
        SecP384R1FieldElement secP384R1FieldElement6 = (SecP384R1FieldElement) eCPoint.getZCoord(0);
        int[] r10 = Nat.create(24);
        int[] r11 = Nat.create(24);
        int[] r92 = Nat.create(24);
        int r12 = 12;
        int[] r13 = Nat.create(12);
        int[] r14 = Nat.create(12);
        boolean zIsOne = secP384R1FieldElement5.isOne();
        if (zIsOne) {
            r52 = secP384R1FieldElement3.f11755x;
            r6 = secP384R1FieldElement4.f11755x;
        } else {
            SecP384R1Field.square(secP384R1FieldElement5.f11755x, r13, r10);
            SecP384R1Field.multiply(r13, secP384R1FieldElement3.f11755x, r92, r10);
            SecP384R1Field.multiply(r13, secP384R1FieldElement5.f11755x, r13, r10);
            SecP384R1Field.multiply(r13, secP384R1FieldElement4.f11755x, r13, r10);
            r52 = r92;
            r6 = r13;
        }
        boolean zIsOne2 = secP384R1FieldElement6.isOne();
        if (zIsOne2) {
            r32 = secP384R1FieldElement.f11755x;
            r42 = secP384R1FieldElement2.f11755x;
        } else {
            SecP384R1Field.square(secP384R1FieldElement6.f11755x, r14, r10);
            SecP384R1Field.multiply(r14, secP384R1FieldElement.f11755x, r11, r10);
            SecP384R1Field.multiply(r14, secP384R1FieldElement6.f11755x, r14, r10);
            SecP384R1Field.multiply(r14, secP384R1FieldElement2.f11755x, r14, r10);
            r32 = r11;
            r42 = r14;
            r12 = 12;
        }
        int[] r02 = Nat.create(r12);
        SecP384R1Field.subtract(r32, r52, r02);
        int[] r53 = Nat.create(r12);
        SecP384R1Field.subtract(r42, r6, r53);
        if (Nat.isZero(r12, r02)) {
            return Nat.isZero(r12, r53) ? twice() : curve.getInfinity();
        }
        SecP384R1Field.square(r02, r13, r10);
        int[] r62 = Nat.create(r12);
        SecP384R1Field.multiply(r13, r02, r62, r10);
        SecP384R1Field.multiply(r13, r32, r13, r10);
        SecP384R1Field.negate(r62, r62);
        Nat384.mul(r42, r62, r11);
        SecP384R1Field.reduce32(Nat.addBothTo(r12, r13, r13, r62), r62);
        SecP384R1FieldElement secP384R1FieldElement7 = new SecP384R1FieldElement(r14);
        SecP384R1Field.square(r53, secP384R1FieldElement7.f11755x, r10);
        int[] r43 = secP384R1FieldElement7.f11755x;
        SecP384R1Field.subtract(r43, r62, r43);
        SecP384R1FieldElement secP384R1FieldElement8 = new SecP384R1FieldElement(r62);
        SecP384R1Field.subtract(r13, secP384R1FieldElement7.f11755x, secP384R1FieldElement8.f11755x);
        Nat384.mul(secP384R1FieldElement8.f11755x, r53, r92);
        SecP384R1Field.addExt(r11, r92, r11);
        SecP384R1Field.reduce(r11, secP384R1FieldElement8.f11755x);
        SecP384R1FieldElement secP384R1FieldElement9 = new SecP384R1FieldElement(r02);
        if (!zIsOne) {
            int[] r03 = secP384R1FieldElement9.f11755x;
            SecP384R1Field.multiply(r03, secP384R1FieldElement5.f11755x, r03, r10);
        }
        if (!zIsOne2) {
            int[] r04 = secP384R1FieldElement9.f11755x;
            SecP384R1Field.multiply(r04, secP384R1FieldElement6.f11755x, r04, r10);
        }
        return new SecP384R1Point(curve, secP384R1FieldElement7, secP384R1FieldElement8, new ECFieldElement[]{secP384R1FieldElement9});
    }

    @Override // org.bouncycastle.math.ec.ECPoint
    public ECPoint detach() {
        return new SecP384R1Point(null, getAffineXCoord(), getAffineYCoord());
    }

    @Override // org.bouncycastle.math.ec.ECPoint
    public ECPoint negate() {
        return isInfinity() ? this : new SecP384R1Point(this.curve, this.f11727x, this.f11728y.negate(), this.zs);
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
        SecP384R1FieldElement secP384R1FieldElement = (SecP384R1FieldElement) this.f11728y;
        if (secP384R1FieldElement.isZero()) {
            return curve.getInfinity();
        }
        SecP384R1FieldElement secP384R1FieldElement2 = (SecP384R1FieldElement) this.f11727x;
        SecP384R1FieldElement secP384R1FieldElement3 = (SecP384R1FieldElement) this.zs[0];
        int[] r52 = Nat.create(24);
        int[] r72 = Nat.create(12);
        int[] r82 = Nat.create(12);
        int[] r92 = Nat.create(12);
        SecP384R1Field.square(secP384R1FieldElement.f11755x, r92, r52);
        int[] r10 = Nat.create(12);
        SecP384R1Field.square(r92, r10, r52);
        boolean zIsOne = secP384R1FieldElement3.isOne();
        int[] r12 = secP384R1FieldElement3.f11755x;
        if (!zIsOne) {
            SecP384R1Field.square(r12, r82, r52);
            r12 = r82;
        }
        SecP384R1Field.subtract(secP384R1FieldElement2.f11755x, r12, r72);
        SecP384R1Field.add(secP384R1FieldElement2.f11755x, r12, r82);
        SecP384R1Field.multiply(r82, r72, r82, r52);
        SecP384R1Field.reduce32(Nat.addBothTo(12, r82, r82, r82), r82);
        SecP384R1Field.multiply(r92, secP384R1FieldElement2.f11755x, r92, r52);
        SecP384R1Field.reduce32(Nat.shiftUpBits(12, r92, 2, 0), r92);
        SecP384R1Field.reduce32(Nat.shiftUpBits(12, r10, 3, 0, r72), r72);
        SecP384R1FieldElement secP384R1FieldElement4 = new SecP384R1FieldElement(r10);
        SecP384R1Field.square(r82, secP384R1FieldElement4.f11755x, r52);
        int[] r6 = secP384R1FieldElement4.f11755x;
        SecP384R1Field.subtract(r6, r92, r6);
        int[] r62 = secP384R1FieldElement4.f11755x;
        SecP384R1Field.subtract(r62, r92, r62);
        SecP384R1FieldElement secP384R1FieldElement5 = new SecP384R1FieldElement(r92);
        SecP384R1Field.subtract(r92, secP384R1FieldElement4.f11755x, secP384R1FieldElement5.f11755x);
        int[] r93 = secP384R1FieldElement5.f11755x;
        SecP384R1Field.multiply(r93, r82, r93, r52);
        int[] r94 = secP384R1FieldElement5.f11755x;
        SecP384R1Field.subtract(r94, r72, r94);
        SecP384R1FieldElement secP384R1FieldElement6 = new SecP384R1FieldElement(r82);
        SecP384R1Field.twice(secP384R1FieldElement.f11755x, secP384R1FieldElement6.f11755x);
        if (!zIsOne) {
            int[] r13 = secP384R1FieldElement6.f11755x;
            SecP384R1Field.multiply(r13, secP384R1FieldElement3.f11755x, r13, r52);
        }
        return new SecP384R1Point(curve, secP384R1FieldElement4, secP384R1FieldElement5, new ECFieldElement[]{secP384R1FieldElement6});
    }

    @Override // org.bouncycastle.math.ec.ECPoint
    public ECPoint twicePlus(ECPoint eCPoint) {
        return this == eCPoint ? threeTimes() : isInfinity() ? eCPoint : eCPoint.isInfinity() ? twice() : this.f11728y.isZero() ? eCPoint : twice().add(eCPoint);
    }
}
