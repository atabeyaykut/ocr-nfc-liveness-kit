package org.bouncycastle.math.ec.custom.sec;

import java.math.BigInteger;
import org.bouncycastle.math.ec.ECFieldElement;
import org.bouncycastle.math.raw.Nat;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.encoders.Hex;

/* loaded from: classes2.dex */
public class SecP521R1FieldElement extends ECFieldElement.AbstractFp {
    public static final BigInteger Q = new BigInteger(1, Hex.decodeStrict("01FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"));

    /* renamed from: x, reason: collision with root package name */
    protected int[] f11757x;

    public SecP521R1FieldElement() {
        this.f11757x = Nat.create(17);
    }

    public SecP521R1FieldElement(BigInteger bigInteger) {
        if (bigInteger == null || bigInteger.signum() < 0 || bigInteger.compareTo(Q) >= 0) {
            throw new IllegalArgumentException("x value invalid for SecP521R1FieldElement");
        }
        this.f11757x = SecP521R1Field.fromBigInteger(bigInteger);
    }

    public SecP521R1FieldElement(int[] r12) {
        this.f11757x = r12;
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public ECFieldElement add(ECFieldElement eCFieldElement) {
        int[] r02 = Nat.create(17);
        SecP521R1Field.add(this.f11757x, ((SecP521R1FieldElement) eCFieldElement).f11757x, r02);
        return new SecP521R1FieldElement(r02);
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public ECFieldElement addOne() {
        int[] r02 = Nat.create(17);
        SecP521R1Field.addOne(this.f11757x, r02);
        return new SecP521R1FieldElement(r02);
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public ECFieldElement divide(ECFieldElement eCFieldElement) {
        int[] r02 = Nat.create(17);
        SecP521R1Field.inv(((SecP521R1FieldElement) eCFieldElement).f11757x, r02);
        SecP521R1Field.multiply(r02, this.f11757x, r02);
        return new SecP521R1FieldElement(r02);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof SecP521R1FieldElement) {
            return Nat.eq(17, this.f11757x, ((SecP521R1FieldElement) obj).f11757x);
        }
        return false;
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public String getFieldName() {
        return "SecP521R1Field";
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public int getFieldSize() {
        return Q.bitLength();
    }

    public int hashCode() {
        return Q.hashCode() ^ Arrays.hashCode(this.f11757x, 0, 17);
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public ECFieldElement invert() {
        int[] r02 = Nat.create(17);
        SecP521R1Field.inv(this.f11757x, r02);
        return new SecP521R1FieldElement(r02);
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public boolean isOne() {
        return Nat.isOne(17, this.f11757x);
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public boolean isZero() {
        return Nat.isZero(17, this.f11757x);
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public ECFieldElement multiply(ECFieldElement eCFieldElement) {
        int[] r02 = Nat.create(17);
        SecP521R1Field.multiply(this.f11757x, ((SecP521R1FieldElement) eCFieldElement).f11757x, r02);
        return new SecP521R1FieldElement(r02);
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public ECFieldElement negate() {
        int[] r02 = Nat.create(17);
        SecP521R1Field.negate(this.f11757x, r02);
        return new SecP521R1FieldElement(r02);
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public ECFieldElement sqrt() {
        int[] r02 = this.f11757x;
        if (Nat.isZero(17, r02) || Nat.isOne(17, r02)) {
            return this;
        }
        int[] r22 = Nat.create(33);
        int[] r32 = Nat.create(17);
        int[] r42 = Nat.create(17);
        SecP521R1Field.squareN(r02, 519, r32, r22);
        SecP521R1Field.square(r32, r42, r22);
        if (Nat.eq(17, r02, r42)) {
            return new SecP521R1FieldElement(r32);
        }
        return null;
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public ECFieldElement square() {
        int[] r02 = Nat.create(17);
        SecP521R1Field.square(this.f11757x, r02);
        return new SecP521R1FieldElement(r02);
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public ECFieldElement subtract(ECFieldElement eCFieldElement) {
        int[] r02 = Nat.create(17);
        SecP521R1Field.subtract(this.f11757x, ((SecP521R1FieldElement) eCFieldElement).f11757x, r02);
        return new SecP521R1FieldElement(r02);
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public boolean testBitZero() {
        return Nat.getBit(this.f11757x, 0) == 1;
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public BigInteger toBigInteger() {
        return Nat.toBigInteger(17, this.f11757x);
    }
}
