package org.bouncycastle.pqc.crypto.rainbow;

import java.lang.reflect.Array;

/* loaded from: classes2.dex */
class ComputeInField {
    private void gaussElim(short[][] sArr) {
        int r12 = 0;
        while (r12 < sArr.length) {
            int r22 = r12 + 1;
            for (int r32 = r22; r32 < sArr.length; r32++) {
                if (sArr[r12][r12] == 0) {
                    for (int r42 = r12; r42 < sArr[0].length; r42++) {
                        short[] sArr2 = sArr[r12];
                        sArr2[r42] = GF2Field.addElem(sArr2[r42], sArr[r32][r42]);
                    }
                }
            }
            short sInvElem = GF2Field.invElem(sArr[r12][r12]);
            if (sInvElem == 0) {
                throw new RuntimeException("The matrix is not invertible");
            }
            sArr[r12] = multVect(sInvElem, sArr[r12]);
            for (int r33 = 0; r33 < sArr.length; r33++) {
                if (r12 != r33) {
                    short s7 = sArr[r33][r12];
                    for (int r52 = r12; r52 < sArr[0].length; r52++) {
                        short sMultElem = GF2Field.multElem(sArr[r12][r52], s7);
                        short[] sArr3 = sArr[r33];
                        sArr3[r52] = GF2Field.addElem(sArr3[r52], sMultElem);
                    }
                }
            }
            r12 = r22;
        }
    }

    public short[][] addMatrix(short[][] sArr, short[][] sArr2) {
        if (sArr.length == sArr2.length) {
            short[] sArr3 = sArr[0];
            if (sArr3.length == sArr2[0].length) {
                short[][] sArr4 = (short[][]) Array.newInstance((Class<?>) Short.TYPE, sArr.length, sArr3.length);
                for (int r22 = 0; r22 < sArr.length; r22++) {
                    for (int r32 = 0; r32 < sArr[0].length; r32++) {
                        sArr4[r22][r32] = GF2Field.addElem(sArr[r22][r32], sArr2[r22][r32]);
                    }
                }
                return sArr4;
            }
        }
        throw new RuntimeException("Addition is not possible!");
    }

    public short[][] addMatrixTranspose(short[][] sArr) {
        if (sArr.length == sArr[0].length) {
            return addMatrix(sArr, transpose(sArr));
        }
        throw new RuntimeException("Addition is not possible!");
    }

    public short[] addVect(short[] sArr, short[] sArr2) {
        if (sArr.length != sArr2.length) {
            throw new RuntimeException("Addition is not possible! vector1.length: " + sArr.length + " vector2.length: " + sArr2.length);
        }
        int length = sArr.length;
        short[] sArr3 = new short[length];
        for (int r22 = 0; r22 < length; r22++) {
            sArr3[r22] = GF2Field.addElem(sArr[r22], sArr2[r22]);
        }
        return sArr3;
    }

