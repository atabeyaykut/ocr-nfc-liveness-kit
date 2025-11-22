package org.bouncycastle.math.ec.custom.sec;

import org.bouncycastle.math.ec.ECCurve;
import org.bouncycastle.math.ec.ECFieldElement;
import org.bouncycastle.math.ec.ECPoint;
import org.bouncycastle.math.raw.Nat;
import org.bouncycastle.math.raw.Nat256;

/* loaded from: classes2.dex */
public class SecP256R1Point extends ECPoint.AbstractFp {
    public SecP256R1Point(ECCurve eCCurve, ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2) {
        super(eCCurve, eCFieldElement, eCFieldElement2);
    }

    public SecP256R1Point(ECCurve eCCurve, ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, ECFieldElement[] eCFieldElementArr) {
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
        SecP256R1FieldElement secP256R1FieldElement = (SecP256R1FieldElement) this.f11727x;
        SecP256R1FieldElement secP256R1FieldElement2 = (SecP256R1FieldElement) this.f11728y;
        SecP256R1FieldElement secP256R1FieldElement3 = (SecP256R1FieldElement) eCPoint.getXCoord();
        SecP256R1FieldElement secP256R1FieldElement4 = (SecP256R1FieldElement) eCPoint.getYCoord();
        SecP256R1FieldElement secP256R1FieldElement5 = (SecP256R1FieldElement) this.zs[0];
        SecP256R1FieldElement secP256R1FieldElement6 = (SecP256R1FieldElement) eCPoint.getZCoord(0);
        int[] r92 = Nat256.createExt();
        int[] r10 = Nat256.createExt();
        int[] r11 = Nat256.create();
        int[] r12 = Nat256.create();
        int[] r13 = Nat256.create();
        boolean zIsOne = secP256R1FieldElement5.isOne();
        if (zIsOne) {
            r52 = secP256R1FieldElement3.f11753x;
            r6 = secP256R1FieldElement4.f11753x;
        } else {
            SecP256R1Field.square(secP256R1FieldElement5.f11753x, r12, r92);
            SecP256R1Field.multiply(r12, secP256R1FieldElement3.f11753x, r11, r92);
            SecP256R1Field.multiply(r12, secP256R1FieldElement5.f11753x, r12, r92);
            SecP256R1Field.multiply(r12, secP256R1FieldElement4.f11753x, r12, r92);
            r52 = r11;
            r6 = r12;
        }
        boolean zIsOne2 = secP256R1FieldElement6.isOne();
        if (zIsOne2) {
            r32 = secP256R1FieldElement.f11753x;
            r42 = secP256R1FieldElement2.f11753x;
        } else {
            SecP256R1Field.square(secP256R1FieldElement6.f11753x, r13, r92);
            SecP256R1Field.multiply(r13, secP256R1FieldElement.f11753x, r10, r92);
            SecP256R1Field.multiply(r13, secP256R1FieldElement6.f11753x, r13, r92);
            SecP256R1Field.multiply(r13, secP256R1FieldElement2.f11753x, r13, r92);
            r32 = r10;
            r42 = r13;
        }
        int[] r82 = Nat256.create();
        SecP256R1Field.subtract(r32, r52, r82);
        SecP256R1Field.subtract(r42, r6, r11);
        if (Nat256.isZero(r82)) {
            return Nat256.isZero(r11) ? twice() : curve.getInfinity();
        }
        SecP256R1Field.square(r82, r12, r92);
        int[] r53 = Nat256.create();
        SecP256R1Field.multiply(r12, r82, r53, r92);
        SecP256R1Field.multiply(r12, r32, r12, r92);
        SecP256R1Field.negate(r53, r53);
        Nat256.mul(r42, r53, r10);
        SecP256R1Field.reduce32(Nat256.addBothTo(r12, r12, r53), r53);
        SecP256R1FieldElement secP256R1FieldElement7 = new SecP256R1FieldElement(r13);
        SecP256R1Field.square(r11, secP256R1FieldElement7.f11753x, r92);
        int[] r43 = secP256R1FieldElement7.f11753x;
        SecP256R1Field.subtract(r43, r53, r43);
        SecP256R1FieldElement secP256R1FieldElement8 = new SecP256R1FieldElement(r53);
        SecP256R1Field.subtract(r12, secP256R1FieldElement7.f11753x, secP256R1FieldElement8.f11753x);
        SecP256R1Field.multiplyAddToExt(secP256R1FieldElement8.f11753x, r11, r10);
        SecP256R1Field.reduce(r10, secP256R1FieldElement8.f11753x);
        SecP256R1FieldElement secP256R1FieldElement9 = new SecP256R1FieldElement(r82);
        if (!zIsOne) {
            int[] r62 = secP256R1FieldElement9.f11753x;
            SecP256R1Field.multiply(r62, secP256R1FieldElement5.f11753x, r62, r92);
        }
        if (!zIsOne2) {
            int[] r63 = secP256R1FieldElement9.f11753x;
            SecP256R1Field.multiply(r63, secP256R1FieldElement6.f11753x, r63, r92);
        }
        return new SecP256R1Point(curve, secP256R1FieldElement7, secP256R1FieldElement8, new ECFieldElement[]{secP256R1FieldElement9});
    }

