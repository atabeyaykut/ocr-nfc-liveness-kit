package org.bouncycastle.pqc.legacy.math.ntru.polynomial;

import org.bouncycastle.util.Arrays;

/* loaded from: classes2.dex */
public class LongPolynomial2 {
    private long[] coeffs;
    private int numCoeffs;

    private LongPolynomial2(int r12) {
        this.coeffs = new long[r12];
    }

    public LongPolynomial2(IntegerPolynomial integerPolynomial) {
        int r32;
        long j10;
        int length = integerPolynomial.coeffs.length;
        this.numCoeffs = length;
        this.coeffs = new long[(length + 1) / 2];
        int r12 = 0;
        for (int r02 = 0; r02 < this.numCoeffs; r02 = r32) {
            r32 = r02 + 1;
            int r03 = integerPolynomial.coeffs[r02];
            while (r03 < 0) {
                r03 += 2048;
            }
            if (r32 < this.numCoeffs) {
                long j11 = integerPolynomial.coeffs[r32];
                r32++;
                j10 = j11;
            } else {
                j10 = 0;
            }
            while (j10 < 0) {
                j10 += 2048;
            }
            this.coeffs[r12] = r03 + (j10 << 24);
            r12++;
        }
    }

    private LongPolynomial2(long[] jArr) {
        this.coeffs = jArr;
    }

    private void add(LongPolynomial2 longPolynomial2) {
        long[] jArr = longPolynomial2.coeffs;
        int length = jArr.length;
        long[] jArr2 = this.coeffs;
        if (length > jArr2.length) {
            this.coeffs = Arrays.copyOf(jArr2, jArr.length);
        }
        int r02 = 0;
        while (true) {
            long[] jArr3 = longPolynomial2.coeffs;
            if (r02 >= jArr3.length) {
                return;
            }
            long[] jArr4 = this.coeffs;
            jArr4[r02] = (jArr4[r02] + jArr3[r02]) & 34342963199L;
            r02++;
        }
    }

    private LongPolynomial2 multRecursive(LongPolynomial2 longPolynomial2) {
        long[] jArr = this.coeffs;
        long[] jArr2 = longPolynomial2.coeffs;
        int length = jArr2.length;
        int r72 = 0;
        if (length <= 32) {
            int r42 = length * 2;
            LongPolynomial2 longPolynomial22 = new LongPolynomial2(new long[r42]);
            for (int r92 = 0; r92 < r42; r92++) {
                for (int r10 = Math.max(0, (r92 - length) + 1); r10 <= Math.min(r92, length - 1); r10++) {
                    long j10 = jArr[r92 - r10] * jArr2[r10];
                    long[] jArr3 = longPolynomial22.coeffs;
                    jArr3[r92] = (jArr3[r92] + (j10 & ((j10 & 2047) + 34342961152L))) & 34342963199L;
                    int r13 = r92 + 1;
                    jArr3[r13] = (jArr3[r13] + ((j10 >>> 48) & 2047)) & 34342963199L;
                }
            }
            return longPolynomial22;
        }
        int r43 = length / 2;
        LongPolynomial2 longPolynomial23 = new LongPolynomial2(Arrays.copyOf(jArr, r43));
        LongPolynomial2 longPolynomial24 = new LongPolynomial2(Arrays.copyOfRange(jArr, r43, length));
        LongPolynomial2 longPolynomial25 = new LongPolynomial2(Arrays.copyOf(jArr2, r43));
        LongPolynomial2 longPolynomial26 = new LongPolynomial2(Arrays.copyOfRange(jArr2, r43, length));
        LongPolynomial2 longPolynomial27 = (LongPolynomial2) longPolynomial23.clone();
        longPolynomial27.add(longPolynomial24);
        LongPolynomial2 longPolynomial28 = (LongPolynomial2) longPolynomial25.clone();
        longPolynomial28.add(longPolynomial26);
        LongPolynomial2 longPolynomial2MultRecursive = longPolynomial23.multRecursive(longPolynomial25);
        LongPolynomial2 longPolynomial2MultRecursive2 = longPolynomial24.multRecursive(longPolynomial26);
        LongPolynomial2 longPolynomial2MultRecursive3 = longPolynomial27.multRecursive(longPolynomial28);
        longPolynomial2MultRecursive3.sub(longPolynomial2MultRecursive);
        longPolynomial2MultRecursive3.sub(longPolynomial2MultRecursive2);
        LongPolynomial2 longPolynomial29 = new LongPolynomial2(length * 2);
        int r32 = 0;
        while (true) {
            long[] jArr4 = longPolynomial2MultRecursive.coeffs;
            if (r32 >= jArr4.length) {
                break;
            }
            longPolynomial29.coeffs[r32] = jArr4[r32] & 34342963199L;
            r32++;
        }
        int r12 = 0;
        while (true) {
            long[] jArr5 = longPolynomial2MultRecursive3.coeffs;
            if (r12 >= jArr5.length) {
                break;
            }
            long[] jArr6 = longPolynomial29.coeffs;
            int r11 = r43 + r12;
            jArr6[r11] = (jArr6[r11] + jArr5[r12]) & 34342963199L;
            r12++;
        }
        while (true) {
            long[] jArr7 = longPolynomial2MultRecursive2.coeffs;
            if (r72 >= jArr7.length) {
                return longPolynomial29;
            }
            long[] jArr8 = longPolynomial29.coeffs;
            int r33 = (r43 * 2) + r72;
            jArr8[r33] = (jArr8[r33] + jArr7[r72]) & 34342963199L;
            r72++;
        }
    }

