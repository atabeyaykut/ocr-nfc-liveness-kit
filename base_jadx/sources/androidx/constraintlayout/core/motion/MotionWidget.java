package androidx.constraintlayout.core.motion;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.constraintlayout.core.motion.utils.a;
import androidx.constraintlayout.core.motion.utils.e;
import androidx.constraintlayout.core.state.WidgetFrame;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import java.util.Set;

/* loaded from: classes.dex */
public class MotionWidget implements TypedValues {
    public static final int FILL_PARENT = -1;
    public static final int GONE_UNSET = Integer.MIN_VALUE;
    private static final int INTERNAL_MATCH_CONSTRAINT = -3;
    private static final int INTERNAL_MATCH_PARENT = -1;
    private static final int INTERNAL_WRAP_CONTENT = -2;
    private static final int INTERNAL_WRAP_CONTENT_CONSTRAINED = -4;
    public static final int INVISIBLE = 0;
    public static final int MATCH_CONSTRAINT = 0;
    public static final int MATCH_CONSTRAINT_WRAP = 1;
    public static final int MATCH_PARENT = -1;
    public static final int PARENT_ID = 0;
    public static final int ROTATE_LEFT_OF_PORTRATE = 4;
    public static final int ROTATE_NONE = 0;
    public static final int ROTATE_PORTRATE_OF_LEFT = 2;
    public static final int ROTATE_PORTRATE_OF_RIGHT = 1;
    public static final int ROTATE_RIGHT_OF_PORTRATE = 3;
    public static final int UNSET = -1;
    public static final int VISIBILITY_MODE_IGNORE = 1;
    public static final int VISIBILITY_MODE_NORMAL = 0;
    public static final int VISIBLE = 4;
    public static final int WRAP_CONTENT = -2;
    private float mProgress;
    float mTransitionPathRotate;
    Motion motion;
    PropertySet propertySet;
    WidgetFrame widgetFrame;

    public static class Motion {
        private static final int INTERPOLATOR_REFERENCE_ID = -2;
        private static final int INTERPOLATOR_UNDEFINED = -3;
        private static final int SPLINE_STRING = -1;
        public int mAnimateRelativeTo = -1;
        public int mAnimateCircleAngleTo = 0;
        public String mTransitionEasing = null;
        public int mPathMotionArc = -1;
        public int mDrawPath = 0;
        public float mMotionStagger = Float.NaN;
        public int mPolarRelativeTo = -1;
        public float mPathRotate = Float.NaN;
        public float mQuantizeMotionPhase = Float.NaN;
        public int mQuantizeMotionSteps = -1;
        public String mQuantizeInterpolatorString = null;
        public int mQuantizeInterpolatorType = -3;
        public int mQuantizeInterpolatorID = -1;
    }

    public static class PropertySet {
        public int visibility = 4;
        public int mVisibilityMode = 0;
        public float alpha = 1.0f;
        public float mProgress = Float.NaN;
    }

    public MotionWidget() {
        this.widgetFrame = new WidgetFrame();
        this.motion = new Motion();
        this.propertySet = new PropertySet();
    }

    public MotionWidget(WidgetFrame widgetFrame) {
        this.widgetFrame = new WidgetFrame();
        this.motion = new Motion();
        this.propertySet = new PropertySet();
        this.widgetFrame = widgetFrame;
    }

    public MotionWidget findViewById(int r12) {
        return null;
    }

    public float getAlpha() {
        return this.propertySet.alpha;
    }

    public int getBottom() {
        return this.widgetFrame.bottom;
    }

    public CustomVariable getCustomAttribute(String str) {
        return this.widgetFrame.getCustomAttribute(str);
    }

    public Set<String> getCustomAttributeNames() {
        return this.widgetFrame.getCustomAttributeNames();
    }

    public int getHeight() {
        WidgetFrame widgetFrame = this.widgetFrame;
        return widgetFrame.bottom - widgetFrame.top;
    }

    @Override // androidx.constraintlayout.core.motion.utils.TypedValues
    public int getId(String str) {
        int r02 = a.a(str);
        return r02 != -1 ? r02 : e.a(str);
    }

    public int getLeft() {
        return this.widgetFrame.left;
    }

    public String getName() {
        return this.widgetFrame.getId();
    }

    public MotionWidget getParent() {
        return null;
    }

    public float getPivotX() {
        return this.widgetFrame.pivotX;
    }

