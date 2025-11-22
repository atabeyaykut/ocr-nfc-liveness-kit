package androidx.constraintlayout.core.motion.utils;

import androidx.constraintlayout.core.motion.MotionWidget;
import java.lang.reflect.Array;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;

/* loaded from: classes.dex */
public abstract class KeyCycleOscillator {
    private static final String TAG = "KeyCycleOscillator";
    private CurveFit mCurveFit;
    private CycleOscillator mCycleOscillator;
    private String mType;
    private int mWaveShape = 0;
    private String mWaveString = null;
    public int mVariesBy = 0;
    ArrayList<WavePoint> mWavePoints = new ArrayList<>();

    public static class CoreSpline extends KeyCycleOscillator {
        String type;
        int typeId;

        public CoreSpline(String str) {
            this.type = str;
            this.typeId = c.a(str);
        }

        @Override // androidx.constraintlayout.core.motion.utils.KeyCycleOscillator
        public void setProperty(MotionWidget motionWidget, float f) {
            motionWidget.setValue(this.typeId, get(f));
        }
    }

    public static class CycleOscillator {
        private static final String TAG = "CycleOscillator";
        static final int UNSET = -1;
        private final int OFFST;
        private final int PHASE;
        private final int VALUE;
        CurveFit mCurveFit;
        float[] mOffset;
        Oscillator mOscillator;
        float mPathLength;
        float[] mPeriod;
        float[] mPhase;
        double[] mPosition;
        float[] mScale;
        double[] mSplineSlopeCache;
        double[] mSplineValueCache;
        float[] mValues;
        private final int mVariesBy;
        int mWaveShape;

        public CycleOscillator(int r32, String str, int r52, int r6) {
            Oscillator oscillator = new Oscillator();
            this.mOscillator = oscillator;
            this.OFFST = 0;
            this.PHASE = 1;
            this.VALUE = 2;
            this.mWaveShape = r32;
            this.mVariesBy = r52;
            oscillator.setType(r32, str);
            this.mValues = new float[r6];
            this.mPosition = new double[r6];
            this.mPeriod = new float[r6];
            this.mOffset = new float[r6];
            this.mPhase = new float[r6];
            this.mScale = new float[r6];
        }

        public double getLastPhase() {
            return this.mSplineValueCache[1];
        }

        public double getSlope(float f) {
            CurveFit curveFit = this.mCurveFit;
            if (curveFit != null) {
                double d10 = f;
                curveFit.getSlope(d10, this.mSplineSlopeCache);
                this.mCurveFit.getPos(d10, this.mSplineValueCache);
            } else {
                double[] dArr = this.mSplineSlopeCache;
                dArr[0] = 0.0d;
                dArr[1] = 0.0d;
                dArr[2] = 0.0d;
            }
            double d11 = f;
            double value = this.mOscillator.getValue(d11, this.mSplineValueCache[1]);
            double slope = this.mOscillator.getSlope(d11, this.mSplineValueCache[1], this.mSplineSlopeCache[1]);
            double[] dArr2 = this.mSplineSlopeCache;
            return (slope * this.mSplineValueCache[2]) + (value * dArr2[2]) + dArr2[0];
        }

        public double getValues(float f) {
            CurveFit curveFit = this.mCurveFit;
            if (curveFit != null) {
                curveFit.getPos(f, this.mSplineValueCache);
            } else {
                double[] dArr = this.mSplineValueCache;
                dArr[0] = this.mOffset[0];
                dArr[1] = this.mPhase[0];
                dArr[2] = this.mValues[0];
            }
            double[] dArr2 = this.mSplineValueCache;
            return (this.mOscillator.getValue(f, dArr2[1]) * this.mSplineValueCache[2]) + dArr2[0];
        }

        public void setPoint(int r6, int r72, float f, float f10, float f11, float f12) {
            this.mPosition[r6] = r72 / 100.0d;
            this.mPeriod[r6] = f;
            this.mOffset[r6] = f10;
            this.mPhase[r6] = f11;
            this.mValues[r6] = f12;
        }

