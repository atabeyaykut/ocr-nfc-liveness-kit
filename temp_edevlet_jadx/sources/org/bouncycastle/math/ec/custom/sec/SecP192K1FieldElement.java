package org.bouncycastle.math.ec.custom.sec;

import java.math.BigInteger;
import org.bouncycastle.math.ec.ECFieldElement;
import org.bouncycastle.math.raw.Nat192;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.encoders.Hex;

/* loaded from: classes2.dex */
public class SecP192K1FieldElement extends ECFieldElement.AbstractFp {
    public static final BigInteger Q = new BigInteger(1, Hex.decodeStrict("FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFEE37"));

    /* renamed from: x, reason: collision with root package name */
    protected int[] f11743x;

    public SecP192K1FieldElement() {
        this.f11743x = Nat192.create();
    }

    public SecP192K1FieldElement(BigInteger bigInteger) {
        if (bigInteger == null || bigInteger.signum() < 0 || bigInteger.compareTo(Q) >= 0) {
            throw new IllegalArgumentException("x value invalid for SecP192K1FieldElement");
        }
        this.f11743x = SecP192K1Field.fromBigInteger(bigInteger);
    }

    public SecP192K1FieldElement(int[] r12) {
        this.f11743x = r12;
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public ECFieldElement add(ECFieldElement eCFieldElement) {
        int[] r02 = Nat192.create();
        SecP192K1Field.add(this.f11743x, ((SecP192K1FieldElement) eCFieldElement).f11743x, r02);
        return new SecP192K1FieldElement(r02);
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public ECFieldElement addOne() {
        int[] r02 = Nat192.create();
        SecP192K1Field.addOne(this.f11743x, r02);
        return new SecP192K1FieldElement(r02);
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public ECFieldElement divide(ECFieldElement eCFieldElement) {
        int[] r02 = Nat192.create();
        SecP192K1Field.inv(((SecP192K1FieldElement) eCFieldElement).f11743x, r02);
        SecP192K1Field.multiply(r02, this.f11743x, r02);
        return new SecP192K1FieldElement(r02);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof SecP192K1FieldElement) {
            return Nat192.eq(this.f11743x, ((SecP192K1FieldElement) obj).f11743x);
        }
        return false;
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public String getFieldName() {
        return "SecP192K1Field";
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public int getFieldSize() {
        return Q.bitLength();
    }

    public int hashCode() {
        return Q.hashCode() ^ Arrays.hashCode(this.f11743x, 0, 6);
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public ECFieldElement invert() {
        int[] r02 = Nat192.create();
        SecP192K1Field.inv(this.f11743x, r02);
        return new SecP192K1FieldElement(r02);
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public boolean isOne() {
        return Nat192.isOne(this.f11743x);
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public boolean isZero() {
        return Nat192.isZero(this.f11743x);
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public ECFieldElement multiply(ECFieldElement eCFieldElement) {
        int[] r02 = Nat192.create();
        SecP192K1Field.multiply(this.f11743x, ((SecP192K1FieldElement) eCFieldElement).f11743x, r02);
        return new SecP192K1FieldElement(r02);
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public ECFieldElement negate() {
        int[] r02 = Nat192.create();
        SecP192K1Field.negate(this.f11743x, r02);
        return new SecP192K1FieldElement(r02);
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public ECFieldElement sqrt() {
        int[] r02 = this.f11743x;
        if (Nat192.isZero(r02) || Nat192.isOne(r02)) {
            return this;
        }
        int[] r12 = Nat192.create();
        SecP192K1Field.square(r02, r12);
        SecP192K1Field.multiply(r12, r02, r12);
        int[] r22 = Nat192.create();
        SecP192K1Field.square(r12, r22);
        SecP192K1Field.multiply(r22, r02, r22);
        int[] r32 = Nat192.create();
        SecP192K1Field.squareN(r22, 3, r32);
        SecP192K1Field.multiply(r32, r22, r32);
        SecP192K1Field.squareN(r32, 2, r32);
        SecP192K1Field.multiply(r32, r12, r32);
        SecP192K1Field.squareN(r32, 8, r12);
        SecP192K1Field.multiply(r12, r32, r12);
        SecP192K1Field.squareN(r12, 3, r32);
        SecP192K1Field.multiply(r32, r22, r32);
        int[] r42 = Nat192.create();
        SecP192K1Field.squareN(r32, 16, r42);
        SecP192K1Field.multiply(r42, r12, r42);
        SecP192K1Field.squareN(r42, 35, r12);
        SecP192K1Field.multiply(r12, r42, r12);
        SecP192K1Field.squareN(r12, 70, r42);
        SecP192K1Field.multiply(r42, r12, r42);
        SecP192K1Field.squareN(r42, 19, r12);
        SecP192K1Field.multiply(r12, r32, r12);
        SecP192K1Field.squareN(r12, 20, r12);
        SecP192K1Field.multiply(r12, r32, r12);
        SecP192K1Field.squareN(r12, 4, r12);
        SecP192K1Field.multiply(r12, r22, r12);
        SecP192K1Field.squareN(r12, 6, r12);
        SecP192K1Field.multiply(r12, r22, r12);
        SecP192K1Field.square(r12, r12);
        SecP192K1Field.square(r12, r22);
        if (Nat192.eq(r02, r22)) {
            return new SecP192K1FieldElement(r12);
        }
        return null;
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public ECFieldElement square() {
        int[] r02 = Nat192.create();
        SecP192K1Field.square(this.f11743x, r02);
        return new SecP192K1FieldElement(r02);
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public ECFieldElement subtract(ECFieldElement eCFieldElement) {
        int[] r02 = Nat192.create();
        SecP192K1Field.subtract(this.f11743x, ((SecP192K1FieldElement) eCFieldElement).f11743x, r02);
        return new SecP192K1FieldElement(r02);
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public boolean testBitZero() {
        return Nat192.getBit(this.f11743x, 0) == 1;
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public BigInteger toBigInteger() {
        return Nat192.toBigInteger(this.f11743x);
    }
}
