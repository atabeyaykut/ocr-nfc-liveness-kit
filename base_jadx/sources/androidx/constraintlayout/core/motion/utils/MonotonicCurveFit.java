package androidx.constraintlayout.core.motion.utils;

import java.lang.reflect.Array;
import java.util.Arrays;

/* loaded from: classes.dex */
public class MonotonicCurveFit extends CurveFit {
    private static final String TAG = "MonotonicCurveFit";
    private boolean mExtrapolate = true;
    double[] mSlopeTemp;
    private double[] mT;
    private double[][] mTangent;
    private double[][] mY;

    public MonotonicCurveFit(double[] dArr, double[][] dArr2) {
        int length = dArr.length;
        int length2 = dArr2[0].length;
        this.mSlopeTemp = new double[length2];
        int r72 = length - 1;
        double[][] dArr3 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, r72, length2);
        double[][] dArr4 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, length, length2);
        for (int r10 = 0; r10 < length2; r10++) {
            int r11 = 0;
            while (r11 < r72) {
                int r12 = r11 + 1;
                double d10 = dArr[r12] - dArr[r11];
                double[] dArr5 = dArr3[r11];
                double d11 = (dArr2[r12][r10] - dArr2[r11][r10]) / d10;
                dArr5[r10] = d11;
                if (r11 == 0) {
                    dArr4[r11][r10] = d11;
                } else {
                    dArr4[r11][r10] = (dArr3[r11 - 1][r10] + d11) * 0.5d;
                }
                r11 = r12;
            }
            dArr4[r72][r10] = dArr3[length - 2][r10];
        }
        for (int r42 = 0; r42 < r72; r42++) {
            for (int r82 = 0; r82 < length2; r82++) {
                double d12 = dArr3[r42][r82];
                if (d12 == 0.0d) {
                    dArr4[r42][r82] = 0.0d;
                    dArr4[r42 + 1][r82] = 0.0d;
                } else {
                    double d13 = dArr4[r42][r82] / d12;
                    int r102 = r42 + 1;
                    double d14 = dArr4[r102][r82] / d12;
                    double dHypot = Math.hypot(d13, d14);
                    if (dHypot > 9.0d) {
                        double d15 = 3.0d / dHypot;
                        double[] dArr6 = dArr4[r42];
                        double[] dArr7 = dArr3[r42];
                        dArr6[r82] = d13 * d15 * dArr7[r82];
                        dArr4[r102][r82] = d15 * d14 * dArr7[r82];
                    }
                }
            }
        }
        this.mT = dArr;
        this.mY = dArr2;
        this.mTangent = dArr4;
    }

    public static MonotonicCurveFit buildWave(String str) {
        double[] dArr = new double[str.length() / 2];
        int r12 = str.indexOf(40) + 1;
        int r32 = str.indexOf(44, r12);
        int r42 = 0;
        while (r32 != -1) {
            dArr[r42] = Double.parseDouble(str.substring(r12, r32).trim());
            r12 = r32 + 1;
            r32 = str.indexOf(44, r12);
            r42++;
        }
        dArr[r42] = Double.parseDouble(str.substring(r12, str.indexOf(41, r12)).trim());
        return buildWave(Arrays.copyOf(dArr, r42 + 1));
    }

    private static MonotonicCurveFit buildWave(double[] dArr) {
        int length = (dArr.length * 3) - 2;
        int length2 = dArr.length - 1;
        double d10 = 1.0d / length2;
        double[][] dArr2 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, length, 1);
        double[] dArr3 = new double[length];
        for (int r92 = 0; r92 < dArr.length; r92++) {
            double d11 = dArr[r92];
            int r12 = r92 + length2;
            dArr2[r12][0] = d11;
            double d12 = r92 * d10;
            dArr3[r12] = d12;
            if (r92 > 0) {
                int r122 = (length2 * 2) + r92;
                dArr2[r122][0] = d11 + 1.0d;
                dArr3[r122] = d12 + 1.0d;
                int r123 = r92 - 1;
                dArr2[r123][0] = (d11 - 1.0d) - d10;
                dArr3[r123] = (d12 - 1.0d) - d10;
            }
        }
        return new MonotonicCurveFit(dArr3, dArr2);
    }

    private static double diff(double d10, double d11, double d12, double d13, double d14, double d15) {
        double d16 = d11 * d11;
        double d17 = d11 * 6.0d;
        double d18 = 6.0d * d16 * d12;
        double d19 = 3.0d * d10;
        return (d10 * d14) + (((((d19 * d14) * d16) + (((d19 * d15) * d16) + ((d18 + ((d17 * d13) + (((-6.0d) * d16) * d13))) - (d17 * d12)))) - (((2.0d * d10) * d15) * d11)) - (((4.0d * d10) * d14) * d11));
    }

    private static double interpolate(double d10, double d11, double d12, double d13, double d14, double d15) {
        double d16 = d11 * d11;
        double d17 = d16 * d11;
        double d18 = 3.0d * d16;
        double d19 = d17 * 2.0d * d12;
        double d20 = ((d19 + ((d18 * d13) + (((-2.0d) * d17) * d13))) - (d18 * d12)) + d12;
        double d21 = d10 * d15;
        double d22 = (d21 * d17) + d20;
        double d23 = d10 * d14;
        return (d23 * d11) + ((((d17 * d23) + d22) - (d21 * d16)) - (((2.0d * d10) * d14) * d16));
    }

    @Override // androidx.constraintlayout.core.motion.utils.CurveFit
    public double getPos(double d10, int r25) {
        double[] dArr = this.mT;
        int length = dArr.length;
        int r52 = 0;
        if (this.mExtrapolate) {
            double d11 = dArr[0];
            if (d10 <= d11) {
                return (getSlope(d11, r25) * (d10 - d11)) + this.mY[0][r25];
            }
            int r42 = length - 1;
            double d12 = dArr[r42];
            if (d10 >= d12) {
                return (getSlope(d12, r25) * (d10 - d12)) + this.mY[r42][r25];
            }
        } else {
            if (d10 <= dArr[0]) {
                return this.mY[0][r25];
            }
            int r43 = length - 1;
            if (d10 >= dArr[r43]) {
                return this.mY[r43][r25];
            }
        }
        while (r52 < length - 1) {
            double[] dArr2 = this.mT;
            double d13 = dArr2[r52];
            if (d10 == d13) {
                return this.mY[r52][r25];
            }
            int r44 = r52 + 1;
            double d14 = dArr2[r44];
            if (d10 < d14) {
                double d15 = d14 - d13;
                double d16 = (d10 - d13) / d15;
                double[][] dArr3 = this.mY;
                double d17 = dArr3[r52][r25];
                double d18 = dArr3[r44][r25];
                double[][] dArr4 = this.mTangent;
                return interpolate(d15, d16, d17, d18, dArr4[r52][r25], dArr4[r44][r25]);
            }
            r52 = r44;
        }
        return 0.0d;
    }

    @Override // androidx.constraintlayout.core.motion.utils.CurveFit
    public void getPos(double d10, double[] dArr) {
        double[] dArr2 = this.mT;
        int length = dArr2.length;
        int r42 = 0;
        int length2 = this.mY[0].length;
        if (this.mExtrapolate) {
            double d11 = dArr2[0];
            if (d10 <= d11) {
                getSlope(d11, this.mSlopeTemp);
                for (int r12 = 0; r12 < length2; r12++) {
                    dArr[r12] = ((d10 - this.mT[0]) * this.mSlopeTemp[r12]) + this.mY[0][r12];
                }
                return;
            }
            int r52 = length - 1;
            double d12 = dArr2[r52];
            if (d10 >= d12) {
                getSlope(d12, this.mSlopeTemp);
                while (r42 < length2) {
                    dArr[r42] = ((d10 - this.mT[r52]) * this.mSlopeTemp[r42]) + this.mY[r52][r42];
                    r42++;
                }
                return;
            }
        } else {
            if (d10 <= dArr2[0]) {
                for (int r13 = 0; r13 < length2; r13++) {
                    dArr[r13] = this.mY[0][r13];
                }
                return;
            }
            int r53 = length - 1;
            if (d10 >= dArr2[r53]) {
                while (r42 < length2) {
                    dArr[r42] = this.mY[r53][r42];
                    r42++;
                }
                return;
            }
        }
        int r14 = 0;
        while (r14 < length - 1) {
            if (d10 == this.mT[r14]) {
                for (int r54 = 0; r54 < length2; r54++) {
                    dArr[r54] = this.mY[r14][r54];
                }
            }
            double[] dArr3 = this.mT;
            int r6 = r14 + 1;
            double d13 = dArr3[r6];
            if (d10 < d13) {
                double d14 = dArr3[r14];
                double d15 = d13 - d14;
                double d16 = (d10 - d14) / d15;
                while (r42 < length2) {
                    double[][] dArr4 = this.mY;
                    double d17 = dArr4[r14][r42];
                    double d18 = dArr4[r6][r42];
                    double[][] dArr5 = this.mTangent;
                    dArr[r42] = interpolate(d15, d16, d17, d18, dArr5[r14][r42], dArr5[r6][r42]);
                    r42++;
                }
                return;
            }
            r14 = r6;
        }
    }

    @Override // androidx.constraintlayout.core.motion.utils.CurveFit
    public void getPos(double d10, float[] fArr) {
        double[] dArr = this.mT;
        int length = dArr.length;
        int r42 = 0;
        int length2 = this.mY[0].length;
        if (this.mExtrapolate) {
            double d11 = dArr[0];
            if (d10 <= d11) {
                getSlope(d11, this.mSlopeTemp);
                for (int r12 = 0; r12 < length2; r12++) {
                    fArr[r12] = (float) (((d10 - this.mT[0]) * this.mSlopeTemp[r12]) + this.mY[0][r12]);
                }
                return;
            }
            int r52 = length - 1;
            double d12 = dArr[r52];
            if (d10 >= d12) {
                getSlope(d12, this.mSlopeTemp);
                while (r42 < length2) {
                    fArr[r42] = (float) (((d10 - this.mT[r52]) * this.mSlopeTemp[r42]) + this.mY[r52][r42]);
                    r42++;
                }
                return;
            }
        } else {
            if (d10 <= dArr[0]) {
                for (int r13 = 0; r13 < length2; r13++) {
                    fArr[r13] = (float) this.mY[0][r13];
                }
                return;
            }
            int r53 = length - 1;
            if (d10 >= dArr[r53]) {
                while (r42 < length2) {
                    fArr[r42] = (float) this.mY[r53][r42];
                    r42++;
                }
                return;
            }
        }
        int r14 = 0;
        while (r14 < length - 1) {
            if (d10 == this.mT[r14]) {
                for (int r54 = 0; r54 < length2; r54++) {
                    fArr[r54] = (float) this.mY[r14][r54];
                }
            }
            double[] dArr2 = this.mT;
            int r6 = r14 + 1;
            double d13 = dArr2[r6];
            if (d10 < d13) {
                double d14 = dArr2[r14];
                double d15 = d13 - d14;
                double d16 = (d10 - d14) / d15;
                while (r42 < length2) {
                    double[][] dArr3 = this.mY;
                    double d17 = dArr3[r14][r42];
                    double d18 = dArr3[r6][r42];
                    double[][] dArr4 = this.mTangent;
                    fArr[r42] = (float) interpolate(d15, d16, d17, d18, dArr4[r14][r42], dArr4[r6][r42]);
                    r42++;
                }
                return;
            }
            r14 = r6;
        }
    }

    @Override // androidx.constraintlayout.core.motion.utils.CurveFit
    public double getSlope(double d10, int r26) {
        double[] dArr = this.mT;
        int length = dArr.length;
        int r32 = 0;
        double d11 = dArr[0];
        if (d10 >= d11) {
            d11 = dArr[length - 1];
            if (d10 < d11) {
                d11 = d10;
            }
        }
        while (r32 < length - 1) {
            double[] dArr2 = this.mT;
            int r6 = r32 + 1;
            double d12 = dArr2[r6];
            if (d11 <= d12) {
                double d13 = dArr2[r32];
                double d14 = d12 - d13;
                double[][] dArr3 = this.mY;
                double d15 = dArr3[r32][r26];
                double d16 = dArr3[r6][r26];
                double[][] dArr4 = this.mTangent;
                return diff(d14, (d11 - d13) / d14, d15, d16, dArr4[r32][r26], dArr4[r6][r26]) / d14;
            }
            r32 = r6;
        }
        return 0.0d;
    }

    @Override // androidx.constraintlayout.core.motion.utils.CurveFit
    public void getSlope(double d10, double[] dArr) {
        double[] dArr2 = this.mT;
        int length = dArr2.length;
        int length2 = this.mY[0].length;
        double d11 = dArr2[0];
        if (d10 > d11) {
            d11 = dArr2[length - 1];
            if (d10 < d11) {
                d11 = d10;
            }
        }
        int r12 = 0;
        while (r12 < length - 1) {
            double[] dArr3 = this.mT;
            int r82 = r12 + 1;
            double d12 = dArr3[r82];
            if (d11 <= d12) {
                double d13 = dArr3[r12];
                double d14 = d12 - d13;
                double d15 = (d11 - d13) / d14;
                for (int r42 = 0; r42 < length2; r42++) {
                    double[][] dArr4 = this.mY;
                    double d16 = dArr4[r12][r42];
                    double d17 = dArr4[r82][r42];
                    double[][] dArr5 = this.mTangent;
                    dArr[r42] = diff(d14, d15, d16, d17, dArr5[r12][r42], dArr5[r82][r42]) / d14;
                }
                return;
            }
            r12 = r82;
        }
    }

    @Override // androidx.constraintlayout.core.motion.utils.CurveFit
    public double[] getTimePoints() {
        return this.mT;
    }
}
