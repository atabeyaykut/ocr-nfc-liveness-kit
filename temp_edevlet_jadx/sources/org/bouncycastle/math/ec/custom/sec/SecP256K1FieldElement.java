package org.bouncycastle.math.ec.custom.sec;

import java.math.BigInteger;
import org.bouncycastle.math.ec.ECFieldElement;
import org.bouncycastle.math.raw.Nat256;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.encoders.Hex;

/* loaded from: classes2.dex */
public class SecP256K1FieldElement extends ECFieldElement.AbstractFp {
    public static final BigInteger Q = new BigInteger(1, Hex.decodeStrict("FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFC2F"));

    /* renamed from: x, reason: collision with root package name */
    protected int[] f11751x;

    public SecP256K1FieldElement() {
        this.f11751x = Nat256.create();
    }

    public SecP256K1FieldElement(BigInteger bigInteger) {
        if (bigInteger == null || bigInteger.signum() < 0 || bigInteger.compareTo(Q) >= 0) {
            throw new IllegalArgumentException("x value invalid for SecP256K1FieldElement");
        }
        this.f11751x = SecP256K1Field.fromBigInteger(bigInteger);
    }

    public SecP256K1FieldElement(int[] r12) {
        this.f11751x = r12;
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public ECFieldElement add(ECFieldElement eCFieldElement) {
        int[] r02 = Nat256.create();
        SecP256K1Field.add(this.f11751x, ((SecP256K1FieldElement) eCFieldElement).f11751x, r02);
        return new SecP256K1FieldElement(r02);
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public ECFieldElement addOne() {
        int[] r02 = Nat256.create();
        SecP256K1Field.addOne(this.f11751x, r02);
        return new SecP256K1FieldElement(r02);
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public ECFieldElement divide(ECFieldElement eCFieldElement) {
        int[] r02 = Nat256.create();
        SecP256K1Field.inv(((SecP256K1FieldElement) eCFieldElement).f11751x, r02);
        SecP256K1Field.multiply(r02, this.f11751x, r02);
        return new SecP256K1FieldElement(r02);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof SecP256K1FieldElement) {
            return Nat256.eq(this.f11751x, ((SecP256K1FieldElement) obj).f11751x);
        }
        return false;
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public String getFieldName() {
        return "SecP256K1Field";
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public int getFieldSize() {
        return Q.bitLength();
    }

    public int hashCode() {
        return Q.hashCode() ^ Arrays.hashCode(this.f11751x, 0, 8);
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public ECFieldElement invert() {
        int[] r02 = Nat256.create();
        SecP256K1Field.inv(this.f11751x, r02);
        return new SecP256K1FieldElement(r02);
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public boolean isOne() {
        return Nat256.isOne(this.f11751x);
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public boolean isZero() {
        return Nat256.isZero(this.f11751x);
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public ECFieldElement multiply(ECFieldElement eCFieldElement) {
        int[] r02 = Nat256.create();
        SecP256K1Field.multiply(this.f11751x, ((SecP256K1FieldElement) eCFieldElement).f11751x, r02);
        return new SecP256K1FieldElement(r02);
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public ECFieldElement negate() {
        int[] r02 = Nat256.create();
        SecP256K1Field.negate(this.f11751x, r02);
        return new SecP256K1FieldElement(r02);
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public ECFieldElement sqrt() {
        int[] r02 = this.f11751x;
        if (Nat256.isZero(r02) || Nat256.isOne(r02)) {
            return this;
        }
        int[] r12 = Nat256.createExt();
        int[] r22 = Nat256.create();
        SecP256K1Field.square(r02, r22, r12);
        SecP256K1Field.multiply(r22, r02, r22, r12);
        int[] r32 = Nat256.create();
        SecP256K1Field.square(r22, r32, r12);
        SecP256K1Field.multiply(r32, r02, r32, r12);
        int[] r42 = Nat256.create();
        SecP256K1Field.squareN(r32, 3, r42, r12);
        SecP256K1Field.multiply(r42, r32, r42, r12);
        SecP256K1Field.squareN(r42, 3, r42, r12);
        SecP256K1Field.multiply(r42, r32, r42, r12);
        SecP256K1Field.squareN(r42, 2, r42, r12);
        SecP256K1Field.multiply(r42, r22, r42, r12);
        int[] r72 = Nat256.create();
        SecP256K1Field.squareN(r42, 11, r72, r12);
        SecP256K1Field.multiply(r72, r42, r72, r12);
        SecP256K1Field.squareN(r72, 22, r42, r12);
        SecP256K1Field.multiply(r42, r72, r42, r12);
        int[] r82 = Nat256.create();
        SecP256K1Field.squareN(r42, 44, r82, r12);
        SecP256K1Field.multiply(r82, r42, r82, r12);
        int[] r10 = Nat256.create();
        SecP256K1Field.squareN(r82, 88, r10, r12);
        SecP256K1Field.multiply(r10, r82, r10, r12);
        SecP256K1Field.squareN(r10, 44, r82, r12);
        SecP256K1Field.multiply(r82, r42, r82, r12);
        SecP256K1Field.squareN(r82, 3, r42, r12);
        SecP256K1Field.multiply(r42, r32, r42, r12);
        SecP256K1Field.squareN(r42, 23, r42, r12);
        SecP256K1Field.multiply(r42, r72, r42, r12);
        SecP256K1Field.squareN(r42, 6, r42, r12);
        SecP256K1Field.multiply(r42, r22, r42, r12);
        SecP256K1Field.squareN(r42, 2, r42, r12);
        SecP256K1Field.square(r42, r22, r12);
        if (Nat256.eq(r02, r22)) {
            return new SecP256K1FieldElement(r42);
        }
        return null;
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public ECFieldElement square() {
        int[] r02 = Nat256.create();
        SecP256K1Field.square(this.f11751x, r02);
        return new SecP256K1FieldElement(r02);
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public ECFieldElement subtract(ECFieldElement eCFieldElement) {
        int[] r02 = Nat256.create();
        SecP256K1Field.subtract(this.f11751x, ((SecP256K1FieldElement) eCFieldElement).f11751x, r02);
        return new SecP256K1FieldElement(r02);
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public boolean testBitZero() {
        return Nat256.getBit(this.f11751x, 0) == 1;
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public BigInteger toBigInteger() {
        return Nat256.toBigInteger(this.f11751x);
    }
}
