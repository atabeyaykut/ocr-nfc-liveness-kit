package org.bouncycastle.math.ec.custom.sec;

import java.math.BigInteger;
import org.bouncycastle.math.ec.ECFieldElement;
import org.bouncycastle.math.raw.Mod;
import org.bouncycastle.math.raw.Nat;
import org.bouncycastle.math.raw.Nat224;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.encoders.Hex;

/* loaded from: classes2.dex */
public class SecP224R1FieldElement extends ECFieldElement.AbstractFp {
    public static final BigInteger Q = new BigInteger(1, Hex.decodeStrict("FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000001"));

    /* renamed from: x, reason: collision with root package name */
    protected int[] f11749x;

    public SecP224R1FieldElement() {
        this.f11749x = Nat224.create();
    }

    public SecP224R1FieldElement(BigInteger bigInteger) {
        if (bigInteger == null || bigInteger.signum() < 0 || bigInteger.compareTo(Q) >= 0) {
            throw new IllegalArgumentException("x value invalid for SecP224R1FieldElement");
        }
        this.f11749x = SecP224R1Field.fromBigInteger(bigInteger);
    }

    public SecP224R1FieldElement(int[] r12) {
        this.f11749x = r12;
    }

    private static void RM(int[] r02, int[] r12, int[] r22, int[] r32, int[] r42, int[] r52, int[] r6) {
        SecP224R1Field.multiply(r42, r22, r6);
        SecP224R1Field.multiply(r6, r02, r6);
        SecP224R1Field.multiply(r32, r12, r52);
        SecP224R1Field.add(r52, r6, r52);
        SecP224R1Field.multiply(r32, r22, r6);
        Nat224.copy(r52, r32);
        SecP224R1Field.multiply(r42, r12, r42);
        SecP224R1Field.add(r42, r6, r42);
        SecP224R1Field.square(r42, r52);
        SecP224R1Field.multiply(r52, r02, r52);
    }

    private static void RP(int[] r10, int[] r11, int[] r12, int[] r13, int[] r14) {
        Nat224.copy(r10, r13);
        int[] r72 = Nat224.create();
        int[] r82 = Nat224.create();
        for (int r92 = 0; r92 < 7; r92++) {
            Nat224.copy(r11, r72);
            Nat224.copy(r12, r82);
            int r02 = 1 << r92;
            while (true) {
                r02--;
                if (r02 >= 0) {
                    RS(r11, r12, r13, r14);
                }
            }
            RM(r10, r72, r82, r11, r12, r13, r14);
        }
    }

    private static void RS(int[] r02, int[] r12, int[] r22, int[] r32) {
        SecP224R1Field.multiply(r12, r02, r12);
        SecP224R1Field.twice(r12, r12);
        SecP224R1Field.square(r02, r32);
        SecP224R1Field.add(r22, r32, r02);
        SecP224R1Field.multiply(r22, r32, r22);
        SecP224R1Field.reduce32(Nat.shiftUpBits(7, r22, 2, 0), r22);
    }

    private static boolean isSquare(int[] r32) {
        int[] r02 = Nat224.create();
        int[] r12 = Nat224.create();
        Nat224.copy(r32, r02);
        for (int r33 = 0; r33 < 7; r33++) {
            Nat224.copy(r02, r12);
            SecP224R1Field.squareN(r02, 1 << r33, r02);
            SecP224R1Field.multiply(r02, r12, r02);
        }
        SecP224R1Field.squareN(r02, 95, r02);
        return Nat224.isOne(r02);
    }

