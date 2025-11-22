package androidx.constraintlayout.core.motion;

import androidx.appcompat.graphics.drawable.a;
import androidx.camera.camera2.internal.c;
import androidx.constraintlayout.core.motion.key.MotionKey;
import androidx.constraintlayout.core.motion.key.MotionKeyAttributes;
import androidx.constraintlayout.core.motion.key.MotionKeyCycle;
import androidx.constraintlayout.core.motion.key.MotionKeyPosition;
import androidx.constraintlayout.core.motion.key.MotionKeyTimeCycle;
import androidx.constraintlayout.core.motion.key.MotionKeyTrigger;
import androidx.constraintlayout.core.motion.utils.CurveFit;
import androidx.constraintlayout.core.motion.utils.DifferentialInterpolator;
import androidx.constraintlayout.core.motion.utils.Easing;
import androidx.constraintlayout.core.motion.utils.FloatRect;
import androidx.constraintlayout.core.motion.utils.KeyCache;
import androidx.constraintlayout.core.motion.utils.KeyCycleOscillator;
import androidx.constraintlayout.core.motion.utils.KeyFrameArray;
import androidx.constraintlayout.core.motion.utils.Rect;
import androidx.constraintlayout.core.motion.utils.SplineSet;
import androidx.constraintlayout.core.motion.utils.TimeCycleSplineSet;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.constraintlayout.core.motion.utils.Utils;
import androidx.constraintlayout.core.motion.utils.VelocityMatrix;
import androidx.constraintlayout.core.motion.utils.ViewState;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;

/* loaded from: classes.dex */
public class Motion implements TypedValues {
    static final int BOUNCE = 4;
    private static final boolean DEBUG = false;
    public static final int DRAW_PATH_AS_CONFIGURED = 4;
    public static final int DRAW_PATH_BASIC = 1;
    public static final int DRAW_PATH_CARTESIAN = 3;
    public static final int DRAW_PATH_NONE = 0;
    public static final int DRAW_PATH_RECTANGLE = 5;
    public static final int DRAW_PATH_RELATIVE = 2;
    public static final int DRAW_PATH_SCREEN = 6;
    static final int EASE_IN = 1;
    static final int EASE_IN_OUT = 0;
    static final int EASE_OUT = 2;
    private static final boolean FAVOR_FIXED_SIZE_VIEWS = false;
    public static final int HORIZONTAL_PATH_X = 2;
    public static final int HORIZONTAL_PATH_Y = 3;
    private static final int INTERPOLATOR_REFERENCE_ID = -2;
    private static final int INTERPOLATOR_UNDEFINED = -3;
    static final int LINEAR = 3;
    static final int OVERSHOOT = 5;
    public static final int PATH_PERCENT = 0;
    public static final int PATH_PERPENDICULAR = 1;
    public static final int ROTATION_LEFT = 2;
    public static final int ROTATION_RIGHT = 1;
    private static final int SPLINE_STRING = -1;
    private static final String TAG = "MotionController";
    public static final int VERTICAL_PATH_X = 4;
    public static final int VERTICAL_PATH_Y = 5;
    String[] attributeTable;
    private CurveFit mArcSpline;
    private int[] mAttributeInterpolatorCount;
    private String[] mAttributeNames;
    private HashMap<String, SplineSet> mAttributesMap;
    String mConstraintTag;
    float mCurrentCenterX;
    float mCurrentCenterY;
    private HashMap<String, KeyCycleOscillator> mCycleMap;
    int mId;
    private double[] mInterpolateData;
    private int[] mInterpolateVariables;
    private double[] mInterpolateVelocity;
    private MotionKeyTrigger[] mKeyTriggers;
    private CurveFit[] mSpline;
    private HashMap<String, TimeCycleSplineSet> mTimeCycleAttributesMap;
    MotionWidget mView;
    Rect mTempRect = new Rect();
    private int mCurveFitType = -1;
    private MotionPaths mStartMotionPath = new MotionPaths();
    private MotionPaths mEndMotionPath = new MotionPaths();
    private MotionConstrainedPoint mStartPoint = new MotionConstrainedPoint();
    private MotionConstrainedPoint mEndPoint = new MotionConstrainedPoint();
    float mMotionStagger = Float.NaN;
    float mStaggerOffset = 0.0f;
    float mStaggerScale = 1.0f;
    private int MAX_DIMENSION = 4;
    private float[] mValuesBuff = new float[4];
    private ArrayList<MotionPaths> mMotionPaths = new ArrayList<>();
    private float[] mVelocity = new float[1];
    private ArrayList<MotionKey> mKeyList = new ArrayList<>();
    private int mPathMotionArc = -1;
    private int mTransformPivotTarget = -1;
    private MotionWidget mTransformPivotView = null;
    private int mQuantizeMotionSteps = -1;
    private float mQuantizeMotionPhase = Float.NaN;
    private DifferentialInterpolator mQuantizeMotionInterpolator = null;
    private boolean mNoMovement = false;

    public Motion(MotionWidget motionWidget) {
        setView(motionWidget);
    }

    private float getAdjustedPosition(float f, float[] fArr) {
        float f10 = 0.0f;
        if (fArr != null) {
            fArr[0] = 1.0f;
        } else {
            float f11 = this.mStaggerScale;
            if (f11 != 1.0d) {
                float f12 = this.mStaggerOffset;
                if (f < f12) {
                    f = 0.0f;
                }
                if (f > f12 && f < 1.0d) {
                    f = Math.min((f - f12) * f11, 1.0f);
                }
            }
        }
        Easing easing = this.mStartMotionPath.mKeyFrameEasing;
        Iterator<MotionPaths> it = this.mMotionPaths.iterator();
        float f13 = Float.NaN;
        while (it.hasNext()) {
            MotionPaths next = it.next();
            Easing easing2 = next.mKeyFrameEasing;
            if (easing2 != null) {
                float f14 = next.time;
                if (f14 < f) {
                    easing = easing2;
                    f10 = f14;
                } else if (Float.isNaN(f13)) {
                    f13 = next.time;
                }
            }
        }
        if (easing != null) {
            float f15 = (Float.isNaN(f13) ? 1.0f : f13) - f10;
            double d10 = (f - f10) / f15;
            f = (((float) easing.get(d10)) * f15) + f10;
            if (fArr != null) {
                fArr[0] = (float) easing.getDiff(d10);
            }
        }
        return f;
    }

    private static DifferentialInterpolator getInterpolator(int r02, String str, int r22) {
        if (r02 != -1) {
            return null;
        }
        final Easing interpolator = Easing.getInterpolator(str);
        return new DifferentialInterpolator() { // from class: androidx.constraintlayout.core.motion.Motion.1
            float mX;

            @Override // androidx.constraintlayout.core.motion.utils.DifferentialInterpolator
            public float getInterpolation(float f) {
                this.mX = f;
                return (float) interpolator.get(f);
            }

            @Override // androidx.constraintlayout.core.motion.utils.DifferentialInterpolator
            public float getVelocity() {
                return (float) interpolator.getDiff(this.mX);
            }
        };
    }

