package org.bouncycastle.math.ec.custom.djb;

import org.bouncycastle.math.ec.ECCurve;
import org.bouncycastle.math.ec.ECFieldElement;
import org.bouncycastle.math.ec.ECPoint;
import org.bouncycastle.math.raw.Nat256;

/* loaded from: classes2.dex */
public class Curve25519Point extends ECPoint.AbstractFp {
    public Curve25519Point(ECCurve eCCurve, ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2) {
        super(eCCurve, eCFieldElement, eCFieldElement2);
    }

    public Curve25519Point(ECCurve eCCurve, ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, ECFieldElement[] eCFieldElementArr) {
        super(eCCurve, eCFieldElement, eCFieldElement2, eCFieldElementArr);
    }

    @Override // org.bouncycastle.math.ec.ECPoint
    public ECPoint add(ECPoint eCPoint) {
        int[] r52;
        int[] r6;
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
        Curve25519FieldElement curve25519FieldElement = (Curve25519FieldElement) this.f11727x;
        Curve25519FieldElement curve25519FieldElement2 = (Curve25519FieldElement) this.f11728y;
        Curve25519FieldElement curve25519FieldElement3 = (Curve25519FieldElement) this.zs[0];
        Curve25519FieldElement curve25519FieldElement4 = (Curve25519FieldElement) eCPoint.getXCoord();
        Curve25519FieldElement curve25519FieldElement5 = (Curve25519FieldElement) eCPoint.getYCoord();
        Curve25519FieldElement curve25519FieldElement6 = (Curve25519FieldElement) eCPoint.getZCoord(0);
        int[] r72 = Nat256.createExt();
        int[] r82 = Nat256.create();
        int[] r92 = Nat256.create();
        int[] r10 = Nat256.create();
        boolean zIsOne = curve25519FieldElement3.isOne();
        if (zIsOne) {
            r52 = curve25519FieldElement4.f11732x;
            r6 = curve25519FieldElement5.f11732x;
        } else {
            Curve25519Field.square(curve25519FieldElement3.f11732x, r92);
            Curve25519Field.multiply(r92, curve25519FieldElement4.f11732x, r82);
            Curve25519Field.multiply(r92, curve25519FieldElement3.f11732x, r92);
            Curve25519Field.multiply(r92, curve25519FieldElement5.f11732x, r92);
            r52 = r82;
            r6 = r92;
        }
        boolean zIsOne2 = curve25519FieldElement6.isOne();
        if (zIsOne2) {
            r12 = curve25519FieldElement.f11732x;
            r22 = curve25519FieldElement2.f11732x;
        } else {
            Curve25519Field.square(curve25519FieldElement6.f11732x, r10);
            Curve25519Field.multiply(r10, curve25519FieldElement.f11732x, r72);
            Curve25519Field.multiply(r10, curve25519FieldElement6.f11732x, r10);
            Curve25519Field.multiply(r10, curve25519FieldElement2.f11732x, r10);
            r12 = r72;
            r22 = r10;
        }
        int[] r13 = Nat256.create();
        Curve25519Field.subtract(r12, r52, r13);
        Curve25519Field.subtract(r22, r6, r82);
        if (Nat256.isZero(r13)) {
            return Nat256.isZero(r82) ? twice() : curve.getInfinity();
        }
        int[] r53 = Nat256.create();
        Curve25519Field.square(r13, r53);
        int[] r62 = Nat256.create();
        Curve25519Field.multiply(r53, r13, r62);
        Curve25519Field.multiply(r53, r12, r92);
        Curve25519Field.negate(r62, r62);
        Nat256.mul(r22, r62, r72);
        Curve25519Field.reduce27(Nat256.addBothTo(r92, r92, r62), r62);
        Curve25519FieldElement curve25519FieldElement7 = new Curve25519FieldElement(r10);
        Curve25519Field.square(r82, curve25519FieldElement7.f11732x);
        int[] r23 = curve25519FieldElement7.f11732x;
        Curve25519Field.subtract(r23, r62, r23);
        Curve25519FieldElement curve25519FieldElement8 = new Curve25519FieldElement(r62);
        Curve25519Field.subtract(r92, curve25519FieldElement7.f11732x, curve25519FieldElement8.f11732x);
        Curve25519Field.multiplyAddToExt(curve25519FieldElement8.f11732x, r82, r72);
        Curve25519Field.reduce(r72, curve25519FieldElement8.f11732x);
        Curve25519FieldElement curve25519FieldElement9 = new Curve25519FieldElement(r13);
        if (!zIsOne) {
            int[] r73 = curve25519FieldElement9.f11732x;
            Curve25519Field.multiply(r73, curve25519FieldElement3.f11732x, r73);
        }
        if (!zIsOne2) {
            int[] r32 = curve25519FieldElement9.f11732x;
            Curve25519Field.multiply(r32, curve25519FieldElement6.f11732x, r32);
        }
        if (!zIsOne || !zIsOne2) {
            r53 = null;
        }
        return new Curve25519Point(curve, curve25519FieldElement7, curve25519FieldElement8, new ECFieldElement[]{curve25519FieldElement9, calculateJacobianModifiedW(curve25519FieldElement9, r53)});
    }

    public Curve25519FieldElement calculateJacobianModifiedW(Curve25519FieldElement curve25519FieldElement, int[] r42) {
        Curve25519FieldElement curve25519FieldElement2 = (Curve25519FieldElement) getCurve().getA();
        if (curve25519FieldElement.isOne()) {
            return curve25519FieldElement2;
        }
        Curve25519FieldElement curve25519FieldElement3 = new Curve25519FieldElement();
        if (r42 == null) {
            r42 = curve25519FieldElement3.f11732x;
            Curve25519Field.square(curve25519FieldElement.f11732x, r42);
        }
        Curve25519Field.square(r42, curve25519FieldElement3.f11732x);
        int[] r32 = curve25519FieldElement3.f11732x;
        Curve25519Field.multiply(r32, curve25519FieldElement2.f11732x, r32);
        return curve25519FieldElement3;
    }

