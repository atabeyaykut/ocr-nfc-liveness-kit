package org.bouncycastle.math.ec.custom.sec;

import org.bouncycastle.math.ec.ECCurve;
import org.bouncycastle.math.ec.ECFieldElement;
import org.bouncycastle.math.ec.ECPoint;
import org.bouncycastle.math.raw.Nat;
import org.bouncycastle.math.raw.Nat160;

/* loaded from: classes2.dex */
public class SecP160R2Point extends ECPoint.AbstractFp {
    public SecP160R2Point(ECCurve eCCurve, ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2) {
        super(eCCurve, eCFieldElement, eCFieldElement2);
    }

    public SecP160R2Point(ECCurve eCCurve, ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, ECFieldElement[] eCFieldElementArr) {
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
        SecP160R2FieldElement secP160R2FieldElement = (SecP160R2FieldElement) this.f11727x;
        SecP160R2FieldElement secP160R2FieldElement2 = (SecP160R2FieldElement) this.f11728y;
        SecP160R2FieldElement secP160R2FieldElement3 = (SecP160R2FieldElement) eCPoint.getXCoord();
        SecP160R2FieldElement secP160R2FieldElement4 = (SecP160R2FieldElement) eCPoint.getYCoord();
        SecP160R2FieldElement secP160R2FieldElement5 = (SecP160R2FieldElement) this.zs[0];
        SecP160R2FieldElement secP160R2FieldElement6 = (SecP160R2FieldElement) eCPoint.getZCoord(0);
        int[] r72 = Nat160.createExt();
        int[] r82 = Nat160.create();
        int[] r92 = Nat160.create();
        int[] r10 = Nat160.create();
        boolean zIsOne = secP160R2FieldElement5.isOne();
        if (zIsOne) {
            r32 = secP160R2FieldElement3.f11741x;
            r42 = secP160R2FieldElement4.f11741x;
        } else {
            SecP160R2Field.square(secP160R2FieldElement5.f11741x, r92);
            SecP160R2Field.multiply(r92, secP160R2FieldElement3.f11741x, r82);
            SecP160R2Field.multiply(r92, secP160R2FieldElement5.f11741x, r92);
            SecP160R2Field.multiply(r92, secP160R2FieldElement4.f11741x, r92);
            r32 = r82;
            r42 = r92;
        }
        boolean zIsOne2 = secP160R2FieldElement6.isOne();
        if (zIsOne2) {
            r12 = secP160R2FieldElement.f11741x;
            r22 = secP160R2FieldElement2.f11741x;
        } else {
            SecP160R2Field.square(secP160R2FieldElement6.f11741x, r10);
            SecP160R2Field.multiply(r10, secP160R2FieldElement.f11741x, r72);
            SecP160R2Field.multiply(r10, secP160R2FieldElement6.f11741x, r10);
            SecP160R2Field.multiply(r10, secP160R2FieldElement2.f11741x, r10);
            r12 = r72;
            r22 = r10;
        }
        int[] r13 = Nat160.create();
        SecP160R2Field.subtract(r12, r32, r13);
        SecP160R2Field.subtract(r22, r42, r82);
        if (Nat160.isZero(r13)) {
            return Nat160.isZero(r82) ? twice() : curve.getInfinity();
        }
        SecP160R2Field.square(r13, r92);
        int[] r33 = Nat160.create();
        SecP160R2Field.multiply(r92, r13, r33);
        SecP160R2Field.multiply(r92, r12, r92);
        SecP160R2Field.negate(r33, r33);
        Nat160.mul(r22, r33, r72);
        SecP160R2Field.reduce32(Nat160.addBothTo(r92, r92, r33), r33);
        SecP160R2FieldElement secP160R2FieldElement7 = new SecP160R2FieldElement(r10);
        SecP160R2Field.square(r82, secP160R2FieldElement7.f11741x);
        int[] r23 = secP160R2FieldElement7.f11741x;
        SecP160R2Field.subtract(r23, r33, r23);
        SecP160R2FieldElement secP160R2FieldElement8 = new SecP160R2FieldElement(r33);
        SecP160R2Field.subtract(r92, secP160R2FieldElement7.f11741x, secP160R2FieldElement8.f11741x);
        SecP160R2Field.multiplyAddToExt(secP160R2FieldElement8.f11741x, r82, r72);
        SecP160R2Field.reduce(r72, secP160R2FieldElement8.f11741x);
        SecP160R2FieldElement secP160R2FieldElement9 = new SecP160R2FieldElement(r13);
        if (!zIsOne) {
            int[] r43 = secP160R2FieldElement9.f11741x;
            SecP160R2Field.multiply(r43, secP160R2FieldElement5.f11741x, r43);
        }
        if (!zIsOne2) {
            int[] r44 = secP160R2FieldElement9.f11741x;
            SecP160R2Field.multiply(r44, secP160R2FieldElement6.f11741x, r44);
        }
        return new SecP160R2Point(curve, secP160R2FieldElement7, secP160R2FieldElement8, new ECFieldElement[]{secP160R2FieldElement9});
    }

