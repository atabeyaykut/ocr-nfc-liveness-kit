package org.bouncycastle.math.ec.custom.sec;

import androidx.room.util.a;
import org.bouncycastle.math.ec.ECConstants;
import org.bouncycastle.math.ec.ECCurve;
import org.bouncycastle.math.ec.ECFieldElement;
import org.bouncycastle.math.ec.ECPoint;

/* loaded from: classes2.dex */
public class SecT113R1Point extends ECPoint.AbstractF2m {
    public SecT113R1Point(ECCurve eCCurve, ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2) {
        super(eCCurve, eCFieldElement, eCFieldElement2);
    }

    public SecT113R1Point(ECCurve eCCurve, ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, ECFieldElement[] eCFieldElementArr) {
        super(eCCurve, eCFieldElement, eCFieldElement2, eCFieldElementArr);
    }

    @Override // org.bouncycastle.math.ec.ECPoint
    public ECPoint add(ECPoint eCPoint) {
        ECFieldElement eCFieldElementMultiply;
        ECFieldElement eCFieldElementMultiply2;
        ECFieldElement eCFieldElementMultiply3;
        ECFieldElement eCFieldElementSquarePlusProduct;
        ECFieldElement eCFieldElementAdd;
        ECFieldElement eCFieldElementMultiply4;
        if (isInfinity()) {
            return eCPoint;
        }
        if (eCPoint.isInfinity()) {
            return this;
        }
        ECCurve curve = getCurve();
        ECFieldElement eCFieldElementMultiply5 = this.f11727x;
        ECFieldElement rawXCoord = eCPoint.getRawXCoord();
        if (eCFieldElementMultiply5.isZero()) {
            return rawXCoord.isZero() ? curve.getInfinity() : eCPoint.add(this);
        }
        ECFieldElement eCFieldElement = this.f11728y;
        ECFieldElement eCFieldElement2 = this.zs[0];
        ECFieldElement rawYCoord = eCPoint.getRawYCoord();
        ECFieldElement zCoord = eCPoint.getZCoord(0);
        boolean zIsOne = eCFieldElement2.isOne();
        if (zIsOne) {
            eCFieldElementMultiply = rawXCoord;
            eCFieldElementMultiply2 = rawYCoord;
        } else {
            eCFieldElementMultiply = rawXCoord.multiply(eCFieldElement2);
            eCFieldElementMultiply2 = rawYCoord.multiply(eCFieldElement2);
        }
        boolean zIsOne2 = zCoord.isOne();
        if (zIsOne2) {
            eCFieldElementMultiply3 = eCFieldElement;
        } else {
            eCFieldElementMultiply5 = eCFieldElementMultiply5.multiply(zCoord);
            eCFieldElementMultiply3 = eCFieldElement.multiply(zCoord);
        }
        ECFieldElement eCFieldElementAdd2 = eCFieldElementMultiply3.add(eCFieldElementMultiply2);
        ECFieldElement eCFieldElementAdd3 = eCFieldElementMultiply5.add(eCFieldElementMultiply);
        if (eCFieldElementAdd3.isZero()) {
            return eCFieldElementAdd2.isZero() ? twice() : curve.getInfinity();
        }
        if (rawXCoord.isZero()) {
            ECPoint eCPointNormalize = normalize();
            ECFieldElement xCoord = eCPointNormalize.getXCoord();
            ECFieldElement yCoord = eCPointNormalize.getYCoord();
            ECFieldElement eCFieldElementDivide = yCoord.add(rawYCoord).divide(xCoord);
            eCFieldElementAdd = a.g(eCFieldElementDivide, eCFieldElementDivide, xCoord).add(curve.getA());
            if (eCFieldElementAdd.isZero()) {
                return new SecT113R1Point(curve, eCFieldElementAdd, curve.getB().sqrt());
            }
            eCFieldElementSquarePlusProduct = eCFieldElementDivide.multiply(xCoord.add(eCFieldElementAdd)).add(eCFieldElementAdd).add(yCoord).divide(eCFieldElementAdd).add(eCFieldElementAdd);
            eCFieldElementMultiply4 = curve.fromBigInteger(ECConstants.ONE);
        } else {
            ECFieldElement eCFieldElementSquare = eCFieldElementAdd3.square();
            ECFieldElement eCFieldElementMultiply6 = eCFieldElementAdd2.multiply(eCFieldElementMultiply5);
            ECFieldElement eCFieldElementMultiply7 = eCFieldElementAdd2.multiply(eCFieldElementMultiply);
            ECFieldElement eCFieldElementMultiply8 = eCFieldElementMultiply6.multiply(eCFieldElementMultiply7);
            if (eCFieldElementMultiply8.isZero()) {
                return new SecT113R1Point(curve, eCFieldElementMultiply8, curve.getB().sqrt());
            }
            ECFieldElement eCFieldElementMultiply9 = eCFieldElementAdd2.multiply(eCFieldElementSquare);
            if (!zIsOne2) {
                eCFieldElementMultiply9 = eCFieldElementMultiply9.multiply(zCoord);
            }
            eCFieldElementSquarePlusProduct = eCFieldElementMultiply7.add(eCFieldElementSquare).squarePlusProduct(eCFieldElementMultiply9, eCFieldElement.add(eCFieldElement2));
            eCFieldElementAdd = eCFieldElementMultiply8;
            eCFieldElementMultiply4 = !zIsOne ? eCFieldElementMultiply9.multiply(eCFieldElement2) : eCFieldElementMultiply9;
        }
        return new SecT113R1Point(curve, eCFieldElementAdd, eCFieldElementSquarePlusProduct, new ECFieldElement[]{eCFieldElementMultiply4});
    }

