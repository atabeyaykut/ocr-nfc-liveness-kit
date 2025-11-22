package org.bouncycastle.math.ec.custom.sec;

import java.math.BigInteger;
import org.bouncycastle.math.ec.ECFieldElement;
import org.bouncycastle.math.raw.Nat128;
import org.bouncycastle.util.Arrays;

/* loaded from: classes2.dex */
public class SecT113FieldElement extends ECFieldElement.AbstractF2m {

    /* renamed from: x, reason: collision with root package name */
    protected long[] f11758x;

    public SecT113FieldElement() {
        this.f11758x = Nat128.create64();
    }

    public SecT113FieldElement(BigInteger bigInteger) {
        if (bigInteger == null || bigInteger.signum() < 0 || bigInteger.bitLength() > 113) {
            throw new IllegalArgumentException("x value invalid for SecT113FieldElement");
        }
        this.f11758x = SecT113Field.fromBigInteger(bigInteger);
    }

    public SecT113FieldElement(long[] jArr) {
        this.f11758x = jArr;
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public ECFieldElement add(ECFieldElement eCFieldElement) {
        long[] jArrCreate64 = Nat128.create64();
        SecT113Field.add(this.f11758x, ((SecT113FieldElement) eCFieldElement).f11758x, jArrCreate64);
        return new SecT113FieldElement(jArrCreate64);
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public ECFieldElement addOne() {
        long[] jArrCreate64 = Nat128.create64();
        SecT113Field.addOne(this.f11758x, jArrCreate64);
        return new SecT113FieldElement(jArrCreate64);
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public ECFieldElement divide(ECFieldElement eCFieldElement) {
        return multiply(eCFieldElement.invert());
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof SecT113FieldElement) {
            return Nat128.eq64(this.f11758x, ((SecT113FieldElement) obj).f11758x);
        }
        return false;
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public String getFieldName() {
        return "SecT113Field";
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public int getFieldSize() {
        return 113;
    }

    public int getK1() {
        return 9;
    }

    public int getK2() {
        return 0;
    }

    public int getK3() {
        return 0;
    }

    public int getM() {
        return 113;
    }

    public int getRepresentation() {
        return 2;
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement.AbstractF2m
    public ECFieldElement halfTrace() {
        long[] jArrCreate64 = Nat128.create64();
        SecT113Field.halfTrace(this.f11758x, jArrCreate64);
        return new SecT113FieldElement(jArrCreate64);
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement.AbstractF2m
    public boolean hasFastTrace() {
        return true;
    }

    public int hashCode() {
        return Arrays.hashCode(this.f11758x, 0, 2) ^ 113009;
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public ECFieldElement invert() {
        long[] jArrCreate64 = Nat128.create64();
        SecT113Field.invert(this.f11758x, jArrCreate64);
        return new SecT113FieldElement(jArrCreate64);
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public boolean isOne() {
        return Nat128.isOne64(this.f11758x);
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public boolean isZero() {
        return Nat128.isZero64(this.f11758x);
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public ECFieldElement multiply(ECFieldElement eCFieldElement) {
        long[] jArrCreate64 = Nat128.create64();
        SecT113Field.multiply(this.f11758x, ((SecT113FieldElement) eCFieldElement).f11758x, jArrCreate64);
        return new SecT113FieldElement(jArrCreate64);
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public ECFieldElement multiplyMinusProduct(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, ECFieldElement eCFieldElement3) {
        return multiplyPlusProduct(eCFieldElement, eCFieldElement2, eCFieldElement3);
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public ECFieldElement multiplyPlusProduct(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, ECFieldElement eCFieldElement3) {
        long[] jArr = this.f11758x;
        long[] jArr2 = ((SecT113FieldElement) eCFieldElement).f11758x;
        long[] jArr3 = ((SecT113FieldElement) eCFieldElement2).f11758x;
        long[] jArr4 = ((SecT113FieldElement) eCFieldElement3).f11758x;
        long[] jArrCreateExt64 = Nat128.createExt64();
        SecT113Field.multiplyAddToExt(jArr, jArr2, jArrCreateExt64);
        SecT113Field.multiplyAddToExt(jArr3, jArr4, jArrCreateExt64);
        long[] jArrCreate64 = Nat128.create64();
        SecT113Field.reduce(jArrCreateExt64, jArrCreate64);
        return new SecT113FieldElement(jArrCreate64);
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public ECFieldElement negate() {
        return this;
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public ECFieldElement sqrt() {
        long[] jArrCreate64 = Nat128.create64();
        SecT113Field.sqrt(this.f11758x, jArrCreate64);
        return new SecT113FieldElement(jArrCreate64);
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public ECFieldElement square() {
        long[] jArrCreate64 = Nat128.create64();
        SecT113Field.square(this.f11758x, jArrCreate64);
        return new SecT113FieldElement(jArrCreate64);
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public ECFieldElement squareMinusProduct(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2) {
        return squarePlusProduct(eCFieldElement, eCFieldElement2);
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public ECFieldElement squarePlusProduct(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2) {
        long[] jArr = this.f11758x;
        long[] jArr2 = ((SecT113FieldElement) eCFieldElement).f11758x;
        long[] jArr3 = ((SecT113FieldElement) eCFieldElement2).f11758x;
        long[] jArrCreateExt64 = Nat128.createExt64();
        SecT113Field.squareAddToExt(jArr, jArrCreateExt64);
        SecT113Field.multiplyAddToExt(jArr2, jArr3, jArrCreateExt64);
        long[] jArrCreate64 = Nat128.create64();
        SecT113Field.reduce(jArrCreateExt64, jArrCreate64);
        return new SecT113FieldElement(jArrCreate64);
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public ECFieldElement squarePow(int r32) {
        if (r32 < 1) {
            return this;
        }
        long[] jArrCreate64 = Nat128.create64();
        SecT113Field.squareN(this.f11758x, r32, jArrCreate64);
        return new SecT113FieldElement(jArrCreate64);
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public ECFieldElement subtract(ECFieldElement eCFieldElement) {
        return add(eCFieldElement);
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public boolean testBitZero() {
        return (this.f11758x[0] & 1) != 0;
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public BigInteger toBigInteger() {
        return Nat128.toBigInteger64(this.f11758x);
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement.AbstractF2m
    public int trace() {
        return SecT113Field.trace(this.f11758x);
    }
}
