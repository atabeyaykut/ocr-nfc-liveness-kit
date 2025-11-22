package androidx.constraintlayout.core.motion;

import androidx.constraintlayout.core.motion.utils.Easing;
import androidx.constraintlayout.core.motion.utils.Rect;
import androidx.constraintlayout.core.motion.utils.SplineSet;
import androidx.constraintlayout.core.motion.utils.Utils;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashMap;

/* loaded from: classes.dex */
class MotionConstrainedPoint implements Comparable<MotionConstrainedPoint> {
    static final int CARTESIAN = 2;
    public static final boolean DEBUG = false;
    static final int PERPENDICULAR = 1;
    public static final String TAG = "MotionPaths";
    static String[] names = {"position", "x", "y", "width", "height", "pathRotate"};
    private float height;
    private Easing mKeyFrameEasing;
    private float position;
    int visibility;
    private float width;

    /* renamed from: x, reason: collision with root package name */
    private float f869x;

    /* renamed from: y, reason: collision with root package name */
    private float f870y;
    private float alpha = 1.0f;
    int mVisibilityMode = 0;
    private boolean applyElevation = false;
    private float elevation = 0.0f;
    private float rotation = 0.0f;
    private float rotationX = 0.0f;
    public float rotationY = 0.0f;
    private float scaleX = 1.0f;
    private float scaleY = 1.0f;
    private float mPivotX = Float.NaN;
    private float mPivotY = Float.NaN;
    private float translationX = 0.0f;
    private float translationY = 0.0f;
    private float translationZ = 0.0f;
    private int mDrawPath = 0;
    private float mPathRotate = Float.NaN;
    private float mProgress = Float.NaN;
    private int mAnimateRelativeTo = -1;
    LinkedHashMap<String, CustomVariable> mCustomVariable = new LinkedHashMap<>();
    int mMode = 0;
    double[] mTempValue = new double[18];
    double[] mTempDelta = new double[18];

