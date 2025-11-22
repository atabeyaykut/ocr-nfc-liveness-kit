package androidx.constraintlayout.motion.utils;

import android.util.Log;
import android.util.SparseArray;
import android.view.View;
import androidx.constraintlayout.core.motion.utils.CurveFit;
import androidx.constraintlayout.core.motion.utils.KeyCache;
import androidx.constraintlayout.core.motion.utils.TimeCycleSplineSet;
import androidx.constraintlayout.motion.widget.MotionLayout;
import androidx.constraintlayout.widget.ConstraintAttribute;
import java.lang.reflect.Array;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
public abstract class ViewTimeCycle extends TimeCycleSplineSet {
    private static final String TAG = "ViewTimeCycle";

    public static class AlphaSet extends ViewTimeCycle {
        @Override // androidx.constraintlayout.motion.utils.ViewTimeCycle
        public boolean setProperty(View view, float f, long j10, KeyCache keyCache) {
            view.setAlpha(get(f, j10, view, keyCache));
            return this.mContinue;
        }
    }

    public static class CustomSet extends ViewTimeCycle {
        String mAttributeName;
        float[] mCache;
        SparseArray<ConstraintAttribute> mConstraintAttributeList;
        float[] mTempValues;
        SparseArray<float[]> mWaveProperties = new SparseArray<>();

        public CustomSet(String str, SparseArray<ConstraintAttribute> sparseArray) {
            this.mAttributeName = str.split(",")[1];
            this.mConstraintAttributeList = sparseArray;
        }

        @Override // androidx.constraintlayout.core.motion.utils.TimeCycleSplineSet
        public void setPoint(int r12, float f, float f10, int r42, float f11) {
            throw new RuntimeException("don't call for custom attribute call setPoint(pos, ConstraintAttribute,...)");
        }

        public void setPoint(int r32, ConstraintAttribute constraintAttribute, float f, int r6, float f10) {
            this.mConstraintAttributeList.append(r32, constraintAttribute);
            this.mWaveProperties.append(r32, new float[]{f, f10});
            this.mWaveShape = Math.max(this.mWaveShape, r6);
        }

