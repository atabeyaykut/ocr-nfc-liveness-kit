package org.bouncycastle.math.ec.custom.djb;

import java.math.BigInteger;
import org.bouncycastle.math.ec.ECFieldElement;
import org.bouncycastle.math.raw.Nat256;
import org.bouncycastle.util.Arrays;

/* loaded from: classes2.dex */
public class Curve25519FieldElement extends ECFieldElement.AbstractFp {

    /* renamed from: x, reason: collision with root package name */
    protected int[] f11732x;
    public static final BigInteger Q = Nat256.toBigInteger(Curve25519Field.P);
    private static final int[] PRECOMP_POW2 = {1242472624, -991028441, -1389370248, 792926214, 1039914919, 726466713, 1338105611, 730014848};

    public Curve25519FieldElement() {
        this.f11732x = Nat256.create();
    }

    public Curve25519FieldElement(BigInteger bigInteger) {
        if (bigInteger == null || bigInteger.signum() < 0 || bigInteger.compareTo(Q) >= 0) {
            throw new IllegalArgumentException("x value invalid for Curve25519FieldElement");
        }
        this.f11732x = Curve25519Field.fromBigInteger(bigInteger);
    }

    public Curve25519FieldElement(int[] r12) {
        this.f11732x = r12;
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public ECFieldElement add(ECFieldElement eCFieldElement) {
        int[] r02 = Nat256.create();
        Curve25519Field.add(this.f11732x, ((Curve25519FieldElement) eCFieldElement).f11732x, r02);
        return new Curve25519FieldElement(r02);
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public ECFieldElement addOne() {
        int[] r02 = Nat256.create();
        Curve25519Field.addOne(this.f11732x, r02);
        return new Curve25519FieldElement(r02);
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public ECFieldElement divide(ECFieldElement eCFieldElement) {
        int[] r02 = Nat256.create();
        Curve25519Field.inv(((Curve25519FieldElement) eCFieldElement).f11732x, r02);
        Curve25519Field.multiply(r02, this.f11732x, r02);
        return new Curve25519FieldElement(r02);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof Curve25519FieldElement) {
            return Nat256.eq(this.f11732x, ((Curve25519FieldElement) obj).f11732x);
        }
        return false;
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public String getFieldName() {
        return "Curve25519Field";
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public int getFieldSize() {
        return Q.bitLength();
    }

    public int hashCode() {
        return Q.hashCode() ^ Arrays.hashCode(this.f11732x, 0, 8);
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public ECFieldElement invert() {
        int[] r02 = Nat256.create();
        Curve25519Field.inv(this.f11732x, r02);
        return new Curve25519FieldElement(r02);
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public boolean isOne() {
        return Nat256.isOne(this.f11732x);
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public boolean isZero() {
        return Nat256.isZero(this.f11732x);
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public ECFieldElement multiply(ECFieldElement eCFieldElement) {
        int[] r02 = Nat256.create();
        Curve25519Field.multiply(this.f11732x, ((Curve25519FieldElement) eCFieldElement).f11732x, r02);
        return new Curve25519FieldElement(r02);
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public ECFieldElement negate() {
        int[] r02 = Nat256.create();
        Curve25519Field.negate(this.f11732x, r02);
        return new Curve25519FieldElement(r02);
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public ECFieldElement sqrt() {
        int[] r02 = this.f11732x;
        if (Nat256.isZero(r02) || Nat256.isOne(r02)) {
            return this;
        }
        int[] r12 = Nat256.create();
        Curve25519Field.square(r02, r12);
        Curve25519Field.multiply(r12, r02, r12);
        Curve25519Field.square(r12, r12);
        Curve25519Field.multiply(r12, r02, r12);
        int[] r22 = Nat256.create();
        Curve25519Field.square(r12, r22);
        Curve25519Field.multiply(r22, r02, r22);
        int[] r32 = Nat256.create();
        Curve25519Field.squareN(r22, 3, r32);
        Curve25519Field.multiply(r32, r12, r32);
        Curve25519Field.squareN(r32, 4, r12);
        Curve25519Field.multiply(r12, r22, r12);
        Curve25519Field.squareN(r12, 4, r32);
        Curve25519Field.multiply(r32, r22, r32);
        Curve25519Field.squareN(r32, 15, r22);
        Curve25519Field.multiply(r22, r32, r22);
        Curve25519Field.squareN(r22, 30, r32);
        Curve25519Field.multiply(r32, r22, r32);
        Curve25519Field.squareN(r32, 60, r22);
        Curve25519Field.multiply(r22, r32, r22);
        Curve25519Field.squareN(r22, 11, r32);
        Curve25519Field.multiply(r32, r12, r32);
        Curve25519Field.squareN(r32, 120, r12);
        Curve25519Field.multiply(r12, r22, r12);
        Curve25519Field.square(r12, r12);
        Curve25519Field.square(r12, r22);
        if (Nat256.eq(r02, r22)) {
            return new Curve25519FieldElement(r12);
        }
        Curve25519Field.multiply(r12, PRECOMP_POW2, r12);
        Curve25519Field.square(r12, r22);
        if (Nat256.eq(r02, r22)) {
            return new Curve25519FieldElement(r12);
        }
        return null;
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public ECFieldElement square() {
        int[] r02 = Nat256.create();
        Curve25519Field.square(this.f11732x, r02);
        return new Curve25519FieldElement(r02);
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public ECFieldElement subtract(ECFieldElement eCFieldElement) {
        int[] r02 = Nat256.create();
        Curve25519Field.subtract(this.f11732x, ((Curve25519FieldElement) eCFieldElement).f11732x, r02);
        return new Curve25519FieldElement(r02);
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public boolean testBitZero() {
        return Nat256.getBit(this.f11732x, 0) == 1;
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public BigInteger toBigInteger() {
        return Nat256.toBigInteger(this.f11732x);
    }
}
