package org.bouncycastle.pqc.legacy.crypto.rainbow.util;

import java.lang.reflect.Array;

/* loaded from: classes2.dex */
public class ComputeInField {
    private short[][] A;

    /* renamed from: x, reason: collision with root package name */
    short[] f12052x;

    private void computeZerosAbove() throws RuntimeException {
        for (int length = this.A.length - 1; length > 0; length--) {
            for (int r12 = length - 1; r12 >= 0; r12--) {
                short[][] sArr = this.A;
                short s7 = sArr[r12][length];
                short sInvElem = GF2Field.invElem(sArr[length][length]);
                if (sInvElem == 0) {
                    throw new RuntimeException("The matrix is not invertible");
                }
                int r42 = length;
                while (true) {
                    short[][] sArr2 = this.A;
                    if (r42 < sArr2.length * 2) {
                        short sMultElem = GF2Field.multElem(s7, GF2Field.multElem(sArr2[length][r42], sInvElem));
                        short[] sArr3 = this.A[r12];
                        sArr3[r42] = GF2Field.addElem(sArr3[r42], sMultElem);
                        r42++;
                    }
                }
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0056, code lost:
    
        r0 = r1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void computeZerosUnder(boolean r10) throws java.lang.RuntimeException {
        /*
            r9 = this;
            if (r10 == 0) goto L8
            short[][] r10 = r9.A
            int r10 = r10.length
            int r10 = r10 * 2
            goto Ld
        L8:
            short[][] r10 = r9.A
            int r10 = r10.length
            int r10 = r10 + 1
        Ld:
            r0 = 0
        Le:
            short[][] r1 = r9.A
            int r1 = r1.length
            int r1 = r1 + (-1)
            if (r0 >= r1) goto L58
            int r1 = r0 + 1
            r2 = r1
        L18:
            short[][] r3 = r9.A
            int r4 = r3.length
            if (r2 >= r4) goto L56
            r4 = r3[r2]
            short r4 = r4[r0]
            r3 = r3[r0]
            short r3 = r3[r0]
            short r3 = org.bouncycastle.pqc.legacy.crypto.rainbow.util.GF2Field.invElem(r3)
            if (r3 == 0) goto L4e
            r5 = r0
        L2c:
            if (r5 >= r10) goto L4b
            short[][] r6 = r9.A
            r6 = r6[r0]
            short r6 = r6[r5]
            short r6 = org.bouncycastle.pqc.legacy.crypto.rainbow.util.GF2Field.multElem(r6, r3)
            short r6 = org.bouncycastle.pqc.legacy.crypto.rainbow.util.GF2Field.multElem(r4, r6)
            short[][] r7 = r9.A
            r7 = r7[r2]
            short r8 = r7[r5]
            short r6 = org.bouncycastle.pqc.legacy.crypto.rainbow.util.GF2Field.addElem(r8, r6)
            r7[r5] = r6
            int r5 = r5 + 1
            goto L2c
        L4b:
            int r2 = r2 + 1
            goto L18
        L4e:
            java.lang.IllegalStateException r10 = new java.lang.IllegalStateException
            java.lang.String r0 = "Matrix not invertible! We have to choose another one!"
            r10.<init>(r0)
            throw r10
        L56:
            r0 = r1
            goto Le
        L58:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.bouncycastle.pqc.legacy.crypto.rainbow.util.ComputeInField.computeZerosUnder(boolean):void");
    }

    private void substitute() throws IllegalStateException {
        short sInvElem = GF2Field.invElem(this.A[r0.length - 1][r0.length - 1]);
        if (sInvElem == 0) {
            throw new IllegalStateException("The equation system is not solvable");
        }
        short[] sArr = this.f12052x;
        short[][] sArr2 = this.A;
        sArr[sArr2.length - 1] = GF2Field.multElem(sArr2[sArr2.length - 1][sArr2.length], sInvElem);
        for (int length = this.A.length - 2; length >= 0; length--) {
            short[][] sArr3 = this.A;
            short sAddElem = sArr3[length][sArr3.length];
            for (int length2 = sArr3.length - 1; length2 > length; length2--) {
                sAddElem = GF2Field.addElem(sAddElem, GF2Field.multElem(this.A[length][length2], this.f12052x[length2]));
            }
            short sInvElem2 = GF2Field.invElem(this.A[length][length]);
            if (sInvElem2 == 0) {
                throw new IllegalStateException("Not solvable equation system");
            }
            this.f12052x[length] = GF2Field.multElem(sAddElem, sInvElem2);
        }
    }

    public short[][] addSquareMatrix(short[][] sArr, short[][] sArr2) {
        if (sArr.length != sArr2.length || sArr[0].length != sArr2[0].length) {
            throw new RuntimeException("Addition is not possible!");
        }
        short[][] sArr3 = (short[][]) Array.newInstance((Class<?>) Short.TYPE, sArr.length, sArr.length);
        for (int r22 = 0; r22 < sArr.length; r22++) {
            for (int r32 = 0; r32 < sArr2.length; r32++) {
                sArr3[r22][r32] = GF2Field.addElem(sArr[r22][r32], sArr2[r22][r32]);
            }
        }
        return sArr3;
    }

    public short[] addVect(short[] sArr, short[] sArr2) {
        if (sArr.length != sArr2.length) {
            throw new RuntimeException("Multiplication is not possible!");
        }
        int length = sArr.length;
        short[] sArr3 = new short[length];
        for (int r22 = 0; r22 < length; r22++) {
            sArr3[r22] = GF2Field.addElem(sArr[r22], sArr2[r22]);
        }
        return sArr3;
    }

    public short[][] inverse(short[][] sArr) {
        try {
            int r12 = 0;
            this.A = (short[][]) Array.newInstance((Class<?>) Short.TYPE, sArr.length, sArr.length * 2);
            if (sArr.length != sArr[0].length) {
                throw new RuntimeException("The matrix is not invertible. Please choose another one!");
            }
            for (int r02 = 0; r02 < sArr.length; r02++) {
                for (int r32 = 0; r32 < sArr.length; r32++) {
                    this.A[r02][r32] = sArr[r02][r32];
                }
                for (int length = sArr.length; length < sArr.length * 2; length++) {
                    this.A[r02][length] = 0;
                }
                short[][] sArr2 = this.A;
                sArr2[r02][sArr2.length + r02] = 1;
            }
            computeZerosUnder(true);
            int r82 = 0;
            while (true) {
                short[][] sArr3 = this.A;
                if (r82 >= sArr3.length) {
                    break;
                }
                short sInvElem = GF2Field.invElem(sArr3[r82][r82]);
                int r33 = r82;
                while (true) {
                    short[][] sArr4 = this.A;
                    if (r33 < sArr4.length * 2) {
                        short[] sArr5 = sArr4[r82];
                        sArr5[r33] = GF2Field.multElem(sArr5[r33], sInvElem);
                        r33++;
                    }
                }
                r82++;
            }
            computeZerosAbove();
            short[][] sArr6 = this.A;
            short[][] sArr7 = (short[][]) Array.newInstance((Class<?>) Short.TYPE, sArr6.length, sArr6.length);
            while (true) {
                short[][] sArr8 = this.A;
                if (r12 >= sArr8.length) {
                    return sArr7;
                }
                int length2 = sArr8.length;
                while (true) {
                    short[][] sArr9 = this.A;
                    if (length2 < sArr9.length * 2) {
                        sArr7[r12][length2 - sArr9.length] = sArr9[r12][length2];
                        length2++;
                    }
                }
                r12++;
            }
        } catch (RuntimeException unused) {
            return null;
        }
    }

    public short[][] multMatrix(short s7, short[][] sArr) {
        short[][] sArr2 = (short[][]) Array.newInstance((Class<?>) Short.TYPE, sArr.length, sArr[0].length);
        for (int r22 = 0; r22 < sArr.length; r22++) {
            for (int r32 = 0; r32 < sArr[0].length; r32++) {
                sArr2[r22][r32] = GF2Field.multElem(s7, sArr[r22][r32]);
            }
        }
        return sArr2;
    }

    public short[] multVect(short s7, short[] sArr) {
        int length = sArr.length;
        short[] sArr2 = new short[length];
        for (int r22 = 0; r22 < length; r22++) {
            sArr2[r22] = GF2Field.multElem(s7, sArr[r22]);
        }
        return sArr2;
    }

    public short[][] multVects(short[] sArr, short[] sArr2) {
        if (sArr.length != sArr2.length) {
            throw new RuntimeException("Multiplication is not possible!");
        }
        short[][] sArr3 = (short[][]) Array.newInstance((Class<?>) Short.TYPE, sArr.length, sArr2.length);
        for (int r22 = 0; r22 < sArr.length; r22++) {
            for (int r32 = 0; r32 < sArr2.length; r32++) {
                sArr3[r22][r32] = GF2Field.multElem(sArr[r22], sArr2[r32]);
            }
        }
        return sArr3;
    }

    public short[] multiplyMatrix(short[][] sArr, short[] sArr2) throws RuntimeException {
        if (sArr[0].length != sArr2.length) {
            throw new RuntimeException("Multiplication is not possible!");
        }
        short[] sArr3 = new short[sArr.length];
        for (int r22 = 0; r22 < sArr.length; r22++) {
            for (int r32 = 0; r32 < sArr2.length; r32++) {
                sArr3[r22] = GF2Field.addElem(sArr3[r22], GF2Field.multElem(sArr[r22][r32], sArr2[r32]));
            }
        }
        return sArr3;
    }

    public short[][] multiplyMatrix(short[][] sArr, short[][] sArr2) throws RuntimeException {
        if (sArr[0].length != sArr2.length) {
            throw new RuntimeException("Multiplication is not possible!");
        }
        this.A = (short[][]) Array.newInstance((Class<?>) Short.TYPE, sArr.length, sArr2[0].length);
        for (int r12 = 0; r12 < sArr.length; r12++) {
            for (int r22 = 0; r22 < sArr2.length; r22++) {
                for (int r32 = 0; r32 < sArr2[0].length; r32++) {
                    short sMultElem = GF2Field.multElem(sArr[r12][r22], sArr2[r22][r32]);
                    short[] sArr3 = this.A[r12];
                    sArr3[r32] = GF2Field.addElem(sArr3[r32], sMultElem);
                }
            }
        }
        return this.A;
    }

    public short[] solveEquation(short[][] sArr, short[] sArr2) {
        if (sArr.length != sArr2.length) {
            return null;
        }
        try {
            this.A = (short[][]) Array.newInstance((Class<?>) Short.TYPE, sArr.length, sArr.length + 1);
            this.f12052x = new short[sArr.length];
            for (int r02 = 0; r02 < sArr.length; r02++) {
                for (int r32 = 0; r32 < sArr[0].length; r32++) {
                    this.A[r02][r32] = sArr[r02][r32];
                }
            }
            for (int r72 = 0; r72 < sArr2.length; r72++) {
                short[] sArr3 = this.A[r72];
                sArr3[sArr2.length] = GF2Field.addElem(sArr2[r72], sArr3[sArr2.length]);
            }
            computeZerosUnder(false);
            substitute();
            return this.f12052x;
        } catch (RuntimeException unused) {
            return null;
        }
    }
}
