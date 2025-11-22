package org.bouncycastle.math.ec.custom.sec;

import org.bouncycastle.math.ec.ECCurve;
import org.bouncycastle.math.ec.ECFieldElement;
import org.bouncycastle.math.ec.ECPoint;
import org.bouncycastle.math.raw.Nat;
import org.bouncycastle.math.raw.Nat224;

/* loaded from: classes2.dex */
public class SecP224K1Point extends ECPoint.AbstractFp {
    public SecP224K1Point(ECCurve eCCurve, ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2) {
        super(eCCurve, eCFieldElement, eCFieldElement2);
    }

    public SecP224K1Point(ECCurve eCCurve, ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, ECFieldElement[] eCFieldElementArr) {
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
        SecP224K1FieldElement secP224K1FieldElement = (SecP224K1FieldElement) this.f11727x;
        SecP224K1FieldElement secP224K1FieldElement2 = (SecP224K1FieldElement) this.f11728y;
        SecP224K1FieldElement secP224K1FieldElement3 = (SecP224K1FieldElement) eCPoint.getXCoord();
        SecP224K1FieldElement secP224K1FieldElement4 = (SecP224K1FieldElement) eCPoint.getYCoord();
        SecP224K1FieldElement secP224K1FieldElement5 = (SecP224K1FieldElement) this.zs[0];
        SecP224K1FieldElement secP224K1FieldElement6 = (SecP224K1FieldElement) eCPoint.getZCoord(0);
        int[] r72 = Nat224.createExt();
        int[] r82 = Nat224.create();
        int[] r92 = Nat224.create();
        int[] r10 = Nat224.create();
        boolean zIsOne = secP224K1FieldElement5.isOne();
        if (zIsOne) {
            r32 = secP224K1FieldElement3.f11747x;
            r42 = secP224K1FieldElement4.f11747x;
        } else {
            SecP224K1Field.square(secP224K1FieldElement5.f11747x, r92);
            SecP224K1Field.multiply(r92, secP224K1FieldElement3.f11747x, r82);
            SecP224K1Field.multiply(r92, secP224K1FieldElement5.f11747x, r92);
            SecP224K1Field.multiply(r92, secP224K1FieldElement4.f11747x, r92);
            r32 = r82;
            r42 = r92;
        }
        boolean zIsOne2 = secP224K1FieldElement6.isOne();
        if (zIsOne2) {
            r12 = secP224K1FieldElement.f11747x;
            r22 = secP224K1FieldElement2.f11747x;
        } else {
            SecP224K1Field.square(secP224K1FieldElement6.f11747x, r10);
            SecP224K1Field.multiply(r10, secP224K1FieldElement.f11747x, r72);
            SecP224K1Field.multiply(r10, secP224K1FieldElement6.f11747x, r10);
            SecP224K1Field.multiply(r10, secP224K1FieldElement2.f11747x, r10);
            r12 = r72;
            r22 = r10;
        }
        int[] r13 = Nat224.create();
        SecP224K1Field.subtract(r12, r32, r13);
        SecP224K1Field.subtract(r22, r42, r82);
        if (Nat224.isZero(r13)) {
            return Nat224.isZero(r82) ? twice() : curve.getInfinity();
        }
        SecP224K1Field.square(r13, r92);
        int[] r33 = Nat224.create();
        SecP224K1Field.multiply(r92, r13, r33);
        SecP224K1Field.multiply(r92, r12, r92);
        SecP224K1Field.negate(r33, r33);
        Nat224.mul(r22, r33, r72);
        SecP224K1Field.reduce32(Nat224.addBothTo(r92, r92, r33), r33);
        SecP224K1FieldElement secP224K1FieldElement7 = new SecP224K1FieldElement(r10);
        SecP224K1Field.square(r82, secP224K1FieldElement7.f11747x);
        int[] r23 = secP224K1FieldElement7.f11747x;
        SecP224K1Field.subtract(r23, r33, r23);
        SecP224K1FieldElement secP224K1FieldElement8 = new SecP224K1FieldElement(r33);
        SecP224K1Field.subtract(r92, secP224K1FieldElement7.f11747x, secP224K1FieldElement8.f11747x);
        SecP224K1Field.multiplyAddToExt(secP224K1FieldElement8.f11747x, r82, r72);
        SecP224K1Field.reduce(r72, secP224K1FieldElement8.f11747x);
        SecP224K1FieldElement secP224K1FieldElement9 = new SecP224K1FieldElement(r13);
        if (!zIsOne) {
            int[] r43 = secP224K1FieldElement9.f11747x;
            SecP224K1Field.multiply(r43, secP224K1FieldElement5.f11747x, r43);
        }
        if (!zIsOne2) {
            int[] r44 = secP224K1FieldElement9.f11747x;
            SecP224K1Field.multiply(r44, secP224K1FieldElement6.f11747x, r44);
        }
        return new SecP224K1Point(curve, secP224K1FieldElement7, secP224K1FieldElement8, new ECFieldElement[]{secP224K1FieldElement9});
    }

