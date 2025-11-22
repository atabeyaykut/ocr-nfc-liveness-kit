package org.bouncycastle.math.ec.custom.sec;

import java.math.BigInteger;
import org.bouncycastle.math.ec.ECFieldElement;
import org.bouncycastle.math.raw.Nat128;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.encoders.Hex;

/* loaded from: classes2.dex */
public class SecP128R1FieldElement extends ECFieldElement.AbstractFp {
    public static final BigInteger Q = new BigInteger(1, Hex.decodeStrict("FFFFFFFDFFFFFFFFFFFFFFFFFFFFFFFF"));

    /* renamed from: x, reason: collision with root package name */
    protected int[] f11736x;

    public SecP128R1FieldElement() {
        this.f11736x = Nat128.create();
    }

    public SecP128R1FieldElement(BigInteger bigInteger) {
        if (bigInteger == null || bigInteger.signum() < 0 || bigInteger.compareTo(Q) >= 0) {
            throw new IllegalArgumentException("x value invalid for SecP128R1FieldElement");
        }
        this.f11736x = SecP128R1Field.fromBigInteger(bigInteger);
    }

    public SecP128R1FieldElement(int[] r12) {
        this.f11736x = r12;
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public ECFieldElement add(ECFieldElement eCFieldElement) {
        int[] r02 = Nat128.create();
        SecP128R1Field.add(this.f11736x, ((SecP128R1FieldElement) eCFieldElement).f11736x, r02);
        return new SecP128R1FieldElement(r02);
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public ECFieldElement addOne() {
        int[] r02 = Nat128.create();
        SecP128R1Field.addOne(this.f11736x, r02);
        return new SecP128R1FieldElement(r02);
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public ECFieldElement divide(ECFieldElement eCFieldElement) {
        int[] r02 = Nat128.create();
        SecP128R1Field.inv(((SecP128R1FieldElement) eCFieldElement).f11736x, r02);
        SecP128R1Field.multiply(r02, this.f11736x, r02);
        return new SecP128R1FieldElement(r02);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof SecP128R1FieldElement) {
            return Nat128.eq(this.f11736x, ((SecP128R1FieldElement) obj).f11736x);
        }
        return false;
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public String getFieldName() {
        return "SecP128R1Field";
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public int getFieldSize() {
        return Q.bitLength();
    }

    public int hashCode() {
        return Q.hashCode() ^ Arrays.hashCode(this.f11736x, 0, 4);
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public ECFieldElement invert() {
        int[] r02 = Nat128.create();
        SecP128R1Field.inv(this.f11736x, r02);
        return new SecP128R1FieldElement(r02);
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public boolean isOne() {
        return Nat128.isOne(this.f11736x);
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public boolean isZero() {
        return Nat128.isZero(this.f11736x);
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public ECFieldElement multiply(ECFieldElement eCFieldElement) {
        int[] r02 = Nat128.create();
        SecP128R1Field.multiply(this.f11736x, ((SecP128R1FieldElement) eCFieldElement).f11736x, r02);
        return new SecP128R1FieldElement(r02);
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public ECFieldElement negate() {
        int[] r02 = Nat128.create();
        SecP128R1Field.negate(this.f11736x, r02);
        return new SecP128R1FieldElement(r02);
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public ECFieldElement sqrt() {
        int[] r02 = this.f11736x;
        if (Nat128.isZero(r02) || Nat128.isOne(r02)) {
            return this;
        }
        int[] r12 = Nat128.create();
        SecP128R1Field.square(r02, r12);
        SecP128R1Field.multiply(r12, r02, r12);
        int[] r22 = Nat128.create();
        SecP128R1Field.squareN(r12, 2, r22);
        SecP128R1Field.multiply(r22, r12, r22);
        int[] r42 = Nat128.create();
        SecP128R1Field.squareN(r22, 4, r42);
        SecP128R1Field.multiply(r42, r22, r42);
        SecP128R1Field.squareN(r42, 2, r22);
        SecP128R1Field.multiply(r22, r12, r22);
        SecP128R1Field.squareN(r22, 10, r12);
        SecP128R1Field.multiply(r12, r22, r12);
        SecP128R1Field.squareN(r12, 10, r42);
        SecP128R1Field.multiply(r42, r22, r42);
        SecP128R1Field.square(r42, r22);
        SecP128R1Field.multiply(r22, r02, r22);
        SecP128R1Field.squareN(r22, 95, r22);
        SecP128R1Field.square(r22, r42);
        if (Nat128.eq(r02, r42)) {
            return new SecP128R1FieldElement(r22);
        }
        return null;
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public ECFieldElement square() {
        int[] r02 = Nat128.create();
        SecP128R1Field.square(this.f11736x, r02);
        return new SecP128R1FieldElement(r02);
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public ECFieldElement subtract(ECFieldElement eCFieldElement) {
        int[] r02 = Nat128.create();
        SecP128R1Field.subtract(this.f11736x, ((SecP128R1FieldElement) eCFieldElement).f11736x, r02);
        return new SecP128R1FieldElement(r02);
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public boolean testBitZero() {
        return Nat128.getBit(this.f11736x, 0) == 1;
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public BigInteger toBigInteger() {
        return Nat128.toBigInteger(this.f11736x);
    }
}
