package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.Log;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AnimationUtils;
import android.view.animation.BounceInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.view.animation.OvershootInterpolator;
import androidx.appcompat.graphics.drawable.a;
import androidx.camera.camera2.internal.c;
import androidx.constraintlayout.core.motion.utils.CurveFit;
import androidx.constraintlayout.core.motion.utils.Easing;
import androidx.constraintlayout.core.motion.utils.KeyCache;
import androidx.constraintlayout.core.motion.utils.VelocityMatrix;
import androidx.constraintlayout.motion.utils.CustomSupport;
import androidx.constraintlayout.motion.utils.ViewOscillator;
import androidx.constraintlayout.motion.utils.ViewSpline;
import androidx.constraintlayout.motion.utils.ViewState;
import androidx.constraintlayout.motion.utils.ViewTimeCycle;
import androidx.constraintlayout.widget.ConstraintAttribute;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.ConstraintSet;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;

/* loaded from: classes.dex */
public class MotionController {
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
    private HashMap<String, ViewSpline> mAttributesMap;
    String mConstraintTag;
    float mCurrentCenterX;
    float mCurrentCenterY;
    private HashMap<String, ViewOscillator> mCycleMap;
    int mId;
    private double[] mInterpolateData;
    private int[] mInterpolateVariables;
    private double[] mInterpolateVelocity;
    private KeyTrigger[] mKeyTriggers;
    private boolean mNoMovement;
    private int mPathMotionArc;
    private Interpolator mQuantizeMotionInterpolator;
    private float mQuantizeMotionPhase;
    private int mQuantizeMotionSteps;
    private CurveFit[] mSpline;
    private HashMap<String, ViewTimeCycle> mTimeCycleAttributesMap;
    private int mTransformPivotTarget;
    private View mTransformPivotView;
    View mView;
    Rect mTempRect = new Rect();
    boolean mForceMeasure = false;
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
    private ArrayList<Key> mKeyList = new ArrayList<>();

