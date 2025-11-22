package androidx.constraintlayout.core.motion;

import androidx.constraintlayout.core.motion.MotionWidget;
import androidx.constraintlayout.core.motion.key.MotionKeyPosition;
import androidx.constraintlayout.core.motion.utils.Easing;
import java.util.Arrays;
import java.util.HashMap;

/* loaded from: classes.dex */
public class MotionPaths implements Comparable<MotionPaths> {
    public static final int CARTESIAN = 0;
    public static final boolean DEBUG = false;
    static final int OFF_HEIGHT = 4;
    static final int OFF_PATH_ROTATE = 5;
    static final int OFF_POSITION = 0;
    static final int OFF_WIDTH = 3;
    static final int OFF_X = 1;
    static final int OFF_Y = 2;
    public static final boolean OLD_WAY = false;
    public static final int PERPENDICULAR = 1;
    public static final int SCREEN = 2;
    public static final String TAG = "MotionPaths";
    static String[] names = {"position", "x", "y", "width", "height", "pathRotate"};
    HashMap<String, CustomVariable> customAttributes;
    float height;
    int mAnimateCircleAngleTo;
    int mAnimateRelativeTo;
    int mDrawPath;
    Easing mKeyFrameEasing;
    int mMode;
    int mPathMotionArc;
    float mPathRotate;
    float mProgress;
    float mRelativeAngle;
    Motion mRelativeToController;
    double[] mTempDelta;
    double[] mTempValue;
    float position;
    float time;
    float width;

    /* renamed from: x, reason: collision with root package name */
    float f871x;

    /* renamed from: y, reason: collision with root package name */
    float f872y;

    public MotionPaths() {
        this.mDrawPath = 0;
        this.mPathRotate = Float.NaN;
        this.mProgress = Float.NaN;
        this.mPathMotionArc = -1;
        this.mAnimateRelativeTo = -1;
        this.mRelativeAngle = Float.NaN;
        this.mRelativeToController = null;
        this.customAttributes = new HashMap<>();
        this.mMode = 0;
        this.mTempValue = new double[18];
        this.mTempDelta = new double[18];
    }

    public MotionPaths(int r42, int r52, MotionKeyPosition motionKeyPosition, MotionPaths motionPaths, MotionPaths motionPaths2) {
        this.mDrawPath = 0;
        this.mPathRotate = Float.NaN;
        this.mProgress = Float.NaN;
        this.mPathMotionArc = -1;
        this.mAnimateRelativeTo = -1;
        this.mRelativeAngle = Float.NaN;
        this.mRelativeToController = null;
        this.customAttributes = new HashMap<>();
        this.mMode = 0;
        this.mTempValue = new double[18];
        this.mTempDelta = new double[18];
        if (motionPaths.mAnimateRelativeTo != -1) {
            initPolar(r42, r52, motionKeyPosition, motionPaths, motionPaths2);
            return;
        }
        int r02 = motionKeyPosition.mPositionType;
        if (r02 == 1) {
            initPath(motionKeyPosition, motionPaths, motionPaths2);
        } else if (r02 != 2) {
            initCartesian(motionKeyPosition, motionPaths, motionPaths2);
        } else {
            initScreen(r42, r52, motionKeyPosition, motionPaths, motionPaths2);
        }
    }

    private boolean diff(float f, float f10) {
        return (Float.isNaN(f) || Float.isNaN(f10)) ? Float.isNaN(f) != Float.isNaN(f10) : Math.abs(f - f10) > 1.0E-6f;
    }

    private static final float xRotate(float f, float f10, float f11, float f12, float f13, float f14) {
        return (((f13 - f11) * f10) - ((f14 - f12) * f)) + f11;
    }

    private static final float yRotate(float f, float f10, float f11, float f12, float f13, float f14) {
        return ((f14 - f12) * f10) + ((f13 - f11) * f) + f12;
    }