    @Override // org.bouncycastle.math.ec.ECPoint
    public ECPoint detach() {
        return new SecT113R1Point(null, getAffineXCoord(), getAffineYCoord());
    }

    @Override // org.bouncycastle.math.ec.ECPoint
    public boolean getCompressionYTilde() {
        ECFieldElement rawXCoord = getRawXCoord();
        return (rawXCoord.isZero() || getRawYCoord().testBitZero() == rawXCoord.testBitZero()) ? false : true;
    }

    @Override // org.bouncycastle.math.ec.ECPoint
    public ECFieldElement getYCoord() {
        ECFieldElement eCFieldElement = this.f11727x;
        ECFieldElement eCFieldElement2 = this.f11728y;
        if (isInfinity() || eCFieldElement.isZero()) {
            return eCFieldElement2;
        }
        ECFieldElement eCFieldElementMultiply = eCFieldElement2.add(eCFieldElement).multiply(eCFieldElement);
        ECFieldElement eCFieldElement3 = this.zs[0];
        return !eCFieldElement3.isOne() ? eCFieldElementMultiply.divide(eCFieldElement3) : eCFieldElementMultiply;
    }

    @Override // org.bouncycastle.math.ec.ECPoint
    public ECPoint negate() {
        if (isInfinity()) {
            return this;
        }
        ECFieldElement eCFieldElement = this.f11727x;
        if (eCFieldElement.isZero()) {
            return this;
        }
        ECFieldElement eCFieldElement2 = this.f11728y;
        ECFieldElement eCFieldElement3 = this.zs[0];
        return new SecT113R1Point(this.curve, eCFieldElement, eCFieldElement2.add(eCFieldElement3), new ECFieldElement[]{eCFieldElement3});
    }