    public short[][] inverse(short[][] sArr) {
        if (sArr.length != sArr[0].length) {
            throw new RuntimeException("The matrix is not invertible. Please choose another one!");
        }
        try {
            short[][] sArr2 = (short[][]) Array.newInstance((Class<?>) Short.TYPE, sArr.length, sArr.length * 2);
            for (int r22 = 0; r22 < sArr.length; r22++) {
                System.arraycopy(sArr[r22], 0, sArr2[r22], 0, sArr.length);
                for (int length = sArr.length; length < sArr.length * 2; length++) {
                    sArr2[r22][length] = 0;
                }
                sArr2[r22][sArr2.length + r22] = 1;
            }
            gaussElim(sArr2);
            short[][] sArr3 = (short[][]) Array.newInstance((Class<?>) Short.TYPE, sArr2.length, sArr2.length);
            for (int r12 = 0; r12 < sArr2.length; r12++) {
                for (int length2 = sArr2.length; length2 < sArr2.length * 2; length2++) {
                    sArr3[r12][length2 - sArr2.length] = sArr2[r12][length2];
                }
            }
            return sArr3;
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
        short[][] sArr3 = (short[][]) Array.newInstance((Class<?>) Short.TYPE, sArr.length, sArr2[0].length);
        for (int r22 = 0; r22 < sArr.length; r22++) {
            for (int r32 = 0; r32 < sArr2.length; r32++) {
                for (int r42 = 0; r42 < sArr2[0].length; r42++) {
                    short sMultElem = GF2Field.multElem(sArr[r22][r32], sArr2[r32][r42]);
                    short[] sArr4 = sArr3[r22];
                    sArr4[r42] = GF2Field.addElem(sArr4[r42], sMultElem);
                }
            }
        }
        return sArr3;
    }

    public short multiplyMatrix_quad(short[][] sArr, short[] sArr2) throws RuntimeException {
        int length = sArr.length;
        short[] sArr3 = sArr[0];
        if (length != sArr3.length || sArr3.length != sArr2.length) {
            throw new RuntimeException("Multiplication is not possible!");
        }
        short[] sArr4 = new short[sArr.length];
        short sAddElem = 0;
        for (int r22 = 0; r22 < sArr.length; r22++) {
            for (int r42 = 0; r42 < sArr2.length; r42++) {
                sArr4[r22] = GF2Field.addElem(sArr4[r22], GF2Field.multElem(sArr[r22][r42], sArr2[r42]));
            }
            sAddElem = GF2Field.addElem(sAddElem, GF2Field.multElem(sArr4[r22], sArr2[r22]));
        }
        return sAddElem;
    }

    public short[][][] obfuscate_l1_polys(short[][] sArr, short[][][] sArr2, short[][][] sArr3) {
        short[][] sArr4 = sArr2[0];
        int length = sArr4.length;
        short[][] sArr5 = sArr3[0];
        if (length == sArr5.length) {
            int length2 = sArr4[0].length;
            short[] sArr6 = sArr5[0];
            if (length2 == sArr6.length && sArr2.length == sArr[0].length && sArr3.length == sArr.length) {
                short[][][] sArr7 = (short[][][]) Array.newInstance((Class<?>) Short.TYPE, sArr3.length, sArr5.length, sArr6.length);
                for (int r22 = 0; r22 < sArr2[0].length; r22++) {
                    for (int r32 = 0; r32 < sArr2[0][0].length; r32++) {
                        for (int r42 = 0; r42 < sArr.length; r42++) {
                            for (int r52 = 0; r52 < sArr[0].length; r52++) {
                                short sMultElem = GF2Field.multElem(sArr[r42][r52], sArr2[r52][r22][r32]);
                                short[] sArr8 = sArr7[r42][r22];
                                sArr8[r32] = GF2Field.addElem(sArr8[r32], sMultElem);
                            }
                            short[] sArr9 = sArr7[r42][r22];
                            sArr9[r32] = GF2Field.addElem(sArr3[r42][r22][r32], sArr9[r32]);
                        }
                    }
                }
                return sArr7;
            }
        }
        throw new RuntimeException("Multiplication not possible!");
    }

    public short[] solveEquation(short[][] sArr, short[] sArr2) {
        if (sArr.length != sArr2.length) {
            return null;
        }
        try {
            short[][] sArr3 = (short[][]) Array.newInstance((Class<?>) Short.TYPE, sArr.length, sArr.length + 1);
            short[] sArr4 = new short[sArr.length];
            for (int r42 = 0; r42 < sArr.length; r42++) {
                System.arraycopy(sArr[r42], 0, sArr3[r42], 0, sArr[0].length);
                short[] sArr5 = sArr3[r42];
                sArr5[sArr2.length] = GF2Field.addElem(sArr2[r42], sArr5[sArr2.length]);
            }
            gaussElim(sArr3);
            for (int r12 = 0; r12 < sArr3.length; r12++) {
                sArr4[r12] = sArr3[r12][sArr2.length];
            }
            return sArr4;
        } catch (RuntimeException unused) {
            return null;
        }
    }

    public short[][] to_UT(short[][] sArr) {
        if (sArr.length != sArr[0].length) {
            throw new RuntimeException("Computation to upper triangular matrix is not possible!");
        }
        short[][] sArr2 = (short[][]) Array.newInstance((Class<?>) Short.TYPE, sArr.length, sArr.length);
        int r22 = 0;
        while (r22 < sArr.length) {
            sArr2[r22][r22] = sArr[r22][r22];
            int r32 = r22 + 1;
            for (int r42 = r32; r42 < sArr[0].length; r42++) {
                sArr2[r22][r42] = GF2Field.addElem(sArr[r22][r42], sArr[r42][r22]);
            }
            r22 = r32;
        }
        return sArr2;
    }

    public short[][] transpose(short[][] sArr) {
        short[][] sArr2 = (short[][]) Array.newInstance((Class<?>) Short.TYPE, sArr[0].length, sArr.length);
        for (int r22 = 0; r22 < sArr.length; r22++) {
            for (int r32 = 0; r32 < sArr[0].length; r32++) {
                sArr2[r32][r22] = sArr[r22][r32];
            }
        }
        return sArr2;
    }
}