    public void applyParameters(MotionWidget motionWidget) {
        this.mKeyFrameEasing = Easing.getInterpolator(motionWidget.motion.mTransitionEasing);
        MotionWidget.Motion motion = motionWidget.motion;
        this.mPathMotionArc = motion.mPathMotionArc;
        this.mAnimateRelativeTo = motion.mAnimateRelativeTo;
        this.mPathRotate = motion.mPathRotate;
        this.mDrawPath = motion.mDrawPath;
        this.mAnimateCircleAngleTo = motion.mAnimateCircleAngleTo;
        this.mProgress = motionWidget.propertySet.mProgress;
        this.mRelativeAngle = 0.0f;
        for (String str : motionWidget.getCustomAttributeNames()) {
            CustomVariable customAttribute = motionWidget.getCustomAttribute(str);
            if (customAttribute != null && customAttribute.isContinuous()) {
                this.customAttributes.put(str, customAttribute);
            }
        }
    }

    @Override // java.lang.Comparable
    public int compareTo(MotionPaths motionPaths) {
        return Float.compare(this.position, motionPaths.position);
    }

    public void configureRelativeTo(Motion motion) {
        motion.getPos(this.mProgress);
    }

    public void different(MotionPaths motionPaths, boolean[] zArr, String[] strArr, boolean z10) {
        boolean zDiff = diff(this.f871x, motionPaths.f871x);
        boolean zDiff2 = diff(this.f872y, motionPaths.f872y);
        zArr[0] = zArr[0] | diff(this.position, motionPaths.position);
        boolean z11 = zDiff | zDiff2 | z10;
        zArr[1] = zArr[1] | z11;
        zArr[2] = z11 | zArr[2];
        zArr[3] = zArr[3] | diff(this.width, motionPaths.width);
        zArr[4] = diff(this.height, motionPaths.height) | zArr[4];
    }

    public void fillStandard(double[] dArr, int[] r10) {
        float[] fArr = {this.position, this.f871x, this.f872y, this.width, this.height, this.mPathRotate};
        int r22 = 0;
        for (int r02 : r10) {
            if (r02 < 6) {
                dArr[r22] = fArr[r4];
                r22++;
            }
        }
    }

    public void getBounds(int[] r72, double[] dArr, float[] fArr, int r10) {
        float f = this.width;
        float f10 = this.height;
        for (int r22 = 0; r22 < r72.length; r22++) {
            float f11 = (float) dArr[r22];
            int r42 = r72[r22];
            if (r42 == 3) {
                f = f11;
            } else if (r42 == 4) {
                f10 = f11;
            }
        }
        fArr[r10] = f;
        fArr[r10 + 1] = f10;
    }

    public void getCenter(double d10, int[] r18, double[] dArr, float[] fArr, int r21) {
        float fSin = this.f871x;
        float fCos = this.f872y;
        float f = this.width;
        float f10 = this.height;
        for (int r72 = 0; r72 < r18.length; r72++) {
            float f11 = (float) dArr[r72];
            int r11 = r18[r72];
            if (r11 == 1) {
                fSin = f11;
            } else if (r11 == 2) {
                fCos = f11;
            } else if (r11 == 3) {
                f = f11;
            } else if (r11 == 4) {
                f10 = f11;
            }
        }
        Motion motion = this.mRelativeToController;
        if (motion != null) {
            float[] fArr2 = new float[2];
            motion.getCenter(d10, fArr2, new float[2]);
            float f12 = fArr2[0];
            float f13 = fArr2[1];
            double d11 = f12;
            double d12 = fSin;
            double d13 = fCos;
            fSin = (float) (((Math.sin(d13) * d12) + d11) - (f / 2.0f));
            fCos = (float) ((f13 - (Math.cos(d13) * d12)) - (f10 / 2.0f));
        }
        fArr[r21] = (f / 2.0f) + fSin + 0.0f;
        fArr[r21 + 1] = (f10 / 2.0f) + fCos + 0.0f;
    }