    @Override // org.bouncycastle.math.ec.ECPoint
    public ECPoint detach() {
        return new SecP224K1Point(null, getAffineXCoord(), getAffineYCoord());
    }

    @Override // org.bouncycastle.math.ec.ECPoint
    public ECPoint negate() {
        return isInfinity() ? this : new SecP224K1Point(this.curve, this.f11727x, this.f11728y.negate(), this.zs);
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
        SecP224K1FieldElement secP224K1FieldElement = (SecP224K1FieldElement) this.f11728y;
        if (secP224K1FieldElement.isZero()) {
            return curve.getInfinity();
        }
        SecP224K1FieldElement secP224K1FieldElement2 = (SecP224K1FieldElement) this.f11727x;
        SecP224K1FieldElement secP224K1FieldElement3 = (SecP224K1FieldElement) this.zs[0];
        int[] r52 = Nat224.create();
        SecP224K1Field.square(secP224K1FieldElement.f11747x, r52);
        int[] r6 = Nat224.create();
        SecP224K1Field.square(r52, r6);
        int[] r72 = Nat224.create();
        SecP224K1Field.square(secP224K1FieldElement2.f11747x, r72);
        SecP224K1Field.reduce32(Nat224.addBothTo(r72, r72, r72), r72);
        SecP224K1Field.multiply(r52, secP224K1FieldElement2.f11747x, r52);
        SecP224K1Field.reduce32(Nat.shiftUpBits(7, r52, 2, 0), r52);
        int[] r22 = Nat224.create();
        SecP224K1Field.reduce32(Nat.shiftUpBits(7, r6, 3, 0, r22), r22);
        SecP224K1FieldElement secP224K1FieldElement4 = new SecP224K1FieldElement(r6);
        SecP224K1Field.square(r72, secP224K1FieldElement4.f11747x);
        int[] r62 = secP224K1FieldElement4.f11747x;
        SecP224K1Field.subtract(r62, r52, r62);
        int[] r63 = secP224K1FieldElement4.f11747x;
        SecP224K1Field.subtract(r63, r52, r63);
        SecP224K1FieldElement secP224K1FieldElement5 = new SecP224K1FieldElement(r52);
        SecP224K1Field.subtract(r52, secP224K1FieldElement4.f11747x, secP224K1FieldElement5.f11747x);
        int[] r53 = secP224K1FieldElement5.f11747x;
        SecP224K1Field.multiply(r53, r72, r53);
        int[] r54 = secP224K1FieldElement5.f11747x;
        SecP224K1Field.subtract(r54, r22, r54);
        SecP224K1FieldElement secP224K1FieldElement6 = new SecP224K1FieldElement(r72);
        SecP224K1Field.twice(secP224K1FieldElement.f11747x, secP224K1FieldElement6.f11747x);
        if (!secP224K1FieldElement3.isOne()) {
            int[] r12 = secP224K1FieldElement6.f11747x;
            SecP224K1Field.multiply(r12, secP224K1FieldElement3.f11747x, r12);
        }
        return new SecP224K1Point(curve, secP224K1FieldElement4, secP224K1FieldElement5, new ECFieldElement[]{secP224K1FieldElement6});
    }

    @Override // org.bouncycastle.math.ec.ECPoint
    public ECPoint twicePlus(ECPoint eCPoint) {
        return this == eCPoint ? threeTimes() : isInfinity() ? eCPoint : eCPoint.isInfinity() ? twice() : this.f11728y.isZero() ? eCPoint : twice().add(eCPoint);
    }
}
