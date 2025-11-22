package androidx.constraintlayout.core.motion.utils;

import java.util.Arrays;

/* loaded from: classes.dex */
public class Oscillator {
    public static final int BOUNCE = 6;
    public static final int COS_WAVE = 5;
    public static final int CUSTOM = 7;
    public static final int REVERSE_SAW_WAVE = 4;
    public static final int SAW_WAVE = 3;
    public static final int SIN_WAVE = 0;
    public static final int SQUARE_WAVE = 1;
    public static String TAG = "Oscillator";
    public static final int TRIANGLE_WAVE = 2;
    double[] mArea;
    MonotonicCurveFit mCustomCurve;
    String mCustomType;
    int mType;
    float[] mPeriod = new float[0];
    double[] mPosition = new double[0];
    double PI2 = 6.283185307179586d;
    private boolean mNormalized = false;

    public void addPoint(double d10, float f) {
        int length = this.mPeriod.length + 1;
        int r12 = Arrays.binarySearch(this.mPosition, d10);
        if (r12 < 0) {
            r12 = (-r12) - 1;
        }
        this.mPosition = Arrays.copyOf(this.mPosition, length);
        this.mPeriod = Arrays.copyOf(this.mPeriod, length);
        this.mArea = new double[length];
        double[] dArr = this.mPosition;
        System.arraycopy(dArr, r12, dArr, r12 + 1, (length - r12) - 1);
        this.mPosition[r12] = d10;
        this.mPeriod[r12] = f;
        this.mNormalized = false;
    }

    public double getDP(double d10) {
        if (d10 <= 0.0d) {
            d10 = 1.0E-5d;
        } else if (d10 >= 1.0d) {
            d10 = 0.999999d;
        }
        int r22 = Arrays.binarySearch(this.mPosition, d10);
        if (r22 > 0 || r22 == 0) {
            return 0.0d;
        }
        int r02 = (-r22) - 1;
        float[] fArr = this.mPeriod;
        float f = fArr[r02];
        int r32 = r02 - 1;
        float f10 = fArr[r32];
        double d11 = f - f10;
        double[] dArr = this.mPosition;
        double d12 = dArr[r02];
        double d13 = dArr[r32];
        double d14 = d11 / (d12 - d13);
        return (f10 - (d14 * d13)) + (d10 * d14);
    }

    public double getP(double d10) {
        if (d10 < 0.0d) {
            d10 = 0.0d;
        } else if (d10 > 1.0d) {
            d10 = 1.0d;
        }
        int r42 = Arrays.binarySearch(this.mPosition, d10);
        if (r42 > 0) {
            return 1.0d;
        }
        if (r42 == 0) {
            return 0.0d;
        }
        int r02 = (-r42) - 1;
        float[] fArr = this.mPeriod;
        float f = fArr[r02];
        int r32 = r02 - 1;
        float f10 = fArr[r32];
        double d11 = f - f10;
        double[] dArr = this.mPosition;
        double d12 = dArr[r02];
        double d13 = dArr[r32];
        double d14 = d11 / (d12 - d13);
        return ((((d10 * d10) - (d13 * d13)) * d14) / 2.0d) + ((d10 - d13) * (f10 - (d14 * d13))) + this.mArea[r32];
    }

    public double getSlope(double d10, double d11, double d12) {
        double d13;
        double dSignum;
        double p10 = getP(d10) + d11;
        double dp = getDP(d10) + d12;
        switch (this.mType) {
            case 1:
                return 0.0d;
            case 2:
                d13 = dp * 4.0d;
                dSignum = Math.signum((((p10 * 4.0d) + 3.0d) % 4.0d) - 2.0d);
                break;
            case 3:
                return dp * 2.0d;
            case 4:
                return (-dp) * 2.0d;
            case 5:
                double d14 = this.PI2;
                return Math.sin(d14 * p10) * (-d14) * dp;
            case 6:
                return ((((p10 * 4.0d) + 2.0d) % 4.0d) - 2.0d) * dp * 4.0d;
            case 7:
                return this.mCustomCurve.getSlope(p10 % 1.0d, 0);
            default:
                double d15 = this.PI2;
                d13 = dp * d15;
                dSignum = Math.cos(d15 * p10);
                break;
        }
        return dSignum * d13;
    }

    public double getValue(double d10, double d11) {
        double dAbs;
        double p10 = getP(d10) + d11;
        switch (this.mType) {
            case 1:
                return Math.signum(0.5d - (p10 % 1.0d));
            case 2:
                dAbs = Math.abs((((p10 * 4.0d) + 1.0d) % 4.0d) - 2.0d);
                break;
            case 3:
                return (((p10 * 2.0d) + 1.0d) % 2.0d) - 1.0d;
            case 4:
                dAbs = ((p10 * 2.0d) + 1.0d) % 2.0d;
                break;
            case 5:
                return Math.cos((d11 + p10) * this.PI2);
            case 6:
                double dAbs2 = 1.0d - Math.abs(((p10 * 4.0d) % 4.0d) - 2.0d);
                dAbs = dAbs2 * dAbs2;
                break;
            case 7:
                return this.mCustomCurve.getPos(p10 % 1.0d, 0);
            default:
                return Math.sin(this.PI2 * p10);
        }
        return 1.0d - dAbs;
    }

    public void normalize() {
        double d10 = 0.0d;
        int r42 = 0;
        while (true) {
            if (r42 >= this.mPeriod.length) {
                break;
            }
            d10 += r7[r42];
            r42++;
        }
        double d11 = 0.0d;
        int r72 = 1;
        while (true) {
            float[] fArr = this.mPeriod;
            if (r72 >= fArr.length) {
                break;
            }
            int r11 = r72 - 1;
            float f = (fArr[r11] + fArr[r72]) / 2.0f;
            double[] dArr = this.mPosition;
            d11 += (dArr[r72] - dArr[r11]) * f;
            r72++;
        }
        int r73 = 0;
        while (true) {
            float[] fArr2 = this.mPeriod;
            if (r73 >= fArr2.length) {
                break;
            }
            fArr2[r73] = (float) (fArr2[r73] * (d10 / d11));
            r73++;
        }
        this.mArea[0] = 0.0d;
        int r12 = 1;
        while (true) {
            float[] fArr3 = this.mPeriod;
            if (r12 >= fArr3.length) {
                this.mNormalized = true;
                return;
            }
            int r32 = r12 - 1;
            float f10 = (fArr3[r32] + fArr3[r12]) / 2.0f;
            double[] dArr2 = this.mPosition;
            double d12 = dArr2[r12] - dArr2[r32];
            double[] dArr3 = this.mArea;
            dArr3[r12] = (d12 * f10) + dArr3[r32];
            r12++;
        }
    }

    public void setType(int r12, String str) {
        this.mType = r12;
        this.mCustomType = str;
        if (str != null) {
            this.mCustomCurve = MonotonicCurveFit.buildWave(str);
        }
    }

    public String toString() {
        return "pos =" + Arrays.toString(this.mPosition) + " period=" + Arrays.toString(this.mPeriod);
    }
}
