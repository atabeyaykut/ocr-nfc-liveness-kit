package androidx.constraintlayout.core.motion.utils;

import java.lang.reflect.Array;

/* loaded from: classes.dex */
public class HyperSpline {
    double[][] mCtl;
    Cubic[][] mCurve;
    double[] mCurveLength;
    int mDimensionality;
    int mPoints;
    double mTotalLength;

    public static class Cubic {
        double mA;
        double mB;
        double mC;
        double mD;

        public Cubic(double d10, double d11, double d12, double d13) {
            this.mA = d10;
            this.mB = d11;
            this.mC = d12;
            this.mD = d13;
        }

        public double eval(double d10) {
            return (((((this.mD * d10) + this.mC) * d10) + this.mB) * d10) + this.mA;
        }

        public double vel(double d10) {
            return (((this.mC * 2.0d) + (this.mD * 3.0d * d10)) * d10) + this.mB;
        }
    }

    public HyperSpline() {
    }

    public HyperSpline(double[][] dArr) {
        setup(dArr);
    }

    public static Cubic[] calcNaturalCubic(int r24, double[] dArr) {
        double[] dArr2 = new double[r24];
        double[] dArr3 = new double[r24];
        double[] dArr4 = new double[r24];
        int r02 = r24 - 1;
        int r6 = 0;
        dArr2[0] = 0.5d;
        int r42 = 1;
        for (int r52 = 1; r52 < r02; r52++) {
            dArr2[r52] = 1.0d / (4.0d - dArr2[r52 - 1]);
        }
        int r53 = r02 - 1;
        dArr2[r02] = 1.0d / (2.0d - dArr2[r53]);
        dArr3[0] = (dArr[1] - dArr[0]) * 3.0d * dArr2[0];
        while (r42 < r02) {
            int r72 = r42 + 1;
            int r82 = r42 - 1;
            dArr3[r42] = (((dArr[r72] - dArr[r82]) * 3.0d) - dArr3[r82]) * dArr2[r42];
            r42 = r72;
        }
        double d10 = (((dArr[r02] - dArr[r53]) * 3.0d) - dArr3[r53]) * dArr2[r02];
        dArr3[r02] = d10;
        dArr4[r02] = d10;
        while (r53 >= 0) {
            dArr4[r53] = dArr3[r53] - (dArr2[r53] * dArr4[r53 + 1]);
            r53--;
        }
        Cubic[] cubicArr = new Cubic[r02];
        while (r6 < r02) {
            double d11 = dArr[r6];
            double d12 = dArr4[r6];
            int r73 = r6 + 1;
            double d13 = dArr[r73];
            double d14 = dArr4[r73];
            cubicArr[r6] = new Cubic((float) d11, d12, (((d13 - d11) * 3.0d) - (d12 * 2.0d)) - d14, ((d11 - d13) * 2.0d) + d12 + d14);
            r6 = r73;
        }
        return cubicArr;
    }

    public double approxLength(Cubic[] cubicArr) {
        int r72;
        int length = cubicArr.length;
        double[] dArr = new double[cubicArr.length];
        double d10 = 0.0d;
        double d11 = 0.0d;
        double dSqrt = 0.0d;
        while (true) {
            r72 = 0;
            if (d11 >= 1.0d) {
                break;
            }
            double d12 = 0.0d;
            while (r72 < cubicArr.length) {
                double d13 = dArr[r72];
                double dEval = cubicArr[r72].eval(d11);
                dArr[r72] = dEval;
                double d14 = d13 - dEval;
                d12 += d14 * d14;
                r72++;
            }
            if (d11 > 0.0d) {
                dSqrt += Math.sqrt(d12);
            }
            d11 += 0.1d;
        }
        while (r72 < cubicArr.length) {
            double d15 = dArr[r72];
            double dEval2 = cubicArr[r72].eval(1.0d);
            dArr[r72] = dEval2;
            double d16 = d15 - dEval2;
            d10 += d16 * d16;
            r72++;
        }
        return Math.sqrt(d10) + dSqrt;
    }

