package androidx.constraintlayout.motion.widget;

import android.graphics.Rect;
import android.util.Log;
import android.view.View;
import androidx.constraintlayout.core.motion.utils.Easing;
import androidx.constraintlayout.motion.utils.ViewSpline;
import androidx.constraintlayout.widget.ConstraintAttribute;
import androidx.constraintlayout.widget.ConstraintSet;
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
    private float f883x;

    /* renamed from: y, reason: collision with root package name */
    private float f884y;
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
    LinkedHashMap<String, ConstraintAttribute> attributes = new LinkedHashMap<>();
    int mMode = 0;
    double[] mTempValue = new double[18];
    double[] mTempDelta = new double[18];

    private boolean diff(float f, float f10) {
        return (Float.isNaN(f) || Float.isNaN(f10)) ? Float.isNaN(f) != Float.isNaN(f10) : Math.abs(f - f10) > 1.0E-6f;
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public void addValues(HashMap<String, ViewSpline> map, int r92) {
        String strConcat;
        for (String str : map.keySet()) {
            ViewSpline viewSpline = map.get(str);
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
                case -1225497657:
                    if (str.equals("translationX")) {
                        c10 = 2;
                        break;
                    }
                    break;
                case -1225497656:
                    if (str.equals("translationY")) {
                        c10 = 3;
                        break;
                    }
                    break;
                case -1225497655:
                    if (str.equals("translationZ")) {
                        c10 = 4;
                        break;
                    }
                    break;
                case -1001078227:
                    if (str.equals("progress")) {
                        c10 = 5;
                        break;
                    }
                    break;
                case -908189618:
                    if (str.equals("scaleX")) {
                        c10 = 6;
                        break;
                    }
                    break;
                case -908189617:
                    if (str.equals("scaleY")) {
                        c10 = 7;
                        break;
                    }
                    break;
                case -760884510:
                    if (str.equals(Key.PIVOT_X)) {
                        c10 = '\b';
                        break;
                    }
                    break;
                case -760884509:
                    if (str.equals(Key.PIVOT_Y)) {
                        c10 = '\t';
                        break;
                    }
                    break;
                case -40300674:
                    if (str.equals(Key.ROTATION)) {
                        c10 = '\n';
                        break;
                    }
                    break;
                case -4379043:
                    if (str.equals("elevation")) {
                        c10 = 11;
                        break;
                    }
                    break;
                case 37232917:
                    if (str.equals("transitionPathRotate")) {
                        c10 = '\f';
                        break;
                    }
                    break;
                case 92909918:
                    if (str.equals("alpha")) {
                        c10 = '\r';
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
                    viewSpline.setPoint(r92, f10);
                    break;
                case 1:
                    if (!Float.isNaN(this.rotationY)) {
                        f10 = this.rotationY;
                    }
                    viewSpline.setPoint(r92, f10);
                    break;
                case 2:
                    if (!Float.isNaN(this.translationX)) {
                        f10 = this.translationX;
                    }
                    viewSpline.setPoint(r92, f10);
                    break;
                case 3:
                    if (!Float.isNaN(this.translationY)) {
                        f10 = this.translationY;
                    }
                    viewSpline.setPoint(r92, f10);
                    break;
                case 4:
                    if (!Float.isNaN(this.translationZ)) {
                        f10 = this.translationZ;
                    }
                    viewSpline.setPoint(r92, f10);
                    break;
                case 5:
                    if (!Float.isNaN(this.mProgress)) {
                        f10 = this.mProgress;
                    }
                    viewSpline.setPoint(r92, f10);
                    break;
                case 6:
                    if (!Float.isNaN(this.scaleX)) {
                        f = this.scaleX;
                    }
                    viewSpline.setPoint(r92, f);
                    break;
                case 7:
                    if (!Float.isNaN(this.scaleY)) {
                        f = this.scaleY;
                    }
                    viewSpline.setPoint(r92, f);
                    break;
                case '\b':
                    if (!Float.isNaN(this.mPivotX)) {
                        f10 = this.mPivotX;
                    }
                    viewSpline.setPoint(r92, f10);
                    break;
                case '\t':
                    if (!Float.isNaN(this.mPivotY)) {
                        f10 = this.mPivotY;
                    }
                    viewSpline.setPoint(r92, f10);
                    break;
                case '\n':
                    if (!Float.isNaN(this.rotation)) {
                        f10 = this.rotation;
                    }
                    viewSpline.setPoint(r92, f10);
                    break;
                case 11:
                    if (!Float.isNaN(this.elevation)) {
                        f10 = this.elevation;
                    }
                    viewSpline.setPoint(r92, f10);
                    break;
                case '\f':
                    if (!Float.isNaN(this.mPathRotate)) {
                        f10 = this.mPathRotate;
                    }
                    viewSpline.setPoint(r92, f10);
                    break;
                case '\r':
                    if (!Float.isNaN(this.alpha)) {
                        f = this.alpha;
                    }
                    viewSpline.setPoint(r92, f);
                    break;
                default:
                    if (str.startsWith("CUSTOM")) {
                        String str2 = str.split(",")[1];
                        if (!this.attributes.containsKey(str2)) {
                            break;
                        } else {
                            ConstraintAttribute constraintAttribute = this.attributes.get(str2);
                            if (viewSpline instanceof ViewSpline.CustomSet) {
                                ((ViewSpline.CustomSet) viewSpline).setPoint(r92, constraintAttribute);
                                break;
                            } else {
                                strConcat = str + " ViewSpline not a CustomSet frame = " + r92 + ", value" + constraintAttribute.getValueToInterpolate() + viewSpline;
                            }
                        }
                    } else {
                        strConcat = "UNKNOWN spline ".concat(str);
                    }
                    Log.e("MotionPaths", strConcat);
                    break;
            }
        }
    }

    public void applyParameters(View view) {
        this.visibility = view.getVisibility();
        this.alpha = view.getVisibility() != 0 ? 0.0f : view.getAlpha();
        this.applyElevation = false;
        this.elevation = view.getElevation();
        this.rotation = view.getRotation();
        this.rotationX = view.getRotationX();
        this.rotationY = view.getRotationY();
        this.scaleX = view.getScaleX();
        this.scaleY = view.getScaleY();
        this.mPivotX = view.getPivotX();
        this.mPivotY = view.getPivotY();
        this.translationX = view.getTranslationX();
        this.translationY = view.getTranslationY();
        this.translationZ = view.getTranslationZ();
    }

    public void applyParameters(ConstraintSet.Constraint constraint) {
        ConstraintSet.PropertySet propertySet = constraint.propertySet;
        int r12 = propertySet.mVisibilityMode;
        this.mVisibilityMode = r12;
        int r22 = propertySet.visibility;
        this.visibility = r22;
        this.alpha = (r22 == 0 || r12 != 0) ? propertySet.alpha : 0.0f;
        ConstraintSet.Transform transform = constraint.transform;
        this.applyElevation = transform.applyElevation;
        this.elevation = transform.elevation;
        this.rotation = transform.rotation;
        this.rotationX = transform.rotationX;
        this.rotationY = transform.rotationY;
        this.scaleX = transform.scaleX;
        this.scaleY = transform.scaleY;
        this.mPivotX = transform.transformPivotX;
        this.mPivotY = transform.transformPivotY;
        this.translationX = transform.translationX;
        this.translationY = transform.translationY;
        this.translationZ = transform.translationZ;
        this.mKeyFrameEasing = Easing.getInterpolator(constraint.motion.mTransitionEasing);
        ConstraintSet.Motion motion = constraint.motion;
        this.mPathRotate = motion.mPathRotate;
        this.mDrawPath = motion.mDrawPath;
        this.mAnimateRelativeTo = motion.mAnimateRelativeTo;
        this.mProgress = constraint.propertySet.mProgress;
        for (String str : constraint.mCustomConstraints.keySet()) {
            ConstraintAttribute constraintAttribute = constraint.mCustomConstraints.get(str);
            if (constraintAttribute.isContinuous()) {
                this.attributes.put(str, constraintAttribute);
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
            hashSet.add("elevation");
        }
        int r02 = this.visibility;
        int r22 = motionConstrainedPoint.visibility;
        if (r02 != r22 && this.mVisibilityMode == 0 && (r02 == 0 || r22 == 0)) {
            hashSet.add("alpha");
        }
        if (diff(this.rotation, motionConstrainedPoint.rotation)) {
            hashSet.add(Key.ROTATION);
        }
        if (!Float.isNaN(this.mPathRotate) || !Float.isNaN(motionConstrainedPoint.mPathRotate)) {
            hashSet.add("transitionPathRotate");
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
            hashSet.add(Key.PIVOT_X);
        }
        if (diff(this.mPivotY, motionConstrainedPoint.mPivotY)) {
            hashSet.add(Key.PIVOT_Y);
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
    }

    public void different(MotionConstrainedPoint motionConstrainedPoint, boolean[] zArr, String[] strArr) {
        zArr[0] = zArr[0] | diff(this.position, motionConstrainedPoint.position);
        zArr[1] = zArr[1] | diff(this.f883x, motionConstrainedPoint.f883x);
        zArr[2] = zArr[2] | diff(this.f884y, motionConstrainedPoint.f884y);
        zArr[3] = zArr[3] | diff(this.width, motionConstrainedPoint.width);
        zArr[4] = diff(this.height, motionConstrainedPoint.height) | zArr[4];
    }

    public void fillStandard(double[] dArr, int[] r10) {
        float[] fArr = {this.position, this.f883x, this.f884y, this.width, this.height, this.alpha, this.elevation, this.rotation, this.rotationX, this.rotationY, this.scaleX, this.scaleY, this.mPivotX, this.mPivotY, this.translationX, this.translationY, this.translationZ, this.mPathRotate};
        int r22 = 0;
        for (int r02 : r10) {
            if (r02 < 18) {
                dArr[r22] = fArr[r4];
                r22++;
            }
        }
    }

    public int getCustomData(String str, double[] dArr, int r82) {
        ConstraintAttribute constraintAttribute = this.attributes.get(str);
        if (constraintAttribute.numberOfInterpolatedValues() == 1) {
            dArr[r82] = constraintAttribute.getValueToInterpolate();
            return 1;
        }
        int r02 = constraintAttribute.numberOfInterpolatedValues();
        constraintAttribute.getValuesToInterpolate(new float[r02]);
        int r6 = 0;
        while (r6 < r02) {
            dArr[r82] = r1[r6];
            r6++;
            r82++;
        }
        return r02;
    }

    public int getCustomDataCount(String str) {
        return this.attributes.get(str).numberOfInterpolatedValues();
    }

    public boolean hasCustomData(String str) {
        return this.attributes.containsKey(str);
    }

    public void setBounds(float f, float f10, float f11, float f12) {
        this.f883x = f;
        this.f884y = f10;
        this.width = f11;
        this.height = f12;
    }

    public void setState(Rect rect, View view, int r6, float f) {
        float f10;
        setBounds(rect.left, rect.top, rect.width(), rect.height());
        applyParameters(view);
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

    public void setState(Rect rect, ConstraintSet constraintSet, int r6, int r72) {
        float f;
        setBounds(rect.left, rect.top, rect.width(), rect.height());
        applyParameters(constraintSet.getParameters(r72));
        float f10 = 90.0f;
        if (r6 == 1) {
            f = this.rotation;
        } else {
            if (r6 != 2) {
                if (r6 != 3) {
                    if (r6 != 4) {
                        return;
                    }
                }
                f = this.rotation;
            }
            f = this.rotation + 90.0f;
            this.rotation = f;
            if (f <= 180.0f) {
                return;
            } else {
                f10 = 360.0f;
            }
        }
        this.rotation = f - f10;
    }

    public void setState(View view) {
        setBounds(view.getX(), view.getY(), view.getWidth(), view.getHeight());
        applyParameters(view);
    }
}