        public void setup(float f) {
            this.mPathLength = f;
            double[][] dArr = (double[][]) Array.newInstance((Class<?>) Double.TYPE, this.mPosition.length, 3);
            float[] fArr = this.mValues;
            this.mSplineValueCache = new double[fArr.length + 2];
            this.mSplineSlopeCache = new double[fArr.length + 2];
            if (this.mPosition[0] > 0.0d) {
                this.mOscillator.addPoint(0.0d, this.mPeriod[0]);
            }
            double[] dArr2 = this.mPosition;
            int length = dArr2.length - 1;
            if (dArr2[length] < 1.0d) {
                this.mOscillator.addPoint(1.0d, this.mPeriod[length]);
            }
            for (int r12 = 0; r12 < dArr.length; r12++) {
                double[] dArr3 = dArr[r12];
                dArr3[0] = this.mOffset[r12];
                dArr3[1] = this.mPhase[r12];
                dArr3[2] = this.mValues[r12];
                this.mOscillator.addPoint(this.mPosition[r12], this.mPeriod[r12]);
            }
            this.mOscillator.normalize();
            double[] dArr4 = this.mPosition;
            this.mCurveFit = dArr4.length > 1 ? CurveFit.get(0, dArr4, dArr) : null;
        }
    }

    public static class IntDoubleSort {
        private IntDoubleSort() {
        }

