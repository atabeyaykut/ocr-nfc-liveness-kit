package androidx.constraintlayout.core.motion.utils;

import java.lang.reflect.Array;
import java.util.Arrays;

/* loaded from: classes.dex */
public class StepCurve extends Easing {
    private static final boolean DEBUG = false;
    MonotonicCurveFit mCurveFit;

    public StepCurve(String str) {
        this.str = str;
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
        this.mCurveFit = genSpline(Arrays.copyOf(dArr, r42 + 1));
    }

    private static MonotonicCurveFit genSpline(String str) {
        String[] strArrSplit = str.split("\\s+");
        int length = strArrSplit.length;
        double[] dArr = new double[length];
        for (int r22 = 0; r22 < length; r22++) {
            dArr[r22] = Double.parseDouble(strArrSplit[r22]);
        }
        return genSpline(dArr);
    }

    private static MonotonicCurveFit genSpline(double[] dArr) {
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
        MonotonicCurveFit monotonicCurveFit = new MonotonicCurveFit(dArr3, dArr2);
        System.out.println(" 0 " + monotonicCurveFit.getPos(0.0d, 0));
        System.out.println(" 1 " + monotonicCurveFit.getPos(1.0d, 0));
        return monotonicCurveFit;
    }

    @Override // androidx.constraintlayout.core.motion.utils.Easing
    public double get(double d10) {
        return this.mCurveFit.getPos(d10, 0);
    }

    @Override // androidx.constraintlayout.core.motion.utils.Easing
    public double getDiff(double d10) {
        return this.mCurveFit.getSlope(d10, 0);
    }
}
