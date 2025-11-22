package org.bouncycastle.math.ec.custom.sec;

import org.bouncycastle.math.ec.ECCurve;
import org.bouncycastle.math.ec.ECFieldElement;
import org.bouncycastle.math.ec.ECPoint;
import org.bouncycastle.math.raw.Nat;
import org.bouncycastle.math.raw.Nat256;

/* loaded from: classes2.dex */
public class SecP256K1Point extends ECPoint.AbstractFp {
    public SecP256K1Point(ECCurve eCCurve, ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2) {
        super(eCCurve, eCFieldElement, eCFieldElement2);
    }

    public SecP256K1Point(ECCurve eCCurve, ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, ECFieldElement[] eCFieldElementArr) {
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
        SecP256K1FieldElement secP256K1FieldElement = (SecP256K1FieldElement) this.f11727x;
        SecP256K1FieldElement secP256K1FieldElement2 = (SecP256K1FieldElement) this.f11728y;
        SecP256K1FieldElement secP256K1FieldElement3 = (SecP256K1FieldElement) eCPoint.getXCoord();
        SecP256K1FieldElement secP256K1FieldElement4 = (SecP256K1FieldElement) eCPoint.getYCoord();
        SecP256K1FieldElement secP256K1FieldElement5 = (SecP256K1FieldElement) this.zs[0];
        SecP256K1FieldElement secP256K1FieldElement6 = (SecP256K1FieldElement) eCPoint.getZCoord(0);
        int[] r92 = Nat256.createExt();
        int[] r10 = Nat256.createExt();
        int[] r11 = Nat256.create();
        int[] r12 = Nat256.create();
        int[] r13 = Nat256.create();
        boolean zIsOne = secP256K1FieldElement5.isOne();
        if (zIsOne) {
            r52 = secP256K1FieldElement3.f11751x;
            r6 = secP256K1FieldElement4.f11751x;
        } else {
            SecP256K1Field.square(secP256K1FieldElement5.f11751x, r12, r92);
            SecP256K1Field.multiply(r12, secP256K1FieldElement3.f11751x, r11, r92);
            SecP256K1Field.multiply(r12, secP256K1FieldElement5.f11751x, r12, r92);
            SecP256K1Field.multiply(r12, secP256K1FieldElement4.f11751x, r12, r92);
            r52 = r11;
            r6 = r12;
        }
        boolean zIsOne2 = secP256K1FieldElement6.isOne();
        if (zIsOne2) {
            r32 = secP256K1FieldElement.f11751x;
            r42 = secP256K1FieldElement2.f11751x;
        } else {
            SecP256K1Field.square(secP256K1FieldElement6.f11751x, r13, r92);
            SecP256K1Field.multiply(r13, secP256K1FieldElement.f11751x, r10, r92);
            SecP256K1Field.multiply(r13, secP256K1FieldElement6.f11751x, r13, r92);
            SecP256K1Field.multiply(r13, secP256K1FieldElement2.f11751x, r13, r92);
            r32 = r10;
            r42 = r13;
        }
        int[] r82 = Nat256.create();
        SecP256K1Field.subtract(r32, r52, r82);
        SecP256K1Field.subtract(r42, r6, r11);
        if (Nat256.isZero(r82)) {
            return Nat256.isZero(r11) ? twice() : curve.getInfinity();
        }
        SecP256K1Field.square(r82, r12, r92);
        int[] r53 = Nat256.create();
        SecP256K1Field.multiply(r12, r82, r53, r92);
        SecP256K1Field.multiply(r12, r32, r12, r92);
        SecP256K1Field.negate(r53, r53);
        Nat256.mul(r42, r53, r10);
        SecP256K1Field.reduce32(Nat256.addBothTo(r12, r12, r53), r53);
        SecP256K1FieldElement secP256K1FieldElement7 = new SecP256K1FieldElement(r13);
        SecP256K1Field.square(r11, secP256K1FieldElement7.f11751x, r92);
        int[] r43 = secP256K1FieldElement7.f11751x;
        SecP256K1Field.subtract(r43, r53, r43);
        SecP256K1FieldElement secP256K1FieldElement8 = new SecP256K1FieldElement(r53);
        SecP256K1Field.subtract(r12, secP256K1FieldElement7.f11751x, secP256K1FieldElement8.f11751x);
        SecP256K1Field.multiplyAddToExt(secP256K1FieldElement8.f11751x, r11, r10);
        SecP256K1Field.reduce(r10, secP256K1FieldElement8.f11751x);
        SecP256K1FieldElement secP256K1FieldElement9 = new SecP256K1FieldElement(r82);
        if (!zIsOne) {
            int[] r62 = secP256K1FieldElement9.f11751x;
            SecP256K1Field.multiply(r62, secP256K1FieldElement5.f11751x, r62, r92);
        }
        if (!zIsOne2) {
            int[] r63 = secP256K1FieldElement9.f11751x;
            SecP256K1Field.multiply(r63, secP256K1FieldElement6.f11751x, r63, r92);
        }
        return new SecP256K1Point(curve, secP256K1FieldElement7, secP256K1FieldElement8, new ECFieldElement[]{secP256K1FieldElement9});
    }