    public double getPos(double d10, int r82) {
        double[] dArr;
        double d11 = d10 * this.mTotalLength;
        int r02 = 0;
        while (true) {
            dArr = this.mCurveLength;
            if (r02 >= dArr.length - 1) {
                break;
            }
            double d12 = dArr[r02];
            if (d12 >= d11) {
                break;
            }
            d11 -= d12;
            r02++;
        }
        return this.mCurve[r82][r02].eval(d11 / dArr[r02]);
    }

    public void getPos(double d10, double[] dArr) {
        double d11 = d10 * this.mTotalLength;
        int r12 = 0;
        while (true) {
            double[] dArr2 = this.mCurveLength;
            if (r12 >= dArr2.length - 1) {
                break;
            }
            double d12 = dArr2[r12];
            if (d12 >= d11) {
                break;
            }
            d11 -= d12;
            r12++;
        }
        for (int r02 = 0; r02 < dArr.length; r02++) {
            dArr[r02] = this.mCurve[r02][r12].eval(d11 / this.mCurveLength[r12]);
        }
    }

    public void getPos(double d10, float[] fArr) {
        double d11 = d10 * this.mTotalLength;
        int r12 = 0;
        while (true) {
            double[] dArr = this.mCurveLength;
            if (r12 >= dArr.length - 1) {
                break;
            }
            double d12 = dArr[r12];
            if (d12 >= d11) {
                break;
            }
            d11 -= d12;
            r12++;
        }
        for (int r02 = 0; r02 < fArr.length; r02++) {
            fArr[r02] = (float) this.mCurve[r02][r12].eval(d11 / this.mCurveLength[r12]);
        }
    }

    public void getVelocity(double d10, double[] dArr) {
        double d11 = d10 * this.mTotalLength;
        int r12 = 0;
        while (true) {
            double[] dArr2 = this.mCurveLength;
            if (r12 >= dArr2.length - 1) {
                break;
            }
            double d12 = dArr2[r12];
            if (d12 >= d11) {
                break;
            }
            d11 -= d12;
            r12++;
        }
        for (int r02 = 0; r02 < dArr.length; r02++) {
            dArr[r02] = this.mCurve[r02][r12].vel(d11 / this.mCurveLength[r12]);
        }
    }

    public void setup(double[][] dArr) {
        int r12;
        int length = dArr[0].length;
        this.mDimensionality = length;
        int length2 = dArr.length;
        this.mPoints = length2;
        this.mCtl = (double[][]) Array.newInstance((Class<?>) Double.TYPE, length, length2);
        this.mCurve = new Cubic[this.mDimensionality][];
        for (int r13 = 0; r13 < this.mDimensionality; r13++) {
            for (int r22 = 0; r22 < this.mPoints; r22++) {
                this.mCtl[r13][r22] = dArr[r22][r13];
            }
        }
        int r92 = 0;
        while (true) {
            r12 = this.mDimensionality;
            if (r92 >= r12) {
                break;
            }
            Cubic[][] cubicArr = this.mCurve;
            double[] dArr2 = this.mCtl[r92];
            cubicArr[r92] = calcNaturalCubic(dArr2.length, dArr2);
            r92++;
        }
        this.mCurveLength = new double[this.mPoints - 1];
        this.mTotalLength = 0.0d;
        Cubic[] cubicArr2 = new Cubic[r12];
        for (int r14 = 0; r14 < this.mCurveLength.length; r14++) {
            for (int r23 = 0; r23 < this.mDimensionality; r23++) {
                cubicArr2[r23] = this.mCurve[r23][r14];
            }
            double d10 = this.mTotalLength;
            double[] dArr3 = this.mCurveLength;
            double dApproxLength = approxLength(cubicArr2);
            dArr3[r14] = dApproxLength;
            this.mTotalLength = d10 + dApproxLength;
        }
    }
}