    private float getPreCycleDistance() {
        char c10;
        float fHypot;
        float[] fArr = new float[2];
        float f = 1.0f / 99;
        double d10 = 0.0d;
        double d11 = 0.0d;
        float f10 = 0.0f;
        int r82 = 0;
        while (r82 < 100) {
            float f11 = r82 * f;
            double d12 = f11;
            Easing easing = this.mStartMotionPath.mKeyFrameEasing;
            Iterator<MotionPaths> it = this.mMotionPaths.iterator();
            float f12 = Float.NaN;
            float f13 = 0.0f;
            while (it.hasNext()) {
                MotionPaths next = it.next();
                Easing easing2 = next.mKeyFrameEasing;
                if (easing2 != null) {
                    float f14 = next.time;
                    if (f14 < f11) {
                        easing = easing2;
                        f13 = f14;
                    } else if (Float.isNaN(f12)) {
                        f12 = next.time;
                    }
                }
            }
            if (easing != null) {
                if (Float.isNaN(f12)) {
                    f12 = 1.0f;
                }
                d12 = (((float) easing.get((f11 - f13) / r17)) * (f12 - f13)) + f13;
            }
            this.mSpline[0].getPos(d12, this.mInterpolateData);
            float f15 = f10;
            int r12 = r82;
            this.mStartMotionPath.getCenter(d12, this.mInterpolateVariables, this.mInterpolateData, fArr, 0);
            if (r12 > 0) {
                c10 = 0;
                fHypot = (float) (Math.hypot(d11 - fArr[1], d10 - fArr[0]) + f15);
            } else {
                c10 = 0;
                fHypot = f15;
            }
            d10 = fArr[c10];
            r82 = r12 + 1;
            f10 = fHypot;
            d11 = fArr[1];
        }
        return f10;
    }

    private void insertKey(MotionPaths motionPaths) {
        Iterator<MotionPaths> it = this.mMotionPaths.iterator();
        MotionPaths motionPaths2 = null;
        while (it.hasNext()) {
            MotionPaths next = it.next();
            if (motionPaths.position == next.position) {
                motionPaths2 = next;
            }
        }
        if (motionPaths2 != null) {
            this.mMotionPaths.remove(motionPaths2);
        }
        if (Collections.binarySearch(this.mMotionPaths, motionPaths) == 0) {
            Utils.loge(TAG, " KeyPath position \"" + motionPaths.position + "\" outside of range");
        }
        this.mMotionPaths.add((-r0) - 1, motionPaths);
    }

    private void readView(MotionPaths motionPaths) {
        motionPaths.setBounds(this.mView.getX(), this.mView.getY(), this.mView.getWidth(), this.mView.getHeight());
    }

    public void addKey(MotionKey motionKey) {
        this.mKeyList.add(motionKey);
    }

    public void addKeys(ArrayList<MotionKey> arrayList) {
        this.mKeyList.addAll(arrayList);
    }

    public void buildBounds(float[] fArr, int r19) {
        float f = 1.0f / (r19 - 1);
        HashMap<String, SplineSet> map = this.mAttributesMap;
        if (map != null) {
            map.get("translationX");
        }
        HashMap<String, SplineSet> map2 = this.mAttributesMap;
        if (map2 != null) {
            map2.get("translationY");
        }
        HashMap<String, KeyCycleOscillator> map3 = this.mCycleMap;
        if (map3 != null) {
            map3.get("translationX");
        }
        HashMap<String, KeyCycleOscillator> map4 = this.mCycleMap;
        if (map4 != null) {
            map4.get("translationY");
        }
        for (int r52 = 0; r52 < r19; r52++) {
            float fMin = r52 * f;
            float f10 = this.mStaggerScale;
            float f11 = 0.0f;
            if (f10 != 1.0f) {
                float f12 = this.mStaggerOffset;
                if (fMin < f12) {
                    fMin = 0.0f;
                }
                if (fMin > f12 && fMin < 1.0d) {
                    fMin = Math.min((fMin - f12) * f10, 1.0f);
                }
            }
            double d10 = fMin;
            Easing easing = this.mStartMotionPath.mKeyFrameEasing;
            Iterator<MotionPaths> it = this.mMotionPaths.iterator();
            float f13 = Float.NaN;
            while (it.hasNext()) {
                MotionPaths next = it.next();
                Easing easing2 = next.mKeyFrameEasing;
                if (easing2 != null) {
                    float f14 = next.time;
                    if (f14 < fMin) {
                        easing = easing2;
                        f11 = f14;
                    } else if (Float.isNaN(f13)) {
                        f13 = next.time;
                    }
                }
            }
            if (easing != null) {
                if (Float.isNaN(f13)) {
                    f13 = 1.0f;
                }
                d10 = (((float) easing.get((fMin - f11) / r12)) * (f13 - f11)) + f11;
            }
            this.mSpline[0].getPos(d10, this.mInterpolateData);
            CurveFit curveFit = this.mArcSpline;
            if (curveFit != null) {
                double[] dArr = this.mInterpolateData;
                if (dArr.length > 0) {
                    curveFit.getPos(d10, dArr);
                }
            }
            this.mStartMotionPath.getBounds(this.mInterpolateVariables, this.mInterpolateData, fArr, r52 * 2);
        }
    }

    public int buildKeyBounds(float[] fArr, int[] r92) {
        if (fArr == null) {
            return 0;
        }
        double[] timePoints = this.mSpline[0].getTimePoints();
        if (r92 != null) {
            Iterator<MotionPaths> it = this.mMotionPaths.iterator();
            int r32 = 0;
            while (it.hasNext()) {
                r92[r32] = it.next().mMode;
                r32++;
            }
        }
        int r22 = 0;
        for (double d10 : timePoints) {
            this.mSpline[0].getPos(d10, this.mInterpolateData);
            this.mStartMotionPath.getBounds(this.mInterpolateVariables, this.mInterpolateData, fArr, r22);
            r22 += 2;
        }
        return r22 / 2;
    }

    public int buildKeyFrames(float[] fArr, int[] r11, int[] r12) {
        if (fArr == null) {
            return 0;
        }
        double[] timePoints = this.mSpline[0].getTimePoints();
        if (r11 != null) {
            Iterator<MotionPaths> it = this.mMotionPaths.iterator();
            int r32 = 0;
            while (it.hasNext()) {
                r11[r32] = it.next().mMode;
                r32++;
            }
        }
        if (r12 != null) {
            Iterator<MotionPaths> it2 = this.mMotionPaths.iterator();
            int r22 = 0;
            while (it2.hasNext()) {
                r12[r22] = (int) (it2.next().position * 100.0f);
                r22++;
            }
        }
        int r122 = 0;
        for (int r112 = 0; r112 < timePoints.length; r112++) {
            this.mSpline[0].getPos(timePoints[r112], this.mInterpolateData);
            this.mStartMotionPath.getCenter(timePoints[r112], this.mInterpolateVariables, this.mInterpolateData, fArr, r122);
            r122 += 2;
        }
        return r122 / 2;
    }

