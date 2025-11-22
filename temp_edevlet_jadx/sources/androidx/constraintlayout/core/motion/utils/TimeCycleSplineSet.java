package androidx.constraintlayout.core.motion.utils;

import androidx.constraintlayout.core.motion.CustomAttribute;
import androidx.constraintlayout.core.motion.CustomVariable;
import androidx.constraintlayout.core.motion.MotionWidget;
import androidx.constraintlayout.core.motion.utils.KeyFrameArray;
import java.lang.reflect.Array;
import java.text.DecimalFormat;

/* loaded from: classes.dex */
public abstract class TimeCycleSplineSet {
    protected static final int CURVE_OFFSET = 2;
    protected static final int CURVE_PERIOD = 1;
    protected static final int CURVE_VALUE = 0;
    private static final String TAG = "SplineSet";
    protected static float VAL_2PI = 6.2831855f;
    protected int count;
    protected long last_time;
    protected CurveFit mCurveFit;
    protected String mType;
    protected int mWaveShape = 0;
    protected int[] mTimePoints = new int[10];
    protected float[][] mValues = (float[][]) Array.newInstance((Class<?>) Float.TYPE, 10, 3);
    protected float[] mCache = new float[3];
    protected boolean mContinue = false;
    protected float last_cycle = Float.NaN;

    public static class CustomSet extends TimeCycleSplineSet {
        String mAttributeName;
        float[] mCache;
        KeyFrameArray.CustomArray mConstraintAttributeList;
        float[] mTempValues;
        KeyFrameArray.FloatArray mWaveProperties = new KeyFrameArray.FloatArray();

        public CustomSet(String str, KeyFrameArray.CustomArray customArray) {
            this.mAttributeName = str.split(",")[1];
            this.mConstraintAttributeList = customArray;
        }

        @Override // androidx.constraintlayout.core.motion.utils.TimeCycleSplineSet
        public void setPoint(int r12, float f, float f10, int r42, float f11) {
            throw new RuntimeException("don't call for custom attribute call setPoint(pos, ConstraintAttribute,...)");
        }

        public void setPoint(int r32, CustomAttribute customAttribute, float f, int r6, float f10) {
            this.mConstraintAttributeList.append(r32, customAttribute);
            this.mWaveProperties.append(r32, new float[]{f, f10});
            this.mWaveShape = Math.max(this.mWaveShape, r6);
        }

        public boolean setProperty(MotionWidget motionWidget, float f, long j10, KeyCache keyCache) {
            this.mCurveFit.getPos(f, this.mTempValues);
            float[] fArr = this.mTempValues;
            float f10 = fArr[fArr.length - 2];
            float f11 = fArr[fArr.length - 1];
            long j11 = j10 - this.last_time;
            if (Float.isNaN(this.last_cycle)) {
                float floatValue = keyCache.getFloatValue(motionWidget, this.mAttributeName, 0);
                this.last_cycle = floatValue;
                if (Float.isNaN(floatValue)) {
                    this.last_cycle = 0.0f;
                }
            }
            float f12 = (float) ((((j11 * 1.0E-9d) * f10) + this.last_cycle) % 1.0d);
            this.last_cycle = f12;
            this.last_time = j10;
            float fCalcWave = calcWave(f12);
            this.mContinue = false;
            int r32 = 0;
            while (true) {
                float[] fArr2 = this.mCache;
                if (r32 >= fArr2.length) {
                    break;
                }
                boolean z10 = this.mContinue;
                float f13 = this.mTempValues[r32];
                this.mContinue = z10 | (((double) f13) != 0.0d);
                fArr2[r32] = (f13 * fCalcWave) + f11;
                r32++;
            }
            motionWidget.setInterpolatedValue(this.mConstraintAttributeList.valueAt(0), this.mCache);
            if (f10 != 0.0f) {
                this.mContinue = true;
            }
            return this.mContinue;
        }