    private void sub(LongPolynomial2 longPolynomial2) {
        long[] jArr = longPolynomial2.coeffs;
        int length = jArr.length;
        long[] jArr2 = this.coeffs;
        if (length > jArr2.length) {
            this.coeffs = Arrays.copyOf(jArr2, jArr.length);
        }
        int r02 = 0;
        while (true) {
            long[] jArr3 = longPolynomial2.coeffs;
            if (r02 >= jArr3.length) {
                return;
            }
            long[] jArr4 = this.coeffs;
            jArr4[r02] = 34342963199L & ((jArr4[r02] + 140737496743936L) - jArr3[r02]);
            r02++;
        }
    }

    public Object clone() {
        LongPolynomial2 longPolynomial2 = new LongPolynomial2((long[]) this.coeffs.clone());
        longPolynomial2.numCoeffs = this.numCoeffs;
        return longPolynomial2;
    }

    public boolean equals(Object obj) {
        if (obj instanceof LongPolynomial2) {
            return Arrays.areEqual(this.coeffs, ((LongPolynomial2) obj).coeffs);
        }
        return false;
    }

    public LongPolynomial2 mult(LongPolynomial2 longPolynomial2) {
        long[] jArr;
        long[] jArr2;
        int length = this.coeffs.length;
        if (longPolynomial2.coeffs.length != length || this.numCoeffs != longPolynomial2.numCoeffs) {
            throw new IllegalArgumentException("Number of coefficients must be the same");
        }
        LongPolynomial2 longPolynomial2MultRecursive = multRecursive(longPolynomial2);
        if (longPolynomial2MultRecursive.coeffs.length > length) {
            if (this.numCoeffs % 2 == 0) {
                int r12 = length;
                while (true) {
                    jArr2 = longPolynomial2MultRecursive.coeffs;
                    if (r12 >= jArr2.length) {
                        break;
                    }
                    int r52 = r12 - length;
                    jArr2[r52] = (jArr2[r52] + jArr2[r12]) & 34342963199L;
                    r12++;
                }
                longPolynomial2MultRecursive.coeffs = Arrays.copyOf(jArr2, length);
            } else {
                int r13 = length;
                while (true) {
                    jArr = longPolynomial2MultRecursive.coeffs;
                    if (r13 >= jArr.length) {
                        break;
                    }
                    int r53 = r13 - length;
                    long j10 = jArr[r53] + (jArr[r13 - 1] >> 24);
                    jArr[r53] = j10;
                    long j11 = j10 + ((2047 & jArr[r13]) << 24);
                    jArr[r53] = j11;
                    jArr[r53] = j11 & 34342963199L;
                    r13++;
                }
                long[] jArrCopyOf = Arrays.copyOf(jArr, length);
                longPolynomial2MultRecursive.coeffs = jArrCopyOf;
                int length2 = jArrCopyOf.length - 1;
                jArrCopyOf[length2] = jArrCopyOf[length2] & 2047;
            }
        }
        LongPolynomial2 longPolynomial22 = new LongPolynomial2(longPolynomial2MultRecursive.coeffs);
        longPolynomial22.numCoeffs = this.numCoeffs;
        return longPolynomial22;
    }

    public void mult2And(int r72) {
        long j10 = r72;
        long j11 = (j10 << 24) + j10;
        int r73 = 0;
        while (true) {
            long[] jArr = this.coeffs;
            if (r73 >= jArr.length) {
                return;
            }
            jArr[r73] = (jArr[r73] << 1) & j11;
            r73++;
        }
    }

    public void subAnd(LongPolynomial2 longPolynomial2, int r10) {
        long j10 = r10;
        long j11 = (j10 << 24) + j10;
        int r102 = 0;
        while (true) {
            long[] jArr = longPolynomial2.coeffs;
            if (r102 >= jArr.length) {
                return;
            }
            long[] jArr2 = this.coeffs;
            jArr2[r102] = ((jArr2[r102] + 140737496743936L) - jArr[r102]) & j11;
            r102++;
        }
    }

    public IntegerPolynomial toIntegerPolynomial() {
        int[] r02 = new int[this.numCoeffs];
        int r12 = 0;
        int r22 = 0;
        while (true) {
            long[] jArr = this.coeffs;
            if (r12 >= jArr.length) {
                return new IntegerPolynomial(r02);
            }
            int r42 = r22 + 1;
            long j10 = jArr[r12];
            r02[r22] = (int) (j10 & 2047);
            if (r42 < this.numCoeffs) {
                r22 = r42 + 1;
                r02[r42] = (int) ((j10 >> 24) & 2047);
            } else {
                r22 = r42;
            }
            r12++;
        }
    }
}