    public MotionController(View view) {
        int r22 = Key.UNSET;
        this.mPathMotionArc = r22;
        this.mTransformPivotTarget = r22;
        this.mTransformPivotView = null;
        this.mQuantizeMotionSteps = r22;
        this.mQuantizeMotionPhase = Float.NaN;
        this.mQuantizeMotionInterpolator = null;
        this.mNoMovement = false;
        setView(view);
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

    private static Interpolator getInterpolator(Context context, int r22, String str, int r42) {
        if (r22 == -2) {
            return AnimationUtils.loadInterpolator(context, r42);
        }
        if (r22 == -1) {
            final Easing interpolator = Easing.getInterpolator(str);
            return new Interpolator() { // from class: androidx.constraintlayout.motion.widget.MotionController.1
                @Override // android.animation.TimeInterpolator
                public float getInterpolation(float f) {
                    return (float) interpolator.get(f);
                }
            };
        }
        if (r22 == 0) {
            return new AccelerateDecelerateInterpolator();
        }
        if (r22 == 1) {
            return new AccelerateInterpolator();
        }
        if (r22 == 2) {
            return new DecelerateInterpolator();
        }
        if (r22 == 4) {
            return new BounceInterpolator();
        }
        if (r22 != 5) {
            return null;
        }
        return new OvershootInterpolator();
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
        if (Collections.binarySearch(this.mMotionPaths, motionPaths) == 0) {
            Log.e(TAG, " KeyPath position \"" + motionPaths.position + "\" outside of range");
        }
        this.mMotionPaths.add((-r0) - 1, motionPaths);
    }

    private void readView(MotionPaths motionPaths) {
        motionPaths.setBounds((int) this.mView.getX(), (int) this.mView.getY(), this.mView.getWidth(), this.mView.getHeight());
    }

    public void addKey(Key key) {
        this.mKeyList.add(key);
    }

    public void addKeys(ArrayList<Key> arrayList) {
        this.mKeyList.addAll(arrayList);
    }

    public void buildBounds(float[] fArr, int r19) {
        float f = 1.0f / (r19 - 1);
        HashMap<String, ViewSpline> map = this.mAttributesMap;
        if (map != null) {
            map.get("translationX");
        }
        HashMap<String, ViewSpline> map2 = this.mAttributesMap;
        if (map2 != null) {
            map2.get("translationY");
        }
        HashMap<String, ViewOscillator> map3 = this.mCycleMap;
        if (map3 != null) {
            map3.get("translationX");
        }
        HashMap<String, ViewOscillator> map4 = this.mCycleMap;
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

    public int buildKeyFrames(float[] fArr, int[] r12) {
        if (fArr == null) {
            return 0;
        }
        double[] timePoints = this.mSpline[0].getTimePoints();
        if (r12 != null) {
            Iterator<MotionPaths> it = this.mMotionPaths.iterator();
            int r32 = 0;
            while (it.hasNext()) {
                r12[r32] = it.next().mMode;
                r32++;
            }
        }
        int r92 = 0;
        for (int r122 = 0; r122 < timePoints.length; r122++) {
            this.mSpline[0].getPos(timePoints[r122], this.mInterpolateData);
            this.mStartMotionPath.getCenter(timePoints[r122], this.mInterpolateVariables, this.mInterpolateData, fArr, r92);
            r92 += 2;
        }
        return r92 / 2;
    }

    public void buildPath(float[] fArr, int r23) {
        double d10;
        float f = 1.0f;
        float f10 = 1.0f / (r23 - 1);
        HashMap<String, ViewSpline> map = this.mAttributesMap;
        ViewSpline viewSpline = map == null ? null : map.get("translationX");
        HashMap<String, ViewSpline> map2 = this.mAttributesMap;
        ViewSpline viewSpline2 = map2 == null ? null : map2.get("translationY");
        HashMap<String, ViewOscillator> map3 = this.mCycleMap;
        ViewOscillator viewOscillator = map3 == null ? null : map3.get("translationX");
        HashMap<String, ViewOscillator> map4 = this.mCycleMap;
        ViewOscillator viewOscillator2 = map4 != null ? map4.get("translationY") : null;
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
            if (viewOscillator != null) {
                fArr[r15] = viewOscillator.get(f14) + fArr[r15];
            } else if (viewSpline != null) {
                fArr[r15] = viewSpline.get(f14) + fArr[r15];
            }
            if (viewOscillator2 != null) {
                int r152 = r15 + 1;
                fArr[r152] = viewOscillator2.get(f14) + fArr[r152];
            } else if (viewSpline2 != null) {
                int r153 = r15 + 1;
                fArr[r153] = viewSpline2.get(f14) + fArr[r153];
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
        if (!"button".equals(Debug.getName(this.mView)) || this.mKeyTriggers == null) {
            return;
        }
        int r02 = 0;
        while (true) {
            KeyTrigger[] keyTriggerArr = this.mKeyTriggers;
            if (r02 >= keyTriggerArr.length) {
                return;
            }
            keyTriggerArr[r02].conditionallyFire(z10 ? -100.0f : 100.0f, this.mView);
            r02++;
        }
    }

    public int getAnimateRelativeTo() {
        return this.mStartMotionPath.mAnimateRelativeTo;
    }

    public int getAttributeValues(String str, float[] fArr, int r42) {
        ViewSpline viewSpline = this.mAttributesMap.get(str);
        if (viewSpline == null) {
            return -1;
        }
        for (int r43 = 0; r43 < fArr.length; r43++) {
            fArr[r43] = viewSpline.get(r43 / (fArr.length - 1));
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
            float f12 = motionPaths.f886x;
            MotionPaths motionPaths2 = this.mStartMotionPath;
            float f13 = f12 - motionPaths2.f886x;
            float f14 = motionPaths.f887y - motionPaths2.f887y;
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
        return this.mEndMotionPath.f886x;
    }

    public float getFinalY() {
        return this.mEndMotionPath.f887y;
    }

    public MotionPaths getKeyFrame(int r22) {
        return this.mMotionPaths.get(r22);
    }

    public int getKeyFrameInfo(int r18, int[] r19) {
        float[] fArr = new float[2];
        Iterator<Key> it = this.mKeyList.iterator();
        int r12 = 0;
        int r13 = 0;
        while (it.hasNext()) {
            Key next = it.next();
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
                if (next instanceof KeyPosition) {
                    KeyPosition keyPosition = (KeyPosition) next;
                    int r164 = r163 + 1;
                    r19[r164] = keyPosition.mPositionType;
                    int r165 = r164 + 1;
                    r19[r165] = Float.floatToIntBits(keyPosition.mPercentX);
                    r163 = r165 + 1;
                    r19[r163] = Float.floatToIntBits(keyPosition.mPercentY);
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
        float f11 = motionPaths.f886x;
        MotionPaths motionPaths2 = this.mStartMotionPath;
        float f12 = motionPaths2.f886x;
        float f13 = f11 - f12;
        float f14 = motionPaths.f887y;
        float f15 = motionPaths2.f887y;
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
        Iterator<Key> it = this.mKeyList.iterator();
        int r22 = 0;
        int r10 = 0;
        while (it.hasNext()) {
            Key next = it.next();
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

    public KeyPositionBase getPositionKeyframe(int r12, int r13, float f, float f10) {
        RectF rectF = new RectF();
        MotionPaths motionPaths = this.mStartMotionPath;
        float f11 = motionPaths.f886x;
        rectF.left = f11;
        float f12 = motionPaths.f887y;
        rectF.top = f12;
        rectF.right = f11 + motionPaths.width;
        rectF.bottom = f12 + motionPaths.height;
        RectF rectF2 = new RectF();
        MotionPaths motionPaths2 = this.mEndMotionPath;
        float f13 = motionPaths2.f886x;
        rectF2.left = f13;
        float f14 = motionPaths2.f887y;
        rectF2.top = f14;
        rectF2.right = f13 + motionPaths2.width;
        rectF2.bottom = f14 + motionPaths2.height;
        Iterator<Key> it = this.mKeyList.iterator();
        while (it.hasNext()) {
            Key next = it.next();
            if (next instanceof KeyPositionBase) {
                KeyPositionBase keyPositionBase = (KeyPositionBase) next;
                if (keyPositionBase.intersects(r12, r13, rectF, rectF2, f, f10)) {
                    return keyPositionBase;
                }
            }
        }
        return null;
    }

    public void getPostLayoutDvDp(float f, int r20, int r21, float f10, float f11, float[] fArr) {
        float adjustedPosition = getAdjustedPosition(f, this.mVelocity);
        HashMap<String, ViewSpline> map = this.mAttributesMap;
        ViewSpline viewSpline = map == null ? null : map.get("translationX");
        HashMap<String, ViewSpline> map2 = this.mAttributesMap;
        ViewSpline viewSpline2 = map2 == null ? null : map2.get("translationY");
        HashMap<String, ViewSpline> map3 = this.mAttributesMap;
        ViewSpline viewSpline3 = map3 == null ? null : map3.get(Key.ROTATION);
        HashMap<String, ViewSpline> map4 = this.mAttributesMap;
        ViewSpline viewSpline4 = map4 == null ? null : map4.get("scaleX");
        HashMap<String, ViewSpline> map5 = this.mAttributesMap;
        ViewSpline viewSpline5 = map5 == null ? null : map5.get("scaleY");
        HashMap<String, ViewOscillator> map6 = this.mCycleMap;
        ViewOscillator viewOscillator = map6 == null ? null : map6.get("translationX");
        HashMap<String, ViewOscillator> map7 = this.mCycleMap;
        ViewOscillator viewOscillator2 = map7 == null ? null : map7.get("translationY");
        HashMap<String, ViewOscillator> map8 = this.mCycleMap;
        ViewOscillator viewOscillator3 = map8 == null ? null : map8.get(Key.ROTATION);
        HashMap<String, ViewOscillator> map9 = this.mCycleMap;
        ViewOscillator viewOscillator4 = map9 == null ? null : map9.get("scaleX");
        HashMap<String, ViewOscillator> map10 = this.mCycleMap;
        ViewOscillator viewOscillator5 = map10 != null ? map10.get("scaleY") : null;
        VelocityMatrix velocityMatrix = new VelocityMatrix();
        velocityMatrix.clear();
        velocityMatrix.setRotationVelocity(viewSpline3, adjustedPosition);
        velocityMatrix.setTranslationVelocity(viewSpline, viewSpline2, adjustedPosition);
        velocityMatrix.setScaleVelocity(viewSpline4, viewSpline5, adjustedPosition);
        velocityMatrix.setRotationVelocity(viewOscillator3, adjustedPosition);
        velocityMatrix.setTranslationVelocity(viewOscillator, viewOscillator2, adjustedPosition);
        velocityMatrix.setScaleVelocity(viewOscillator4, viewOscillator5, adjustedPosition);
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
            float f12 = motionPaths.f886x;
            MotionPaths motionPaths2 = this.mStartMotionPath;
            float f13 = f12 - motionPaths2.f886x;
            ViewOscillator viewOscillator6 = viewOscillator5;
            float f14 = motionPaths.f887y - motionPaths2.f887y;
            ViewOscillator viewOscillator7 = viewOscillator4;
            float f15 = motionPaths.width - motionPaths2.width;
            float f16 = (motionPaths.height - motionPaths2.height) + f14;
            fArr[0] = ((f15 + f13) * f10) + ((1.0f - f10) * f13);
            fArr[1] = (f16 * f11) + ((1.0f - f11) * f14);
            velocityMatrix.clear();
            velocityMatrix.setRotationVelocity(viewSpline3, adjustedPosition);
            velocityMatrix.setTranslationVelocity(viewSpline, viewSpline2, adjustedPosition);
            velocityMatrix.setScaleVelocity(viewSpline4, viewSpline5, adjustedPosition);
            velocityMatrix.setRotationVelocity(viewOscillator3, adjustedPosition);
            velocityMatrix.setTranslationVelocity(viewOscillator, viewOscillator2, adjustedPosition);
            velocityMatrix.setScaleVelocity(viewOscillator7, viewOscillator6, adjustedPosition);
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
        return this.mStartMotionPath.f886x;
    }

    public float getStartY() {
        return this.mStartMotionPath.f887y;
    }

    public int getTransformPivotTarget() {
        return this.mTransformPivotTarget;
    }

    public View getView() {
        return this.mView;
    }

    public boolean interpolate(View view, float f, long j10, KeyCache keyCache) {
        ViewTimeCycle.PathRotate pathRotate;
        boolean pathRotate2;
        char c10;
        double d10;
        float adjustedPosition = getAdjustedPosition(f, null);
        int r32 = this.mQuantizeMotionSteps;
        if (r32 != Key.UNSET) {
            float f10 = 1.0f / r32;
            float fFloor = ((float) Math.floor(adjustedPosition / f10)) * f10;
            float f11 = (adjustedPosition % f10) / f10;
            if (!Float.isNaN(this.mQuantizeMotionPhase)) {
                f11 = (f11 + this.mQuantizeMotionPhase) % 1.0f;
            }
            Interpolator interpolator = this.mQuantizeMotionInterpolator;
            adjustedPosition = ((interpolator != null ? interpolator.getInterpolation(f11) : ((double) f11) > 0.5d ? 1.0f : 0.0f) * f10) + fFloor;
        }
        float f12 = adjustedPosition;
        HashMap<String, ViewSpline> map = this.mAttributesMap;
        if (map != null) {
            Iterator<ViewSpline> it = map.values().iterator();
            while (it.hasNext()) {
                it.next().setProperty(view, f12);
            }
        }
        HashMap<String, ViewTimeCycle> map2 = this.mTimeCycleAttributesMap;
        if (map2 != null) {
            ViewTimeCycle.PathRotate pathRotate3 = null;
            boolean property = false;
            for (ViewTimeCycle viewTimeCycle : map2.values()) {
                if (viewTimeCycle instanceof ViewTimeCycle.PathRotate) {
                    pathRotate3 = (ViewTimeCycle.PathRotate) viewTimeCycle;
                } else {
                    property |= viewTimeCycle.setProperty(view, f12, j10, keyCache);
                }
            }
            pathRotate2 = property;
            pathRotate = pathRotate3;
        } else {
            pathRotate = null;
            pathRotate2 = false;
        }
        CurveFit[] curveFitArr = this.mSpline;
        if (curveFitArr != null) {
            double d11 = f12;
            curveFitArr[0].getPos(d11, this.mInterpolateData);
            this.mSpline[0].getSlope(d11, this.mInterpolateVelocity);
            CurveFit curveFit = this.mArcSpline;
            if (curveFit != null) {
                double[] dArr = this.mInterpolateData;
                if (dArr.length > 0) {
                    curveFit.getPos(d11, dArr);
                    this.mArcSpline.getSlope(d11, this.mInterpolateVelocity);
                }
            }
            if (this.mNoMovement) {
                d10 = d11;
            } else {
                d10 = d11;
                this.mStartMotionPath.setView(f12, view, this.mInterpolateVariables, this.mInterpolateData, this.mInterpolateVelocity, null, this.mForceMeasure);
                this.mForceMeasure = false;
            }
            if (this.mTransformPivotTarget != Key.UNSET) {
                if (this.mTransformPivotView == null) {
                    this.mTransformPivotView = ((View) view.getParent()).findViewById(this.mTransformPivotTarget);
                }
                if (this.mTransformPivotView != null) {
                    float bottom = (this.mTransformPivotView.getBottom() + r1.getTop()) / 2.0f;
                    float right = (this.mTransformPivotView.getRight() + this.mTransformPivotView.getLeft()) / 2.0f;
                    if (view.getRight() - view.getLeft() > 0 && view.getBottom() - view.getTop() > 0) {
                        view.setPivotX(right - view.getLeft());
                        view.setPivotY(bottom - view.getTop());
                    }
                }
            }
            HashMap<String, ViewSpline> map3 = this.mAttributesMap;
            if (map3 != null) {
                for (ViewSpline viewSpline : map3.values()) {
                    if (viewSpline instanceof ViewSpline.PathRotate) {
                        double[] dArr2 = this.mInterpolateVelocity;
                        if (dArr2.length > 1) {
                            ((ViewSpline.PathRotate) viewSpline).setPathRotate(view, f12, dArr2[0], dArr2[1]);
                        }
                    }
                }
            }
            if (pathRotate != null) {
                double[] dArr3 = this.mInterpolateVelocity;
                c10 = 1;
                pathRotate2 = pathRotate.setPathRotate(view, keyCache, f12, j10, dArr3[0], dArr3[1]) | pathRotate2;
            } else {
                c10 = 1;
            }
            int r12 = 1;
            while (true) {
                CurveFit[] curveFitArr2 = this.mSpline;
                if (r12 >= curveFitArr2.length) {
                    break;
                }
                curveFitArr2[r12].getPos(d10, this.mValuesBuff);
                CustomSupport.setInterpolatedValue(this.mStartMotionPath.attributes.get(this.mAttributeNames[r12 - 1]), view, this.mValuesBuff);
                r12++;
            }
            MotionConstrainedPoint motionConstrainedPoint = this.mStartPoint;
            if (motionConstrainedPoint.mVisibilityMode == 0) {
                if (f12 <= 0.0f) {
                    view.setVisibility(motionConstrainedPoint.visibility);
                } else if (f12 >= 1.0f) {
                    motionConstrainedPoint = this.mEndPoint;
                    view.setVisibility(motionConstrainedPoint.visibility);
                } else if (this.mEndPoint.visibility != motionConstrainedPoint.visibility) {
                    view.setVisibility(0);
                }
            }
            if (this.mKeyTriggers != null) {
                int r13 = 0;
                while (true) {
                    KeyTrigger[] keyTriggerArr = this.mKeyTriggers;
                    if (r13 >= keyTriggerArr.length) {
                        break;
                    }
                    keyTriggerArr[r13].conditionallyFire(f12, view);
                    r13++;
                }
            }
        } else {
            c10 = 1;
            MotionPaths motionPaths = this.mStartMotionPath;
            float f13 = motionPaths.f886x;
            MotionPaths motionPaths2 = this.mEndMotionPath;
            float fD = a.d(motionPaths2.f886x, f13, f12, f13);
            float f14 = motionPaths.f887y;
            float fD2 = a.d(motionPaths2.f887y, f14, f12, f14);
            float f15 = motionPaths.width;
            float f16 = motionPaths2.width;
            float fD3 = a.d(f16, f15, f12, f15);
            float f17 = motionPaths.height;
            float f18 = motionPaths2.height;
            float f19 = fD + 0.5f;
            int r10 = (int) f19;
            float f20 = fD2 + 0.5f;
            int r92 = (int) f20;
            int r22 = (int) (f19 + fD3);
            int r42 = (int) (f20 + a.d(f18, f17, f12, f17));
            int r72 = r22 - r10;
            int r82 = r42 - r92;
            if (f16 != f15 || f18 != f17 || this.mForceMeasure) {
                view.measure(View.MeasureSpec.makeMeasureSpec(r72, 1073741824), View.MeasureSpec.makeMeasureSpec(r82, 1073741824));
                this.mForceMeasure = false;
            }
            view.layout(r10, r92, r22, r42);
        }
        HashMap<String, ViewOscillator> map4 = this.mCycleMap;
        if (map4 != null) {
            for (ViewOscillator viewOscillator : map4.values()) {
                if (viewOscillator instanceof ViewOscillator.PathRotateSet) {
                    double[] dArr4 = this.mInterpolateVelocity;
                    ((ViewOscillator.PathRotateSet) viewOscillator).setPathRotate(view, f12, dArr4[0], dArr4[c10]);
                } else {
                    viewOscillator.setProperty(view, f12);
                }
            }
        }
        return pathRotate2;
    }

    public String name() {
        return this.mView.getContext().getResources().getResourceEntryName(this.mView.getId());
    }

    public void positionKeyframe(View view, KeyPositionBase keyPositionBase, float f, float f10, String[] strArr, float[] fArr) {
        RectF rectF = new RectF();
        MotionPaths motionPaths = this.mStartMotionPath;
        float f11 = motionPaths.f886x;
        rectF.left = f11;
        float f12 = motionPaths.f887y;
        rectF.top = f12;
        rectF.right = f11 + motionPaths.width;
        rectF.bottom = f12 + motionPaths.height;
        RectF rectF2 = new RectF();
        MotionPaths motionPaths2 = this.mEndMotionPath;
        float f13 = motionPaths2.f886x;
        rectF2.left = f13;
        float f14 = motionPaths2.f887y;
        rectF2.top = f14;
        rectF2.right = f13 + motionPaths2.width;
        rectF2.bottom = f14 + motionPaths2.height;
        keyPositionBase.positionAttributes(view, rectF, rectF2, f, f10, strArr, fArr);
    }

    public void remeasure() {
        this.mForceMeasure = true;
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

    public void setBothStates(View view) {
        MotionPaths motionPaths = this.mStartMotionPath;
        motionPaths.time = 0.0f;
        motionPaths.position = 0.0f;
        this.mNoMovement = true;
        motionPaths.setBounds(view.getX(), view.getY(), view.getWidth(), view.getHeight());
        this.mEndMotionPath.setBounds(view.getX(), view.getY(), view.getWidth(), view.getHeight());
        this.mStartPoint.setState(view);
        this.mEndPoint.setState(view);
    }

    public void setDrawPath(int r22) {
        this.mStartMotionPath.mDrawPath = r22;
    }

    public void setEndState(Rect rect, ConstraintSet constraintSet, int r10, int r11) {
        int r6 = constraintSet.mRotate;
        if (r6 != 0) {
            rotate(rect, this.mTempRect, r6, r10, r11);
            rect = this.mTempRect;
        }
        MotionPaths motionPaths = this.mEndMotionPath;
        motionPaths.time = 1.0f;
        motionPaths.position = 1.0f;
        readView(motionPaths);
        this.mEndMotionPath.setBounds(rect.left, rect.top, rect.width(), rect.height());
        this.mEndMotionPath.applyParameters(constraintSet.getParameters(this.mId));
        this.mEndPoint.setState(rect, constraintSet, r6, this.mId);
    }

    public void setPathMotionArc(int r12) {
        this.mPathMotionArc = r12;
    }

    public void setStartCurrentState(View view) {
        MotionPaths motionPaths = this.mStartMotionPath;
        motionPaths.time = 0.0f;
        motionPaths.position = 0.0f;
        motionPaths.setBounds(view.getX(), view.getY(), view.getWidth(), view.getHeight());
        this.mStartPoint.setState(view);
    }

    public void setStartState(Rect rect, ConstraintSet constraintSet, int r10, int r11) {
        int r6 = constraintSet.mRotate;
        if (r6 != 0) {
            rotate(rect, this.mTempRect, r6, r10, r11);
        }
        MotionPaths motionPaths = this.mStartMotionPath;
        motionPaths.time = 0.0f;
        motionPaths.position = 0.0f;
        readView(motionPaths);
        this.mStartMotionPath.setBounds(rect.left, rect.top, rect.width(), rect.height());
        ConstraintSet.Constraint parameters = constraintSet.getParameters(this.mId);
        this.mStartMotionPath.applyParameters(parameters);
        this.mMotionStagger = parameters.motion.mMotionStagger;
        this.mStartPoint.setState(rect, constraintSet, r6, this.mId);
        this.mTransformPivotTarget = parameters.transform.transformPivotTarget;
        ConstraintSet.Motion motion = parameters.motion;
        this.mQuantizeMotionSteps = motion.mQuantizeMotionSteps;
        this.mQuantizeMotionPhase = motion.mQuantizeMotionPhase;
        Context context = this.mView.getContext();
        ConstraintSet.Motion motion2 = parameters.motion;
        this.mQuantizeMotionInterpolator = getInterpolator(context, motion2.mQuantizeInterpolatorType, motion2.mQuantizeInterpolatorString, motion2.mQuantizeInterpolatorID);
    }

    public void setStartState(ViewState viewState, View view, int r72, int r82, int r92) {
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
            this.mStartPoint.setState(rect, view, r72, viewState.rotation);
        }
        int r93 = viewState.left + viewState.right;
        rect.left = ((viewState.top + viewState.bottom) - viewState.width()) / 2;
        r83 = r82 - ((viewState.height() + r93) / 2);
        rect.top = r83;
        rect.right = viewState.width() + rect.left;
        rect.bottom = viewState.height() + rect.top;
        this.mStartMotionPath.setBounds(rect.left, rect.top, rect.width(), rect.height());
        this.mStartPoint.setState(rect, view, r72, viewState.rotation);
    }

    public void setTransformPivotTarget(int r12) {
        this.mTransformPivotTarget = r12;
        this.mTransformPivotView = null;
    }

    public void setView(View view) {
        this.mView = view;
        this.mId = view.getId();
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams instanceof ConstraintLayout.LayoutParams) {
            this.mConstraintTag = ((ConstraintLayout.LayoutParams) layoutParams).getConstraintTag();
        }
    }

    public void setup(int r17, int r18, float f, long j10) {
        ArrayList arrayList;
        String[] strArr;
        MotionPaths[] motionPathsArr;
        ConstraintAttribute constraintAttribute;
        ViewTimeCycle viewTimeCycleMakeSpline;
        ConstraintAttribute constraintAttribute2;
        Integer num;
        ViewSpline viewSplineMakeSpline;
        ConstraintAttribute constraintAttribute3;
        new HashSet();
        HashSet<String> hashSet = new HashSet<>();
        HashSet<String> hashSet2 = new HashSet<>();
        HashSet<String> hashSet3 = new HashSet<>();
        HashMap<String, Integer> map = new HashMap<>();
        int r52 = this.mPathMotionArc;
        if (r52 != Key.UNSET) {
            this.mStartMotionPath.mPathMotionArc = r52;
        }
        this.mStartPoint.different(this.mEndPoint, hashSet2);
        ArrayList<Key> arrayList2 = this.mKeyList;
        if (arrayList2 != null) {
            Iterator<Key> it = arrayList2.iterator();
            arrayList = null;
            while (it.hasNext()) {
                Key next = it.next();
                if (next instanceof KeyPosition) {
                    KeyPosition keyPosition = (KeyPosition) next;
                    insertKey(new MotionPaths(r17, r18, keyPosition, this.mStartMotionPath, this.mEndMotionPath));
                    int r72 = keyPosition.mCurveFit;
                    if (r72 != Key.UNSET) {
                        this.mCurveFitType = r72;
                    }
                } else if (next instanceof KeyCycle) {
                    next.getAttributeNames(hashSet3);
                } else if (next instanceof KeyTimeCycle) {
                    next.getAttributeNames(hashSet);
                } else if (next instanceof KeyTrigger) {
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    arrayList.add((KeyTrigger) next);
                } else {
                    next.setInterpolation(map);
                    next.getAttributeNames(hashSet2);
                }
            }
        } else {
            arrayList = null;
        }
        char c10 = 0;
        if (arrayList != null) {
            this.mKeyTriggers = (KeyTrigger[]) arrayList.toArray(new KeyTrigger[0]);
        }
        char c11 = 1;
        if (!hashSet2.isEmpty()) {
            this.mAttributesMap = new HashMap<>();
            Iterator<String> it2 = hashSet2.iterator();
            while (it2.hasNext()) {
                String next2 = it2.next();
                if (next2.startsWith("CUSTOM,")) {
                    SparseArray sparseArray = new SparseArray();
                    String str = next2.split(",")[1];
                    Iterator<Key> it3 = this.mKeyList.iterator();
                    while (it3.hasNext()) {
                        Key next3 = it3.next();
                        HashMap<String, ConstraintAttribute> map2 = next3.mCustomConstraints;
                        if (map2 != null && (constraintAttribute3 = map2.get(str)) != null) {
                            sparseArray.append(next3.mFramePosition, constraintAttribute3);
                        }
                    }
                    viewSplineMakeSpline = ViewSpline.makeCustomSpline(next2, (SparseArray<ConstraintAttribute>) sparseArray);
                } else {
                    viewSplineMakeSpline = ViewSpline.makeSpline(next2);
                }
                if (viewSplineMakeSpline != null) {
                    viewSplineMakeSpline.setType(next2);
                    this.mAttributesMap.put(next2, viewSplineMakeSpline);
                }
            }
            ArrayList<Key> arrayList3 = this.mKeyList;
            if (arrayList3 != null) {
                Iterator<Key> it4 = arrayList3.iterator();
                while (it4.hasNext()) {
                    Key next4 = it4.next();
                    if (next4 instanceof KeyAttributes) {
                        next4.addValues(this.mAttributesMap);
                    }
                }
            }
            this.mStartPoint.addValues(this.mAttributesMap, 0);
            this.mEndPoint.addValues(this.mAttributesMap, 100);
            for (String str2 : this.mAttributesMap.keySet()) {
                int r11 = (!map.containsKey(str2) || (num = map.get(str2)) == null) ? 0 : num.intValue();
                ViewSpline viewSpline = this.mAttributesMap.get(str2);
                if (viewSpline != null) {
                    viewSpline.setup(r11);
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
                        SparseArray sparseArray2 = new SparseArray();
                        String str3 = next5.split(",")[1];
                        Iterator<Key> it6 = this.mKeyList.iterator();
                        while (it6.hasNext()) {
                            Key next6 = it6.next();
                            HashMap<String, ConstraintAttribute> map3 = next6.mCustomConstraints;
                            if (map3 != null && (constraintAttribute2 = map3.get(str3)) != null) {
                                sparseArray2.append(next6.mFramePosition, constraintAttribute2);
                            }
                        }
                        viewTimeCycleMakeSpline = ViewTimeCycle.makeCustomSpline(next5, sparseArray2);
                    } else {
                        viewTimeCycleMakeSpline = ViewTimeCycle.makeSpline(next5, j10);
                    }
                    if (viewTimeCycleMakeSpline != null) {
                        viewTimeCycleMakeSpline.setType(next5);
                        this.mTimeCycleAttributesMap.put(next5, viewTimeCycleMakeSpline);
                    }
                }
            }
            ArrayList<Key> arrayList4 = this.mKeyList;
            if (arrayList4 != null) {
                Iterator<Key> it7 = arrayList4.iterator();
                while (it7.hasNext()) {
                    Key next7 = it7.next();
                    if (next7 instanceof KeyTimeCycle) {
                        ((KeyTimeCycle) next7).addTimeValues(this.mTimeCycleAttributesMap);
                    }
                }
            }
            for (String str4 : this.mTimeCycleAttributesMap.keySet()) {
                this.mTimeCycleAttributesMap.get(str4).setup(map.containsKey(str4) ? map.get(str4).intValue() : 0);
            }
        }
        int r42 = 2;
        int size = this.mMotionPaths.size() + 2;
        MotionPaths[] motionPathsArr2 = new MotionPaths[size];
        motionPathsArr2[0] = this.mStartMotionPath;
        motionPathsArr2[size - 1] = this.mEndMotionPath;
        if (this.mMotionPaths.size() > 0 && this.mCurveFitType == -1) {
            this.mCurveFitType = 0;
        }
        Iterator<MotionPaths> it8 = this.mMotionPaths.iterator();
        int r10 = 1;
        while (it8.hasNext()) {
            motionPathsArr2[r10] = it8.next();
            r10++;
        }
        HashSet hashSet4 = new HashSet();
        for (String str5 : this.mEndMotionPath.attributes.keySet()) {
            if (this.mStartMotionPath.attributes.containsKey(str5)) {
                if (!hashSet2.contains("CUSTOM," + str5)) {
                    hashSet4.add(str5);
                }
            }
        }
        String[] strArr2 = (String[]) hashSet4.toArray(new String[0]);
        this.mAttributeNames = strArr2;
        this.mAttributeInterpolatorCount = new int[strArr2.length];
        int r22 = 0;
        while (true) {
            strArr = this.mAttributeNames;
            if (r22 >= strArr.length) {
                break;
            }
            String str6 = strArr[r22];
            this.mAttributeInterpolatorCount[r22] = 0;
            int r82 = 0;
            while (true) {
                if (r82 >= size) {
                    break;
                }
                if (motionPathsArr2[r82].attributes.containsKey(str6) && (constraintAttribute = motionPathsArr2[r82].attributes.get(str6)) != null) {
                    int[] r73 = this.mAttributeInterpolatorCount;
                    r73[r22] = constraintAttribute.numberOfInterpolatedValues() + r73[r22];
                    break;
                }
                r82++;
            }
            r22++;
        }
        boolean z10 = motionPathsArr2[0].mPathMotionArc != Key.UNSET;
        int length = strArr.length + 18;
        boolean[] zArr = new boolean[length];
        for (int r102 = 1; r102 < size; r102++) {
            motionPathsArr2[r102].different(motionPathsArr2[r102 - 1], zArr, this.mAttributeNames, z10);
        }
        int r103 = 0;
        for (int r23 = 1; r23 < length; r23++) {
            if (zArr[r23]) {
                r103++;
            }
        }
        this.mInterpolateVariables = new int[r103];
        int r24 = Math.max(2, r103);
        this.mInterpolateData = new double[r24];
        this.mInterpolateVelocity = new double[r24];
        int r104 = 0;
        for (int r25 = 1; r25 < length; r25++) {
            if (zArr[r25]) {
                this.mInterpolateVariables[r104] = r25;
                r104++;
            }
        }
        double[][] dArr = (double[][]) Array.newInstance((Class<?>) Double.TYPE, size, this.mInterpolateVariables.length);
        double[] dArr2 = new double[size];
        for (int r83 = 0; r83 < size; r83++) {
            motionPathsArr2[r83].fillStandard(dArr[r83], this.mInterpolateVariables);
            dArr2[r83] = motionPathsArr2[r83].time;
        }
        int r84 = 0;
        while (true) {
            int[] r105 = this.mInterpolateVariables;
            if (r84 >= r105.length) {
                break;
            }
            if (r105[r84] < MotionPaths.names.length) {
                String strH = c.h(new StringBuilder(), MotionPaths.names[this.mInterpolateVariables[r84]], " [");
                for (int r112 = 0; r112 < size; r112++) {
                    StringBuilder sbE = androidx.constraintlayout.core.a.e(strH);
                    sbE.append(dArr[r112][r84]);
                    strH = sbE.toString();
                }
            }
            r84++;
        }
        this.mSpline = new CurveFit[this.mAttributeNames.length + 1];
        int r85 = 0;
        while (true) {
            String[] strArr3 = this.mAttributeNames;
            if (r85 >= strArr3.length) {
                break;
            }
            String str7 = strArr3[r85];
            int r113 = 0;
            double[] dArr3 = null;
            int r13 = 0;
            double[][] dArr4 = null;
            while (r113 < size) {
                if (motionPathsArr2[r113].hasCustomData(str7)) {
                    if (dArr4 == null) {
                        dArr3 = new double[size];
                        int[] r43 = new int[r42];
                        r43[c11] = motionPathsArr2[r113].getCustomDataCount(str7);
                        r43[c10] = size;
                        dArr4 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, r43);
                    }
                    MotionPaths motionPaths = motionPathsArr2[r113];
                    motionPathsArr = motionPathsArr2;
                    dArr3[r13] = motionPaths.time;
                    motionPaths.getCustomData(str7, dArr4[r13], 0);
                    r13++;
                } else {
                    motionPathsArr = motionPathsArr2;
                }
                r113++;
                r42 = 2;
                c10 = 0;
                motionPathsArr2 = motionPathsArr;
                c11 = 1;
            }
            r85++;
            this.mSpline[r85] = CurveFit.get(this.mCurveFitType, Arrays.copyOf(dArr3, r13), (double[][]) Arrays.copyOf(dArr4, r13));
            r42 = 2;
            c10 = 0;
            motionPathsArr2 = motionPathsArr2;
            c11 = 1;
        }
        MotionPaths[] motionPathsArr3 = motionPathsArr2;
        this.mSpline[0] = CurveFit.get(this.mCurveFitType, dArr2, dArr);
        if (motionPathsArr3[0].mPathMotionArc != Key.UNSET) {
            int[] r26 = new int[size];
            double[] dArr5 = new double[size];
            double[][] dArr6 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, size, 2);
            for (int r6 = 0; r6 < size; r6++) {
                r26[r6] = motionPathsArr3[r6].mPathMotionArc;
                dArr5[r6] = r7.time;
                double[] dArr7 = dArr6[r6];
                dArr7[0] = r7.f886x;
                dArr7[1] = r7.f887y;
            }
            this.mArcSpline = CurveFit.getArc(r26, dArr5, dArr6);
        }
        this.mCycleMap = new HashMap<>();
        if (this.mKeyList != null) {
            Iterator<String> it9 = hashSet3.iterator();
            float preCycleDistance = Float.NaN;
            while (it9.hasNext()) {
                String next8 = it9.next();
                ViewOscillator viewOscillatorMakeSpline = ViewOscillator.makeSpline(next8);
                if (viewOscillatorMakeSpline != null) {
                    if (viewOscillatorMakeSpline.variesByPath() && Float.isNaN(preCycleDistance)) {
                        preCycleDistance = getPreCycleDistance();
                    }
                    viewOscillatorMakeSpline.setType(next8);
                    this.mCycleMap.put(next8, viewOscillatorMakeSpline);
                }
            }
            Iterator<Key> it10 = this.mKeyList.iterator();
            while (it10.hasNext()) {
                Key next9 = it10.next();
                if (next9 instanceof KeyCycle) {
                    ((KeyCycle) next9).addCycleValues(this.mCycleMap);
                }
            }
            Iterator<ViewOscillator> it11 = this.mCycleMap.values().iterator();
            while (it11.hasNext()) {
                it11.next().setup(preCycleDistance);
            }
        }
    }

    public void setupRelative(MotionController motionController) {
        this.mStartMotionPath.setupRelative(motionController, motionController.mStartMotionPath);
        this.mEndMotionPath.setupRelative(motionController, motionController.mEndMotionPath);
    }

    public String toString() {
        return " start: x: " + this.mStartMotionPath.f886x + " y: " + this.mStartMotionPath.f887y + " end: x: " + this.mEndMotionPath.f886x + " y: " + this.mEndMotionPath.f887y;
    }
}
