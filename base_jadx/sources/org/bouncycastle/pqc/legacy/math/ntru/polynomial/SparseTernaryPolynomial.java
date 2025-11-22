package org.bouncycastle.pqc.legacy.math.ntru.polynomial;

import androidx.appcompat.graphics.drawable.a;
import java.io.IOException;
import java.io.InputStream;
import java.math.BigInteger;
import java.security.SecureRandom;
import org.bouncycastle.pqc.legacy.math.ntru.util.ArrayEncoder;
import org.bouncycastle.pqc.legacy.math.ntru.util.Util;
import org.bouncycastle.util.Arrays;

/* loaded from: classes2.dex */
public class SparseTernaryPolynomial implements TernaryPolynomial {
    private static final int BITS_PER_INDEX = 11;
    private int N;
    private int[] negOnes;
    private int[] ones;

    public SparseTernaryPolynomial(int r12, int[] r22, int[] r32) {
        this.N = r12;
        this.ones = r22;
        this.negOnes = r32;
    }

    public SparseTernaryPolynomial(IntegerPolynomial integerPolynomial) {
        this(integerPolynomial.coeffs);
    }

    public SparseTernaryPolynomial(int[] r6) {
        int length = r6.length;
        this.N = length;
        this.ones = new int[length];
        this.negOnes = new int[length];
        int r12 = 0;
        int r22 = 0;
        for (int r02 = 0; r02 < this.N; r02++) {
            int r32 = r6[r02];
            if (r32 == -1) {
                this.negOnes[r22] = r02;
                r22++;
            } else if (r32 == 0) {
                continue;
            } else {
                if (r32 != 1) {
                    throw new IllegalArgumentException(a.f("Illegal value: ", r32, ", must be one of {-1, 0, 1}"));
                }
                this.ones[r12] = r02;
                r12++;
            }
        }
        this.ones = Arrays.copyOf(this.ones, r12);
        this.negOnes = Arrays.copyOf(this.negOnes, r22);
    }

    public static SparseTernaryPolynomial fromBinary(InputStream inputStream, int r42, int r52, int r6) throws IOException {
        int r02 = 32 - Integer.numberOfLeadingZeros(2047);
        return new SparseTernaryPolynomial(r42, ArrayEncoder.decodeModQ(Util.readFullLength(inputStream, ((r52 * r02) + 7) / 8), r52, 2048), ArrayEncoder.decodeModQ(Util.readFullLength(inputStream, ((r02 * r6) + 7) / 8), r6, 2048));
    }

    public static SparseTernaryPolynomial generateRandom(int r02, int r12, int r22, SecureRandom secureRandom) {
        return new SparseTernaryPolynomial(Util.generateRandomTernary(r02, r12, r22, secureRandom));
    }

