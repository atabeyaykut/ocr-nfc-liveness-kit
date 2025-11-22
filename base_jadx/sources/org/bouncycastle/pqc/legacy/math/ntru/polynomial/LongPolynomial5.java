package org.bouncycastle.pqc.legacy.math.ntru.polynomial;

import java.lang.reflect.Array;
import org.bouncycastle.util.Arrays;

/* loaded from: classes2.dex */
public class LongPolynomial5 {
    private long[] coeffs;
    private int numCoeffs;

    public LongPolynomial5(IntegerPolynomial integerPolynomial) {
        int length = integerPolynomial.coeffs.length;
        this.numCoeffs = length;
        this.coeffs = new long[(length + 4) / 5];
        int r22 = 0;
        int r32 = 0;
        for (int r12 = 0; r12 < this.numCoeffs; r12++) {
            long[] jArr = this.coeffs;
            jArr[r22] = jArr[r22] | (integerPolynomial.coeffs[r12] << r32);
            r32 += 12;
            if (r32 >= 60) {
                r22++;
                r32 = 0;
            }
        }
    }

    private LongPolynomial5(long[] jArr, int r22) {
        this.coeffs = jArr;
        this.numCoeffs = r22;
    }

    public LongPolynomial5 mult(TernaryPolynomial ternaryPolynomial) {
        long j10;
        int r82;
        long[][] jArr = (long[][]) Array.newInstance((Class<?>) Long.TYPE, 5, (((ternaryPolynomial.size() + 4) / 5) + this.coeffs.length) - 1);
        int[] ones = ternaryPolynomial.getOnes();
        for (int r72 = 0; r72 != ones.length; r72++) {
            int r83 = ones[r72];
            int r11 = r83 / 5;
            int r84 = r83 - (r11 * 5);
            int r12 = 0;
            while (true) {
                long[] jArr2 = this.coeffs;
                if (r12 < jArr2.length) {
                    long[] jArr3 = jArr[r84];
                    jArr3[r11] = (jArr3[r11] + jArr2[r12]) & 576319980446939135L;
                    r11++;
                    r12++;
                }
            }
        }
        int[] negOnes = ternaryPolynomial.getNegOnes();
        for (int r73 = 0; r73 != negOnes.length; r73++) {
            int r85 = negOnes[r73];
            int r112 = r85 / 5;
            int r86 = r85 - (r112 * 5);
            int r122 = 0;
            while (true) {
                long[] jArr4 = this.coeffs;
                if (r122 < jArr4.length) {
                    long[] jArr5 = jArr[r86];
                    jArr5[r112] = ((jArr5[r112] + 576601524159907840L) - jArr4[r122]) & 576319980446939135L;
                    r112++;
                    r122++;
                }
            }
        }
        long[] jArr6 = jArr[0];
        long[] jArrCopyOf = Arrays.copyOf(jArr6, jArr6.length + 1);
        for (int r74 = 1; r74 <= 4; r74++) {
            int r87 = r74 * 12;
            int r113 = 60 - r87;
            long j11 = (1 << r113) - 1;
            int length = jArr[r74].length;
            int r13 = 0;
            while (r13 < length) {
                long j12 = jArr[r74][r13];
                jArrCopyOf[r13] = (jArrCopyOf[r13] + ((j12 & j11) << r87)) & 576319980446939135L;
                r13++;
                jArrCopyOf[r13] = (jArrCopyOf[r13] + (j12 >> r113)) & 576319980446939135L;
            }
        }
        int r32 = (this.numCoeffs % 5) * 12;
        for (int length2 = this.coeffs.length - 1; length2 < jArrCopyOf.length; length2++) {
            long[] jArr7 = this.coeffs;
            if (length2 == jArr7.length - 1) {
                j10 = this.numCoeffs == 5 ? 0L : jArrCopyOf[length2] >> r32;
                r82 = 0;
            } else {
                j10 = jArrCopyOf[length2];
                r82 = (length2 * 5) - this.numCoeffs;
            }
            int r132 = r82 / 5;
            int r88 = r82 - (r132 * 5);
            long j13 = j10 << (r88 * 12);
            long j14 = j10 >> ((5 - r88) * 12);
            jArrCopyOf[r132] = (jArrCopyOf[r132] + j13) & 576319980446939135L;
            int r133 = r132 + 1;
            if (r133 < jArr7.length) {
                jArrCopyOf[r133] = (jArrCopyOf[r133] + j14) & 576319980446939135L;
            }
        }
        return new LongPolynomial5(jArrCopyOf, this.numCoeffs);
    }

    public IntegerPolynomial toIntegerPolynomial() {
        int[] r02 = new int[this.numCoeffs];
        int r32 = 0;
        int r42 = 0;
        for (int r22 = 0; r22 < this.numCoeffs; r22++) {
            r02[r22] = (int) ((this.coeffs[r32] >> r42) & 2047);
            r42 += 12;
            if (r42 >= 60) {
                r32++;
                r42 = 0;
            }
        }
        return new IntegerPolynomial(r02);
    }
}