        @Override // androidx.constraintlayout.motion.utils.ViewTimeCycle
        public boolean setProperty(View view, float f, long j10, KeyCache keyCache) {
            this.mCurveFit.getPos(f, this.mTempValues);
            float[] fArr = this.mTempValues;
            float f10 = fArr[fArr.length - 2];
            float f11 = fArr[fArr.length - 1];
            long j11 = j10 - this.last_time;
            if (Float.isNaN(this.last_cycle)) {
                float floatValue = keyCache.getFloatValue(view, this.mAttributeName, 0);
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
            CustomSupport.setInterpolatedValue(this.mConstraintAttributeList.valueAt(0), view, this.mCache);
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
                ConstraintAttribute constraintAttributeValueAt = this.mConstraintAttributeList.valueAt(r52);
                float[] fArrValueAt = this.mWaveProperties.valueAt(r52);
                dArr[r52] = r72 * 0.01d;
                constraintAttributeValueAt.getValuesToInterpolate(this.mTempValues);
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

    public static class ElevationSet extends ViewTimeCycle {
        @Override // androidx.constraintlayout.motion.utils.ViewTimeCycle
        public boolean setProperty(View view, float f, long j10, KeyCache keyCache) {
            view.setElevation(get(f, j10, view, keyCache));
            return this.mContinue;
        }
    }

    public static class PathRotate extends ViewTimeCycle {
        public boolean setPathRotate(View view, KeyCache keyCache, float f, long j10, double d10, double d11) {
            view.setRotation(get(f, j10, view, keyCache) + ((float) Math.toDegrees(Math.atan2(d11, d10))));
            return this.mContinue;
        }

        @Override // androidx.constraintlayout.motion.utils.ViewTimeCycle
        public boolean setProperty(View view, float f, long j10, KeyCache keyCache) {
            return this.mContinue;
        }
    }

    public static class ProgressSet extends ViewTimeCycle {
        boolean mNoMethod = false;

        @Override // androidx.constraintlayout.motion.utils.ViewTimeCycle
        public boolean setProperty(View view, float f, long j10, KeyCache keyCache) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
            Method method;
            if (view instanceof MotionLayout) {
                ((MotionLayout) view).setProgress(get(f, j10, view, keyCache));
            } else {
                if (this.mNoMethod) {
                    return false;
                }
                try {
                    method = view.getClass().getMethod("setProgress", Float.TYPE);
                } catch (NoSuchMethodException unused) {
                    this.mNoMethod = true;
                    method = null;
                }
                Method method2 = method;
                if (method2 != null) {
                    try {
                        method2.invoke(view, Float.valueOf(get(f, j10, view, keyCache)));
                    } catch (IllegalAccessException | InvocationTargetException e10) {
                        Log.e(ViewTimeCycle.TAG, "unable to setProgress", e10);
                    }
                }
            }
            return this.mContinue;
        }
    }

    public static class RotationSet extends ViewTimeCycle {
        @Override // androidx.constraintlayout.motion.utils.ViewTimeCycle
        public boolean setProperty(View view, float f, long j10, KeyCache keyCache) {
            view.setRotation(get(f, j10, view, keyCache));
            return this.mContinue;
        }
    }

    public static class RotationXset extends ViewTimeCycle {
        @Override // androidx.constraintlayout.motion.utils.ViewTimeCycle
        public boolean setProperty(View view, float f, long j10, KeyCache keyCache) {
            view.setRotationX(get(f, j10, view, keyCache));
            return this.mContinue;
        }
    }

    public static class RotationYset extends ViewTimeCycle {
        @Override // androidx.constraintlayout.motion.utils.ViewTimeCycle
        public boolean setProperty(View view, float f, long j10, KeyCache keyCache) {
            view.setRotationY(get(f, j10, view, keyCache));
            return this.mContinue;
        }
    }

    public static class ScaleXset extends ViewTimeCycle {
        @Override // androidx.constraintlayout.motion.utils.ViewTimeCycle
        public boolean setProperty(View view, float f, long j10, KeyCache keyCache) {
            view.setScaleX(get(f, j10, view, keyCache));
            return this.mContinue;
        }
    }

    public static class ScaleYset extends ViewTimeCycle {
        @Override // androidx.constraintlayout.motion.utils.ViewTimeCycle
        public boolean setProperty(View view, float f, long j10, KeyCache keyCache) {
            view.setScaleY(get(f, j10, view, keyCache));
            return this.mContinue;
        }
    }

    public static class TranslationXset extends ViewTimeCycle {
        @Override // androidx.constraintlayout.motion.utils.ViewTimeCycle
        public boolean setProperty(View view, float f, long j10, KeyCache keyCache) {
            view.setTranslationX(get(f, j10, view, keyCache));
            return this.mContinue;
        }
    }

    public static class TranslationYset extends ViewTimeCycle {
        @Override // androidx.constraintlayout.motion.utils.ViewTimeCycle
        public boolean setProperty(View view, float f, long j10, KeyCache keyCache) {
            view.setTranslationY(get(f, j10, view, keyCache));
            return this.mContinue;
        }
    }

    public static class TranslationZset extends ViewTimeCycle {
        @Override // androidx.constraintlayout.motion.utils.ViewTimeCycle
        public boolean setProperty(View view, float f, long j10, KeyCache keyCache) {
            view.setTranslationZ(get(f, j10, view, keyCache));
            return this.mContinue;
        }
    }

    public static ViewTimeCycle makeCustomSpline(String str, SparseArray<ConstraintAttribute> sparseArray) {
        return new CustomSet(str, sparseArray);
    }

    public static ViewTimeCycle makeSpline(String str, long j10) {
        ViewTimeCycle rotationXset;
        str.getClass();
        switch (str) {
            case "rotationX":
                rotationXset = new RotationXset();
                break;
            case "rotationY":
                rotationXset = new RotationYset();
                break;
            case "translationX":
                rotationXset = new TranslationXset();
                break;
            case "translationY":
                rotationXset = new TranslationYset();
                break;
            case "translationZ":
                rotationXset = new TranslationZset();
                break;
            case "progress":
                rotationXset = new ProgressSet();
                break;
            case "scaleX":
                rotationXset = new ScaleXset();
                break;
            case "scaleY":
                rotationXset = new ScaleYset();
                break;
            case "rotation":
                rotationXset = new RotationSet();
                break;
            case "elevation":
                rotationXset = new ElevationSet();
                break;
            case "transitionPathRotate":
                rotationXset = new PathRotate();
                break;
            case "alpha":
                rotationXset = new AlphaSet();
                break;
            default:
                return null;
        }
        rotationXset.setStartTime(j10);
        return rotationXset;
    }

    public float get(float f, long j10, View view, KeyCache keyCache) {
        this.mCurveFit.getPos(f, this.mCache);
        float[] fArr = this.mCache;
        float f10 = fArr[1];
        if (f10 == 0.0f) {
            this.mContinue = false;
            return fArr[2];
        }
        if (Float.isNaN(this.last_cycle)) {
            float floatValue = keyCache.getFloatValue(view, this.mType, 0);
            this.last_cycle = floatValue;
            if (Float.isNaN(floatValue)) {
                this.last_cycle = 0.0f;
            }
        }
        float f11 = (float) (((((j10 - this.last_time) * 1.0E-9d) * f10) + this.last_cycle) % 1.0d);
        this.last_cycle = f11;
        keyCache.setFloatValue(view, this.mType, 0, f11);
        this.last_time = j10;
        float f12 = this.mCache[0];
        float fCalcWave = (calcWave(this.last_cycle) * f12) + this.mCache[2];
        this.mContinue = (f12 == 0.0f && f10 == 0.0f) ? false : true;
        return fCalcWave;
    }

    public abstract boolean setProperty(View view, float f, long j10, KeyCache keyCache);
}
