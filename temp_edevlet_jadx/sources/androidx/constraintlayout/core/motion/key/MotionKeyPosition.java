package androidx.constraintlayout.core.motion.key;

import androidx.constraintlayout.core.motion.MotionWidget;
import androidx.constraintlayout.core.motion.utils.FloatRect;
import androidx.constraintlayout.core.motion.utils.SplineSet;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.constraintlayout.core.motion.utils.f;
import java.util.HashMap;
import java.util.HashSet;

/* loaded from: classes.dex */
public class MotionKeyPosition extends MotionKey {
    static final int KEY_TYPE = 2;
    static final String NAME = "KeyPosition";
    protected static final float SELECTION_SLOPE = 20.0f;
    public static final int TYPE_CARTESIAN = 0;
    public static final int TYPE_PATH = 1;
    public static final int TYPE_SCREEN = 2;
    public float mAltPercentX;
    public float mAltPercentY;
    private float mCalculatedPositionX;
    private float mCalculatedPositionY;
    public int mCurveFit;
    public int mDrawPath;
    public int mPathMotionArc;
    public float mPercentHeight;
    public float mPercentWidth;
    public float mPercentX;
    public float mPercentY;
    public int mPositionType;
    public String mTransitionEasing;

    public MotionKeyPosition() {
        int r02 = MotionKey.UNSET;
        this.mCurveFit = r02;
        this.mTransitionEasing = null;
        this.mPathMotionArc = r02;
        this.mDrawPath = 0;
        this.mPercentWidth = Float.NaN;
        this.mPercentHeight = Float.NaN;
        this.mPercentX = Float.NaN;
        this.mPercentY = Float.NaN;
        this.mAltPercentX = Float.NaN;
        this.mAltPercentY = Float.NaN;
        this.mPositionType = 0;
        this.mCalculatedPositionX = Float.NaN;
        this.mCalculatedPositionY = Float.NaN;
        this.mType = 2;
    }

    private void calcCartesianPosition(float f, float f10, float f11, float f12) {
        float f13 = f11 - f;
        float f14 = f12 - f10;
        float f15 = Float.isNaN(this.mPercentX) ? 0.0f : this.mPercentX;
        float f16 = Float.isNaN(this.mAltPercentY) ? 0.0f : this.mAltPercentY;
        float f17 = Float.isNaN(this.mPercentY) ? 0.0f : this.mPercentY;
        this.mCalculatedPositionX = (int) (((Float.isNaN(this.mAltPercentX) ? 0.0f : this.mAltPercentX) * f14) + (f15 * f13) + f);
        this.mCalculatedPositionY = (int) ((f14 * f17) + (f13 * f16) + f10);
    }

    private void calcPathPosition(float f, float f10, float f11, float f12) {
        float f13 = f11 - f;
        float f14 = f12 - f10;
        float f15 = this.mPercentX;
        float f16 = (f13 * f15) + f;
        float f17 = this.mPercentY;
        this.mCalculatedPositionX = ((-f14) * f17) + f16;
        this.mCalculatedPositionY = (f13 * f17) + (f14 * f15) + f10;
    }

    private void calcScreenPosition(int r42, int r52) {
        float f = this.mPercentX;
        float f10 = 0;
        this.mCalculatedPositionX = ((r42 - 0) * f) + f10;
        this.mCalculatedPositionY = ((r52 - 0) * f) + f10;
    }

    @Override // androidx.constraintlayout.core.motion.key.MotionKey
    public void addValues(HashMap<String, SplineSet> map) {
    }

    public void calcPosition(int r32, int r42, float f, float f10, float f11, float f12) {
        int r02 = this.mPositionType;
        if (r02 == 1) {
            calcPathPosition(f, f10, f11, f12);
        } else if (r02 != 2) {
            calcCartesianPosition(f, f10, f11, f12);
        } else {
            calcScreenPosition(r32, r42);
        }
    }

    @Override // androidx.constraintlayout.core.motion.key.MotionKey
    /* renamed from: clone */
    public MotionKey mo9clone() {
        return new MotionKeyPosition().copy(this);
    }

    @Override // androidx.constraintlayout.core.motion.key.MotionKey
    public MotionKey copy(MotionKey motionKey) {
        super.copy(motionKey);
        MotionKeyPosition motionKeyPosition = (MotionKeyPosition) motionKey;
        this.mTransitionEasing = motionKeyPosition.mTransitionEasing;
        this.mPathMotionArc = motionKeyPosition.mPathMotionArc;
        this.mDrawPath = motionKeyPosition.mDrawPath;
        this.mPercentWidth = motionKeyPosition.mPercentWidth;
        this.mPercentHeight = Float.NaN;
        this.mPercentX = motionKeyPosition.mPercentX;
        this.mPercentY = motionKeyPosition.mPercentY;
        this.mAltPercentX = motionKeyPosition.mAltPercentX;
        this.mAltPercentY = motionKeyPosition.mAltPercentY;
        this.mCalculatedPositionX = motionKeyPosition.mCalculatedPositionX;
        this.mCalculatedPositionY = motionKeyPosition.mCalculatedPositionY;
        return this;
    }

    @Override // androidx.constraintlayout.core.motion.key.MotionKey
    public void getAttributeNames(HashSet<String> hashSet) {
    }

    @Override // androidx.constraintlayout.core.motion.utils.TypedValues
    public int getId(String str) {
        return f.a(str);
    }

    public float getPositionX() {
        return this.mCalculatedPositionX;
    }

    public float getPositionY() {
        return this.mCalculatedPositionY;
    }

