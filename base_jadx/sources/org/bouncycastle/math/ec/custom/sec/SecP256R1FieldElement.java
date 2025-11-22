package org.bouncycastle.math.ec.custom.sec;

import java.math.BigInteger;
import org.bouncycastle.math.ec.ECFieldElement;
import org.bouncycastle.math.raw.Nat256;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.encoders.Hex;

/* loaded from: classes2.dex */
public class SecP256R1FieldElement extends ECFieldElement.AbstractFp {
    public static final BigInteger Q = new BigInteger(1, Hex.decodeStrict("FFFFFFFF00000001000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF"));

    /* renamed from: x, reason: collision with root package name */
    protected int[] f11753x;

    public SecP256R1FieldElement() {
        this.f11753x = Nat256.create();
    }

    public SecP256R1FieldElement(BigInteger bigInteger) {
        if (bigInteger == null || bigInteger.signum() < 0 || bigInteger.compareTo(Q) >= 0) {
            throw new IllegalArgumentException("x value invalid for SecP256R1FieldElement");
        }
        this.f11753x = SecP256R1Field.fromBigInteger(bigInteger);
    }

    public SecP256R1FieldElement(int[] r12) {
        this.f11753x = r12;
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public ECFieldElement add(ECFieldElement eCFieldElement) {
        int[] r02 = Nat256.create();
        SecP256R1Field.add(this.f11753x, ((SecP256R1FieldElement) eCFieldElement).f11753x, r02);
        return new SecP256R1FieldElement(r02);
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public ECFieldElement addOne() {
        int[] r02 = Nat256.create();
        SecP256R1Field.addOne(this.f11753x, r02);
        return new SecP256R1FieldElement(r02);
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public ECFieldElement divide(ECFieldElement eCFieldElement) {
        int[] r02 = Nat256.create();
        SecP256R1Field.inv(((SecP256R1FieldElement) eCFieldElement).f11753x, r02);
        SecP256R1Field.multiply(r02, this.f11753x, r02);
        return new SecP256R1FieldElement(r02);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof SecP256R1FieldElement) {
            return Nat256.eq(this.f11753x, ((SecP256R1FieldElement) obj).f11753x);
        }
        return false;
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public String getFieldName() {
        return "SecP256R1Field";
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public int getFieldSize() {
        return Q.bitLength();
    }

    public int hashCode() {
        return Q.hashCode() ^ Arrays.hashCode(this.f11753x, 0, 8);
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public ECFieldElement invert() {
        int[] r02 = Nat256.create();
        SecP256R1Field.inv(this.f11753x, r02);
        return new SecP256R1FieldElement(r02);
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public boolean isOne() {
        return Nat256.isOne(this.f11753x);
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public boolean isZero() {
        return Nat256.isZero(this.f11753x);
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public ECFieldElement multiply(ECFieldElement eCFieldElement) {
        int[] r02 = Nat256.create();
        SecP256R1Field.multiply(this.f11753x, ((SecP256R1FieldElement) eCFieldElement).f11753x, r02);
        return new SecP256R1FieldElement(r02);
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public ECFieldElement negate() {
        int[] r02 = Nat256.create();
        SecP256R1Field.negate(this.f11753x, r02);
        return new SecP256R1FieldElement(r02);
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public ECFieldElement sqrt() {
        int[] r02 = this.f11753x;
        if (Nat256.isZero(r02) || Nat256.isOne(r02)) {
            return this;
        }
        int[] r12 = Nat256.createExt();
        int[] r22 = Nat256.create();
        int[] r32 = Nat256.create();
        SecP256R1Field.square(r02, r22, r12);
        SecP256R1Field.multiply(r22, r02, r22, r12);
        SecP256R1Field.squareN(r22, 2, r32, r12);
        SecP256R1Field.multiply(r32, r22, r32, r12);
        SecP256R1Field.squareN(r32, 4, r22, r12);
        SecP256R1Field.multiply(r22, r32, r22, r12);
        SecP256R1Field.squareN(r22, 8, r32, r12);
        SecP256R1Field.multiply(r32, r22, r32, r12);
        SecP256R1Field.squareN(r32, 16, r22, r12);
        SecP256R1Field.multiply(r22, r32, r22, r12);
        SecP256R1Field.squareN(r22, 32, r22, r12);
        SecP256R1Field.multiply(r22, r02, r22, r12);
        SecP256R1Field.squareN(r22, 96, r22, r12);
        SecP256R1Field.multiply(r22, r02, r22, r12);
        SecP256R1Field.squareN(r22, 94, r22, r12);
        SecP256R1Field.square(r22, r32, r12);
        if (Nat256.eq(r02, r32)) {
            return new SecP256R1FieldElement(r22);
        }
        return null;
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public ECFieldElement square() {
        int[] r02 = Nat256.create();
        SecP256R1Field.square(this.f11753x, r02);
        return new SecP256R1FieldElement(r02);
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public ECFieldElement subtract(ECFieldElement eCFieldElement) {
        int[] r02 = Nat256.create();
        SecP256R1Field.subtract(this.f11753x, ((SecP256R1FieldElement) eCFieldElement).f11753x, r02);
        return new SecP256R1FieldElement(r02);
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public boolean testBitZero() {
        return Nat256.getBit(this.f11753x, 0) == 1;
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public BigInteger toBigInteger() {
        return Nat256.toBigInteger(this.f11753x);
    }
}