    public void buildPath(float[] fArr, int r23) {
        double d10;
        float f = 1.0f;
        float f10 = 1.0f / (r23 - 1);
        HashMap<String, SplineSet> map = this.mAttributesMap;
        SplineSet splineSet = map == null ? null : map.get("translationX");
        HashMap<String, SplineSet> map2 = this.mAttributesMap;
        SplineSet splineSet2 = map2 == null ? null : map2.get("translationY");
        HashMap<String, KeyCycleOscillator> map3 = this.mCycleMap;
        KeyCycleOscillator keyCycleOscillator = map3 == null ? null : map3.get("translationX");
        HashMap<String, KeyCycleOscillator> map4 = this.mCycleMap;
        KeyCycleOscillator keyCycleOscillator2 = map4 != null ? map4.get("translationY") : null;
        int r72 = 0;
        while (r72 < r23) {
            float fMin = r72 * f10;
            float f11 = this.mStaggerScale;
            float f12 = 0.0f;
            if (f11 != f) {
                float f13 = this.mStaggerOffset;
                if (fMin < f13) {
                    fMin = 0.0f;
                }
                if (fMin > f13 && fMin < 1.0d) {
                    fMin = Math.min((fMin - f13) * f11, f);
                }
            }
            float f14 = fMin;
            double d11 = f14;
            Easing easing = this.mStartMotionPath.mKeyFrameEasing;
            Iterator<MotionPaths> it = this.mMotionPaths.iterator();
            float f15 = Float.NaN;
            while (it.hasNext()) {
                MotionPaths next = it.next();
                Easing easing2 = next.mKeyFrameEasing;
                double d12 = d11;
                if (easing2 != null) {
                    float f16 = next.time;
                    if (f16 < f14) {
                        f12 = f16;
                        easing = easing2;
                    } else if (Float.isNaN(f15)) {
                        f15 = next.time;
                    }
                }
                d11 = d12;
            }
            double d13 = d11;
            if (easing != null) {
                if (Float.isNaN(f15)) {
                    f15 = 1.0f;
                }
                d10 = (((float) easing.get((f14 - f12) / r16)) * (f15 - f12)) + f12;
            } else {
                d10 = d13;
            }
            this.mSpline[0].getPos(d10, this.mInterpolateData);
            CurveFit curveFit = this.mArcSpline;
            if (curveFit != null) {
                double[] dArr = this.mInterpolateData;
                if (dArr.length > 0) {
                    curveFit.getPos(d10, dArr);
                }
            }
            int r15 = r72 * 2;
            int r16 = r72;
            this.mStartMotionPath.getCenter(d10, this.mInterpolateVariables, this.mInterpolateData, fArr, r15);
            if (keyCycleOscillator != null) {
                fArr[r15] = keyCycleOscillator.get(f14) + fArr[r15];
            } else if (splineSet != null) {
                fArr[r15] = splineSet.get(f14) + fArr[r15];
            }
            if (keyCycleOscillator2 != null) {
                int r152 = r15 + 1;
                fArr[r152] = keyCycleOscillator2.get(f14) + fArr[r152];
            } else if (splineSet2 != null) {
                int r153 = r15 + 1;
                fArr[r153] = splineSet2.get(f14) + fArr[r153];
            }
            r72 = r16 + 1;
            f = 1.0f;
        }
    }

    public void buildRect(float f, float[] fArr, int r6) {
        this.mSpline[0].getPos(getAdjustedPosition(f, null), this.mInterpolateData);
        this.mStartMotionPath.getRect(this.mInterpolateVariables, this.mInterpolateData, fArr, r6);
    }

    public void buildRectangles(float[] fArr, int r92) {
        float f = 1.0f / (r92 - 1);
        for (int r22 = 0; r22 < r92; r22++) {
            this.mSpline[0].getPos(getAdjustedPosition(r22 * f, null), this.mInterpolateData);
            this.mStartMotionPath.getRect(this.mInterpolateVariables, this.mInterpolateData, fArr, r22 * 8);
        }
    }

    public void endTrigger(boolean z10) {
    }

    public int getAnimateRelativeTo() {
        return this.mStartMotionPath.mAnimateRelativeTo;
    }

    public int getAttributeValues(String str, float[] fArr, int r42) {
        SplineSet splineSet = this.mAttributesMap.get(str);
        if (splineSet == null) {
            return -1;
        }
        for (int r43 = 0; r43 < fArr.length; r43++) {
            fArr[r43] = splineSet.get(r43 / (fArr.length - 1));
        }
        return fArr.length;
    }

    public void getCenter(double d10, float[] fArr, float[] fArr2) {
        double[] dArr = new double[4];
        double[] dArr2 = new double[4];
        this.mSpline[0].getPos(d10, dArr);
        this.mSpline[0].getSlope(d10, dArr2);
        Arrays.fill(fArr2, 0.0f);
        this.mStartMotionPath.getCenter(d10, this.mInterpolateVariables, dArr, fArr, dArr2, fArr2);
    }

    public float getCenterX() {
        return this.mCurrentCenterX;
    }

    public float getCenterY() {
        return this.mCurrentCenterY;
    }

    public void getDpDt(float f, float f10, float f11, float[] fArr) {
        double[] dArr;
        float adjustedPosition = getAdjustedPosition(f, this.mVelocity);
        CurveFit[] curveFitArr = this.mSpline;
        int r12 = 0;
        if (curveFitArr == null) {
            MotionPaths motionPaths = this.mEndMotionPath;
            float f12 = motionPaths.f871x;
            MotionPaths motionPaths2 = this.mStartMotionPath;
            float f13 = f12 - motionPaths2.f871x;
            float f14 = motionPaths.f872y - motionPaths2.f872y;
            float f15 = motionPaths.width - motionPaths2.width;
            float f16 = (motionPaths.height - motionPaths2.height) + f14;
            fArr[0] = ((f15 + f13) * f10) + ((1.0f - f10) * f13);
            fArr[1] = (f16 * f11) + ((1.0f - f11) * f14);
            return;
        }
        double d10 = adjustedPosition;
        curveFitArr[0].getSlope(d10, this.mInterpolateVelocity);
        this.mSpline[0].getPos(d10, this.mInterpolateData);
        float f17 = this.mVelocity[0];
        while (true) {
            dArr = this.mInterpolateVelocity;
            if (r12 >= dArr.length) {
                break;
            }
            dArr[r12] = dArr[r12] * f17;
            r12++;
        }
        CurveFit curveFit = this.mArcSpline;
        if (curveFit == null) {
            this.mStartMotionPath.setDpDt(f10, f11, fArr, this.mInterpolateVariables, dArr, this.mInterpolateData);
            return;
        }
        double[] dArr2 = this.mInterpolateData;
        if (dArr2.length > 0) {
            curveFit.getPos(d10, dArr2);
            this.mArcSpline.getSlope(d10, this.mInterpolateVelocity);
            this.mStartMotionPath.setDpDt(f10, f11, fArr, this.mInterpolateVariables, this.mInterpolateVelocity, this.mInterpolateData);
        }
    }

    public int getDrawPath() {
        int r02 = this.mStartMotionPath.mDrawPath;
        Iterator<MotionPaths> it = this.mMotionPaths.iterator();
        while (it.hasNext()) {
            r02 = Math.max(r02, it.next().mDrawPath);
        }
        return Math.max(r02, this.mEndMotionPath.mDrawPath);
    }

    public float getFinalHeight() {
        return this.mEndMotionPath.height;
    }

    public float getFinalWidth() {
        return this.mEndMotionPath.width;
    }

    public float getFinalX() {
        return this.mEndMotionPath.f871x;
    }

    public float getFinalY() {
        return this.mEndMotionPath.f872y;
    }

    @Override // androidx.constraintlayout.core.motion.utils.TypedValues
    public int getId(String str) {
        return 0;
    }

    public MotionPaths getKeyFrame(int r22) {
        return this.mMotionPaths.get(r22);
    }

