package org.bouncycastle.math.ec.custom.sec;

import java.math.BigInteger;
import org.bouncycastle.math.ec.ECFieldElement;
import org.bouncycastle.math.raw.Nat160;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.encoders.Hex;

/* loaded from: classes2.dex */
public class SecP160R2FieldElement extends ECFieldElement.AbstractFp {
    public static final BigInteger Q = new BigInteger(1, Hex.decodeStrict("FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFAC73"));

    /* renamed from: x, reason: collision with root package name */
    protected int[] f11741x;

    public SecP160R2FieldElement() {
        this.f11741x = Nat160.create();
    }

    public SecP160R2FieldElement(BigInteger bigInteger) {
        if (bigInteger == null || bigInteger.signum() < 0 || bigInteger.compareTo(Q) >= 0) {
            throw new IllegalArgumentException("x value invalid for SecP160R2FieldElement");
        }
        this.f11741x = SecP160R2Field.fromBigInteger(bigInteger);
    }

    public SecP160R2FieldElement(int[] r12) {
        this.f11741x = r12;
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public ECFieldElement add(ECFieldElement eCFieldElement) {
        int[] r02 = Nat160.create();
        SecP160R2Field.add(this.f11741x, ((SecP160R2FieldElement) eCFieldElement).f11741x, r02);
        return new SecP160R2FieldElement(r02);
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public ECFieldElement addOne() {
        int[] r02 = Nat160.create();
        SecP160R2Field.addOne(this.f11741x, r02);
        return new SecP160R2FieldElement(r02);
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public ECFieldElement divide(ECFieldElement eCFieldElement) {
        int[] r02 = Nat160.create();
        SecP160R2Field.inv(((SecP160R2FieldElement) eCFieldElement).f11741x, r02);
        SecP160R2Field.multiply(r02, this.f11741x, r02);
        return new SecP160R2FieldElement(r02);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof SecP160R2FieldElement) {
            return Nat160.eq(this.f11741x, ((SecP160R2FieldElement) obj).f11741x);
        }
        return false;
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public String getFieldName() {
        return "SecP160R2Field";
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public int getFieldSize() {
        return Q.bitLength();
    }

    public int hashCode() {
        return Q.hashCode() ^ Arrays.hashCode(this.f11741x, 0, 5);
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public ECFieldElement invert() {
        int[] r02 = Nat160.create();
        SecP160R2Field.inv(this.f11741x, r02);
        return new SecP160R2FieldElement(r02);
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public boolean isOne() {
        return Nat160.isOne(this.f11741x);
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public boolean isZero() {
        return Nat160.isZero(this.f11741x);
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public ECFieldElement multiply(ECFieldElement eCFieldElement) {
        int[] r02 = Nat160.create();
        SecP160R2Field.multiply(this.f11741x, ((SecP160R2FieldElement) eCFieldElement).f11741x, r02);
        return new SecP160R2FieldElement(r02);
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public ECFieldElement negate() {
        int[] r02 = Nat160.create();
        SecP160R2Field.negate(this.f11741x, r02);
        return new SecP160R2FieldElement(r02);
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public ECFieldElement sqrt() {
        int[] r02 = this.f11741x;
        if (Nat160.isZero(r02) || Nat160.isOne(r02)) {
            return this;
        }
        int[] r12 = Nat160.create();
        SecP160R2Field.square(r02, r12);
        SecP160R2Field.multiply(r12, r02, r12);
        int[] r22 = Nat160.create();
        SecP160R2Field.square(r12, r22);
        SecP160R2Field.multiply(r22, r02, r22);
        int[] r32 = Nat160.create();
        SecP160R2Field.square(r22, r32);
        SecP160R2Field.multiply(r32, r02, r32);
        int[] r42 = Nat160.create();
        SecP160R2Field.squareN(r32, 3, r42);
        SecP160R2Field.multiply(r42, r22, r42);
        SecP160R2Field.squareN(r42, 7, r32);
        SecP160R2Field.multiply(r32, r42, r32);
        SecP160R2Field.squareN(r32, 3, r42);
        SecP160R2Field.multiply(r42, r22, r42);
        int[] r6 = Nat160.create();
        SecP160R2Field.squareN(r42, 14, r6);
        SecP160R2Field.multiply(r6, r32, r6);
        SecP160R2Field.squareN(r6, 31, r32);
        SecP160R2Field.multiply(r32, r6, r32);
        SecP160R2Field.squareN(r32, 62, r6);
        SecP160R2Field.multiply(r6, r32, r6);
        SecP160R2Field.squareN(r6, 3, r32);
        SecP160R2Field.multiply(r32, r22, r32);
        SecP160R2Field.squareN(r32, 18, r32);
        SecP160R2Field.multiply(r32, r42, r32);
        SecP160R2Field.squareN(r32, 2, r32);
        SecP160R2Field.multiply(r32, r02, r32);
        SecP160R2Field.squareN(r32, 3, r32);
        SecP160R2Field.multiply(r32, r12, r32);
        SecP160R2Field.squareN(r32, 6, r32);
        SecP160R2Field.multiply(r32, r22, r32);
        SecP160R2Field.squareN(r32, 2, r32);
        SecP160R2Field.multiply(r32, r02, r32);
        SecP160R2Field.square(r32, r12);
        if (Nat160.eq(r02, r12)) {
            return new SecP160R2FieldElement(r32);
        }
        return null;
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public ECFieldElement square() {
        int[] r02 = Nat160.create();
        SecP160R2Field.square(this.f11741x, r02);
        return new SecP160R2FieldElement(r02);
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public ECFieldElement subtract(ECFieldElement eCFieldElement) {
        int[] r02 = Nat160.create();
        SecP160R2Field.subtract(this.f11741x, ((SecP160R2FieldElement) eCFieldElement).f11741x, r02);
        return new SecP160R2FieldElement(r02);
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public boolean testBitZero() {
        return Nat160.getBit(this.f11741x, 0) == 1;
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public BigInteger toBigInteger() {
        return Nat160.toBigInteger(this.f11741x);
    }
}