    @Override // org.bouncycastle.pqc.legacy.math.ntru.polynomial.TernaryPolynomial
    public void clear() {
        int r12 = 0;
        while (true) {
            int[] r22 = this.ones;
            if (r12 >= r22.length) {
                break;
            }
            r22[r12] = 0;
            r12++;
        }
        int r13 = 0;
        while (true) {
            int[] r23 = this.negOnes;
            if (r13 >= r23.length) {
                return;
            }
            r23[r13] = 0;
            r13++;
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        SparseTernaryPolynomial sparseTernaryPolynomial = (SparseTernaryPolynomial) obj;
        return this.N == sparseTernaryPolynomial.N && Arrays.areEqual(this.negOnes, sparseTernaryPolynomial.negOnes) && Arrays.areEqual(this.ones, sparseTernaryPolynomial.ones);
    }

    @Override // org.bouncycastle.pqc.legacy.math.ntru.polynomial.TernaryPolynomial
    public int[] getNegOnes() {
        return this.negOnes;
    }

    @Override // org.bouncycastle.pqc.legacy.math.ntru.polynomial.TernaryPolynomial
    public int[] getOnes() {
        return this.ones;
    }

    public int hashCode() {
        return Arrays.hashCode(this.ones) + ((Arrays.hashCode(this.negOnes) + ((this.N + 31) * 31)) * 31);
    }

    @Override // org.bouncycastle.pqc.legacy.math.ntru.polynomial.Polynomial
    public BigIntPolynomial mult(BigIntPolynomial bigIntPolynomial) {
        BigInteger[] bigIntegerArr = bigIntPolynomial.coeffs;
        int length = bigIntegerArr.length;
        int r12 = this.N;
        if (length != r12) {
            throw new IllegalArgumentException("Number of coefficients must be the same");
        }
        BigInteger[] bigIntegerArr2 = new BigInteger[r12];
        int r13 = 0;
        for (int r22 = 0; r22 < this.N; r22++) {
            bigIntegerArr2[r22] = BigInteger.ZERO;
        }
        int r23 = 0;
        while (true) {
            int[] r32 = this.ones;
            if (r23 == r32.length) {
                break;
            }
            int r33 = r32[r23];
            int r42 = this.N;
            int r52 = (r42 - 1) - r33;
            for (int r43 = r42 - 1; r43 >= 0; r43--) {
                bigIntegerArr2[r43] = bigIntegerArr2[r43].add(bigIntegerArr[r52]);
                r52--;
                if (r52 < 0) {
                    r52 = this.N - 1;
                }
            }
            r23++;
        }
        while (true) {
            int[] r24 = this.negOnes;
            if (r13 == r24.length) {
                return new BigIntPolynomial(bigIntegerArr2);
            }
            int r25 = r24[r13];
            int r34 = this.N;
            int r44 = (r34 - 1) - r25;
            for (int r35 = r34 - 1; r35 >= 0; r35--) {
                bigIntegerArr2[r35] = bigIntegerArr2[r35].subtract(bigIntegerArr[r44]);
                r44--;
                if (r44 < 0) {
                    r44 = this.N - 1;
                }
            }
            r13++;
        }
    }

    @Override // org.bouncycastle.pqc.legacy.math.ntru.polynomial.TernaryPolynomial, org.bouncycastle.pqc.legacy.math.ntru.polynomial.Polynomial
    public IntegerPolynomial mult(IntegerPolynomial integerPolynomial) {
        int[] r82 = integerPolynomial.coeffs;
        int length = r82.length;
        int r12 = this.N;
        if (length != r12) {
            throw new IllegalArgumentException("Number of coefficients must be the same");
        }
        int[] r02 = new int[r12];
        int r13 = 0;
        int r22 = 0;
        while (true) {
            int[] r32 = this.ones;
            if (r22 == r32.length) {
                break;
            }
            int r33 = r32[r22];
            int r42 = this.N;
            int r52 = (r42 - 1) - r33;
            for (int r43 = r42 - 1; r43 >= 0; r43--) {
                r02[r43] = r02[r43] + r82[r52];
                r52--;
                if (r52 < 0) {
                    r52 = this.N - 1;
                }
            }
            r22++;
        }
        while (true) {
            int[] r23 = this.negOnes;
            if (r13 == r23.length) {
                return new IntegerPolynomial(r02);
            }
            int r24 = r23[r13];
            int r34 = this.N;
            int r44 = (r34 - 1) - r24;
            for (int r35 = r34 - 1; r35 >= 0; r35--) {
                r02[r35] = r02[r35] - r82[r44];
                r44--;
                if (r44 < 0) {
                    r44 = this.N - 1;
                }
            }
            r13++;
        }
    }

    @Override // org.bouncycastle.pqc.legacy.math.ntru.polynomial.Polynomial
    public IntegerPolynomial mult(IntegerPolynomial integerPolynomial, int r22) {
        IntegerPolynomial integerPolynomialMult = mult(integerPolynomial);
        integerPolynomialMult.mod(r22);
        return integerPolynomialMult;
    }

    @Override // org.bouncycastle.pqc.legacy.math.ntru.polynomial.TernaryPolynomial
    public int size() {
        return this.N;
    }

    public byte[] toBinary() {
        byte[] bArrEncodeModQ = ArrayEncoder.encodeModQ(this.ones, 2048);
        byte[] bArrEncodeModQ2 = ArrayEncoder.encodeModQ(this.negOnes, 2048);
        byte[] bArrCopyOf = Arrays.copyOf(bArrEncodeModQ, bArrEncodeModQ.length + bArrEncodeModQ2.length);
        System.arraycopy(bArrEncodeModQ2, 0, bArrCopyOf, bArrEncodeModQ.length, bArrEncodeModQ2.length);
        return bArrCopyOf;
    }

    @Override // org.bouncycastle.pqc.legacy.math.ntru.polynomial.Polynomial
    public IntegerPolynomial toIntegerPolynomial() {
        int[] r02 = new int[this.N];
        int r12 = 0;
        int r22 = 0;
        while (true) {
            int[] r32 = this.ones;
            if (r22 == r32.length) {
                break;
            }
            r02[r32[r22]] = 1;
            r22++;
        }
        while (true) {
            int[] r23 = this.negOnes;
            if (r12 == r23.length) {
                return new IntegerPolynomial(r02);
            }
            r02[r23[r12]] = -1;
            r12++;
        }
    }
}