    public int getKeyFrameInfo(int r18, int[] r19) {
        float[] fArr = new float[2];
        Iterator<MotionKey> it = this.mKeyList.iterator();
        int r12 = 0;
        int r13 = 0;
        while (it.hasNext()) {
            MotionKey next = it.next();
            int r32 = next.mType;
            if (r32 == r18 || r18 != -1) {
                r19[r13] = 0;
                int r42 = r13 + 1;
                r19[r42] = r32;
                int r16 = r42 + 1;
                int r33 = next.mFramePosition;
                r19[r16] = r33;
                double d10 = r33 / 100.0f;
                this.mSpline[0].getPos(d10, this.mInterpolateData);
                this.mStartMotionPath.getCenter(d10, this.mInterpolateVariables, this.mInterpolateData, fArr, 0);
                int r162 = r16 + 1;
                r19[r162] = Float.floatToIntBits(fArr[0]);
                int r163 = r162 + 1;
                r19[r163] = Float.floatToIntBits(fArr[1]);
                if (next instanceof MotionKeyPosition) {
                    MotionKeyPosition motionKeyPosition = (MotionKeyPosition) next;
                    int r164 = r163 + 1;
                    r19[r164] = motionKeyPosition.mPositionType;
                    int r165 = r164 + 1;
                    r19[r165] = Float.floatToIntBits(motionKeyPosition.mPercentX);
                    r163 = r165 + 1;
                    r19[r163] = Float.floatToIntBits(motionKeyPosition.mPercentY);
                }
                int r166 = r163 + 1;
                r19[r13] = r166 - r13;
                r12++;
                r13 = r166;
            }
        }
        return r12;
    }

    public float getKeyFrameParameter(int r11, float f, float f10) {
        MotionPaths motionPaths = this.mEndMotionPath;
        float f11 = motionPaths.f871x;
        MotionPaths motionPaths2 = this.mStartMotionPath;
        float f12 = motionPaths2.f871x;
        float f13 = f11 - f12;
        float f14 = motionPaths.f872y;
        float f15 = motionPaths2.f872y;
        float f16 = f14 - f15;
        float f17 = (motionPaths2.width / 2.0f) + f12;
        float f18 = (motionPaths2.height / 2.0f) + f15;
        float fHypot = (float) Math.hypot(f13, f16);
        if (fHypot < 1.0E-7d) {
            return Float.NaN;
        }
        float f19 = f - f17;
        float f20 = f10 - f18;
        if (((float) Math.hypot(f19, f20)) == 0.0f) {
            return 0.0f;
        }
        float f21 = (f20 * f16) + (f19 * f13);
        if (r11 == 0) {
            return f21 / fHypot;
        }
        if (r11 == 1) {
            return (float) Math.sqrt((fHypot * fHypot) - (f21 * f21));
        }
        if (r11 == 2) {
            return f19 / f13;
        }
        if (r11 == 3) {
            return f20 / f13;
        }
        if (r11 == 4) {
            return f19 / f16;
        }
        if (r11 != 5) {
            return 0.0f;
        }
        return f20 / f16;
    }

    public int getKeyFramePositions(int[] r13, float[] fArr) {
        Iterator<MotionKey> it = this.mKeyList.iterator();
        int r22 = 0;
        int r10 = 0;
        while (it.hasNext()) {
            MotionKey next = it.next();
            int r42 = next.mFramePosition;
            r13[r22] = (next.mType * 1000) + r42;
            double d10 = r42 / 100.0f;
            this.mSpline[0].getPos(d10, this.mInterpolateData);
            this.mStartMotionPath.getCenter(d10, this.mInterpolateVariables, this.mInterpolateData, fArr, r10);
            r10 += 2;
            r22++;
        }
        return r22;
    }

    public double[] getPos(double d10) {
        this.mSpline[0].getPos(d10, this.mInterpolateData);
        CurveFit curveFit = this.mArcSpline;
        if (curveFit != null) {
            double[] dArr = this.mInterpolateData;
            if (dArr.length > 0) {
                curveFit.getPos(d10, dArr);
            }
        }
        return this.mInterpolateData;
    }

    public MotionKeyPosition getPositionKeyframe(int r12, int r13, float f, float f10) {
        FloatRect floatRect = new FloatRect();
        MotionPaths motionPaths = this.mStartMotionPath;
        float f11 = motionPaths.f871x;
        floatRect.left = f11;
        float f12 = motionPaths.f872y;
        floatRect.top = f12;
        floatRect.right = f11 + motionPaths.width;
        floatRect.bottom = f12 + motionPaths.height;
        FloatRect floatRect2 = new FloatRect();
        MotionPaths motionPaths2 = this.mEndMotionPath;
        float f13 = motionPaths2.f871x;
        floatRect2.left = f13;
        float f14 = motionPaths2.f872y;
        floatRect2.top = f14;
        floatRect2.right = f13 + motionPaths2.width;
        floatRect2.bottom = f14 + motionPaths2.height;
        Iterator<MotionKey> it = this.mKeyList.iterator();
        while (it.hasNext()) {
            MotionKey next = it.next();
            if (next instanceof MotionKeyPosition) {
                MotionKeyPosition motionKeyPosition = (MotionKeyPosition) next;
                if (motionKeyPosition.intersects(r12, r13, floatRect, floatRect2, f, f10)) {
                    return motionKeyPosition;
                }
            }
        }
        return null;
    }