    public void getCenter(double d10, int[] r21, double[] dArr, float[] fArr, double[] dArr2, float[] fArr2) {
        float f = this.f871x;
        float fCos = this.f872y;
        float f10 = this.width;
        float f11 = this.height;
        float f12 = 0.0f;
        float f13 = 0.0f;
        float f14 = 0.0f;
        float f15 = 0.0f;
        for (int r82 = 0; r82 < r21.length; r82++) {
            float f16 = (float) dArr[r82];
            float f17 = (float) dArr2[r82];
            int r14 = r21[r82];
            if (r14 == 1) {
                f = f16;
                f12 = f17;
            } else if (r14 == 2) {
                fCos = f16;
                f14 = f17;
            } else if (r14 == 3) {
                f10 = f16;
                f13 = f17;
            } else if (r14 == 4) {
                f11 = f16;
                f15 = f17;
            }
        }
        float f18 = 2.0f;
        float f19 = (f13 / 2.0f) + f12;
        float fSin = (f15 / 2.0f) + f14;
        Motion motion = this.mRelativeToController;
        if (motion != null) {
            float[] fArr3 = new float[2];
            float[] fArr4 = new float[2];
            motion.getCenter(d10, fArr3, fArr4);
            float f20 = fArr3[0];
            float f21 = fArr3[1];
            float f22 = fArr4[0];
            float f23 = fArr4[1];
            double d11 = f;
            double d12 = fCos;
            float fSin2 = (float) (((Math.sin(d12) * d11) + f20) - (f10 / 2.0f));
            fCos = (float) ((f21 - (Math.cos(d12) * d11)) - (f11 / 2.0f));
            double d13 = f12;
            double d14 = f14;
            float fCos2 = (float) ((Math.cos(d12) * d14) + (Math.sin(d12) * d13) + f22);
            fSin = (float) ((Math.sin(d12) * d14) + (f23 - (Math.cos(d12) * d13)));
            f19 = fCos2;
            f = fSin2;
            f18 = 2.0f;
        }
        fArr[0] = (f10 / f18) + f + 0.0f;
        fArr[1] = (f11 / f18) + fCos + 0.0f;
        fArr2[0] = f19;
        fArr2[1] = fSin;
    }

    public void getCenterVelocity(double d10, int[] r18, double[] dArr, float[] fArr, int r21) {
        float fSin = this.f871x;
        float fCos = this.f872y;
        float f = this.width;
        float f10 = this.height;
        for (int r72 = 0; r72 < r18.length; r72++) {
            float f11 = (float) dArr[r72];
            int r11 = r18[r72];
            if (r11 == 1) {
                fSin = f11;
            } else if (r11 == 2) {
                fCos = f11;
            } else if (r11 == 3) {
                f = f11;
            } else if (r11 == 4) {
                f10 = f11;
            }
        }
        Motion motion = this.mRelativeToController;
        if (motion != null) {
            float[] fArr2 = new float[2];
            motion.getCenter(d10, fArr2, new float[2]);
            float f12 = fArr2[0];
            float f13 = fArr2[1];
            double d11 = f12;
            double d12 = fSin;
            double d13 = fCos;
            fSin = (float) (((Math.sin(d13) * d12) + d11) - (f / 2.0f));
            fCos = (float) ((f13 - (Math.cos(d13) * d12)) - (f10 / 2.0f));
        }
        fArr[r21] = (f / 2.0f) + fSin + 0.0f;
        fArr[r21 + 1] = (f10 / 2.0f) + fCos + 0.0f;
    }

    public int getCustomData(String str, double[] dArr, int r82) {
        CustomVariable customVariable = this.customAttributes.get(str);
        int r02 = 0;
        if (customVariable == null) {
            return 0;
        }
        if (customVariable.numberOfInterpolatedValues() == 1) {
            dArr[r82] = customVariable.getValueToInterpolate();
            return 1;
        }
        int r12 = customVariable.numberOfInterpolatedValues();
        customVariable.getValuesToInterpolate(new float[r12]);
        while (r02 < r12) {
            dArr[r82] = r2[r02];
            r02++;
            r82++;
        }
        return r12;
    }