    private boolean diff(float f, float f10) {
        return (Float.isNaN(f) || Float.isNaN(f10)) ? Float.isNaN(f) != Float.isNaN(f10) : Math.abs(f - f10) > 1.0E-6f;
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public void addValues(HashMap<String, SplineSet> map, int r92) {
        String strConcat;
        for (String str : map.keySet()) {
            SplineSet splineSet = map.get(str);
            str.getClass();
            char c10 = 65535;
            switch (str.hashCode()) {
                case -1249320806:
                    if (str.equals("rotationX")) {
                        c10 = 0;
                        break;
                    }
                    break;
                case -1249320805:
                    if (str.equals("rotationY")) {
                        c10 = 1;
                        break;
                    }
                    break;
                case -1249320804:
                    if (str.equals("rotationZ")) {
                        c10 = 2;
                        break;
                    }
                    break;
                case -1225497657:
                    if (str.equals("translationX")) {
                        c10 = 3;
                        break;
                    }
                    break;
                case -1225497656:
                    if (str.equals("translationY")) {
                        c10 = 4;
                        break;
                    }
                    break;
                case -1225497655:
                    if (str.equals("translationZ")) {
                        c10 = 5;
                        break;
                    }
                    break;
                case -1001078227:
                    if (str.equals("progress")) {
                        c10 = 6;
                        break;
                    }
                    break;
                case -987906986:
                    if (str.equals("pivotX")) {
                        c10 = 7;
                        break;
                    }
                    break;
                case -987906985:
                    if (str.equals("pivotY")) {
                        c10 = '\b';
                        break;
                    }
                    break;
                case -908189618:
                    if (str.equals("scaleX")) {
                        c10 = '\t';
                        break;
                    }
                    break;
                case -908189617:
                    if (str.equals("scaleY")) {
                        c10 = '\n';
                        break;
                    }
                    break;
                case 92909918:
                    if (str.equals("alpha")) {
                        c10 = 11;
                        break;
                    }
                    break;
                case 803192288:
                    if (str.equals("pathRotate")) {
                        c10 = '\f';
                        break;
                    }
                    break;
            }
            float f = 1.0f;
            float f10 = 0.0f;
            switch (c10) {
                case 0:
                    if (!Float.isNaN(this.rotationX)) {
                        f10 = this.rotationX;
                    }
                    splineSet.setPoint(r92, f10);
                    break;
                case 1:
                    if (!Float.isNaN(this.rotationY)) {
                        f10 = this.rotationY;
                    }
                    splineSet.setPoint(r92, f10);
                    break;
                case 2:
                    if (!Float.isNaN(this.rotation)) {
                        f10 = this.rotation;
                    }
                    splineSet.setPoint(r92, f10);
                    break;
                case 3:
                    if (!Float.isNaN(this.translationX)) {
                        f10 = this.translationX;
                    }
                    splineSet.setPoint(r92, f10);
                    break;
                case 4:
                    if (!Float.isNaN(this.translationY)) {
                        f10 = this.translationY;
                    }
                    splineSet.setPoint(r92, f10);
                    break;
                case 5:
                    if (!Float.isNaN(this.translationZ)) {
                        f10 = this.translationZ;
                    }
                    splineSet.setPoint(r92, f10);
                    break;
                case 6:
                    if (!Float.isNaN(this.mProgress)) {
                        f10 = this.mProgress;
                    }
                    splineSet.setPoint(r92, f10);
                    break;
                case 7:
                    if (!Float.isNaN(this.mPivotX)) {
                        f10 = this.mPivotX;
                    }
                    splineSet.setPoint(r92, f10);
                    break;
                case '\b':
                    if (!Float.isNaN(this.mPivotY)) {
                        f10 = this.mPivotY;
                    }
                    splineSet.setPoint(r92, f10);
                    break;
                case '\t':
                    if (!Float.isNaN(this.scaleX)) {
                        f = this.scaleX;
                    }
                    splineSet.setPoint(r92, f);
                    break;
                case '\n':
                    if (!Float.isNaN(this.scaleY)) {
                        f = this.scaleY;
                    }
                    splineSet.setPoint(r92, f);
                    break;
                case 11:
                    if (!Float.isNaN(this.alpha)) {
                        f = this.alpha;
                    }
                    splineSet.setPoint(r92, f);
                    break;
                case '\f':
                    if (!Float.isNaN(this.mPathRotate)) {
                        f10 = this.mPathRotate;
                    }
                    splineSet.setPoint(r92, f10);
                    break;
                default:
                    if (str.startsWith("CUSTOM")) {
                        String str2 = str.split(",")[1];
                        if (!this.mCustomVariable.containsKey(str2)) {
                            break;
                        } else {
                            CustomVariable customVariable = this.mCustomVariable.get(str2);
                            if (splineSet instanceof SplineSet.CustomSpline) {
                                ((SplineSet.CustomSpline) splineSet).setPoint(r92, customVariable);
                                break;
                            } else {
                                strConcat = str + " ViewSpline not a CustomSet frame = " + r92 + ", value" + customVariable.getValueToInterpolate() + splineSet;
                            }
                        }
                    } else {
                        strConcat = "UNKNOWN spline ".concat(str);
                    }
                    Utils.loge("MotionPaths", strConcat);
                    break;
            }
        }
    }

    public void applyParameters(MotionWidget motionWidget) {
        this.visibility = motionWidget.getVisibility();
        this.alpha = motionWidget.getVisibility() != 4 ? 0.0f : motionWidget.getAlpha();
        this.applyElevation = false;
        this.rotation = motionWidget.getRotationZ();
        this.rotationX = motionWidget.getRotationX();
        this.rotationY = motionWidget.getRotationY();
        this.scaleX = motionWidget.getScaleX();
        this.scaleY = motionWidget.getScaleY();
        this.mPivotX = motionWidget.getPivotX();
        this.mPivotY = motionWidget.getPivotY();
        this.translationX = motionWidget.getTranslationX();
        this.translationY = motionWidget.getTranslationY();
        this.translationZ = motionWidget.getTranslationZ();
        for (String str : motionWidget.getCustomAttributeNames()) {
            CustomVariable customAttribute = motionWidget.getCustomAttribute(str);
            if (customAttribute != null && customAttribute.isContinuous()) {
                this.mCustomVariable.put(str, customAttribute);
            }
        }
    }

    @Override // java.lang.Comparable
    public int compareTo(MotionConstrainedPoint motionConstrainedPoint) {
        return Float.compare(this.position, motionConstrainedPoint.position);
    }

    public void different(MotionConstrainedPoint motionConstrainedPoint, HashSet<String> hashSet) {
        if (diff(this.alpha, motionConstrainedPoint.alpha)) {
            hashSet.add("alpha");
        }
        if (diff(this.elevation, motionConstrainedPoint.elevation)) {
            hashSet.add("translationZ");
        }
        int r02 = this.visibility;
        int r32 = motionConstrainedPoint.visibility;
        if (r02 != r32 && this.mVisibilityMode == 0 && (r02 == 4 || r32 == 4)) {
            hashSet.add("alpha");
        }
        if (diff(this.rotation, motionConstrainedPoint.rotation)) {
            hashSet.add("rotationZ");
        }
        if (!Float.isNaN(this.mPathRotate) || !Float.isNaN(motionConstrainedPoint.mPathRotate)) {
            hashSet.add("pathRotate");
        }
        if (!Float.isNaN(this.mProgress) || !Float.isNaN(motionConstrainedPoint.mProgress)) {
            hashSet.add("progress");
        }
        if (diff(this.rotationX, motionConstrainedPoint.rotationX)) {
            hashSet.add("rotationX");
        }
        if (diff(this.rotationY, motionConstrainedPoint.rotationY)) {
            hashSet.add("rotationY");
        }
        if (diff(this.mPivotX, motionConstrainedPoint.mPivotX)) {
            hashSet.add("pivotX");
        }
        if (diff(this.mPivotY, motionConstrainedPoint.mPivotY)) {
            hashSet.add("pivotY");
        }
        if (diff(this.scaleX, motionConstrainedPoint.scaleX)) {
            hashSet.add("scaleX");
        }
        if (diff(this.scaleY, motionConstrainedPoint.scaleY)) {
            hashSet.add("scaleY");
        }
        if (diff(this.translationX, motionConstrainedPoint.translationX)) {
            hashSet.add("translationX");
        }
        if (diff(this.translationY, motionConstrainedPoint.translationY)) {
            hashSet.add("translationY");
        }
        if (diff(this.translationZ, motionConstrainedPoint.translationZ)) {
            hashSet.add("translationZ");
        }
        if (diff(this.elevation, motionConstrainedPoint.elevation)) {
            hashSet.add("elevation");
        }
    }

    public void different(MotionConstrainedPoint motionConstrainedPoint, boolean[] zArr, String[] strArr) {
        zArr[0] = zArr[0] | diff(this.position, motionConstrainedPoint.position);
        zArr[1] = zArr[1] | diff(this.f869x, motionConstrainedPoint.f869x);
        zArr[2] = zArr[2] | diff(this.f870y, motionConstrainedPoint.f870y);
        zArr[3] = zArr[3] | diff(this.width, motionConstrainedPoint.width);
        zArr[4] = diff(this.height, motionConstrainedPoint.height) | zArr[4];
    }

    public void fillStandard(double[] dArr, int[] r10) {
        float[] fArr = {this.position, this.f869x, this.f870y, this.width, this.height, this.alpha, this.elevation, this.rotation, this.rotationX, this.rotationY, this.scaleX, this.scaleY, this.mPivotX, this.mPivotY, this.translationX, this.translationY, this.translationZ, this.mPathRotate};
        int r22 = 0;
        for (int r02 : r10) {
            if (r02 < 18) {
                dArr[r22] = fArr[r4];
                r22++;
            }
        }
    }

    public int getCustomData(String str, double[] dArr, int r82) {
        CustomVariable customVariable = this.mCustomVariable.get(str);
        if (customVariable.numberOfInterpolatedValues() == 1) {
            dArr[r82] = customVariable.getValueToInterpolate();
            return 1;
        }
        int r02 = customVariable.numberOfInterpolatedValues();
        customVariable.getValuesToInterpolate(new float[r02]);
        int r6 = 0;
        while (r6 < r02) {
            dArr[r82] = r1[r6];
            r6++;
            r82++;
        }
        return r02;
    }

    public int getCustomDataCount(String str) {
        return this.mCustomVariable.get(str).numberOfInterpolatedValues();
    }

    public boolean hasCustomData(String str) {
        return this.mCustomVariable.containsKey(str);
    }

    public void setBounds(float f, float f10, float f11, float f12) {
        this.f869x = f;
        this.f870y = f10;
        this.width = f11;
        this.height = f12;
    }

    public void setState(MotionWidget motionWidget) {
        setBounds(motionWidget.getX(), motionWidget.getY(), motionWidget.getWidth(), motionWidget.getHeight());
        applyParameters(motionWidget);
    }

    public void setState(Rect rect, MotionWidget motionWidget, int r6, float f) {
        float f10;
        setBounds(rect.left, rect.top, rect.width(), rect.height());
        applyParameters(motionWidget);
        this.mPivotX = Float.NaN;
        this.mPivotY = Float.NaN;
        if (r6 == 1) {
            f10 = f - 90.0f;
        } else if (r6 != 2) {
            return;
        } else {
            f10 = f + 90.0f;
        }
        this.rotation = f10;
    }
}