    public void getPostLayoutDvDp(float f, int r20, int r21, float f10, float f11, float[] fArr) {
        float adjustedPosition = getAdjustedPosition(f, this.mVelocity);
        HashMap<String, SplineSet> map = this.mAttributesMap;
        SplineSet splineSet = map == null ? null : map.get("translationX");
        HashMap<String, SplineSet> map2 = this.mAttributesMap;
        SplineSet splineSet2 = map2 == null ? null : map2.get("translationY");
        HashMap<String, SplineSet> map3 = this.mAttributesMap;
        SplineSet splineSet3 = map3 == null ? null : map3.get("rotationZ");
        HashMap<String, SplineSet> map4 = this.mAttributesMap;
        SplineSet splineSet4 = map4 == null ? null : map4.get("scaleX");
        HashMap<String, SplineSet> map5 = this.mAttributesMap;
        SplineSet splineSet5 = map5 == null ? null : map5.get("scaleY");
        HashMap<String, KeyCycleOscillator> map6 = this.mCycleMap;
        KeyCycleOscillator keyCycleOscillator = map6 == null ? null : map6.get("translationX");
        HashMap<String, KeyCycleOscillator> map7 = this.mCycleMap;
        KeyCycleOscillator keyCycleOscillator2 = map7 == null ? null : map7.get("translationY");
        HashMap<String, KeyCycleOscillator> map8 = this.mCycleMap;
        KeyCycleOscillator keyCycleOscillator3 = map8 == null ? null : map8.get("rotationZ");
        HashMap<String, KeyCycleOscillator> map9 = this.mCycleMap;
        KeyCycleOscillator keyCycleOscillator4 = map9 == null ? null : map9.get("scaleX");
        HashMap<String, KeyCycleOscillator> map10 = this.mCycleMap;
        KeyCycleOscillator keyCycleOscillator5 = map10 != null ? map10.get("scaleY") : null;
        VelocityMatrix velocityMatrix = new VelocityMatrix();
        velocityMatrix.clear();
        velocityMatrix.setRotationVelocity(splineSet3, adjustedPosition);
        velocityMatrix.setTranslationVelocity(splineSet, splineSet2, adjustedPosition);
        velocityMatrix.setScaleVelocity(splineSet4, splineSet5, adjustedPosition);
        velocityMatrix.setRotationVelocity(keyCycleOscillator3, adjustedPosition);
        velocityMatrix.setTranslationVelocity(keyCycleOscillator, keyCycleOscillator2, adjustedPosition);
        velocityMatrix.setScaleVelocity(keyCycleOscillator4, keyCycleOscillator5, adjustedPosition);
        CurveFit curveFit = this.mArcSpline;
        if (curveFit != null) {
            double[] dArr = this.mInterpolateData;
            if (dArr.length > 0) {
                double d10 = adjustedPosition;
                curveFit.getPos(d10, dArr);
                this.mArcSpline.getSlope(d10, this.mInterpolateVelocity);
                this.mStartMotionPath.setDpDt(f10, f11, fArr, this.mInterpolateVariables, this.mInterpolateVelocity, this.mInterpolateData);
            }
            velocityMatrix.applyTransform(f10, f11, r20, r21, fArr);
            return;
        }
        int r14 = 0;
        if (this.mSpline == null) {
            MotionPaths motionPaths = this.mEndMotionPath;
            float f12 = motionPaths.f871x;
            MotionPaths motionPaths2 = this.mStartMotionPath;
            float f13 = f12 - motionPaths2.f871x;
            KeyCycleOscillator keyCycleOscillator6 = keyCycleOscillator5;
            float f14 = motionPaths.f872y - motionPaths2.f872y;
            KeyCycleOscillator keyCycleOscillator7 = keyCycleOscillator4;
            float f15 = motionPaths.width - motionPaths2.width;
            float f16 = (motionPaths.height - motionPaths2.height) + f14;
            fArr[0] = ((f15 + f13) * f10) + ((1.0f - f10) * f13);
            fArr[1] = (f16 * f11) + ((1.0f - f11) * f14);
            velocityMatrix.clear();
            velocityMatrix.setRotationVelocity(splineSet3, adjustedPosition);
            velocityMatrix.setTranslationVelocity(splineSet, splineSet2, adjustedPosition);
            velocityMatrix.setScaleVelocity(splineSet4, splineSet5, adjustedPosition);
            velocityMatrix.setRotationVelocity(keyCycleOscillator3, adjustedPosition);
            velocityMatrix.setTranslationVelocity(keyCycleOscillator, keyCycleOscillator2, adjustedPosition);
            velocityMatrix.setScaleVelocity(keyCycleOscillator7, keyCycleOscillator6, adjustedPosition);
            velocityMatrix.applyTransform(f10, f11, r20, r21, fArr);
            return;
        }
        double adjustedPosition2 = getAdjustedPosition(adjustedPosition, this.mVelocity);
        this.mSpline[0].getSlope(adjustedPosition2, this.mInterpolateVelocity);
        this.mSpline[0].getPos(adjustedPosition2, this.mInterpolateData);
        float f17 = this.mVelocity[0];
        while (true) {
            double[] dArr2 = this.mInterpolateVelocity;
            if (r14 >= dArr2.length) {
                this.mStartMotionPath.setDpDt(f10, f11, fArr, this.mInterpolateVariables, dArr2, this.mInterpolateData);
                velocityMatrix.applyTransform(f10, f11, r20, r21, fArr);
                return;
            } else {
                dArr2[r14] = dArr2[r14] * f17;
                r14++;
            }
        }
    }

    public float getStartHeight() {
        return this.mStartMotionPath.height;
    }

    public float getStartWidth() {
        return this.mStartMotionPath.width;
    }

    public float getStartX() {
        return this.mStartMotionPath.f871x;
    }

    public float getStartY() {
        return this.mStartMotionPath.f872y;
    }

    public int getTransformPivotTarget() {
        return this.mTransformPivotTarget;
    }

    public MotionWidget getView() {
        return this.mView;
    }

    public boolean interpolate(MotionWidget motionWidget, float f, long j10, KeyCache keyCache) {
        int r13;
        float adjustedPosition = getAdjustedPosition(f, null);
        int r132 = this.mQuantizeMotionSteps;
        if (r132 != -1) {
            float f10 = 1.0f / r132;
            float fFloor = ((float) Math.floor(adjustedPosition / f10)) * f10;
            float f11 = (adjustedPosition % f10) / f10;
            if (!Float.isNaN(this.mQuantizeMotionPhase)) {
                f11 = (f11 + this.mQuantizeMotionPhase) % 1.0f;
            }
            DifferentialInterpolator differentialInterpolator = this.mQuantizeMotionInterpolator;
            adjustedPosition = ((differentialInterpolator != null ? differentialInterpolator.getInterpolation(f11) : ((double) f11) > 0.5d ? 1.0f : 0.0f) * f10) + fFloor;
        }
        HashMap<String, SplineSet> map = this.mAttributesMap;
        if (map != null) {
            Iterator<SplineSet> it = map.values().iterator();
            while (it.hasNext()) {
                it.next().setProperty(motionWidget, adjustedPosition);
            }
        }
        CurveFit[] curveFitArr = this.mSpline;
        if (curveFitArr != null) {
            double d10 = adjustedPosition;
            curveFitArr[0].getPos(d10, this.mInterpolateData);
            this.mSpline[0].getSlope(d10, this.mInterpolateVelocity);
            CurveFit curveFit = this.mArcSpline;
            if (curveFit != null) {
                double[] dArr = this.mInterpolateData;
                if (dArr.length > 0) {
                    curveFit.getPos(d10, dArr);
                    this.mArcSpline.getSlope(d10, this.mInterpolateVelocity);
                }
            }
            if (!this.mNoMovement) {
                this.mStartMotionPath.setView(adjustedPosition, motionWidget, this.mInterpolateVariables, this.mInterpolateData, this.mInterpolateVelocity, null);
            }
            if (this.mTransformPivotTarget != -1) {
                if (this.mTransformPivotView == null) {
                    this.mTransformPivotView = motionWidget.getParent().findViewById(this.mTransformPivotTarget);
                }
                if (this.mTransformPivotView != null) {
                    float bottom = (this.mTransformPivotView.getBottom() + r13.getTop()) / 2.0f;
                    float right = (this.mTransformPivotView.getRight() + this.mTransformPivotView.getLeft()) / 2.0f;
                    if (motionWidget.getRight() - motionWidget.getLeft() > 0 && motionWidget.getBottom() - motionWidget.getTop() > 0) {
                        motionWidget.setPivotX(right - motionWidget.getLeft());
                        motionWidget.setPivotY(bottom - motionWidget.getTop());
                    }
                }
            }
            int r133 = 1;
            while (true) {
                CurveFit[] curveFitArr2 = this.mSpline;
                if (r133 >= curveFitArr2.length) {
                    break;
                }
                curveFitArr2[r133].getPos(d10, this.mValuesBuff);
                this.mStartMotionPath.customAttributes.get(this.mAttributeNames[r133 - 1]).setInterpolatedValue(motionWidget, this.mValuesBuff);
                r133++;
            }
            MotionConstrainedPoint motionConstrainedPoint = this.mStartPoint;
            if (motionConstrainedPoint.mVisibilityMode == 0) {
                if (adjustedPosition <= 0.0f) {
                    r13 = motionConstrainedPoint.visibility;
                    motionWidget.setVisibility(r13);
                } else if (adjustedPosition >= 1.0f) {
                    motionConstrainedPoint = this.mEndPoint;
                    r13 = motionConstrainedPoint.visibility;
                    motionWidget.setVisibility(r13);
                } else if (this.mEndPoint.visibility != motionConstrainedPoint.visibility) {
                    r13 = 4;
                    motionWidget.setVisibility(r13);
                }
            }
            if (this.mKeyTriggers != null) {
                int r134 = 0;
                while (true) {
                    MotionKeyTrigger[] motionKeyTriggerArr = this.mKeyTriggers;
                    if (r134 >= motionKeyTriggerArr.length) {
                        break;
                    }
                    motionKeyTriggerArr[r134].conditionallyFire(adjustedPosition, motionWidget);
                    r134++;
                }
            }
        } else {
            MotionPaths motionPaths = this.mStartMotionPath;
            float f12 = motionPaths.f871x;
            MotionPaths motionPaths2 = this.mEndMotionPath;
            float fD = a.d(motionPaths2.f871x, f12, adjustedPosition, f12);
            float f13 = motionPaths.f872y;
            float fD2 = a.d(motionPaths2.f872y, f13, adjustedPosition, f13);
            float f14 = motionPaths.width;
            float fD3 = a.d(motionPaths2.width, f14, adjustedPosition, f14);
            float f15 = motionPaths.height;
            float f16 = fD + 0.5f;
            float f17 = fD2 + 0.5f;
            motionWidget.layout((int) f16, (int) f17, (int) (f16 + fD3), (int) (f17 + a.d(motionPaths2.height, f15, adjustedPosition, f15)));
        }
        HashMap<String, KeyCycleOscillator> map2 = this.mCycleMap;
        if (map2 == null) {
            return false;
        }
        for (KeyCycleOscillator keyCycleOscillator : map2.values()) {
            if (keyCycleOscillator instanceof KeyCycleOscillator.PathRotateSet) {
                KeyCycleOscillator.PathRotateSet pathRotateSet = (KeyCycleOscillator.PathRotateSet) keyCycleOscillator;
                double[] dArr2 = this.mInterpolateVelocity;
                pathRotateSet.setPathRotate(motionWidget, adjustedPosition, dArr2[0], dArr2[1]);
            } else {
                keyCycleOscillator.setProperty(motionWidget, adjustedPosition);
            }
        }
        return false;
    }