    @Override // org.bouncycastle.math.ec.ECPoint
    public ECPoint twice() {
        if (isInfinity()) {
            return this;
        }
        ECCurve curve = getCurve();
        ECFieldElement eCFieldElementMultiply = this.f11727x;
        if (eCFieldElementMultiply.isZero()) {
            return curve.getInfinity();
        }
        ECFieldElement eCFieldElement = this.f11728y;
        ECFieldElement eCFieldElement2 = this.zs[0];
        boolean zIsOne = eCFieldElement2.isOne();
        ECFieldElement eCFieldElementMultiply2 = zIsOne ? eCFieldElement : eCFieldElement.multiply(eCFieldElement2);
        ECFieldElement eCFieldElementSquare = zIsOne ? eCFieldElement2 : eCFieldElement2.square();
        ECFieldElement a10 = curve.getA();
        if (!zIsOne) {
            a10 = a10.multiply(eCFieldElementSquare);
        }
        ECFieldElement eCFieldElementG = a.g(eCFieldElement, eCFieldElementMultiply2, a10);
        if (eCFieldElementG.isZero()) {
            return new SecT113R1Point(curve, eCFieldElementG, curve.getB().sqrt());
        }
        ECFieldElement eCFieldElementSquare2 = eCFieldElementG.square();
        ECFieldElement eCFieldElementMultiply3 = zIsOne ? eCFieldElementG : eCFieldElementG.multiply(eCFieldElementSquare);
        if (!zIsOne) {
            eCFieldElementMultiply = eCFieldElementMultiply.multiply(eCFieldElement2);
        }
        return new SecT113R1Point(curve, eCFieldElementSquare2, eCFieldElementMultiply.squarePlusProduct(eCFieldElementG, eCFieldElementMultiply2).add(eCFieldElementSquare2).add(eCFieldElementMultiply3), new ECFieldElement[]{eCFieldElementMultiply3});
    }

    @Override // org.bouncycastle.math.ec.ECPoint
    public ECPoint twicePlus(ECPoint eCPoint) {
        if (isInfinity()) {
            return eCPoint;
        }
        if (eCPoint.isInfinity()) {
            return twice();
        }
        ECCurve curve = getCurve();
        ECFieldElement eCFieldElement = this.f11727x;
        if (eCFieldElement.isZero()) {
            return eCPoint;
        }
        ECFieldElement rawXCoord = eCPoint.getRawXCoord();
        ECFieldElement zCoord = eCPoint.getZCoord(0);
        if (rawXCoord.isZero() || !zCoord.isOne()) {
            return twice().add(eCPoint);
        }
        ECFieldElement eCFieldElement2 = this.f11728y;
        ECFieldElement eCFieldElement3 = this.zs[0];
        ECFieldElement rawYCoord = eCPoint.getRawYCoord();
        ECFieldElement eCFieldElementSquare = eCFieldElement.square();
        ECFieldElement eCFieldElementSquare2 = eCFieldElement2.square();
        ECFieldElement eCFieldElementSquare3 = eCFieldElement3.square();
        ECFieldElement eCFieldElementAdd = curve.getA().multiply(eCFieldElementSquare3).add(eCFieldElementSquare2).add(eCFieldElement2.multiply(eCFieldElement3));
        ECFieldElement eCFieldElementAddOne = rawYCoord.addOne();
        ECFieldElement eCFieldElementMultiplyPlusProduct = curve.getA().add(eCFieldElementAddOne).multiply(eCFieldElementSquare3).add(eCFieldElementSquare2).multiplyPlusProduct(eCFieldElementAdd, eCFieldElementSquare, eCFieldElementSquare3);
        ECFieldElement eCFieldElementMultiply = rawXCoord.multiply(eCFieldElementSquare3);
        ECFieldElement eCFieldElementSquare4 = eCFieldElementMultiply.add(eCFieldElementAdd).square();
        if (eCFieldElementSquare4.isZero()) {
            return eCFieldElementMultiplyPlusProduct.isZero() ? eCPoint.twice() : curve.getInfinity();
        }
        if (eCFieldElementMultiplyPlusProduct.isZero()) {
            return new SecT113R1Point(curve, eCFieldElementMultiplyPlusProduct, curve.getB().sqrt());
        }
        ECFieldElement eCFieldElementMultiply2 = eCFieldElementMultiplyPlusProduct.square().multiply(eCFieldElementMultiply);
        ECFieldElement eCFieldElementMultiply3 = eCFieldElementMultiplyPlusProduct.multiply(eCFieldElementSquare4).multiply(eCFieldElementSquare3);
        return new SecT113R1Point(curve, eCFieldElementMultiply2, eCFieldElementMultiplyPlusProduct.add(eCFieldElementSquare4).square().multiplyPlusProduct(eCFieldElementAdd, eCFieldElementAddOne, eCFieldElementMultiply3), new ECFieldElement[]{eCFieldElementMultiply3});
    }
}