        @Override // androidx.constraintlayout.core.motion.utils.TimeCycleSplineSet
        public void setup(int r15) {
            int size = this.mConstraintAttributeList.size();
            int r12 = this.mConstraintAttributeList.valueAt(0).numberOfInterpolatedValues();
            double[] dArr = new double[size];
            int r42 = r12 + 2;
            this.mTempValues = new float[r42];
            this.mCache = new float[r12];
            double[][] dArr2 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, size, r42);
            for (int r52 = 0; r52 < size; r52++) {
                int r72 = this.mConstraintAttributeList.keyAt(r52);
                CustomAttribute customAttributeValueAt = this.mConstraintAttributeList.valueAt(r52);
                float[] fArrValueAt = this.mWaveProperties.valueAt(r52);
                dArr[r52] = r72 * 0.01d;
                customAttributeValueAt.getValuesToInterpolate(this.mTempValues);
                int r73 = 0;
                while (true) {
                    if (r73 < this.mTempValues.length) {
                        dArr2[r52][r73] = r8[r73];
                        r73++;
                    }
                }
                double[] dArr3 = dArr2[r52];
                dArr3[r12] = fArrValueAt[0];
                dArr3[r12 + 1] = fArrValueAt[1];
            }
            this.mCurveFit = CurveFit.get(r15, dArr, dArr2);
        }
    }

    public static class CustomVarSet extends TimeCycleSplineSet {
        String mAttributeName;
        float[] mCache;
        KeyFrameArray.CustomVar mConstraintAttributeList;
        float[] mTempValues;
        KeyFrameArray.FloatArray mWaveProperties = new KeyFrameArray.FloatArray();

        public CustomVarSet(String str, KeyFrameArray.CustomVar customVar) {
            this.mAttributeName = str.split(",")[1];
            this.mConstraintAttributeList = customVar;
        }

        @Override // androidx.constraintlayout.core.motion.utils.TimeCycleSplineSet
        public void setPoint(int r12, float f, float f10, int r42, float f11) {
            throw new RuntimeException("don't call for custom attribute call setPoint(pos, ConstraintAttribute,...)");
        }

        public void setPoint(int r32, CustomVariable customVariable, float f, int r6, float f10) {
            this.mConstraintAttributeList.append(r32, customVariable);
            this.mWaveProperties.append(r32, new float[]{f, f10});
            this.mWaveShape = Math.max(this.mWaveShape, r6);
        }

        public boolean setProperty(MotionWidget motionWidget, float f, long j10, KeyCache keyCache) {
            this.mCurveFit.getPos(f, this.mTempValues);
            float[] fArr = this.mTempValues;
            float f10 = fArr[fArr.length - 2];
            float f11 = fArr[fArr.length - 1];
            long j11 = j10 - this.last_time;
            if (Float.isNaN(this.last_cycle)) {
                float floatValue = keyCache.getFloatValue(motionWidget, this.mAttributeName, 0);
                this.last_cycle = floatValue;
                if (Float.isNaN(floatValue)) {
                    this.last_cycle = 0.0f;
                }
            }
            float f12 = (float) ((((j11 * 1.0E-9d) * f10) + this.last_cycle) % 1.0d);
            this.last_cycle = f12;
            this.last_time = j10;
            float fCalcWave = calcWave(f12);
            this.mContinue = false;
            int r32 = 0;
            while (true) {
                float[] fArr2 = this.mCache;
                if (r32 >= fArr2.length) {
                    break;
                }
                boolean z10 = this.mContinue;
                float f13 = this.mTempValues[r32];
                this.mContinue = z10 | (((double) f13) != 0.0d);
                fArr2[r32] = (f13 * fCalcWave) + f11;
                r32++;
            }
            this.mConstraintAttributeList.valueAt(0).setInterpolatedValue(motionWidget, this.mCache);
            if (f10 != 0.0f) {
                this.mContinue = true;
            }
            return this.mContinue;
        }

        @Override // androidx.constraintlayout.core.motion.utils.TimeCycleSplineSet
        public void setup(int r15) {
            int size = this.mConstraintAttributeList.size();
            int r12 = this.mConstraintAttributeList.valueAt(0).numberOfInterpolatedValues();
            double[] dArr = new double[size];
            int r42 = r12 + 2;
            this.mTempValues = new float[r42];
            this.mCache = new float[r12];
            double[][] dArr2 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, size, r42);
            for (int r52 = 0; r52 < size; r52++) {
                int r72 = this.mConstraintAttributeList.keyAt(r52);
                CustomVariable customVariableValueAt = this.mConstraintAttributeList.valueAt(r52);
                float[] fArrValueAt = this.mWaveProperties.valueAt(r52);
                dArr[r52] = r72 * 0.01d;
                customVariableValueAt.getValuesToInterpolate(this.mTempValues);
                int r73 = 0;
                while (true) {
                    if (r73 < this.mTempValues.length) {
                        dArr2[r52][r73] = r8[r73];
                        r73++;
                    }
                }
                double[] dArr3 = dArr2[r52];
                dArr3[r12] = fArrValueAt[0];
                dArr3[r12 + 1] = fArrValueAt[1];
            }
            this.mCurveFit = CurveFit.get(r15, dArr, dArr2);
        }
    }

    public static class Sort {
        public static void doubleQuickSort(int[] r6, float[][] fArr, int r82, int r92) {
            int[] r02 = new int[r6.length + 10];
            r02[0] = r92;
            r02[1] = r82;
            int r83 = 2;
            while (r83 > 0) {
                int r84 = r83 - 1;
                int r12 = r02[r84];
                r83 = r84 - 1;
                int r22 = r02[r83];
                if (r12 < r22) {
                    int r32 = partition(r6, fArr, r12, r22);
                    int r42 = r83 + 1;
                    r02[r83] = r32 - 1;
                    int r85 = r42 + 1;
                    r02[r42] = r12;
                    int r13 = r85 + 1;
                    r02[r85] = r22;
                    r83 = r13 + 1;
                    r02[r13] = r32 + 1;
                }
            }
        }

        private static int partition(int[] r32, float[][] fArr, int r52, int r6) {
            int r02 = r32[r6];
            int r12 = r52;
            while (r52 < r6) {
                if (r32[r52] <= r02) {
                    swap(r32, fArr, r12, r52);
                    r12++;
                }
                r52++;
            }
            swap(r32, fArr, r12, r6);
            return r12;
        }

        private static void swap(int[] r22, float[][] fArr, int r42, int r52) {
            int r02 = r22[r42];
            r22[r42] = r22[r52];
            r22[r52] = r02;
            float[] fArr2 = fArr[r42];
            fArr[r42] = fArr[r52];
            fArr[r52] = fArr2;
        }
    }

    public float calcWave(float f) {
        float fAbs;
        switch (this.mWaveShape) {
            case 1:
                return Math.signum(f * VAL_2PI);
            case 2:
                fAbs = Math.abs(f);
                break;
            case 3:
                return (((f * 2.0f) + 1.0f) % 2.0f) - 1.0f;
            case 4:
                fAbs = ((f * 2.0f) + 1.0f) % 2.0f;
                break;
            case 5:
                return (float) Math.cos(f * VAL_2PI);
            case 6:
                float fAbs2 = 1.0f - Math.abs(((f * 4.0f) % 4.0f) - 2.0f);
                fAbs = fAbs2 * fAbs2;
                break;
            default:
                return (float) Math.sin(f * VAL_2PI);
        }
        return 1.0f - fAbs;
    }

    public CurveFit getCurveFit() {
        return this.mCurveFit;
    }

    public void setPoint(int r32, float f, float f10, int r6, float f11) {
        int[] r02 = this.mTimePoints;
        int r12 = this.count;
        r02[r12] = r32;
        float[] fArr = this.mValues[r12];
        fArr[0] = f;
        fArr[1] = f10;
        fArr[2] = f11;
        this.mWaveShape = Math.max(this.mWaveShape, r6);
        this.count++;
    }

    public void setStartTime(long j10) {
        this.last_time = j10;
    }

    public void setType(String str) {
        this.mType = str;
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0060  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void setup(int r12) {
        /*
            r11 = this;
            int r0 = r11.count
            if (r0 != 0) goto L1a
            java.io.PrintStream r12 = java.lang.System.err
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            java.lang.String r1 = "Error no points added to "
            r0.<init>(r1)
            java.lang.String r1 = r11.mType
            r0.append(r1)
            java.lang.String r0 = r0.toString()
            r12.println(r0)
            return
        L1a:
            int[] r1 = r11.mTimePoints
            float[][] r2 = r11.mValues
            r3 = 1
            int r0 = r0 - r3
            r4 = 0
            androidx.constraintlayout.core.motion.utils.TimeCycleSplineSet.Sort.doubleQuickSort(r1, r2, r4, r0)
            r0 = 1
            r1 = 0
        L26:
            int[] r2 = r11.mTimePoints
            int r5 = r2.length
            if (r0 >= r5) goto L38
            r5 = r2[r0]
            int r6 = r0 + (-1)
            r2 = r2[r6]
            if (r5 == r2) goto L35
            int r1 = r1 + 1
        L35:
            int r0 = r0 + 1
            goto L26
        L38:
            if (r1 != 0) goto L3b
            r1 = 1
        L3b:
            double[] r0 = new double[r1]
            r2 = 2
            int[] r5 = new int[r2]
            r6 = 3
            r5[r3] = r6
            r5[r4] = r1
            java.lang.Class r1 = java.lang.Double.TYPE
            java.lang.Object r1 = java.lang.reflect.Array.newInstance(r1, r5)
            double[][] r1 = (double[][]) r1
            r5 = 0
            r6 = 0
        L4f:
            int r7 = r11.count
            if (r5 >= r7) goto L88
            if (r5 <= 0) goto L60
            int[] r7 = r11.mTimePoints
            r8 = r7[r5]
            int r9 = r5 + (-1)
            r7 = r7[r9]
            if (r8 != r7) goto L60
            goto L85
        L60:
            int[] r7 = r11.mTimePoints
            r7 = r7[r5]
            double r7 = (double) r7
            r9 = 4576918229304087675(0x3f847ae147ae147b, double:0.01)
            double r7 = r7 * r9
            r0[r6] = r7
            r7 = r1[r6]
            float[][] r8 = r11.mValues
            r8 = r8[r5]
            r9 = r8[r4]
            double r9 = (double) r9
            r7[r4] = r9
            r9 = r8[r3]
            double r9 = (double) r9
            r7[r3] = r9
            r8 = r8[r2]
            double r8 = (double) r8
            r7[r2] = r8
            int r6 = r6 + 1
        L85:
            int r5 = r5 + 1
            goto L4f
        L88:
            androidx.constraintlayout.core.motion.utils.CurveFit r12 = androidx.constraintlayout.core.motion.utils.CurveFit.get(r12, r0, r1)
            r11.mCurveFit = r12
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.core.motion.utils.TimeCycleSplineSet.setup(int):void");
    }

    public String toString() {
        String string = this.mType;
        DecimalFormat decimalFormat = new DecimalFormat("##.##");
        for (int r22 = 0; r22 < this.count; r22++) {
            StringBuilder sbI = androidx.browser.browseractions.b.i(string, "[");
            sbI.append(this.mTimePoints[r22]);
            sbI.append(" , ");
            sbI.append(decimalFormat.format(this.mValues[r22]));
            sbI.append("] ");
            string = sbI.toString();
        }
        return string;
    }
}