    public String name() {
        return this.mView.getName();
    }

    public void positionKeyframe(MotionWidget motionWidget, MotionKeyPosition motionKeyPosition, float f, float f10, String[] strArr, float[] fArr) {
        FloatRect floatRect = new FloatRect();
        MotionPaths motionPaths = this.mStartMotionPath;
        float f11 = motionPaths.f871x;
        floatRect.left = f11;
        float f12 = motionPaths.f872y;
        floatRect.top = f12;
        floatRect.right = f11 + motionPaths.width;
        floatRect.bottom = f12 + motionPaths.height;
        FloatRect floatRect2 = new FloatRect();
        MotionPaths motionPaths2 = this.mEndMotionPath;
        float f13 = motionPaths2.f871x;
        floatRect2.left = f13;
        float f14 = motionPaths2.f872y;
        floatRect2.top = f14;
        floatRect2.right = f13 + motionPaths2.width;
        floatRect2.bottom = f14 + motionPaths2.height;
        motionKeyPosition.positionAttributes(motionWidget, floatRect, floatRect2, f, f10, strArr, fArr);
    }

    public void rotate(Rect rect, Rect rect2, int r52, int r6, int r72) {
        int r53;
        int r62;
        int r54;
        int r73;
        int r02;
        if (r52 != 1) {
            if (r52 == 2) {
                r54 = rect.left + rect.right;
                r73 = rect.top;
                r02 = rect.bottom;
            } else if (r52 == 3) {
                r53 = rect.left + rect.right;
                r62 = ((rect.height() / 2) + rect.top) - (r53 / 2);
            } else {
                if (r52 != 4) {
                    return;
                }
                r54 = rect.left + rect.right;
                r73 = rect.bottom;
                r02 = rect.top;
            }
            rect2.left = r6 - ((rect.width() + (r73 + r02)) / 2);
            rect2.top = (r54 - rect.height()) / 2;
            rect2.right = rect.width() + rect2.left;
            rect2.bottom = rect.height() + rect2.top;
        }
        r53 = rect.left + rect.right;
        r62 = ((rect.top + rect.bottom) - rect.width()) / 2;
        rect2.left = r62;
        rect2.top = r72 - ((rect.height() + r53) / 2);
        rect2.right = rect.width() + rect2.left;
        rect2.bottom = rect.height() + rect2.top;
    }

    public void setBothStates(MotionWidget motionWidget) {
        MotionPaths motionPaths = this.mStartMotionPath;
        motionPaths.time = 0.0f;
        motionPaths.position = 0.0f;
        this.mNoMovement = true;
        motionPaths.setBounds(motionWidget.getX(), motionWidget.getY(), motionWidget.getWidth(), motionWidget.getHeight());
        this.mEndMotionPath.setBounds(motionWidget.getX(), motionWidget.getY(), motionWidget.getWidth(), motionWidget.getHeight());
        this.mStartPoint.setState(motionWidget);
        this.mEndPoint.setState(motionWidget);
    }

    public void setDrawPath(int r22) {
        this.mStartMotionPath.mDrawPath = r22;
    }

    public void setEnd(MotionWidget motionWidget) {
        MotionPaths motionPaths = this.mEndMotionPath;
        motionPaths.time = 1.0f;
        motionPaths.position = 1.0f;
        readView(motionPaths);
        this.mEndMotionPath.setBounds(motionWidget.getLeft(), motionWidget.getTop(), motionWidget.getWidth(), motionWidget.getHeight());
        this.mEndMotionPath.applyParameters(motionWidget);
        this.mEndPoint.setState(motionWidget);
    }

    public void setPathMotionArc(int r12) {
        this.mPathMotionArc = r12;
    }

    public void setStart(MotionWidget motionWidget) {
        MotionPaths motionPaths = this.mStartMotionPath;
        motionPaths.time = 0.0f;
        motionPaths.position = 0.0f;
        motionPaths.setBounds(motionWidget.getX(), motionWidget.getY(), motionWidget.getWidth(), motionWidget.getHeight());
        this.mStartMotionPath.applyParameters(motionWidget);
        this.mStartPoint.setState(motionWidget);
    }

    public void setStartState(ViewState viewState, MotionWidget motionWidget, int r72, int r82, int r92) {
        int r83;
        MotionPaths motionPaths = this.mStartMotionPath;
        motionPaths.time = 0.0f;
        motionPaths.position = 0.0f;
        Rect rect = new Rect();
        if (r72 != 1) {
            if (r72 == 2) {
                int r84 = viewState.left + viewState.right;
                rect.left = r92 - ((viewState.width() + (viewState.top + viewState.bottom)) / 2);
                r83 = (r84 - viewState.height()) / 2;
            }
            this.mStartMotionPath.setBounds(rect.left, rect.top, rect.width(), rect.height());
            this.mStartPoint.setState(rect, motionWidget, r72, viewState.rotation);
        }
        int r93 = viewState.left + viewState.right;
        rect.left = ((viewState.top + viewState.bottom) - viewState.width()) / 2;
        r83 = r82 - ((viewState.height() + r93) / 2);
        rect.top = r83;
        rect.right = viewState.width() + rect.left;
        rect.bottom = viewState.height() + rect.top;
        this.mStartMotionPath.setBounds(rect.left, rect.top, rect.width(), rect.height());
        this.mStartPoint.setState(rect, motionWidget, r72, viewState.rotation);
    }

