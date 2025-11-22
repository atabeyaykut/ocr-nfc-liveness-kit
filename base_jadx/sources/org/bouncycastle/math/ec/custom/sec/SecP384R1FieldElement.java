package org.bouncycastle.math.ec.custom.sec;

import java.math.BigInteger;
import org.bouncycastle.math.ec.ECFieldElement;
import org.bouncycastle.math.raw.Nat;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.encoders.Hex;

/* loaded from: classes2.dex */
public class SecP384R1FieldElement extends ECFieldElement.AbstractFp {
    public static final BigInteger Q = new BigInteger(1, Hex.decodeStrict("FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFF0000000000000000FFFFFFFF"));

    /* renamed from: x, reason: collision with root package name */
    protected int[] f11755x;

    public SecP384R1FieldElement() {
        this.f11755x = Nat.create(12);
    }

    public SecP384R1FieldElement(BigInteger bigInteger) {
        if (bigInteger == null || bigInteger.signum() < 0 || bigInteger.compareTo(Q) >= 0) {
            throw new IllegalArgumentException("x value invalid for SecP384R1FieldElement");
        }
        this.f11755x = SecP384R1Field.fromBigInteger(bigInteger);
    }

    public SecP384R1FieldElement(int[] r12) {
        this.f11755x = r12;
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public ECFieldElement add(ECFieldElement eCFieldElement) {
        int[] r02 = Nat.create(12);
        SecP384R1Field.add(this.f11755x, ((SecP384R1FieldElement) eCFieldElement).f11755x, r02);
        return new SecP384R1FieldElement(r02);
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public ECFieldElement addOne() {
        int[] r02 = Nat.create(12);
        SecP384R1Field.addOne(this.f11755x, r02);
        return new SecP384R1FieldElement(r02);
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public ECFieldElement divide(ECFieldElement eCFieldElement) {
        int[] r02 = Nat.create(12);
        SecP384R1Field.inv(((SecP384R1FieldElement) eCFieldElement).f11755x, r02);
        SecP384R1Field.multiply(r02, this.f11755x, r02);
        return new SecP384R1FieldElement(r02);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof SecP384R1FieldElement) {
            return Nat.eq(12, this.f11755x, ((SecP384R1FieldElement) obj).f11755x);
        }
        return false;
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public String getFieldName() {
        return "SecP384R1Field";
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public int getFieldSize() {
        return Q.bitLength();
    }

    public int hashCode() {
        return Q.hashCode() ^ Arrays.hashCode(this.f11755x, 0, 12);
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public ECFieldElement invert() {
        int[] r02 = Nat.create(12);
        SecP384R1Field.inv(this.f11755x, r02);
        return new SecP384R1FieldElement(r02);
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public boolean isOne() {
        return Nat.isOne(12, this.f11755x);
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public boolean isZero() {
        return Nat.isZero(12, this.f11755x);
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public ECFieldElement multiply(ECFieldElement eCFieldElement) {
        int[] r02 = Nat.create(12);
        SecP384R1Field.multiply(this.f11755x, ((SecP384R1FieldElement) eCFieldElement).f11755x, r02);
        return new SecP384R1FieldElement(r02);
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public ECFieldElement negate() {
        int[] r02 = Nat.create(12);
        SecP384R1Field.negate(this.f11755x, r02);
        return new SecP384R1FieldElement(r02);
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public ECFieldElement sqrt() {
        int[] r02 = this.f11755x;
        if (Nat.isZero(12, r02) || Nat.isOne(12, r02)) {
            return this;
        }
        int[] r22 = Nat.create(24);
        int[] r32 = Nat.create(12);
        int[] r42 = Nat.create(12);
        int[] r52 = Nat.create(12);
        int[] r6 = Nat.create(12);
        SecP384R1Field.square(r02, r32, r22);
        SecP384R1Field.multiply(r32, r02, r32, r22);
        SecP384R1Field.squareN(r32, 2, r42, r22);
        SecP384R1Field.multiply(r42, r32, r42, r22);
        SecP384R1Field.square(r42, r42, r22);
        SecP384R1Field.multiply(r42, r02, r42, r22);
        SecP384R1Field.squareN(r42, 5, r52, r22);
        SecP384R1Field.multiply(r52, r42, r52, r22);
        SecP384R1Field.squareN(r52, 5, r6, r22);
        SecP384R1Field.multiply(r6, r42, r6, r22);
        SecP384R1Field.squareN(r6, 15, r42, r22);
        SecP384R1Field.multiply(r42, r6, r42, r22);
        SecP384R1Field.squareN(r42, 2, r52, r22);
        SecP384R1Field.multiply(r32, r52, r32, r22);
        SecP384R1Field.squareN(r52, 28, r52, r22);
        SecP384R1Field.multiply(r42, r52, r42, r22);
        SecP384R1Field.squareN(r42, 60, r52, r22);
        SecP384R1Field.multiply(r52, r42, r52, r22);
        SecP384R1Field.squareN(r52, 120, r42, r22);
        SecP384R1Field.multiply(r42, r52, r42, r22);
        SecP384R1Field.squareN(r42, 15, r42, r22);
        SecP384R1Field.multiply(r42, r6, r42, r22);
        SecP384R1Field.squareN(r42, 33, r42, r22);
        SecP384R1Field.multiply(r42, r32, r42, r22);
        SecP384R1Field.squareN(r42, 64, r42, r22);
        SecP384R1Field.multiply(r42, r02, r42, r22);
        SecP384R1Field.squareN(r42, 30, r32, r22);
        SecP384R1Field.square(r32, r42, r22);
        if (Nat.eq(12, r02, r42)) {
            return new SecP384R1FieldElement(r32);
        }
        return null;
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public ECFieldElement square() {
        int[] r02 = Nat.create(12);
        SecP384R1Field.square(this.f11755x, r02);
        return new SecP384R1FieldElement(r02);
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public ECFieldElement subtract(ECFieldElement eCFieldElement) {
        int[] r02 = Nat.create(12);
        SecP384R1Field.subtract(this.f11755x, ((SecP384R1FieldElement) eCFieldElement).f11755x, r02);
        return new SecP384R1FieldElement(r02);
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public boolean testBitZero() {
        return Nat.getBit(this.f11755x, 0) == 1;
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public BigInteger toBigInteger() {
        return Nat.toBigInteger(12, this.f11755x);
    }
}