    @Override // org.bouncycastle.math.ec.ECPoint
    public ECPoint detach() {
        return new SecP160R2Point(null, getAffineXCoord(), getAffineYCoord());
    }

    @Override // org.bouncycastle.math.ec.ECPoint
    public ECPoint negate() {
        return isInfinity() ? this : new SecP160R2Point(this.curve, this.f11727x, this.f11728y.negate(), this.zs);
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
        SecP160R2FieldElement secP160R2FieldElement = (SecP160R2FieldElement) this.f11728y;
        if (secP160R2FieldElement.isZero()) {
            return curve.getInfinity();
        }
        SecP160R2FieldElement secP160R2FieldElement2 = (SecP160R2FieldElement) this.f11727x;
        SecP160R2FieldElement secP160R2FieldElement3 = (SecP160R2FieldElement) this.zs[0];
        int[] r52 = Nat160.create();
        int[] r6 = Nat160.create();
        int[] r72 = Nat160.create();
        SecP160R2Field.square(secP160R2FieldElement.f11741x, r72);
        int[] r82 = Nat160.create();
        SecP160R2Field.square(r72, r82);
        boolean zIsOne = secP160R2FieldElement3.isOne();
        int[] r10 = secP160R2FieldElement3.f11741x;
        if (!zIsOne) {
            SecP160R2Field.square(r10, r6);
            r10 = r6;
        }
        SecP160R2Field.subtract(secP160R2FieldElement2.f11741x, r10, r52);
        SecP160R2Field.add(secP160R2FieldElement2.f11741x, r10, r6);
        SecP160R2Field.multiply(r6, r52, r6);
        SecP160R2Field.reduce32(Nat160.addBothTo(r6, r6, r6), r6);
        SecP160R2Field.multiply(r72, secP160R2FieldElement2.f11741x, r72);
        SecP160R2Field.reduce32(Nat.shiftUpBits(5, r72, 2, 0), r72);
        SecP160R2Field.reduce32(Nat.shiftUpBits(5, r82, 3, 0, r52), r52);
        SecP160R2FieldElement secP160R2FieldElement4 = new SecP160R2FieldElement(r82);
        SecP160R2Field.square(r6, secP160R2FieldElement4.f11741x);
        int[] r83 = secP160R2FieldElement4.f11741x;
        SecP160R2Field.subtract(r83, r72, r83);
        int[] r84 = secP160R2FieldElement4.f11741x;
        SecP160R2Field.subtract(r84, r72, r84);
        SecP160R2FieldElement secP160R2FieldElement5 = new SecP160R2FieldElement(r72);
        SecP160R2Field.subtract(r72, secP160R2FieldElement4.f11741x, secP160R2FieldElement5.f11741x);
        int[] r73 = secP160R2FieldElement5.f11741x;
        SecP160R2Field.multiply(r73, r6, r73);
        int[] r74 = secP160R2FieldElement5.f11741x;
        SecP160R2Field.subtract(r74, r52, r74);
        SecP160R2FieldElement secP160R2FieldElement6 = new SecP160R2FieldElement(r6);
        SecP160R2Field.twice(secP160R2FieldElement.f11741x, secP160R2FieldElement6.f11741x);
        if (!zIsOne) {
            int[] r12 = secP160R2FieldElement6.f11741x;
            SecP160R2Field.multiply(r12, secP160R2FieldElement3.f11741x, r12);
        }
        return new SecP160R2Point(curve, secP160R2FieldElement4, secP160R2FieldElement5, new ECFieldElement[]{secP160R2FieldElement6});
    }

    @Override // org.bouncycastle.math.ec.ECPoint
    public ECPoint twicePlus(ECPoint eCPoint) {
        return this == eCPoint ? threeTimes() : isInfinity() ? eCPoint : eCPoint.isInfinity() ? twice() : this.f11728y.isZero() ? eCPoint : twice().add(eCPoint);
    }
}