    public int getCustomDataCount(String str) {
        CustomVariable customVariable = this.customAttributes.get(str);
        if (customVariable == null) {
            return 0;
        }
        return customVariable.numberOfInterpolatedValues();
    }

    public void getRect(int[] r11, double[] dArr, float[] fArr, int r14) {
        float f = this.f871x;
        float fCos = this.f872y;
        float f10 = this.width;
        float f11 = this.height;
        for (int r42 = 0; r42 < r11.length; r42++) {
            float f12 = (float) dArr[r42];
            int r6 = r11[r42];
            if (r6 == 1) {
                f = f12;
            } else if (r6 == 2) {
                fCos = f12;
            } else if (r6 == 3) {
                f10 = f12;
            } else if (r6 == 4) {
                f11 = f12;
            }
        }
        Motion motion = this.mRelativeToController;
        if (motion != null) {
            float centerX = motion.getCenterX();
            float centerY = this.mRelativeToController.getCenterY();
            double d10 = f;
            double d11 = fCos;
            float fSin = (float) (((Math.sin(d11) * d10) + centerX) - (f10 / 2.0f));
            fCos = (float) ((centerY - (Math.cos(d11) * d10)) - (f11 / 2.0f));
            f = fSin;
        }
        float f13 = f10 + f;
        float f14 = f11 + fCos;
        Float.isNaN(Float.NaN);
        Float.isNaN(Float.NaN);
        int r112 = r14 + 1;
        fArr[r14] = f + 0.0f;
        int r12 = r112 + 1;
        fArr[r112] = fCos + 0.0f;
        int r113 = r12 + 1;
        fArr[r12] = f13 + 0.0f;
        int r122 = r113 + 1;
        fArr[r113] = fCos + 0.0f;
        int r114 = r122 + 1;
        fArr[r122] = f13 + 0.0f;
        int r123 = r114 + 1;
        fArr[r114] = f14 + 0.0f;
        fArr[r123] = f + 0.0f;
        fArr[r123 + 1] = f14 + 0.0f;
    }

    public boolean hasCustomData(String str) {
        return this.customAttributes.containsKey(str);
    }

    public void initCartesian(MotionKeyPosition motionKeyPosition, MotionPaths motionPaths, MotionPaths motionPaths2) {
        float f = motionKeyPosition.mFramePosition / 100.0f;
        this.time = f;
        this.mDrawPath = motionKeyPosition.mDrawPath;
        float f10 = Float.isNaN(motionKeyPosition.mPercentWidth) ? f : motionKeyPosition.mPercentWidth;
        float f11 = Float.isNaN(motionKeyPosition.mPercentHeight) ? f : motionKeyPosition.mPercentHeight;
        float f12 = motionPaths2.width;
        float f13 = motionPaths.width;
        float f14 = f12 - f13;
        float f15 = motionPaths2.height;
        float f16 = motionPaths.height;
        float f17 = f15 - f16;
        this.position = this.time;
        float f18 = motionPaths.f871x;
        float f19 = motionPaths.f872y;
        float f20 = ((f12 / 2.0f) + motionPaths2.f871x) - ((f13 / 2.0f) + f18);
        float f21 = ((f15 / 2.0f) + motionPaths2.f872y) - ((f16 / 2.0f) + f19);
        float f22 = (f14 * f10) / 2.0f;
        this.f871x = (int) (((f20 * f) + f18) - f22);
        float f23 = (f21 * f) + f19;
        float f24 = (f17 * f11) / 2.0f;
        this.f872y = (int) (f23 - f24);
        this.width = (int) (f13 + r9);
        this.height = (int) (f16 + r12);
        float f25 = Float.isNaN(motionKeyPosition.mPercentX) ? f : motionKeyPosition.mPercentX;
        float f26 = Float.isNaN(motionKeyPosition.mAltPercentY) ? 0.0f : motionKeyPosition.mAltPercentY;
        if (!Float.isNaN(motionKeyPosition.mPercentY)) {
            f = motionKeyPosition.mPercentY;
        }
        float f27 = Float.isNaN(motionKeyPosition.mAltPercentX) ? 0.0f : motionKeyPosition.mAltPercentX;
        this.mMode = 0;
        this.f871x = (int) (((f27 * f21) + ((f25 * f20) + motionPaths.f871x)) - f22);
        this.f872y = (int) (((f21 * f) + ((f20 * f26) + motionPaths.f872y)) - f24);
        this.mKeyFrameEasing = Easing.getInterpolator(motionKeyPosition.mTransitionEasing);
        this.mPathMotionArc = motionKeyPosition.mPathMotionArc;
    }