    public float getPivotY() {
        return this.widgetFrame.pivotY;
    }

    public int getRight() {
        return this.widgetFrame.right;
    }

    public float getRotationX() {
        return this.widgetFrame.rotationX;
    }

    public float getRotationY() {
        return this.widgetFrame.rotationY;
    }

    public float getRotationZ() {
        return this.widgetFrame.rotationZ;
    }

    public float getScaleX() {
        return this.widgetFrame.scaleX;
    }

    public float getScaleY() {
        return this.widgetFrame.scaleY;
    }

    public int getTop() {
        return this.widgetFrame.top;
    }

    public float getTranslationX() {
        return this.widgetFrame.translationX;
    }

    public float getTranslationY() {
        return this.widgetFrame.translationY;
    }

    public float getTranslationZ() {
        return this.widgetFrame.translationZ;
    }

    public float getValueAttributes(int r12) {
        switch (r12) {
            case 303:
                return this.widgetFrame.alpha;
            case 304:
                return this.widgetFrame.translationX;
            case 305:
                return this.widgetFrame.translationY;
            case 306:
                return this.widgetFrame.translationZ;
            case 307:
            default:
                return Float.NaN;
            case 308:
                return this.widgetFrame.rotationX;
            case 309:
                return this.widgetFrame.rotationY;
            case 310:
                return this.widgetFrame.rotationZ;
            case 311:
                return this.widgetFrame.scaleX;
            case 312:
                return this.widgetFrame.scaleY;
            case 313:
                return this.widgetFrame.pivotX;
            case 314:
                return this.widgetFrame.pivotY;
            case 315:
                return this.mProgress;
            case TypedValues.AttributesType.TYPE_PATH_ROTATE /* 316 */:
                return this.mTransitionPathRotate;
        }
    }

    public int getVisibility() {
        return this.propertySet.visibility;
    }

    public WidgetFrame getWidgetFrame() {
        return this.widgetFrame;
    }

    public int getWidth() {
        WidgetFrame widgetFrame = this.widgetFrame;
        return widgetFrame.right - widgetFrame.left;
    }

    public int getX() {
        return this.widgetFrame.left;
    }

    public int getY() {
        return this.widgetFrame.top;
    }

    public void layout(int r12, int r22, int r32, int r42) {
        setBounds(r12, r22, r32, r42);
    }

    public void setBounds(int r32, int r42, int r52, int r6) {
        if (this.widgetFrame == null) {
            this.widgetFrame = new WidgetFrame((ConstraintWidget) null);
        }
        WidgetFrame widgetFrame = this.widgetFrame;
        widgetFrame.top = r42;
        widgetFrame.left = r32;
        widgetFrame.right = r52;
        widgetFrame.bottom = r6;
    }

    public void setCustomAttribute(String str, int r32, float f) {
        this.widgetFrame.setCustomAttribute(str, r32, f);
    }

    public void setCustomAttribute(String str, int r32, int r42) {
        this.widgetFrame.setCustomAttribute(str, r32, r42);
    }

    public void setCustomAttribute(String str, int r32, String str2) {
        this.widgetFrame.setCustomAttribute(str, r32, str2);
    }

    public void setCustomAttribute(String str, int r32, boolean z10) {
        this.widgetFrame.setCustomAttribute(str, r32, z10);
    }

    public void setInterpolatedValue(CustomAttribute customAttribute, float[] fArr) {
        this.widgetFrame.setCustomAttribute(customAttribute.mName, TypedValues.Custom.TYPE_FLOAT, fArr[0]);
    }

    public void setPivotX(float f) {
        this.widgetFrame.pivotX = f;
    }

    public void setPivotY(float f) {
        this.widgetFrame.pivotY = f;
    }

    public void setRotationX(float f) {
        this.widgetFrame.rotationX = f;
    }

    public void setRotationY(float f) {
        this.widgetFrame.rotationY = f;
    }

    public void setRotationZ(float f) {
        this.widgetFrame.rotationZ = f;
    }

    public void setScaleX(float f) {
        this.widgetFrame.scaleX = f;
    }

    public void setScaleY(float f) {
        this.widgetFrame.scaleY = f;
    }

    public void setTranslationX(float f) {
        this.widgetFrame.translationX = f;
    }

    public void setTranslationY(float f) {
        this.widgetFrame.translationY = f;
    }