    @Override // org.bouncycastle.math.ec.ECPoint
    public ECPoint detach() {
        return new SecP256R1Point(null, getAffineXCoord(), getAffineYCoord());
    }

    @Override // org.bouncycastle.math.ec.ECPoint
    public ECPoint negate() {
        return isInfinity() ? this : new SecP256R1Point(this.curve, this.f11727x, this.f11728y.negate(), this.zs);
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
        SecP256R1FieldElement secP256R1FieldElement = (SecP256R1FieldElement) this.f11728y;
        if (secP256R1FieldElement.isZero()) {
            return curve.getInfinity();
        }
        SecP256R1FieldElement secP256R1FieldElement2 = (SecP256R1FieldElement) this.f11727x;
        SecP256R1FieldElement secP256R1FieldElement3 = (SecP256R1FieldElement) this.zs[0];
        int[] r52 = Nat256.createExt();
        int[] r6 = Nat256.create();
        int[] r72 = Nat256.create();
        int[] r82 = Nat256.create();
        SecP256R1Field.square(secP256R1FieldElement.f11753x, r82, r52);
        int[] r92 = Nat256.create();
        SecP256R1Field.square(r82, r92, r52);
        boolean zIsOne = secP256R1FieldElement3.isOne();
        int[] r11 = secP256R1FieldElement3.f11753x;
        if (!zIsOne) {
            SecP256R1Field.square(r11, r72, r52);
            r11 = r72;
        }
        SecP256R1Field.subtract(secP256R1FieldElement2.f11753x, r11, r6);
        SecP256R1Field.add(secP256R1FieldElement2.f11753x, r11, r72);
        SecP256R1Field.multiply(r72, r6, r72, r52);
        SecP256R1Field.reduce32(Nat256.addBothTo(r72, r72, r72), r72);
        SecP256R1Field.multiply(r82, secP256R1FieldElement2.f11753x, r82, r52);
        SecP256R1Field.reduce32(Nat.shiftUpBits(8, r82, 2, 0), r82);
        SecP256R1Field.reduce32(Nat.shiftUpBits(8, r92, 3, 0, r6), r6);
        SecP256R1FieldElement secP256R1FieldElement4 = new SecP256R1FieldElement(r92);
        SecP256R1Field.square(r72, secP256R1FieldElement4.f11753x, r52);
        int[] r93 = secP256R1FieldElement4.f11753x;
        SecP256R1Field.subtract(r93, r82, r93);
        int[] r94 = secP256R1FieldElement4.f11753x;
        SecP256R1Field.subtract(r94, r82, r94);
        SecP256R1FieldElement secP256R1FieldElement5 = new SecP256R1FieldElement(r82);
        SecP256R1Field.subtract(r82, secP256R1FieldElement4.f11753x, secP256R1FieldElement5.f11753x);
        int[] r83 = secP256R1FieldElement5.f11753x;
        SecP256R1Field.multiply(r83, r72, r83, r52);
        int[] r84 = secP256R1FieldElement5.f11753x;
        SecP256R1Field.subtract(r84, r6, r84);
        SecP256R1FieldElement secP256R1FieldElement6 = new SecP256R1FieldElement(r72);
        SecP256R1Field.twice(secP256R1FieldElement.f11753x, secP256R1FieldElement6.f11753x);
        if (!zIsOne) {
            int[] r12 = secP256R1FieldElement6.f11753x;
            SecP256R1Field.multiply(r12, secP256R1FieldElement3.f11753x, r12, r52);
        }
        return new SecP256R1Point(curve, secP256R1FieldElement4, secP256R1FieldElement5, new ECFieldElement[]{secP256R1FieldElement6});
    }

    @Override // org.bouncycastle.math.ec.ECPoint
    public ECPoint twicePlus(ECPoint eCPoint) {
        return this == eCPoint ? threeTimes() : isInfinity() ? eCPoint : eCPoint.isInfinity() ? twice() : this.f11728y.isZero() ? eCPoint : twice().add(eCPoint);
    }
}