    @Override // org.bouncycastle.math.ec.ECPoint
    public ECPoint detach() {
        return new SecP256K1Point(null, getAffineXCoord(), getAffineYCoord());
    }

    @Override // org.bouncycastle.math.ec.ECPoint
    public ECPoint negate() {
        return isInfinity() ? this : new SecP256K1Point(this.curve, this.f11727x, this.f11728y.negate(), this.zs);
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
        SecP256K1FieldElement secP256K1FieldElement = (SecP256K1FieldElement) this.f11728y;
        if (secP256K1FieldElement.isZero()) {
            return curve.getInfinity();
        }
        SecP256K1FieldElement secP256K1FieldElement2 = (SecP256K1FieldElement) this.f11727x;
        SecP256K1FieldElement secP256K1FieldElement3 = (SecP256K1FieldElement) this.zs[0];
        int[] r52 = Nat256.createExt();
        int[] r6 = Nat256.create();
        SecP256K1Field.square(secP256K1FieldElement.f11751x, r6, r52);
        int[] r72 = Nat256.create();
        SecP256K1Field.square(r6, r72, r52);
        int[] r82 = Nat256.create();
        SecP256K1Field.square(secP256K1FieldElement2.f11751x, r82, r52);
        SecP256K1Field.reduce32(Nat256.addBothTo(r82, r82, r82), r82);
        SecP256K1Field.multiply(r6, secP256K1FieldElement2.f11751x, r6, r52);
        SecP256K1Field.reduce32(Nat.shiftUpBits(8, r6, 2, 0), r6);
        int[] r22 = Nat256.create();
        SecP256K1Field.reduce32(Nat.shiftUpBits(8, r72, 3, 0, r22), r22);
        SecP256K1FieldElement secP256K1FieldElement4 = new SecP256K1FieldElement(r72);
        SecP256K1Field.square(r82, secP256K1FieldElement4.f11751x, r52);
        int[] r73 = secP256K1FieldElement4.f11751x;
        SecP256K1Field.subtract(r73, r6, r73);
        int[] r74 = secP256K1FieldElement4.f11751x;
        SecP256K1Field.subtract(r74, r6, r74);
        SecP256K1FieldElement secP256K1FieldElement5 = new SecP256K1FieldElement(r6);
        SecP256K1Field.subtract(r6, secP256K1FieldElement4.f11751x, secP256K1FieldElement5.f11751x);
        int[] r62 = secP256K1FieldElement5.f11751x;
        SecP256K1Field.multiply(r62, r82, r62, r52);
        int[] r63 = secP256K1FieldElement5.f11751x;
        SecP256K1Field.subtract(r63, r22, r63);
        SecP256K1FieldElement secP256K1FieldElement6 = new SecP256K1FieldElement(r82);
        SecP256K1Field.twice(secP256K1FieldElement.f11751x, secP256K1FieldElement6.f11751x);
        if (!secP256K1FieldElement3.isOne()) {
            int[] r12 = secP256K1FieldElement6.f11751x;
            SecP256K1Field.multiply(r12, secP256K1FieldElement3.f11751x, r12, r52);
        }
        return new SecP256K1Point(curve, secP256K1FieldElement4, secP256K1FieldElement5, new ECFieldElement[]{secP256K1FieldElement6});
    }

    @Override // org.bouncycastle.math.ec.ECPoint
    public ECPoint twicePlus(ECPoint eCPoint) {
        return this == eCPoint ? threeTimes() : isInfinity() ? eCPoint : eCPoint.isInfinity() ? twice() : this.f11728y.isZero() ? eCPoint : twice().add(eCPoint);
    }
}