    public boolean intersects(int r82, int r92, FloatRect floatRect, FloatRect floatRect2, float f, float f10) {
        calcPosition(r82, r92, floatRect.centerX(), floatRect.centerY(), floatRect2.centerX(), floatRect2.centerY());
        return Math.abs(f - this.mCalculatedPositionX) < SELECTION_SLOPE && Math.abs(f10 - this.mCalculatedPositionY) < SELECTION_SLOPE;
    }

    public void positionAttributes(MotionWidget motionWidget, FloatRect floatRect, FloatRect floatRect2, float f, float f10, String[] strArr, float[] fArr) {
        int r02 = this.mPositionType;
        if (r02 == 1) {
            positionPathAttributes(floatRect, floatRect2, f, f10, strArr, fArr);
        } else if (r02 != 2) {
            positionCartAttributes(floatRect, floatRect2, f, f10, strArr, fArr);
        } else {
            positionScreenAttributes(motionWidget, floatRect, floatRect2, f, f10, strArr, fArr);
        }
    }

    public void positionCartAttributes(FloatRect floatRect, FloatRect floatRect2, float f, float f10, String[] strArr, float[] fArr) {
        float fCenterX = floatRect.centerX();
        float fCenterY = floatRect.centerY();
        float fCenterX2 = floatRect2.centerX() - fCenterX;
        float fCenterY2 = floatRect2.centerY() - fCenterY;
        String str = strArr[0];
        if (str == null) {
            strArr[0] = "percentX";
            fArr[0] = (f - fCenterX) / fCenterX2;
            strArr[1] = "percentY";
            fArr[1] = (f10 - fCenterY) / fCenterY2;
            return;
        }
        float f11 = (f - fCenterX) / fCenterX2;
        if ("percentX".equals(str)) {
            fArr[0] = f11;
            fArr[1] = (f10 - fCenterY) / fCenterY2;
        } else {
            fArr[1] = f11;
            fArr[0] = (f10 - fCenterY) / fCenterY2;
        }
    }

    public void positionPathAttributes(FloatRect floatRect, FloatRect floatRect2, float f, float f10, String[] strArr, float[] fArr) {
        float fCenterX = floatRect.centerX();
        float fCenterY = floatRect.centerY();
        float fCenterX2 = floatRect2.centerX() - fCenterX;
        float fCenterY2 = floatRect2.centerY() - fCenterY;
        float fHypot = (float) Math.hypot(fCenterX2, fCenterY2);
        if (fHypot < 1.0E-4d) {
            System.out.println("distance ~ 0");
            fArr[0] = 0.0f;
            fArr[1] = 0.0f;
            return;
        }
        float f11 = fCenterX2 / fHypot;
        float f12 = fCenterY2 / fHypot;
        float f13 = f10 - fCenterY;
        float f14 = f - fCenterX;
        float f15 = ((f11 * f13) - (f14 * f12)) / fHypot;
        float f16 = ((f12 * f13) + (f11 * f14)) / fHypot;
        String str = strArr[0];
        if (str != null) {
            if ("percentX".equals(str)) {
                fArr[0] = f16;
                fArr[1] = f15;
                return;
            }
            return;
        }
        strArr[0] = "percentX";
        strArr[1] = "percentY";
        fArr[0] = f16;
        fArr[1] = f15;
    }

    public void positionScreenAttributes(MotionWidget motionWidget, FloatRect floatRect, FloatRect floatRect2, float f, float f10, String[] strArr, float[] fArr) {
        floatRect.centerX();
        floatRect.centerY();
        floatRect2.centerX();
        floatRect2.centerY();
        MotionWidget parent = motionWidget.getParent();
        int width = parent.getWidth();
        int height = parent.getHeight();
        String str = strArr[0];
        if (str == null) {
            strArr[0] = "percentX";
            fArr[0] = f / width;
            strArr[1] = "percentY";
            fArr[1] = f10 / height;
            return;
        }
        float f11 = f / width;
        if ("percentX".equals(str)) {
            fArr[0] = f11;
            fArr[1] = f10 / height;
        } else {
            fArr[1] = f11;
            fArr[0] = f10 / height;
        }
    }

    @Override // androidx.constraintlayout.core.motion.key.MotionKey, androidx.constraintlayout.core.motion.utils.TypedValues
    public boolean setValue(int r12, float f) {
        switch (r12) {
            case TypedValues.PositionType.TYPE_PERCENT_WIDTH /* 503 */:
                this.mPercentWidth = f;
                return true;
            case TypedValues.PositionType.TYPE_PERCENT_HEIGHT /* 504 */:
                break;
            case TypedValues.PositionType.TYPE_SIZE_PERCENT /* 505 */:
                this.mPercentWidth = f;
                break;
            case TypedValues.PositionType.TYPE_PERCENT_X /* 506 */:
                this.mPercentX = f;
                return true;
            case TypedValues.PositionType.TYPE_PERCENT_Y /* 507 */:
                this.mPercentY = f;
                return true;
            default:
                return super.setValue(r12, f);
        }
        this.mPercentHeight = f;
        return true;
    }

    @Override // androidx.constraintlayout.core.motion.key.MotionKey, androidx.constraintlayout.core.motion.utils.TypedValues
    public boolean setValue(int r22, int r32) {
        if (r22 == 100) {
            this.mFramePosition = r32;
            return true;
        }
        if (r22 == 508) {
            this.mCurveFit = r32;
            return true;
        }
        if (r22 != 510) {
            return super.setValue(r22, r32);
        }
        this.mPositionType = r32;
        return true;
    }

    @Override // androidx.constraintlayout.core.motion.key.MotionKey, androidx.constraintlayout.core.motion.utils.TypedValues
    public boolean setValue(int r22, String str) {
        if (r22 != 501) {
            return super.setValue(r22, str);
        }
        this.mTransitionEasing = str.toString();
        return true;
    }
}