    private static boolean trySqrt(int[] r72, int[] r82, int[] r92) {
        int[] r02 = Nat224.create();
        Nat224.copy(r82, r02);
        int[] r83 = Nat224.create();
        r83[0] = 1;
        int[] r32 = Nat224.create();
        RP(r72, r02, r83, r32, r92);
        int[] r73 = Nat224.create();
        int[] r42 = Nat224.create();
        for (int r52 = 1; r52 < 96; r52++) {
            Nat224.copy(r02, r73);
            Nat224.copy(r83, r42);
            RS(r02, r83, r32, r92);
            if (Nat224.isZero(r02)) {
                SecP224R1Field.inv(r42, r92);
                SecP224R1Field.multiply(r92, r73, r92);
                return true;
            }
        }
        return false;
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public ECFieldElement add(ECFieldElement eCFieldElement) {
        int[] r02 = Nat224.create();
        SecP224R1Field.add(this.f11749x, ((SecP224R1FieldElement) eCFieldElement).f11749x, r02);
        return new SecP224R1FieldElement(r02);
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public ECFieldElement addOne() {
        int[] r02 = Nat224.create();
        SecP224R1Field.addOne(this.f11749x, r02);
        return new SecP224R1FieldElement(r02);
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public ECFieldElement divide(ECFieldElement eCFieldElement) {
        int[] r02 = Nat224.create();
        SecP224R1Field.inv(((SecP224R1FieldElement) eCFieldElement).f11749x, r02);
        SecP224R1Field.multiply(r02, this.f11749x, r02);
        return new SecP224R1FieldElement(r02);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof SecP224R1FieldElement) {
            return Nat224.eq(this.f11749x, ((SecP224R1FieldElement) obj).f11749x);
        }
        return false;
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public String getFieldName() {
        return "SecP224R1Field";
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public int getFieldSize() {
        return Q.bitLength();
    }

    public int hashCode() {
        return Q.hashCode() ^ Arrays.hashCode(this.f11749x, 0, 7);
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public ECFieldElement invert() {
        int[] r02 = Nat224.create();
        SecP224R1Field.inv(this.f11749x, r02);
        return new SecP224R1FieldElement(r02);
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public boolean isOne() {
        return Nat224.isOne(this.f11749x);
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public boolean isZero() {
        return Nat224.isZero(this.f11749x);
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public ECFieldElement multiply(ECFieldElement eCFieldElement) {
        int[] r02 = Nat224.create();
        SecP224R1Field.multiply(this.f11749x, ((SecP224R1FieldElement) eCFieldElement).f11749x, r02);
        return new SecP224R1FieldElement(r02);
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public ECFieldElement negate() {
        int[] r02 = Nat224.create();
        SecP224R1Field.negate(this.f11749x, r02);
        return new SecP224R1FieldElement(r02);
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public ECFieldElement sqrt() {
        int[] r02 = this.f11749x;
        if (Nat224.isZero(r02) || Nat224.isOne(r02)) {
            return this;
        }
        int[] r12 = Nat224.create();
        SecP224R1Field.negate(r02, r12);
        int[] r22 = Mod.random(SecP224R1Field.P);
        int[] r32 = Nat224.create();
        if (!isSquare(r02)) {
            return null;
        }
        while (!trySqrt(r12, r22, r32)) {
            SecP224R1Field.addOne(r22, r22);
        }
        SecP224R1Field.square(r32, r22);
        if (Nat224.eq(r02, r22)) {
            return new SecP224R1FieldElement(r32);
        }
        return null;
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public ECFieldElement square() {
        int[] r02 = Nat224.create();
        SecP224R1Field.square(this.f11749x, r02);
        return new SecP224R1FieldElement(r02);
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public ECFieldElement subtract(ECFieldElement eCFieldElement) {
        int[] r02 = Nat224.create();
        SecP224R1Field.subtract(this.f11749x, ((SecP224R1FieldElement) eCFieldElement).f11749x, r02);
        return new SecP224R1FieldElement(r02);
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public boolean testBitZero() {
        return Nat224.getBit(this.f11749x, 0) == 1;
    }

    @Override // org.bouncycastle.math.ec.ECFieldElement
    public BigInteger toBigInteger() {
        return Nat224.toBigInteger(this.f11749x);
    }
}
