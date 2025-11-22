package org.bouncycastle.math.ec.custom.sec;

import java.math.BigInteger;
import org.bouncycastle.math.ec.ECFieldElement;
import org.bouncycastle.math.raw.Nat224;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.encoders.Hex;

/* loaded from: classes2.dex */
public class SecP224K1FieldElement extends ECFieldElement.AbstractFp {

    /* renamed from: x, reason: collision with root package name */
    protected int[] f11747x;
    public static final BigInteger Q = new BigInteger(1, Hex.decodeStrict("FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFE56D"));
    private static final int[] PRECOMP_POW2 = {868209154, -587542221, 579297866, -1014948952, -1470801668, 514782679, -1897982644};

    public SecP224K1FieldElement() {
        this.f11747x = Nat224.create();
    }

    public SecP224K1FieldElement(BigInteger bigInteger) {
        if (bigInteger == null || bigInteger.signum() < 0 || bigInteger.compareTo(Q) >= 0) {
            throw new IllegalArgumentException("x value invalid for SecP224K1FieldElement");
        }
        this.f11747x = SecP224K1Field.fromBigInteger(bigInteger);
    }

    public SecP224K1FieldElement(int[] r12) {
        this.f11747x = r12;
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public ECFieldElement add(ECFieldElement eCFieldElement) {
        int[] r02 = Nat224.create();
        SecP224K1Field.add(this.f11747x, ((SecP224K1FieldElement) eCFieldElement).f11747x, r02);
        return new SecP224K1FieldElement(r02);
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public ECFieldElement addOne() {
        int[] r02 = Nat224.create();
        SecP224K1Field.addOne(this.f11747x, r02);
        return new SecP224K1FieldElement(r02);
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public ECFieldElement divide(ECFieldElement eCFieldElement) {
        int[] r02 = Nat224.create();
        SecP224K1Field.inv(((SecP224K1FieldElement) eCFieldElement).f11747x, r02);
        SecP224K1Field.multiply(r02, this.f11747x, r02);
        return new SecP224K1FieldElement(r02);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof SecP224K1FieldElement) {
            return Nat224.eq(this.f11747x, ((SecP224K1FieldElement) obj).f11747x);
        }
        return false;
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public String getFieldName() {
        return "SecP224K1Field";
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public int getFieldSize() {
        return Q.bitLength();
    }

    public int hashCode() {
        return Q.hashCode() ^ Arrays.hashCode(this.f11747x, 0, 7);
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public ECFieldElement invert() {
        int[] r02 = Nat224.create();
        SecP224K1Field.inv(this.f11747x, r02);
        return new SecP224K1FieldElement(r02);
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public boolean isOne() {
        return Nat224.isOne(this.f11747x);
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public boolean isZero() {
        return Nat224.isZero(this.f11747x);
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public ECFieldElement multiply(ECFieldElement eCFieldElement) {
        int[] r02 = Nat224.create();
        SecP224K1Field.multiply(this.f11747x, ((SecP224K1FieldElement) eCFieldElement).f11747x, r02);
        return new SecP224K1FieldElement(r02);
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public ECFieldElement negate() {
        int[] r02 = Nat224.create();
        SecP224K1Field.negate(this.f11747x, r02);
        return new SecP224K1FieldElement(r02);
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public ECFieldElement sqrt() {
        int[] r02 = this.f11747x;
        if (Nat224.isZero(r02) || Nat224.isOne(r02)) {
            return this;
        }
        int[] r12 = Nat224.create();
        SecP224K1Field.square(r02, r12);
        SecP224K1Field.multiply(r12, r02, r12);
        SecP224K1Field.square(r12, r12);
        SecP224K1Field.multiply(r12, r02, r12);
        int[] r22 = Nat224.create();
        SecP224K1Field.square(r12, r22);
        SecP224K1Field.multiply(r22, r02, r22);
        int[] r32 = Nat224.create();
        SecP224K1Field.squareN(r22, 4, r32);
        SecP224K1Field.multiply(r32, r22, r32);
        int[] r52 = Nat224.create();
        SecP224K1Field.squareN(r32, 3, r52);
        SecP224K1Field.multiply(r52, r12, r52);
        SecP224K1Field.squareN(r52, 8, r52);
        SecP224K1Field.multiply(r52, r32, r52);
        SecP224K1Field.squareN(r52, 4, r32);
        SecP224K1Field.multiply(r32, r22, r32);
        SecP224K1Field.squareN(r32, 19, r22);
        SecP224K1Field.multiply(r22, r52, r22);
        int[] r72 = Nat224.create();
        SecP224K1Field.squareN(r22, 42, r72);
        SecP224K1Field.multiply(r72, r22, r72);
        SecP224K1Field.squareN(r72, 23, r22);
        SecP224K1Field.multiply(r22, r32, r22);
        SecP224K1Field.squareN(r22, 84, r32);
        SecP224K1Field.multiply(r32, r72, r32);
        SecP224K1Field.squareN(r32, 20, r32);
        SecP224K1Field.multiply(r32, r52, r32);
        SecP224K1Field.squareN(r32, 3, r32);
        SecP224K1Field.multiply(r32, r02, r32);
        SecP224K1Field.squareN(r32, 2, r32);
        SecP224K1Field.multiply(r32, r02, r32);
        SecP224K1Field.squareN(r32, 4, r32);
        SecP224K1Field.multiply(r32, r12, r32);
        SecP224K1Field.square(r32, r32);
        SecP224K1Field.square(r32, r72);
        if (Nat224.eq(r02, r72)) {
            return new SecP224K1FieldElement(r32);
        }
        SecP224K1Field.multiply(r32, PRECOMP_POW2, r32);
        SecP224K1Field.square(r32, r72);
        if (Nat224.eq(r02, r72)) {
            return new SecP224K1FieldElement(r32);
        }
        return null;
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public ECFieldElement square() {
        int[] r02 = Nat224.create();
        SecP224K1Field.square(this.f11747x, r02);
        return new SecP224K1FieldElement(r02);
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public ECFieldElement subtract(ECFieldElement eCFieldElement) {
        int[] r02 = Nat224.create();
        SecP224K1Field.subtract(this.f11747x, ((SecP224K1FieldElement) eCFieldElement).f11747x, r02);
        return new SecP224K1FieldElement(r02);
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public boolean testBitZero() {
        return Nat224.getBit(this.f11747x, 0) == 1;
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public BigInteger toBigInteger() {
        return Nat224.toBigInteger(this.f11747x);
    }
}
