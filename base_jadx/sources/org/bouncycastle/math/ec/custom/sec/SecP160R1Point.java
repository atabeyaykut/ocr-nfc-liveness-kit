package org.bouncycastle.math.ec.custom.sec;

import org.bouncycastle.math.ec.ECCurve;
import org.bouncycastle.math.ec.ECFieldElement;
import org.bouncycastle.math.ec.ECPoint;
import org.bouncycastle.math.raw.Nat;
import org.bouncycastle.math.raw.Nat160;

/* loaded from: classes2.dex */
public class SecP160R1Point extends ECPoint.AbstractFp {
    public SecP160R1Point(ECCurve eCCurve, ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2) {
        super(eCCurve, eCFieldElement, eCFieldElement2);
    }

    public SecP160R1Point(ECCurve eCCurve, ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, ECFieldElement[] eCFieldElementArr) {
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
        SecP160R1FieldElement secP160R1FieldElement = (SecP160R1FieldElement) this.f11727x;
        SecP160R1FieldElement secP160R1FieldElement2 = (SecP160R1FieldElement) this.f11728y;
        SecP160R1FieldElement secP160R1FieldElement3 = (SecP160R1FieldElement) eCPoint.getXCoord();
        SecP160R1FieldElement secP160R1FieldElement4 = (SecP160R1FieldElement) eCPoint.getYCoord();
        SecP160R1FieldElement secP160R1FieldElement5 = (SecP160R1FieldElement) this.zs[0];
        SecP160R1FieldElement secP160R1FieldElement6 = (SecP160R1FieldElement) eCPoint.getZCoord(0);
        int[] r72 = Nat160.createExt();
        int[] r82 = Nat160.create();
        int[] r92 = Nat160.create();
        int[] r10 = Nat160.create();
        boolean zIsOne = secP160R1FieldElement5.isOne();
        if (zIsOne) {
            r32 = secP160R1FieldElement3.f11739x;
            r42 = secP160R1FieldElement4.f11739x;
        } else {
            SecP160R1Field.square(secP160R1FieldElement5.f11739x, r92);
            SecP160R1Field.multiply(r92, secP160R1FieldElement3.f11739x, r82);
            SecP160R1Field.multiply(r92, secP160R1FieldElement5.f11739x, r92);
            SecP160R1Field.multiply(r92, secP160R1FieldElement4.f11739x, r92);
            r32 = r82;
            r42 = r92;
        }
        boolean zIsOne2 = secP160R1FieldElement6.isOne();
        if (zIsOne2) {
            r12 = secP160R1FieldElement.f11739x;
            r22 = secP160R1FieldElement2.f11739x;
        } else {
            SecP160R1Field.square(secP160R1FieldElement6.f11739x, r10);
            SecP160R1Field.multiply(r10, secP160R1FieldElement.f11739x, r72);
            SecP160R1Field.multiply(r10, secP160R1FieldElement6.f11739x, r10);
            SecP160R1Field.multiply(r10, secP160R1FieldElement2.f11739x, r10);
            r12 = r72;
            r22 = r10;
        }
        int[] r13 = Nat160.create();
        SecP160R1Field.subtract(r12, r32, r13);
        SecP160R1Field.subtract(r22, r42, r82);
        if (Nat160.isZero(r13)) {
            return Nat160.isZero(r82) ? twice() : curve.getInfinity();
        }
        SecP160R1Field.square(r13, r92);
        int[] r33 = Nat160.create();
        SecP160R1Field.multiply(r92, r13, r33);
        SecP160R1Field.multiply(r92, r12, r92);
        SecP160R1Field.negate(r33, r33);
        Nat160.mul(r22, r33, r72);
        SecP160R1Field.reduce32(Nat160.addBothTo(r92, r92, r33), r33);
        SecP160R1FieldElement secP160R1FieldElement7 = new SecP160R1FieldElement(r10);
        SecP160R1Field.square(r82, secP160R1FieldElement7.f11739x);
        int[] r23 = secP160R1FieldElement7.f11739x;
        SecP160R1Field.subtract(r23, r33, r23);
        SecP160R1FieldElement secP160R1FieldElement8 = new SecP160R1FieldElement(r33);
        SecP160R1Field.subtract(r92, secP160R1FieldElement7.f11739x, secP160R1FieldElement8.f11739x);
        SecP160R1Field.multiplyAddToExt(secP160R1FieldElement8.f11739x, r82, r72);
        SecP160R1Field.reduce(r72, secP160R1FieldElement8.f11739x);
        SecP160R1FieldElement secP160R1FieldElement9 = new SecP160R1FieldElement(r13);
        if (!zIsOne) {
            int[] r43 = secP160R1FieldElement9.f11739x;
            SecP160R1Field.multiply(r43, secP160R1FieldElement5.f11739x, r43);
        }
        if (!zIsOne2) {
            int[] r44 = secP160R1FieldElement9.f11739x;
            SecP160R1Field.multiply(r44, secP160R1FieldElement6.f11739x, r44);
        }
        return new SecP160R1Point(curve, secP160R1FieldElement7, secP160R1FieldElement8, new ECFieldElement[]{secP160R1FieldElement9});
    }

