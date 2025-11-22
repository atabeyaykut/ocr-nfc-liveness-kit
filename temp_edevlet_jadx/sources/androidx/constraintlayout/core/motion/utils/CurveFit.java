package androidx.constraintlayout.core.motion.utils;

/* loaded from: classes.dex */
public abstract class CurveFit {
    public static final int CONSTANT = 2;
    public static final int LINEAR = 1;
    public static final int SPLINE = 0;

    public static class Constant extends CurveFit {
        double mTime;
        double[] mValue;

        public Constant(double d10, double[] dArr) {
            this.mTime = d10;
            this.mValue = dArr;
        }

        @Override // androidx.constraintlayout.core.motion.utils.CurveFit
        public double getPos(double d10, int r32) {
            return this.mValue[r32];
        }

        @Override // androidx.constraintlayout.core.motion.utils.CurveFit
        public void getPos(double d10, double[] dArr) {
            double[] dArr2 = this.mValue;
            System.arraycopy(dArr2, 0, dArr, 0, dArr2.length);
        }

        @Override // androidx.constraintlayout.core.motion.utils.CurveFit
        public void getPos(double d10, float[] fArr) {
            int r32 = 0;
            while (true) {
                double[] dArr = this.mValue;
                if (r32 >= dArr.length) {
                    return;
                }
                fArr[r32] = (float) dArr[r32];
                r32++;
            }
        }

        @Override // androidx.constraintlayout.core.motion.utils.CurveFit
        public double getSlope(double d10, int r32) {
            return 0.0d;
        }

        @Override // androidx.constraintlayout.core.motion.utils.CurveFit
        public void getSlope(double d10, double[] dArr) {
            for (int r32 = 0; r32 < this.mValue.length; r32++) {
                dArr[r32] = 0.0d;
            }
        }

        @Override // androidx.constraintlayout.core.motion.utils.CurveFit
        public double[] getTimePoints() {
            return new double[]{this.mTime};
        }
    }

    public static CurveFit get(int r32, double[] dArr, double[][] dArr2) {
        if (dArr.length == 1) {
            r32 = 2;
        }
        return r32 != 0 ? r32 != 2 ? new LinearCurveFit(dArr, dArr2) : new Constant(dArr[0], dArr2[0]) : new MonotonicCurveFit(dArr, dArr2);
    }

    public static CurveFit getArc(int[] r12, double[] dArr, double[][] dArr2) {
        return new ArcCurveFit(r12, dArr, dArr2);
    }

    public abstract double getPos(double d10, int r32);

    public abstract void getPos(double d10, double[] dArr);

    public abstract void getPos(double d10, float[] fArr);

    public abstract double getSlope(double d10, int r32);

    public abstract void getSlope(double d10, double[] dArr);

    public abstract double[] getTimePoints();
}