    public void setTranslationZ(float f) {
        this.widgetFrame.translationZ = f;
    }

    @Override // androidx.constraintlayout.core.motion.utils.TypedValues
    public boolean setValue(int r22, float f) {
        if (setValueAttributes(r22, f)) {
            return true;
        }
        return setValueMotion(r22, f);
    }

    @Override // androidx.constraintlayout.core.motion.utils.TypedValues
    public boolean setValue(int r12, int r22) {
        return setValueAttributes(r12, r22);
    }

    @Override // androidx.constraintlayout.core.motion.utils.TypedValues
    public boolean setValue(int r12, String str) {
        return setValueMotion(r12, str);
    }

    @Override // androidx.constraintlayout.core.motion.utils.TypedValues
    public boolean setValue(int r12, boolean z10) {
        return false;
    }

    public boolean setValueAttributes(int r12, float f) {
        switch (r12) {
            case 303:
                this.widgetFrame.alpha = f;
                return true;
            case 304:
                this.widgetFrame.translationX = f;
                return true;
            case 305:
                this.widgetFrame.translationY = f;
                return true;
            case 306:
                this.widgetFrame.translationZ = f;
                return true;
            case 307:
            default:
                return false;
            case 308:
                this.widgetFrame.rotationX = f;
                return true;
            case 309:
                this.widgetFrame.rotationY = f;
                return true;
            case 310:
                this.widgetFrame.rotationZ = f;
                return true;
            case 311:
                this.widgetFrame.scaleX = f;
                return true;
            case 312:
                this.widgetFrame.scaleY = f;
                return true;
            case 313:
                this.widgetFrame.pivotX = f;
                return true;
            case 314:
                this.widgetFrame.pivotY = f;
                return true;
            case 315:
                this.mProgress = f;
                return true;
            case TypedValues.AttributesType.TYPE_PATH_ROTATE /* 316 */:
                this.mTransitionPathRotate = f;
                return true;
        }
    }

    public boolean setValueMotion(int r12, float f) {
        switch (r12) {
            case 600:
                this.motion.mMotionStagger = f;
                return true;
            case 601:
                this.motion.mPathRotate = f;
                return true;
            case TypedValues.MotionType.TYPE_QUANTIZE_MOTION_PHASE /* 602 */:
                this.motion.mQuantizeMotionPhase = f;
                return true;
            default:
                return false;
        }
    }

    public boolean setValueMotion(int r12, int r22) {
        switch (r12) {
            case TypedValues.MotionType.TYPE_ANIMATE_RELATIVE_TO /* 605 */:
                this.motion.mAnimateRelativeTo = r22;
                return true;
            case TypedValues.MotionType.TYPE_ANIMATE_CIRCLEANGLE_TO /* 606 */:
                this.motion.mAnimateCircleAngleTo = r22;
                return true;
            case TypedValues.MotionType.TYPE_PATHMOTION_ARC /* 607 */:
                this.motion.mPathMotionArc = r22;
                return true;
            case TypedValues.MotionType.TYPE_DRAW_PATH /* 608 */:
                this.motion.mDrawPath = r22;
                return true;
            case TypedValues.MotionType.TYPE_POLAR_RELATIVETO /* 609 */:
                this.motion.mPolarRelativeTo = r22;
                return true;
            case TypedValues.MotionType.TYPE_QUANTIZE_MOTIONSTEPS /* 610 */:
                this.motion.mQuantizeMotionSteps = r22;
                return true;
            case TypedValues.MotionType.TYPE_QUANTIZE_INTERPOLATOR_TYPE /* 611 */:
                this.motion.mQuantizeInterpolatorType = r22;
                return true;
            case TypedValues.MotionType.TYPE_QUANTIZE_INTERPOLATOR_ID /* 612 */:
                this.motion.mQuantizeInterpolatorID = r22;
                return true;
            default:
                return false;
        }
    }

    public boolean setValueMotion(int r22, String str) {
        if (r22 == 603) {
            this.motion.mTransitionEasing = str;
            return true;
        }
        if (r22 != 604) {
            return false;
        }
        this.motion.mQuantizeInterpolatorString = str;
        return true;
    }

    public void setVisibility(int r22) {
        this.propertySet.visibility = r22;
    }

    public String toString() {
        return this.widgetFrame.left + ", " + this.widgetFrame.top + ", " + this.widgetFrame.right + ", " + this.widgetFrame.bottom;
    }
}