    public void setTransformPivotTarget(int r12) {
        this.mTransformPivotTarget = r12;
        this.mTransformPivotView = null;
    }

    @Override // androidx.constraintlayout.core.motion.utils.TypedValues
    public boolean setValue(int r12, float f) {
        return false;
    }

    @Override // androidx.constraintlayout.core.motion.utils.TypedValues
    public boolean setValue(int r32, int r42) {
        if (r32 != 509) {
            return r32 == 704;
        }
        setPathMotionArc(r42);
        return true;
    }

    @Override // androidx.constraintlayout.core.motion.utils.TypedValues
    public boolean setValue(int r42, String str) {
        if (705 == r42) {
            System.out.println("TYPE_INTERPOLATOR  " + str);
            this.mQuantizeMotionInterpolator = getInterpolator(-1, str, 0);
        }
        return false;
    }

    @Override // androidx.constraintlayout.core.motion.utils.TypedValues
    public boolean setValue(int r12, boolean z10) {
        return false;
    }

    public void setView(MotionWidget motionWidget) {
        this.mView = motionWidget;
    }

    public void setup(int r19, int r20, float f, long j10) {
        ArrayList arrayList;
        String[] strArr;
        CustomVariable customVariable;
        SplineSet splineSetMakeSpline;
        CustomVariable customVariable2;
        Integer num;
        SplineSet splineSetMakeSpline2;
        CustomVariable customVariable3;
        new HashSet();
        HashSet<String> hashSet = new HashSet<>();
        HashSet<String> hashSet2 = new HashSet<>();
        HashSet<String> hashSet3 = new HashSet<>();
        HashMap<String, Integer> map = new HashMap<>();
        int r72 = this.mPathMotionArc;
        if (r72 != -1) {
            this.mStartMotionPath.mPathMotionArc = r72;
        }
        this.mStartPoint.different(this.mEndPoint, hashSet2);
        ArrayList<MotionKey> arrayList2 = this.mKeyList;
        if (arrayList2 != null) {
            Iterator<MotionKey> it = arrayList2.iterator();
            arrayList = null;
            while (it.hasNext()) {
                MotionKey next = it.next();
                if (next instanceof MotionKeyPosition) {
                    MotionKeyPosition motionKeyPosition = (MotionKeyPosition) next;
                    insertKey(new MotionPaths(r19, r20, motionKeyPosition, this.mStartMotionPath, this.mEndMotionPath));
                    int r10 = motionKeyPosition.mCurveFit;
                    if (r10 != -1) {
                        this.mCurveFitType = r10;
                    }
                } else if (next instanceof MotionKeyCycle) {
                    next.getAttributeNames(hashSet3);
                } else if (next instanceof MotionKeyTimeCycle) {
                    next.getAttributeNames(hashSet);
                } else if (next instanceof MotionKeyTrigger) {
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    arrayList.add((MotionKeyTrigger) next);
                } else {
                    next.setInterpolation(map);
                    next.getAttributeNames(hashSet2);
                }
            }
        } else {
            arrayList = null;
        }
        if (arrayList != null) {
            this.mKeyTriggers = (MotionKeyTrigger[]) arrayList.toArray(new MotionKeyTrigger[0]);
        }
        char c10 = 1;
        if (!hashSet2.isEmpty()) {
            this.mAttributesMap = new HashMap<>();
            Iterator<String> it2 = hashSet2.iterator();
            while (it2.hasNext()) {
                String next2 = it2.next();
                if (next2.startsWith("CUSTOM,")) {
                    KeyFrameArray.CustomVar customVar = new KeyFrameArray.CustomVar();
                    String str = next2.split(",")[c10];
                    Iterator<MotionKey> it3 = this.mKeyList.iterator();
                    while (it3.hasNext()) {
                        MotionKey next3 = it3.next();
                        HashMap<String, CustomVariable> map2 = next3.mCustom;
                        if (map2 != null && (customVariable3 = map2.get(str)) != null) {
                            customVar.append(next3.mFramePosition, customVariable3);
                        }
                    }
                    splineSetMakeSpline2 = SplineSet.makeCustomSplineSet(next2, customVar);
                } else {
                    splineSetMakeSpline2 = SplineSet.makeSpline(next2, j10);
                }
                if (splineSetMakeSpline2 != null) {
                    splineSetMakeSpline2.setType(next2);
                    this.mAttributesMap.put(next2, splineSetMakeSpline2);
                }
                c10 = 1;
            }
            ArrayList<MotionKey> arrayList3 = this.mKeyList;
            if (arrayList3 != null) {
                Iterator<MotionKey> it4 = arrayList3.iterator();
                while (it4.hasNext()) {
                    MotionKey next4 = it4.next();
                    if (next4 instanceof MotionKeyAttributes) {
                        next4.addValues(this.mAttributesMap);
                    }
                }
            }
            this.mStartPoint.addValues(this.mAttributesMap, 0);
            this.mEndPoint.addValues(this.mAttributesMap, 100);
            for (String str2 : this.mAttributesMap.keySet()) {
                int r11 = (!map.containsKey(str2) || (num = map.get(str2)) == null) ? 0 : num.intValue();
                SplineSet splineSet = this.mAttributesMap.get(str2);
                if (splineSet != null) {
                    splineSet.setup(r11);
                }
            }
        }
        if (!hashSet.isEmpty()) {
            if (this.mTimeCycleAttributesMap == null) {
                this.mTimeCycleAttributesMap = new HashMap<>();
            }
            Iterator<String> it5 = hashSet.iterator();
            while (it5.hasNext()) {
                String next5 = it5.next();
                if (!this.mTimeCycleAttributesMap.containsKey(next5)) {
                    if (next5.startsWith("CUSTOM,")) {
                        KeyFrameArray.CustomVar customVar2 = new KeyFrameArray.CustomVar();
                        String str3 = next5.split(",")[1];
                        Iterator<MotionKey> it6 = this.mKeyList.iterator();
                        while (it6.hasNext()) {
                            MotionKey next6 = it6.next();
                            HashMap<String, CustomVariable> map3 = next6.mCustom;
                            if (map3 != null && (customVariable2 = map3.get(str3)) != null) {
                                customVar2.append(next6.mFramePosition, customVariable2);
                            }
                        }
                        splineSetMakeSpline = SplineSet.makeCustomSplineSet(next5, customVar2);
                    } else {
                        splineSetMakeSpline = SplineSet.makeSpline(next5, j10);
                    }
                    if (splineSetMakeSpline != null) {
                        splineSetMakeSpline.setType(next5);
                    }
                }
            }
            ArrayList<MotionKey> arrayList4 = this.mKeyList;
            if (arrayList4 != null) {
                Iterator<MotionKey> it7 = arrayList4.iterator();
                while (it7.hasNext()) {
                    MotionKey next7 = it7.next();
                    if (next7 instanceof MotionKeyTimeCycle) {
                        ((MotionKeyTimeCycle) next7).addTimeValues(this.mTimeCycleAttributesMap);
                    }
                }
            }
            for (String str4 : this.mTimeCycleAttributesMap.keySet()) {
                this.mTimeCycleAttributesMap.get(str4).setup(map.containsKey(str4) ? map.get(str4).intValue() : 0);
            }
        }
        int r22 = 2;
        int size = this.mMotionPaths.size() + 2;
        MotionPaths[] motionPathsArr = new MotionPaths[size];
        motionPathsArr[0] = this.mStartMotionPath;
        motionPathsArr[size - 1] = this.mEndMotionPath;
        if (this.mMotionPaths.size() > 0 && this.mCurveFitType == MotionKey.UNSET) {
            this.mCurveFitType = 0;
        }
        Iterator<MotionPaths> it8 = this.mMotionPaths.iterator();
        int r73 = 1;
        while (it8.hasNext()) {
            motionPathsArr[r73] = it8.next();
            r73++;
        }
        HashSet hashSet4 = new HashSet();
        for (String str5 : this.mEndMotionPath.customAttributes.keySet()) {
            if (this.mStartMotionPath.customAttributes.containsKey(str5)) {
                if (!hashSet2.contains("CUSTOM," + str5)) {
                    hashSet4.add(str5);
                }
            }
        }
        String[] strArr2 = (String[]) hashSet4.toArray(new String[0]);
        this.mAttributeNames = strArr2;
        this.mAttributeInterpolatorCount = new int[strArr2.length];
        int r42 = 0;
        while (true) {
            strArr = this.mAttributeNames;
            if (r42 >= strArr.length) {
                break;
            }
            String str6 = strArr[r42];
            this.mAttributeInterpolatorCount[r42] = 0;
            int r74 = 0;
            while (true) {
                if (r74 >= size) {
                    break;
                }
                if (motionPathsArr[r74].customAttributes.containsKey(str6) && (customVariable = motionPathsArr[r74].customAttributes.get(str6)) != null) {
                    int[] r6 = this.mAttributeInterpolatorCount;
                    r6[r42] = customVariable.numberOfInterpolatedValues() + r6[r42];
                    break;
                }
                r74++;
            }
            r42++;
        }
        boolean z10 = motionPathsArr[0].mPathMotionArc != -1;
        int length = strArr.length + 18;
        boolean[] zArr = new boolean[length];
        for (int r82 = 1; r82 < size; r82++) {
            motionPathsArr[r82].different(motionPathsArr[r82 - 1], zArr, this.mAttributeNames, z10);
        }
        int r83 = 0;
        for (int r43 = 1; r43 < length; r43++) {
            if (zArr[r43]) {
                r83++;
            }
        }
        this.mInterpolateVariables = new int[r83];
        int r44 = Math.max(2, r83);
        this.mInterpolateData = new double[r44];
        this.mInterpolateVelocity = new double[r44];
        int r84 = 0;
        for (int r45 = 1; r45 < length; r45++) {
            if (zArr[r45]) {
                this.mInterpolateVariables[r84] = r45;
                r84++;
            }
        }
        double[][] dArr = (double[][]) Array.newInstance((Class<?>) Double.TYPE, size, this.mInterpolateVariables.length);
        double[] dArr2 = new double[size];
        for (int r75 = 0; r75 < size; r75++) {
            motionPathsArr[r75].fillStandard(dArr[r75], this.mInterpolateVariables);
            dArr2[r75] = motionPathsArr[r75].time;
        }
        int r76 = 0;
        while (true) {
            int[] r85 = this.mInterpolateVariables;
            if (r76 >= r85.length) {
                break;
            }
            if (r85[r76] < MotionPaths.names.length) {
                String strH = c.h(new StringBuilder(), MotionPaths.names[this.mInterpolateVariables[r76]], " [");
                for (int r92 = 0; r92 < size; r92++) {
                    StringBuilder sbE = androidx.constraintlayout.core.a.e(strH);
                    sbE.append(dArr[r92][r76]);
                    strH = sbE.toString();
                }
            }
            r76++;
        }
        this.mSpline = new CurveFit[this.mAttributeNames.length + 1];
        int r77 = 0;
        while (true) {
            String[] strArr3 = this.mAttributeNames;
            if (r77 >= strArr3.length) {
                break;
            }
            String str7 = strArr3[r77];
            int r93 = 0;
            int r102 = 0;
            double[] dArr3 = null;
            double[][] dArr4 = null;
            while (r93 < size) {
                if (motionPathsArr[r93].hasCustomData(str7)) {
                    if (dArr4 == null) {
                        dArr3 = new double[size];
                        int[] r23 = new int[r22];
                        r23[1] = motionPathsArr[r93].getCustomDataCount(str7);
                        r23[0] = size;
                        dArr4 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, r23);
                    }
                    MotionPaths motionPaths = motionPathsArr[r93];
                    dArr3[r102] = motionPaths.time;
                    motionPaths.getCustomData(str7, dArr4[r102], 0);
                    r102++;
                }
                r93++;
                r22 = 2;
            }
            r77++;
            this.mSpline[r77] = CurveFit.get(this.mCurveFitType, Arrays.copyOf(dArr3, r102), (double[][]) Arrays.copyOf(dArr4, r102));
            r22 = 2;
        }
        this.mSpline[0] = CurveFit.get(this.mCurveFitType, dArr2, dArr);
        if (motionPathsArr[0].mPathMotionArc != -1) {
            int[] r24 = new int[size];
            double[] dArr5 = new double[size];
            double[][] dArr6 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, size, 2);
            for (int r78 = 0; r78 < size; r78++) {
                r24[r78] = motionPathsArr[r78].mPathMotionArc;
                dArr5[r78] = r8.time;
                double[] dArr7 = dArr6[r78];
                dArr7[0] = r8.f871x;
                dArr7[1] = r8.f872y;
            }
            this.mArcSpline = CurveFit.getArc(r24, dArr5, dArr6);
        }
        this.mCycleMap = new HashMap<>();
        if (this.mKeyList != null) {
            Iterator<String> it9 = hashSet3.iterator();
            float preCycleDistance = Float.NaN;
            while (it9.hasNext()) {
                String next8 = it9.next();
                KeyCycleOscillator keyCycleOscillatorMakeWidgetCycle = KeyCycleOscillator.makeWidgetCycle(next8);
                if (keyCycleOscillatorMakeWidgetCycle != null) {
                    if (keyCycleOscillatorMakeWidgetCycle.variesByPath() && Float.isNaN(preCycleDistance)) {
                        preCycleDistance = getPreCycleDistance();
                    }
                    keyCycleOscillatorMakeWidgetCycle.setType(next8);
                    this.mCycleMap.put(next8, keyCycleOscillatorMakeWidgetCycle);
                }
            }
            Iterator<MotionKey> it10 = this.mKeyList.iterator();
            while (it10.hasNext()) {
                MotionKey next9 = it10.next();
                if (next9 instanceof MotionKeyCycle) {
                    ((MotionKeyCycle) next9).addCycleValues(this.mCycleMap);
                }
            }
            Iterator<KeyCycleOscillator> it11 = this.mCycleMap.values().iterator();
            while (it11.hasNext()) {
                it11.next().setup(preCycleDistance);
            }
        }
    }

    public void setupRelative(Motion motion) {
        this.mStartMotionPath.setupRelative(motion, motion.mStartMotionPath);
        this.mEndMotionPath.setupRelative(motion, motion.mEndMotionPath);
    }

    public String toString() {
        return " start: x: " + this.mStartMotionPath.f871x + " y: " + this.mStartMotionPath.f872y + " end: x: " + this.mEndMotionPath.f871x + " y: " + this.mEndMotionPath.f872y;
    }
}
