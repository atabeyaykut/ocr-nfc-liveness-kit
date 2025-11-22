package org.bouncycastle.math.ec.custom.sec;

import java.math.BigInteger;
import org.bouncycastle.math.ec.ECFieldElement;
import org.bouncycastle.math.raw.Nat160;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.encoders.Hex;

/* loaded from: classes2.dex */
public class SecP160R1FieldElement extends ECFieldElement.AbstractFp {
    public static final BigInteger Q = new BigInteger(1, Hex.decodeStrict("FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7FFFFFFF"));

    /* renamed from: x, reason: collision with root package name */
    protected int[] f11739x;

    public SecP160R1FieldElement() {
        this.f11739x = Nat160.create();
    }

    public SecP160R1FieldElement(BigInteger bigInteger) {
        if (bigInteger == null || bigInteger.signum() < 0 || bigInteger.compareTo(Q) >= 0) {
            throw new IllegalArgumentException("x value invalid for SecP160R1FieldElement");
        }
        this.f11739x = SecP160R1Field.fromBigInteger(bigInteger);
    }

    public SecP160R1FieldElement(int[] r12) {
        this.f11739x = r12;
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public ECFieldElement add(ECFieldElement eCFieldElement) {
        int[] r02 = Nat160.create();
        SecP160R1Field.add(this.f11739x, ((SecP160R1FieldElement) eCFieldElement).f11739x, r02);
        return new SecP160R1FieldElement(r02);
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public ECFieldElement addOne() {
        int[] r02 = Nat160.create();
        SecP160R1Field.addOne(this.f11739x, r02);
        return new SecP160R1FieldElement(r02);
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public ECFieldElement divide(ECFieldElement eCFieldElement) {
        int[] r02 = Nat160.create();
        SecP160R1Field.inv(((SecP160R1FieldElement) eCFieldElement).f11739x, r02);
        SecP160R1Field.multiply(r02, this.f11739x, r02);
        return new SecP160R1FieldElement(r02);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof SecP160R1FieldElement) {
            return Nat160.eq(this.f11739x, ((SecP160R1FieldElement) obj).f11739x);
        }
        return false;
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public String getFieldName() {
        return "SecP160R1Field";
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public int getFieldSize() {
        return Q.bitLength();
    }

    public int hashCode() {
        return Q.hashCode() ^ Arrays.hashCode(this.f11739x, 0, 5);
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public ECFieldElement invert() {
        int[] r02 = Nat160.create();
        SecP160R1Field.inv(this.f11739x, r02);
        return new SecP160R1FieldElement(r02);
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public boolean isOne() {
        return Nat160.isOne(this.f11739x);
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public boolean isZero() {
        return Nat160.isZero(this.f11739x);
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public ECFieldElement multiply(ECFieldElement eCFieldElement) {
        int[] r02 = Nat160.create();
        SecP160R1Field.multiply(this.f11739x, ((SecP160R1FieldElement) eCFieldElement).f11739x, r02);
        return new SecP160R1FieldElement(r02);
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public ECFieldElement negate() {
        int[] r02 = Nat160.create();
        SecP160R1Field.negate(this.f11739x, r02);
        return new SecP160R1FieldElement(r02);
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public ECFieldElement sqrt() {
        int[] r02 = this.f11739x;
        if (Nat160.isZero(r02) || Nat160.isOne(r02)) {
            return this;
        }
        int[] r12 = Nat160.create();
        SecP160R1Field.square(r02, r12);
        SecP160R1Field.multiply(r12, r02, r12);
        int[] r22 = Nat160.create();
        SecP160R1Field.squareN(r12, 2, r22);
        SecP160R1Field.multiply(r22, r12, r22);
        SecP160R1Field.squareN(r22, 4, r12);
        SecP160R1Field.multiply(r12, r22, r12);
        SecP160R1Field.squareN(r12, 8, r22);
        SecP160R1Field.multiply(r22, r12, r22);
        SecP160R1Field.squareN(r22, 16, r12);
        SecP160R1Field.multiply(r12, r22, r12);
        SecP160R1Field.squareN(r12, 32, r22);
        SecP160R1Field.multiply(r22, r12, r22);
        SecP160R1Field.squareN(r22, 64, r12);
        SecP160R1Field.multiply(r12, r22, r12);
        SecP160R1Field.square(r12, r22);
        SecP160R1Field.multiply(r22, r02, r22);
        SecP160R1Field.squareN(r22, 29, r22);
        SecP160R1Field.square(r22, r12);
        if (Nat160.eq(r02, r12)) {
            return new SecP160R1FieldElement(r22);
        }
        return null;
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public ECFieldElement square() {
        int[] r02 = Nat160.create();
        SecP160R1Field.square(this.f11739x, r02);
        return new SecP160R1FieldElement(r02);
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public ECFieldElement subtract(ECFieldElement eCFieldElement) {
        int[] r02 = Nat160.create();
        SecP160R1Field.subtract(this.f11739x, ((SecP160R1FieldElement) eCFieldElement).f11739x, r02);
        return new SecP160R1FieldElement(r02);
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public boolean testBitZero() {
        return Nat160.getBit(this.f11739x, 0) == 1;
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public BigInteger toBigInteger() {
        return Nat160.toBigInteger(this.f11739x);
    }
}