    @Override // org.bouncycastle.math.ec.ECPoint
    public ECPoint detach() {
        return new SecP160R1Point(null, getAffineXCoord(), getAffineYCoord());
    }

    @Override // org.bouncycastle.math.ec.ECPoint
    public ECPoint negate() {
        return isInfinity() ? this : new SecP160R1Point(this.curve, this.f11727x, this.f11728y.negate(), this.zs);
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
        SecP160R1FieldElement secP160R1FieldElement = (SecP160R1FieldElement) this.f11728y;
        if (secP160R1FieldElement.isZero()) {
            return curve.getInfinity();
        }
        SecP160R1FieldElement secP160R1FieldElement2 = (SecP160R1FieldElement) this.f11727x;
        SecP160R1FieldElement secP160R1FieldElement3 = (SecP160R1FieldElement) this.zs[0];
        int[] r52 = Nat160.create();
        int[] r6 = Nat160.create();
        int[] r72 = Nat160.create();
        SecP160R1Field.square(secP160R1FieldElement.f11739x, r72);
        int[] r82 = Nat160.create();
        SecP160R1Field.square(r72, r82);
        boolean zIsOne = secP160R1FieldElement3.isOne();
        int[] r10 = secP160R1FieldElement3.f11739x;
        if (!zIsOne) {
            SecP160R1Field.square(r10, r6);
            r10 = r6;
        }
        SecP160R1Field.subtract(secP160R1FieldElement2.f11739x, r10, r52);
        SecP160R1Field.add(secP160R1FieldElement2.f11739x, r10, r6);
        SecP160R1Field.multiply(r6, r52, r6);
        SecP160R1Field.reduce32(Nat160.addBothTo(r6, r6, r6), r6);
        SecP160R1Field.multiply(r72, secP160R1FieldElement2.f11739x, r72);
        SecP160R1Field.reduce32(Nat.shiftUpBits(5, r72, 2, 0), r72);
        SecP160R1Field.reduce32(Nat.shiftUpBits(5, r82, 3, 0, r52), r52);
        SecP160R1FieldElement secP160R1FieldElement4 = new SecP160R1FieldElement(r82);
        SecP160R1Field.square(r6, secP160R1FieldElement4.f11739x);
        int[] r83 = secP160R1FieldElement4.f11739x;
        SecP160R1Field.subtract(r83, r72, r83);
        int[] r84 = secP160R1FieldElement4.f11739x;
        SecP160R1Field.subtract(r84, r72, r84);
        SecP160R1FieldElement secP160R1FieldElement5 = new SecP160R1FieldElement(r72);
        SecP160R1Field.subtract(r72, secP160R1FieldElement4.f11739x, secP160R1FieldElement5.f11739x);
        int[] r73 = secP160R1FieldElement5.f11739x;
        SecP160R1Field.multiply(r73, r6, r73);
        int[] r74 = secP160R1FieldElement5.f11739x;
        SecP160R1Field.subtract(r74, r52, r74);
        SecP160R1FieldElement secP160R1FieldElement6 = new SecP160R1FieldElement(r6);
        SecP160R1Field.twice(secP160R1FieldElement.f11739x, secP160R1FieldElement6.f11739x);
        if (!zIsOne) {
            int[] r12 = secP160R1FieldElement6.f11739x;
            SecP160R1Field.multiply(r12, secP160R1FieldElement3.f11739x, r12);
        }
        return new SecP160R1Point(curve, secP160R1FieldElement4, secP160R1FieldElement5, new ECFieldElement[]{secP160R1FieldElement6});
    }

    @Override // org.bouncycastle.math.ec.ECPoint
    public ECPoint twicePlus(ECPoint eCPoint) {
        return this == eCPoint ? threeTimes() : isInfinity() ? eCPoint : eCPoint.isInfinity() ? twice() : this.f11728y.isZero() ? eCPoint : twice().add(eCPoint);
    }
}