    public void initPath(MotionKeyPosition motionKeyPosition, MotionPaths motionPaths, MotionPaths motionPaths2) {
        float f = motionKeyPosition.mFramePosition / 100.0f;
        this.time = f;
        this.mDrawPath = motionKeyPosition.mDrawPath;
        float f10 = Float.isNaN(motionKeyPosition.mPercentWidth) ? f : motionKeyPosition.mPercentWidth;
        float f11 = Float.isNaN(motionKeyPosition.mPercentHeight) ? f : motionKeyPosition.mPercentHeight;
        float f12 = motionPaths2.width - motionPaths.width;
        float f13 = motionPaths2.height - motionPaths.height;
        this.position = this.time;
        if (!Float.isNaN(motionKeyPosition.mPercentX)) {
            f = motionKeyPosition.mPercentX;
        }
        float f14 = motionPaths.f871x;
        float f15 = motionPaths.width;
        float f16 = motionPaths.f872y;
        float f17 = motionPaths.height;
        float f18 = ((motionPaths2.width / 2.0f) + motionPaths2.f871x) - ((f15 / 2.0f) + f14);
        float f19 = ((motionPaths2.height / 2.0f) + motionPaths2.f872y) - ((f17 / 2.0f) + f16);
        float f20 = f18 * f;
        float f21 = (f12 * f10) / 2.0f;
        this.f871x = (int) ((f14 + f20) - f21);
        float f22 = f * f19;
        float f23 = (f13 * f11) / 2.0f;
        this.f872y = (int) ((f16 + f22) - f23);
        this.width = (int) (f15 + r7);
        this.height = (int) (f17 + r8);
        float f24 = Float.isNaN(motionKeyPosition.mPercentY) ? 0.0f : motionKeyPosition.mPercentY;
        this.mMode = 1;
        float f25 = (int) ((motionPaths.f871x + f20) - f21);
        float f26 = (int) ((motionPaths.f872y + f22) - f23);
        this.f871x = f25 + ((-f19) * f24);
        this.f872y = f26 + (f18 * f24);
        this.mAnimateRelativeTo = this.mAnimateRelativeTo;
        this.mKeyFrameEasing = Easing.getInterpolator(motionKeyPosition.mTransitionEasing);
        this.mPathMotionArc = motionKeyPosition.mPathMotionArc;
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x00b1  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void initPolar(int r7, int r8, androidx.constraintlayout.core.motion.key.MotionKeyPosition r9, androidx.constraintlayout.core.motion.MotionPaths r10, androidx.constraintlayout.core.motion.MotionPaths r11) {
        /*
            Method dump skipped, instructions count: 206
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.core.motion.MotionPaths.initPolar(int, int, androidx.constraintlayout.core.motion.key.MotionKeyPosition, androidx.constraintlayout.core.motion.MotionPaths, androidx.constraintlayout.core.motion.MotionPaths):void");
    }

    public void initScreen(int r18, int r19, MotionKeyPosition motionKeyPosition, MotionPaths motionPaths, MotionPaths motionPaths2) {
        float f = motionKeyPosition.mFramePosition / 100.0f;
        this.time = f;
        this.mDrawPath = motionKeyPosition.mDrawPath;
        float f10 = Float.isNaN(motionKeyPosition.mPercentWidth) ? f : motionKeyPosition.mPercentWidth;
        float f11 = Float.isNaN(motionKeyPosition.mPercentHeight) ? f : motionKeyPosition.mPercentHeight;
        float f12 = motionPaths2.width;
        float f13 = f12 - motionPaths.width;
        float f14 = motionPaths2.height;
        float f15 = f14 - motionPaths.height;
        this.position = this.time;
        float f16 = motionPaths.f871x;
        float f17 = motionPaths.f872y;
        float f18 = (f12 / 2.0f) + motionPaths2.f871x;
        float f19 = (f14 / 2.0f) + motionPaths2.f872y;
        float f20 = f13 * f10;
        this.f871x = (int) ((((f18 - ((r8 / 2.0f) + f16)) * f) + f16) - (f20 / 2.0f));
        float f21 = f15 * f11;
        this.f872y = (int) ((((f19 - ((r11 / 2.0f) + f17)) * f) + f17) - (f21 / 2.0f));
        this.width = (int) (r8 + f20);
        this.height = (int) (r11 + f21);
        this.mMode = 2;
        if (!Float.isNaN(motionKeyPosition.mPercentX)) {
            this.f871x = (int) (motionKeyPosition.mPercentX * ((int) (r18 - this.width)));
        }
        if (!Float.isNaN(motionKeyPosition.mPercentY)) {
            this.f872y = (int) (motionKeyPosition.mPercentY * ((int) (r19 - this.height)));
        }
        this.mAnimateRelativeTo = this.mAnimateRelativeTo;
        this.mKeyFrameEasing = Easing.getInterpolator(motionKeyPosition.mTransitionEasing);
        this.mPathMotionArc = motionKeyPosition.mPathMotionArc;
    }

    public void setBounds(float f, float f10, float f11, float f12) {
        this.f871x = f;
        this.f872y = f10;
        this.width = f11;
        this.height = f12;
    }

    public void setDpDt(float f, float f10, float[] fArr, int[] r16, double[] dArr, double[] dArr2) {
        float f11 = 0.0f;
        float f12 = 0.0f;
        float f13 = 0.0f;
        float f14 = 0.0f;
        for (int r32 = 0; r32 < r16.length; r32++) {
            float f15 = (float) dArr[r32];
            double d10 = dArr2[r32];
            int r10 = r16[r32];
            if (r10 == 1) {
                f11 = f15;
            } else if (r10 == 2) {
                f13 = f15;
            } else if (r10 == 3) {
                f12 = f15;
            } else if (r10 == 4) {
                f14 = f15;
            }
        }
        float f16 = f11 - ((0.0f * f12) / 2.0f);
        float f17 = f13 - ((0.0f * f14) / 2.0f);
        fArr[0] = (((f12 * 1.0f) + f16) * f) + ((1.0f - f) * f16) + 0.0f;
        fArr[1] = (((f14 * 1.0f) + f17) * f10) + ((1.0f - f10) * f17) + 0.0f;
    }

    public void setView(float f, MotionWidget motionWidget, int[] r23, double[] dArr, double[] dArr2, double[] dArr3) {
        float f10;
        float f11;
        float f12 = this.f871x;
        float f13 = this.f872y;
        float f14 = this.width;
        float f15 = this.height;
        if (r23.length != 0 && this.mTempValue.length <= r23[r23.length - 1]) {
            int r82 = r23[r23.length - 1] + 1;
            this.mTempValue = new double[r82];
            this.mTempDelta = new double[r82];
        }
        Arrays.fill(this.mTempValue, Double.NaN);
        for (int r10 = 0; r10 < r23.length; r10++) {
            double[] dArr4 = this.mTempValue;
            int r12 = r23[r10];
            dArr4[r12] = dArr[r10];
            this.mTempDelta[r12] = dArr2[r10];
        }
        float f16 = Float.NaN;
        int r11 = 0;
        float f17 = 0.0f;
        float f18 = 0.0f;
        float f19 = 0.0f;
        float f20 = 0.0f;
        while (true) {
            double[] dArr5 = this.mTempValue;
            if (r11 >= dArr5.length) {
                break;
            }
            if (Double.isNaN(dArr5[r11]) && (dArr3 == null || dArr3[r11] == 0.0d)) {
                f11 = f16;
            } else {
                double d10 = dArr3 != null ? dArr3[r11] : 0.0d;
                if (!Double.isNaN(this.mTempValue[r11])) {
                    d10 = this.mTempValue[r11] + d10;
                }
                f11 = f16;
                float f21 = (float) d10;
                float f22 = (float) this.mTempDelta[r11];
                if (r11 == 1) {
                    f16 = f11;
                    f17 = f22;
                    f12 = f21;
                } else if (r11 == 2) {
                    f16 = f11;
                    f18 = f22;
                    f13 = f21;
                } else if (r11 == 3) {
                    f16 = f11;
                    f19 = f22;
                    f14 = f21;
                } else if (r11 == 4) {
                    f16 = f11;
                    f20 = f22;
                    f15 = f21;
                } else if (r11 == 5) {
                    f16 = f21;
                }
                r11++;
            }
            f16 = f11;
            r11++;
        }
        float f23 = f16;
        Motion motion = this.mRelativeToController;
        if (motion != null) {
            float[] fArr = new float[2];
            float[] fArr2 = new float[2];
            motion.getCenter(f, fArr, fArr2);
            float f24 = fArr[0];
            float f25 = fArr[1];
            float f26 = fArr2[0];
            float f27 = fArr2[1];
            double d11 = f12;
            double d12 = f13;
            float fSin = (float) (((Math.sin(d12) * d11) + f24) - (f14 / 2.0f));
            float fCos = (float) ((f25 - (Math.cos(d12) * d11)) - (f15 / 2.0f));
            double d13 = f17;
            double d14 = f18;
            float fCos2 = (float) ((Math.cos(d12) * d11 * d14) + (Math.sin(d12) * d13) + f26);
            f10 = f15;
            float fSin2 = (float) ((Math.sin(d12) * d11 * d14) + (f27 - (Math.cos(d12) * d13)));
            if (dArr2.length >= 2) {
                dArr2[0] = fCos2;
                dArr2[1] = fSin2;
            }
            if (!Float.isNaN(f23)) {
                motionWidget.setRotationZ((float) (Math.toDegrees(Math.atan2(fSin2, fCos2)) + f23));
            }
            f12 = fSin;
            f13 = fCos;
        } else {
            f10 = f15;
            if (!Float.isNaN(f23)) {
                motionWidget.setRotationZ((float) (Math.toDegrees(Math.atan2((f20 / 2.0f) + f18, (f19 / 2.0f) + f17)) + f23 + 0.0f));
            }
        }
        float f28 = f12 + 0.5f;
        float f29 = f13 + 0.5f;
        motionWidget.layout((int) f28, (int) f29, (int) (f28 + f14), (int) (f29 + f10));
    }

    public void setupRelative(Motion motion, MotionPaths motionPaths) {
        double d10 = (((this.width / 2.0f) + this.f871x) - motionPaths.f871x) - (motionPaths.width / 2.0f);
        double d11 = (((this.height / 2.0f) + this.f872y) - motionPaths.f872y) - (motionPaths.height / 2.0f);
        this.mRelativeToController = motion;
        this.f871x = (float) Math.hypot(d11, d10);
        this.f872y = (float) (Float.isNaN(this.mRelativeAngle) ? Math.atan2(d11, d10) + 1.5707963267948966d : Math.toRadians(this.mRelativeAngle));
    }
}