        private static int partition(int[] r32, float[] fArr, int r52, int r6) {
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

        public static void sort(int[] r6, float[] fArr, int r82, int r92) {
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

        private static void swap(int[] r22, float[] fArr, int r42, int r52) {
            int r02 = r22[r42];
            r22[r42] = r22[r52];
            r22[r52] = r02;
            float f = fArr[r42];
            fArr[r42] = fArr[r52];
            fArr[r52] = f;
        }
    }

    public static class IntFloatFloatSort {
        private IntFloatFloatSort() {
        }

        private static int partition(int[] r32, float[] fArr, float[] fArr2, int r6, int r72) {
            int r02 = r32[r72];
            int r12 = r6;
            while (r6 < r72) {
                if (r32[r6] <= r02) {
                    swap(r32, fArr, fArr2, r12, r6);
                    r12++;
                }
                r6++;
            }
            swap(r32, fArr, fArr2, r12, r72);
            return r12;
        }

        public static void sort(int[] r6, float[] fArr, float[] fArr2, int r92, int r10) {
            int[] r02 = new int[r6.length + 10];
            r02[0] = r10;
            r02[1] = r92;
            int r93 = 2;
            while (r93 > 0) {
                int r94 = r93 - 1;
                int r12 = r02[r94];
                r93 = r94 - 1;
                int r22 = r02[r93];
                if (r12 < r22) {
                    int r32 = partition(r6, fArr, fArr2, r12, r22);
                    int r42 = r93 + 1;
                    r02[r93] = r32 - 1;
                    int r95 = r42 + 1;
                    r02[r42] = r12;
                    int r13 = r95 + 1;
                    r02[r95] = r22;
                    r93 = r13 + 1;
                    r02[r13] = r32 + 1;
                }
            }
        }

        private static void swap(int[] r22, float[] fArr, float[] fArr2, int r52, int r6) {
            int r02 = r22[r52];
            r22[r52] = r22[r6];
            r22[r6] = r02;
            float f = fArr[r52];
            fArr[r52] = fArr[r6];
            fArr[r6] = f;
            float f10 = fArr2[r52];
            fArr2[r52] = fArr2[r6];
            fArr2[r6] = f10;
        }
    }

    public static class PathRotateSet extends KeyCycleOscillator {
        String type;
        int typeId;

        public PathRotateSet(String str) {
            this.type = str;
            this.typeId = c.a(str);
        }

        public void setPathRotate(MotionWidget motionWidget, float f, double d10, double d11) {
            motionWidget.setRotationZ(get(f) + ((float) Math.toDegrees(Math.atan2(d11, d10))));
        }

        @Override // androidx.constraintlayout.core.motion.utils.KeyCycleOscillator
        public void setProperty(MotionWidget motionWidget, float f) {
            motionWidget.setValue(this.typeId, get(f));
        }
    }

    public static class WavePoint {
        float mOffset;
        float mPeriod;
        float mPhase;
        int mPosition;
        float mValue;

        public WavePoint(int r12, float f, float f10, float f11, float f12) {
            this.mPosition = r12;
            this.mValue = f12;
            this.mOffset = f10;
            this.mPeriod = f;
            this.mPhase = f11;
        }
    }

    public static KeyCycleOscillator makeWidgetCycle(String str) {
        return str.equals("pathRotate") ? new PathRotateSet(str) : new CoreSpline(str);
    }

    public float get(float f) {
        return (float) this.mCycleOscillator.getValues(f);
    }

    public CurveFit getCurveFit() {
        return this.mCurveFit;
    }

    public float getSlope(float f) {
        return (float) this.mCycleOscillator.getSlope(f);
    }

    public void setCustom(Object obj) {
    }

    public void setPoint(int r11, int r12, String str, int r14, float f, float f10, float f11, float f12) {
        this.mWavePoints.add(new WavePoint(r11, f, f10, f11, f12));
        if (r14 != -1) {
            this.mVariesBy = r14;
        }
        this.mWaveShape = r12;
        this.mWaveString = str;
    }

    public void setPoint(int r11, int r12, String str, int r14, float f, float f10, float f11, float f12, Object obj) {
        this.mWavePoints.add(new WavePoint(r11, f, f10, f11, f12));
        if (r14 != -1) {
            this.mVariesBy = r14;
        }
        this.mWaveShape = r12;
        setCustom(obj);
        this.mWaveString = str;
    }

    public void setProperty(MotionWidget motionWidget, float f) {
    }

    public void setType(String str) {
        this.mType = str;
    }

    public void setup(float f) {
        int size = this.mWavePoints.size();
        if (size == 0) {
            return;
        }
        Collections.sort(this.mWavePoints, new Comparator<WavePoint>() { // from class: androidx.constraintlayout.core.motion.utils.KeyCycleOscillator.1
            @Override // java.util.Comparator
            public int compare(WavePoint wavePoint, WavePoint wavePoint2) {
                return Integer.compare(wavePoint.mPosition, wavePoint2.mPosition);
            }
        });
        double[] dArr = new double[size];
        double[][] dArr2 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, size, 3);
        this.mCycleOscillator = new CycleOscillator(this.mWaveShape, this.mWaveString, this.mVariesBy, size);
        Iterator<WavePoint> it = this.mWavePoints.iterator();
        int r14 = 0;
        while (it.hasNext()) {
            WavePoint next = it.next();
            float f10 = next.mPeriod;
            dArr[r14] = f10 * 0.01d;
            double[] dArr3 = dArr2[r14];
            float f11 = next.mValue;
            dArr3[0] = f11;
            float f12 = next.mOffset;
            dArr3[1] = f12;
            float f13 = next.mPhase;
            dArr3[2] = f13;
            this.mCycleOscillator.setPoint(r14, next.mPosition, f10, f12, f13, f11);
            r14++;
            dArr2 = dArr2;
        }
        this.mCycleOscillator.setup(f);
        this.mCurveFit = CurveFit.get(0, dArr, dArr2);
    }

    public String toString() {
        String string = this.mType;
        DecimalFormat decimalFormat = new DecimalFormat("##.##");
        Iterator<WavePoint> it = this.mWavePoints.iterator();
        while (it.hasNext()) {
            WavePoint next = it.next();
            StringBuilder sbI = androidx.browser.browseractions.b.i(string, "[");
            sbI.append(next.mPosition);
            sbI.append(" , ");
            sbI.append(decimalFormat.format(next.mValue));
            sbI.append("] ");
            string = sbI.toString();
        }
        return string;
    }

    public boolean variesByPath() {
        return this.mVariesBy == 1;
    }
}
