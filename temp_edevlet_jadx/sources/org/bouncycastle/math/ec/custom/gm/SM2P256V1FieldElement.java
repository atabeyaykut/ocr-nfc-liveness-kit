package org.bouncycastle.math.ec.custom.gm;

import java.math.BigInteger;
import org.bouncycastle.math.ec.ECFieldElement;
import org.bouncycastle.math.raw.Nat256;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.encoders.Hex;

/* loaded from: classes2.dex */
public class SM2P256V1FieldElement extends ECFieldElement.AbstractFp {
    public static final BigInteger Q = new BigInteger(1, Hex.decodeStrict("FFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000FFFFFFFFFFFFFFFF"));

    /* renamed from: x, reason: collision with root package name */
    protected int[] f11734x;

    public SM2P256V1FieldElement() {
        this.f11734x = Nat256.create();
    }

    public SM2P256V1FieldElement(BigInteger bigInteger) {
        if (bigInteger == null || bigInteger.signum() < 0 || bigInteger.compareTo(Q) >= 0) {
            throw new IllegalArgumentException("x value invalid for SM2P256V1FieldElement");
        }
        this.f11734x = SM2P256V1Field.fromBigInteger(bigInteger);
    }

    public SM2P256V1FieldElement(int[] r12) {
        this.f11734x = r12;
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public ECFieldElement add(ECFieldElement eCFieldElement) {
        int[] r02 = Nat256.create();
        SM2P256V1Field.add(this.f11734x, ((SM2P256V1FieldElement) eCFieldElement).f11734x, r02);
        return new SM2P256V1FieldElement(r02);
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public ECFieldElement addOne() {
        int[] r02 = Nat256.create();
        SM2P256V1Field.addOne(this.f11734x, r02);
        return new SM2P256V1FieldElement(r02);
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public ECFieldElement divide(ECFieldElement eCFieldElement) {
        int[] r02 = Nat256.create();
        SM2P256V1Field.inv(((SM2P256V1FieldElement) eCFieldElement).f11734x, r02);
        SM2P256V1Field.multiply(r02, this.f11734x, r02);
        return new SM2P256V1FieldElement(r02);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof SM2P256V1FieldElement) {
            return Nat256.eq(this.f11734x, ((SM2P256V1FieldElement) obj).f11734x);
        }
        return false;
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public String getFieldName() {
        return "SM2P256V1Field";
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public int getFieldSize() {
        return Q.bitLength();
    }

    public int hashCode() {
        return Q.hashCode() ^ Arrays.hashCode(this.f11734x, 0, 8);
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public ECFieldElement invert() {
        int[] r02 = Nat256.create();
        SM2P256V1Field.inv(this.f11734x, r02);
        return new SM2P256V1FieldElement(r02);
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public boolean isOne() {
        return Nat256.isOne(this.f11734x);
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public boolean isZero() {
        return Nat256.isZero(this.f11734x);
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public ECFieldElement multiply(ECFieldElement eCFieldElement) {
        int[] r02 = Nat256.create();
        SM2P256V1Field.multiply(this.f11734x, ((SM2P256V1FieldElement) eCFieldElement).f11734x, r02);
        return new SM2P256V1FieldElement(r02);
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public ECFieldElement negate() {
        int[] r02 = Nat256.create();
        SM2P256V1Field.negate(this.f11734x, r02);
        return new SM2P256V1FieldElement(r02);
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public ECFieldElement sqrt() {
        int[] r02 = this.f11734x;
        if (Nat256.isZero(r02) || Nat256.isOne(r02)) {
            return this;
        }
        int[] r12 = Nat256.create();
        SM2P256V1Field.square(r02, r12);
        SM2P256V1Field.multiply(r12, r02, r12);
        int[] r22 = Nat256.create();
        SM2P256V1Field.squareN(r12, 2, r22);
        SM2P256V1Field.multiply(r22, r12, r22);
        int[] r42 = Nat256.create();
        SM2P256V1Field.squareN(r22, 2, r42);
        SM2P256V1Field.multiply(r42, r12, r42);
        SM2P256V1Field.squareN(r42, 6, r12);
        SM2P256V1Field.multiply(r12, r42, r12);
        int[] r52 = Nat256.create();
        SM2P256V1Field.squareN(r12, 12, r52);
        SM2P256V1Field.multiply(r52, r12, r52);
        SM2P256V1Field.squareN(r52, 6, r12);
        SM2P256V1Field.multiply(r12, r42, r12);
        SM2P256V1Field.square(r12, r42);
        SM2P256V1Field.multiply(r42, r02, r42);
        SM2P256V1Field.squareN(r42, 31, r52);
        SM2P256V1Field.multiply(r52, r42, r12);
        SM2P256V1Field.squareN(r52, 32, r52);
        SM2P256V1Field.multiply(r52, r12, r52);
        SM2P256V1Field.squareN(r52, 62, r52);
        SM2P256V1Field.multiply(r52, r12, r52);
        SM2P256V1Field.squareN(r52, 4, r52);
        SM2P256V1Field.multiply(r52, r22, r52);
        SM2P256V1Field.squareN(r52, 32, r52);
        SM2P256V1Field.multiply(r52, r02, r52);
        SM2P256V1Field.squareN(r52, 62, r52);
        SM2P256V1Field.square(r52, r22);
        if (Nat256.eq(r02, r22)) {
            return new SM2P256V1FieldElement(r52);
        }
        return null;
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public ECFieldElement square() {
        int[] r02 = Nat256.create();
        SM2P256V1Field.square(this.f11734x, r02);
        return new SM2P256V1FieldElement(r02);
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public ECFieldElement subtract(ECFieldElement eCFieldElement) {
        int[] r02 = Nat256.create();
        SM2P256V1Field.subtract(this.f11734x, ((SM2P256V1FieldElement) eCFieldElement).f11734x, r02);
        return new SM2P256V1FieldElement(r02);
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public boolean testBitZero() {
        return Nat256.getBit(this.f11734x, 0) == 1;
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public BigInteger toBigInteger() {
        return Nat256.toBigInteger(this.f11734x);
    }
}
