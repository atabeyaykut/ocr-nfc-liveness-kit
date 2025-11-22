package org.bouncycastle.pqc.legacy.math.linearalgebra;

import androidx.camera.camera2.internal.c;
import java.security.SecureRandom;
import org.bouncycastle.crypto.CryptoServicesRegistrar;

/* loaded from: classes2.dex */
public class GF2mField {
    private int degree;
    private int polynomial;

    public GF2mField(int r22) {
        this.degree = 0;
        if (r22 >= 32) {
            throw new IllegalArgumentException(" Error: the degree of field is too large ");
        }
        if (r22 < 1) {
            throw new IllegalArgumentException(" Error: the degree of field is non-positive ");
        }
        this.degree = r22;
        this.polynomial = PolynomialRingGF2.getIrreduciblePolynomial(r22);
    }

    public GF2mField(int r22, int r32) {
        this.degree = 0;
        if (r22 != PolynomialRingGF2.degree(r32)) {
            throw new IllegalArgumentException(" Error: the degree is not correct");
        }
        if (!PolynomialRingGF2.isIrreducible(r32)) {
            throw new IllegalArgumentException(" Error: given polynomial is reducible");
        }
        this.degree = r22;
        this.polynomial = r32;
    }

    public GF2mField(GF2mField gF2mField) {
        this.degree = 0;
        this.degree = gF2mField.degree;
        this.polynomial = gF2mField.polynomial;
    }

    public GF2mField(byte[] bArr) {
        this.degree = 0;
        if (bArr.length != 4) {
            throw new IllegalArgumentException("byte array is not an encoded finite field");
        }
        int r42 = LittleEndianConversions.OS2IP(bArr);
        this.polynomial = r42;
        if (!PolynomialRingGF2.isIrreducible(r42)) {
            throw new IllegalArgumentException("byte array is not an encoded finite field");
        }
        this.degree = PolynomialRingGF2.degree(this.polynomial);
    }

    private static String polyToString(int r42) {
        if (r42 == 0) {
            return "0";
        }
        String str = ((byte) (r42 & 1)) == 1 ? "1" : "";
        int r43 = r42 >>> 1;
        int r22 = 1;
        while (r43 != 0) {
            if (((byte) (r43 & 1)) == 1) {
                str = str + "+x^" + r22;
            }
            r43 >>>= 1;
            r22++;
        }
        return str;
    }

    public int add(int r12, int r22) {
        return r12 ^ r22;
    }

    public String elementToStr(int r52) {
        String string = "";
        for (int r12 = 0; r12 < this.degree; r12++) {
            StringBuilder sb2 = (((byte) r52) & 1) == 0 ? new StringBuilder("0") : new StringBuilder("1");
            sb2.append(string);
            string = sb2.toString();
            r52 >>>= 1;
        }
        return string;
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof GF2mField)) {
            GF2mField gF2mField = (GF2mField) obj;
            if (this.degree == gF2mField.degree && this.polynomial == gF2mField.polynomial) {
                return true;
            }
        }
        return false;
    }

    public int exp(int r42, int r52) {
        if (r52 == 0) {
            return 1;
        }
        if (r42 == 0) {
            return 0;
        }
        if (r42 == 1) {
            return 1;
        }
        if (r52 < 0) {
            r42 = inverse(r42);
            r52 = -r52;
        }
        int r12 = 1;
        while (r52 != 0) {
            if ((r52 & 1) == 1) {
                r12 = mult(r12, r42);
            }
            r42 = mult(r42, r42);
            r52 >>>= 1;
        }
        return r12;
    }

    public int getDegree() {
        return this.degree;
    }

    public byte[] getEncoded() {
        return LittleEndianConversions.I2OSP(this.polynomial);
    }

    public int getPolynomial() {
        return this.polynomial;
    }

    public int getRandomElement(SecureRandom secureRandom) {
        return RandUtils.nextInt(secureRandom, 1 << this.degree);
    }

    public int getRandomNonZeroElement() {
        return getRandomNonZeroElement(CryptoServicesRegistrar.getSecureRandom());
    }

    public int getRandomNonZeroElement(SecureRandom secureRandom) {
        int r02 = RandUtils.nextInt(secureRandom, 1 << this.degree);
        int r22 = 0;
        while (r02 == 0 && r22 < 1048576) {
            r02 = RandUtils.nextInt(secureRandom, 1 << this.degree);
            r22++;
        }
        if (r22 == 1048576) {
            return 1;
        }
        return r02;
    }

    public int hashCode() {
        return this.polynomial;
    }

    public int inverse(int r32) {
        return exp(r32, (1 << this.degree) - 2);
    }

    public boolean isElementOfThisField(int r52) {
        int r02 = this.degree;
        return r02 == 31 ? r52 >= 0 : r52 >= 0 && r52 < (1 << r02);
    }

    public int mult(int r22, int r32) {
        return PolynomialRingGF2.modMultiply(r22, r32, this.polynomial);
    }

    public int sqRoot(int r32) {
        for (int r02 = 1; r02 < this.degree; r02++) {
            r32 = mult(r32, r32);
        }
        return r32;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("Finite Field GF(2^");
        sb2.append(this.degree);
        sb2.append(") = GF(2)[X]/<");
        return c.h(sb2, polyToString(this.polynomial), "> ");
    }
}
