package org.bouncycastle.math.ec.custom.sec;

import java.math.BigInteger;
import org.bouncycastle.math.ec.ECFieldElement;
import org.bouncycastle.math.raw.Nat192;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.encoders.Hex;

/* loaded from: classes2.dex */
public class SecP192R1FieldElement extends ECFieldElement.AbstractFp {
    public static final BigInteger Q = new BigInteger(1, Hex.decodeStrict("FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFFFFFFFFFF"));

    /* renamed from: x, reason: collision with root package name */
    protected int[] f11745x;

    public SecP192R1FieldElement() {
        this.f11745x = Nat192.create();
    }

    public SecP192R1FieldElement(BigInteger bigInteger) {
        if (bigInteger == null || bigInteger.signum() < 0 || bigInteger.compareTo(Q) >= 0) {
            throw new IllegalArgumentException("x value invalid for SecP192R1FieldElement");
        }
        this.f11745x = SecP192R1Field.fromBigInteger(bigInteger);
    }

    public SecP192R1FieldElement(int[] r12) {
        this.f11745x = r12;
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public ECFieldElement add(ECFieldElement eCFieldElement) {
        int[] r02 = Nat192.create();
        SecP192R1Field.add(this.f11745x, ((SecP192R1FieldElement) eCFieldElement).f11745x, r02);
        return new SecP192R1FieldElement(r02);
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public ECFieldElement addOne() {
        int[] r02 = Nat192.create();
        SecP192R1Field.addOne(this.f11745x, r02);
        return new SecP192R1FieldElement(r02);
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public ECFieldElement divide(ECFieldElement eCFieldElement) {
        int[] r02 = Nat192.create();
        SecP192R1Field.inv(((SecP192R1FieldElement) eCFieldElement).f11745x, r02);
        SecP192R1Field.multiply(r02, this.f11745x, r02);
        return new SecP192R1FieldElement(r02);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof SecP192R1FieldElement) {
            return Nat192.eq(this.f11745x, ((SecP192R1FieldElement) obj).f11745x);
        }
        return false;
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public String getFieldName() {
        return "SecP192R1Field";
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public int getFieldSize() {
        return Q.bitLength();
    }

    public int hashCode() {
        return Q.hashCode() ^ Arrays.hashCode(this.f11745x, 0, 6);
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public ECFieldElement invert() {
        int[] r02 = Nat192.create();
        SecP192R1Field.inv(this.f11745x, r02);
        return new SecP192R1FieldElement(r02);
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public boolean isOne() {
        return Nat192.isOne(this.f11745x);
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public boolean isZero() {
        return Nat192.isZero(this.f11745x);
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public ECFieldElement multiply(ECFieldElement eCFieldElement) {
        int[] r02 = Nat192.create();
        SecP192R1Field.multiply(this.f11745x, ((SecP192R1FieldElement) eCFieldElement).f11745x, r02);
        return new SecP192R1FieldElement(r02);
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public ECFieldElement negate() {
        int[] r02 = Nat192.create();
        SecP192R1Field.negate(this.f11745x, r02);
        return new SecP192R1FieldElement(r02);
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public ECFieldElement sqrt() {
        int[] r02 = this.f11745x;
        if (Nat192.isZero(r02) || Nat192.isOne(r02)) {
            return this;
        }
        int[] r12 = Nat192.create();
        int[] r22 = Nat192.create();
        SecP192R1Field.square(r02, r12);
        SecP192R1Field.multiply(r12, r02, r12);
        SecP192R1Field.squareN(r12, 2, r22);
        SecP192R1Field.multiply(r22, r12, r22);
        SecP192R1Field.squareN(r22, 4, r12);
        SecP192R1Field.multiply(r12, r22, r12);
        SecP192R1Field.squareN(r12, 8, r22);
        SecP192R1Field.multiply(r22, r12, r22);
        SecP192R1Field.squareN(r22, 16, r12);
        SecP192R1Field.multiply(r12, r22, r12);
        SecP192R1Field.squareN(r12, 32, r22);
        SecP192R1Field.multiply(r22, r12, r22);
        SecP192R1Field.squareN(r22, 64, r12);
        SecP192R1Field.multiply(r12, r22, r12);
        SecP192R1Field.squareN(r12, 62, r12);
        SecP192R1Field.square(r12, r22);
        if (Nat192.eq(r02, r22)) {
            return new SecP192R1FieldElement(r12);
        }
        return null;
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public ECFieldElement square() {
        int[] r02 = Nat192.create();
        SecP192R1Field.square(this.f11745x, r02);
        return new SecP192R1FieldElement(r02);
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public ECFieldElement subtract(ECFieldElement eCFieldElement) {
        int[] r02 = Nat192.create();
        SecP192R1Field.subtract(this.f11745x, ((SecP192R1FieldElement) eCFieldElement).f11745x, r02);
        return new SecP192R1FieldElement(r02);
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public boolean testBitZero() {
        return Nat192.getBit(this.f11745x, 0) == 1;
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public BigInteger toBigInteger() {
        return Nat192.toBigInteger(this.f11745x);
    }
}