    @Override // org.bouncycastle.math.ec.ECPoint
    public ECPoint detach() {
        return new Curve25519Point(null, getAffineXCoord(), getAffineYCoord());
    }

    public Curve25519FieldElement getJacobianModifiedW() {
        ECFieldElement[] eCFieldElementArr = this.zs;
        Curve25519FieldElement curve25519FieldElement = (Curve25519FieldElement) eCFieldElementArr[1];
        if (curve25519FieldElement != null) {
            return curve25519FieldElement;
        }
        Curve25519FieldElement curve25519FieldElementCalculateJacobianModifiedW = calculateJacobianModifiedW((Curve25519FieldElement) eCFieldElementArr[0], null);
        eCFieldElementArr[1] = curve25519FieldElementCalculateJacobianModifiedW;
        return curve25519FieldElementCalculateJacobianModifiedW;
    }

    @Override // org.bouncycastle.math.ec.ECPoint
    public ECFieldElement getZCoord(int r22) {
        return r22 == 1 ? getJacobianModifiedW() : super.getZCoord(r22);
    }

    @Override // org.bouncycastle.math.ec.ECPoint
    public ECPoint negate() {
        return isInfinity() ? this : new Curve25519Point(getCurve(), this.f11727x, this.f11728y.negate(), this.zs);
    }

    @Override // org.bouncycastle.math.ec.ECPoint
    public ECPoint threeTimes() {
        return (isInfinity() || this.f11728y.isZero()) ? this : twiceJacobianModified(false).add(this);
    }

    @Override // org.bouncycastle.math.ec.ECPoint
    public ECPoint twice() {
        if (isInfinity()) {
            return this;
        }
        return this.f11728y.isZero() ? getCurve().getInfinity() : twiceJacobianModified(true);
    }

    public Curve25519Point twiceJacobianModified(boolean z10) {
        Curve25519FieldElement curve25519FieldElement;
        Curve25519FieldElement curve25519FieldElement2 = (Curve25519FieldElement) this.f11727x;
        Curve25519FieldElement curve25519FieldElement3 = (Curve25519FieldElement) this.f11728y;
        Curve25519FieldElement curve25519FieldElement4 = (Curve25519FieldElement) this.zs[0];
        Curve25519FieldElement jacobianModifiedW = getJacobianModifiedW();
        int[] r52 = Nat256.create();
        Curve25519Field.square(curve25519FieldElement2.f11732x, r52);
        Curve25519Field.reduce27(Nat256.addTo(jacobianModifiedW.f11732x, r52) + Nat256.addBothTo(r52, r52, r52), r52);
        int[] r6 = Nat256.create();
        Curve25519Field.twice(curve25519FieldElement3.f11732x, r6);
        int[] r72 = Nat256.create();
        Curve25519Field.multiply(r6, curve25519FieldElement3.f11732x, r72);
        int[] r12 = Nat256.create();
        Curve25519Field.multiply(r72, curve25519FieldElement2.f11732x, r12);
        Curve25519Field.twice(r12, r12);
        int[] r02 = Nat256.create();
        Curve25519Field.square(r72, r02);
        Curve25519Field.twice(r02, r02);
        Curve25519FieldElement curve25519FieldElement5 = new Curve25519FieldElement(r72);
        Curve25519Field.square(r52, curve25519FieldElement5.f11732x);
        int[] r73 = curve25519FieldElement5.f11732x;
        Curve25519Field.subtract(r73, r12, r73);
        int[] r74 = curve25519FieldElement5.f11732x;
        Curve25519Field.subtract(r74, r12, r74);
        Curve25519FieldElement curve25519FieldElement6 = new Curve25519FieldElement(r12);
        Curve25519Field.subtract(r12, curve25519FieldElement5.f11732x, curve25519FieldElement6.f11732x);
        int[] r13 = curve25519FieldElement6.f11732x;
        Curve25519Field.multiply(r13, r52, r13);
        int[] r14 = curve25519FieldElement6.f11732x;
        Curve25519Field.subtract(r14, r02, r14);
        Curve25519FieldElement curve25519FieldElement7 = new Curve25519FieldElement(r6);
        if (!Nat256.isOne(curve25519FieldElement4.f11732x)) {
            int[] r53 = curve25519FieldElement7.f11732x;
            Curve25519Field.multiply(r53, curve25519FieldElement4.f11732x, r53);
        }
        if (z10) {
            curve25519FieldElement = new Curve25519FieldElement(r02);
            int[] r03 = curve25519FieldElement.f11732x;
            Curve25519Field.multiply(r03, jacobianModifiedW.f11732x, r03);
            int[] r04 = curve25519FieldElement.f11732x;
            Curve25519Field.twice(r04, r04);
        } else {
            curve25519FieldElement = null;
        }
        return new Curve25519Point(getCurve(), curve25519FieldElement5, curve25519FieldElement6, new ECFieldElement[]{curve25519FieldElement7, curve25519FieldElement});
    }

    @Override // org.bouncycastle.math.ec.ECPoint
    public ECPoint twicePlus(ECPoint eCPoint) {
        return this == eCPoint ? threeTimes() : isInfinity() ? eCPoint : eCPoint.isInfinity() ? twice() : this.f11728y.isZero() ? eCPoint : twiceJacobianModified(false).add(eCPoint);
    }
}
