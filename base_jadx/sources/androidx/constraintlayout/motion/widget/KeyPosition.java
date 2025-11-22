package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.motion.utils.ViewSpline;
import androidx.constraintlayout.widget.R;
import java.util.HashMap;

/* loaded from: classes.dex */
public class KeyPosition extends KeyPositionBase {
    public static final String DRAWPATH = "drawPath";
    static final int KEY_TYPE = 2;
    static final String NAME = "KeyPosition";
    public static final String PERCENT_HEIGHT = "percentHeight";
    public static final String PERCENT_WIDTH = "percentWidth";
    public static final String PERCENT_X = "percentX";
    public static final String PERCENT_Y = "percentY";
    public static final String SIZE_PERCENT = "sizePercent";
    private static final String TAG = "KeyPosition";
    public static final String TRANSITION_EASING = "transitionEasing";
    public static final int TYPE_CARTESIAN = 0;
    public static final int TYPE_PATH = 1;
    public static final int TYPE_SCREEN = 2;
    String mTransitionEasing = null;
    int mPathMotionArc = Key.UNSET;
    int mDrawPath = 0;
    float mPercentWidth = Float.NaN;
    float mPercentHeight = Float.NaN;
    float mPercentX = Float.NaN;
    float mPercentY = Float.NaN;
    float mAltPercentX = Float.NaN;
    float mAltPercentY = Float.NaN;
    int mPositionType = 0;
    private float mCalculatedPositionX = Float.NaN;
    private float mCalculatedPositionY = Float.NaN;

    public static class Loader {
        private static final int CURVE_FIT = 4;
        private static final int DRAW_PATH = 5;
        private static final int FRAME_POSITION = 2;
        private static final int PATH_MOTION_ARC = 10;
        private static final int PERCENT_HEIGHT = 12;
        private static final int PERCENT_WIDTH = 11;
        private static final int PERCENT_X = 6;
        private static final int PERCENT_Y = 7;
        private static final int SIZE_PERCENT = 8;
        private static final int TARGET_ID = 1;
        private static final int TRANSITION_EASING = 3;
        private static final int TYPE = 9;
        private static SparseIntArray mAttrMap;

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            mAttrMap = sparseIntArray;
            sparseIntArray.append(R.styleable.KeyPosition_motionTarget, 1);
            mAttrMap.append(R.styleable.KeyPosition_framePosition, 2);
            mAttrMap.append(R.styleable.KeyPosition_transitionEasing, 3);
            mAttrMap.append(R.styleable.KeyPosition_curveFit, 4);
            mAttrMap.append(R.styleable.KeyPosition_drawPath, 5);
            mAttrMap.append(R.styleable.KeyPosition_percentX, 6);
            mAttrMap.append(R.styleable.KeyPosition_percentY, 7);
            mAttrMap.append(R.styleable.KeyPosition_keyPositionType, 9);
            mAttrMap.append(R.styleable.KeyPosition_sizePercent, 8);
            mAttrMap.append(R.styleable.KeyPosition_percentWidth, 11);
            mAttrMap.append(R.styleable.KeyPosition_percentHeight, 12);
            mAttrMap.append(R.styleable.KeyPosition_pathMotionArc, 10);
        }

        private Loader() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Removed duplicated region for block: B:31:0x00cb  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static void read(androidx.constraintlayout.motion.widget.KeyPosition r8, android.content.res.TypedArray r9) {
            /*
                int r0 = r9.getIndexCount()
                r1 = 0
                r2 = 0
            L6:
                java.lang.String r3 = "KeyPosition"
                r4 = -1
                if (r2 >= r0) goto Lde
                int r5 = r9.getIndex(r2)
                android.util.SparseIntArray r6 = androidx.constraintlayout.motion.widget.KeyPosition.Loader.mAttrMap
                int r6 = r6.get(r5)
                r7 = 3
                switch(r6) {
                    case 1: goto Lb4;
                    case 2: goto Lab;
                    case 3: goto L93;
                    case 4: goto L8a;
                    case 5: goto L81;
                    case 6: goto L78;
                    case 7: goto L6f;
                    case 8: goto L63;
                    case 9: goto L59;
                    case 10: goto L4f;
                    case 11: goto L45;
                    case 12: goto L3e;
                    default: goto L19;
                }
            L19:
                java.lang.StringBuilder r4 = new java.lang.StringBuilder
                java.lang.String r6 = "unused attribute 0x"
                r4.<init>(r6)
                java.lang.String r6 = java.lang.Integer.toHexString(r5)
                r4.append(r6)
                java.lang.String r6 = "   "
                r4.append(r6)
                android.util.SparseIntArray r6 = androidx.constraintlayout.motion.widget.KeyPosition.Loader.mAttrMap
                int r5 = r6.get(r5)
                r4.append(r5)
                java.lang.String r4 = r4.toString()
                android.util.Log.e(r3, r4)
                goto Lda
            L3e:
                float r3 = r8.mPercentHeight
                float r3 = r9.getFloat(r5, r3)
                goto L6b
            L45:
                float r3 = r8.mPercentWidth
                float r3 = r9.getFloat(r5, r3)
                r8.mPercentWidth = r3
                goto Lda
            L4f:
                int r3 = r8.mPathMotionArc
                int r3 = r9.getInt(r5, r3)
                r8.mPathMotionArc = r3
                goto Lda
            L59:
                int r3 = r8.mPositionType
                int r3 = r9.getInt(r5, r3)
                r8.mPositionType = r3
                goto Lda
            L63:
                float r3 = r8.mPercentHeight
                float r3 = r9.getFloat(r5, r3)
                r8.mPercentWidth = r3
            L6b:
                r8.mPercentHeight = r3
                goto Lda
            L6f:
                float r3 = r8.mPercentY
                float r3 = r9.getFloat(r5, r3)
                r8.mPercentY = r3
                goto Lda
            L78:
                float r3 = r8.mPercentX
                float r3 = r9.getFloat(r5, r3)
                r8.mPercentX = r3
                goto Lda
            L81:
                int r3 = r8.mDrawPath
                int r3 = r9.getInt(r5, r3)
                r8.mDrawPath = r3
                goto Lda
            L8a:
                int r3 = r8.mCurveFit
                int r3 = r9.getInteger(r5, r3)
                r8.mCurveFit = r3
                goto Lda
            L93:
                android.util.TypedValue r3 = r9.peekValue(r5)
                int r3 = r3.type
                if (r3 != r7) goto La0
                java.lang.String r3 = r9.getString(r5)
                goto La8
            La0:
                java.lang.String[] r3 = androidx.constraintlayout.core.motion.utils.Easing.NAMED_EASING
                int r4 = r9.getInteger(r5, r1)
                r3 = r3[r4]
            La8:
                r8.mTransitionEasing = r3
                goto Lda
            Lab:
                int r3 = r8.mFramePosition
                int r3 = r9.getInt(r5, r3)
                r8.mFramePosition = r3
                goto Lda
            Lb4:
                boolean r3 = androidx.constraintlayout.motion.widget.MotionLayout.IS_IN_EDIT_MODE
                if (r3 == 0) goto Lc3
                int r3 = r8.mTargetId
                int r3 = r9.getResourceId(r5, r3)
                r8.mTargetId = r3
                if (r3 != r4) goto Lda
                goto Lcb
            Lc3:
                android.util.TypedValue r3 = r9.peekValue(r5)
                int r3 = r3.type
                if (r3 != r7) goto Ld2
            Lcb:
                java.lang.String r3 = r9.getString(r5)
                r8.mTargetString = r3
                goto Lda
            Ld2:
                int r3 = r8.mTargetId
                int r3 = r9.getResourceId(r5, r3)
                r8.mTargetId = r3
            Lda:
                int r2 = r2 + 1
                goto L6
            Lde:
                int r8 = r8.mFramePosition
                if (r8 != r4) goto Le7
                java.lang.String r8 = "no frame position"
                android.util.Log.e(r3, r8)
            Le7:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.motion.widget.KeyPosition.Loader.read(androidx.constraintlayout.motion.widget.KeyPosition, android.content.res.TypedArray):void");
        }
    }

    public KeyPosition() {
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

    @Override // androidx.constraintlayout.motion.widget.Key
    public void addValues(HashMap<String, ViewSpline> map) {
    }

    @Override // androidx.constraintlayout.motion.widget.KeyPositionBase
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

    @Override // androidx.constraintlayout.motion.widget.Key
    /* renamed from: clone */
    public Key mo10clone() {
        return new KeyPosition().copy(this);
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    public Key copy(Key key) {
        super.copy(key);
        KeyPosition keyPosition = (KeyPosition) key;
        this.mTransitionEasing = keyPosition.mTransitionEasing;
        this.mPathMotionArc = keyPosition.mPathMotionArc;
        this.mDrawPath = keyPosition.mDrawPath;
        this.mPercentWidth = keyPosition.mPercentWidth;
        this.mPercentHeight = Float.NaN;
        this.mPercentX = keyPosition.mPercentX;
        this.mPercentY = keyPosition.mPercentY;
        this.mAltPercentX = keyPosition.mAltPercentX;
        this.mAltPercentY = keyPosition.mAltPercentY;
        this.mCalculatedPositionX = keyPosition.mCalculatedPositionX;
        this.mCalculatedPositionY = keyPosition.mCalculatedPositionY;
        return this;
    }

    @Override // androidx.constraintlayout.motion.widget.KeyPositionBase
    public float getPositionX() {
        return this.mCalculatedPositionX;
    }

    @Override // androidx.constraintlayout.motion.widget.KeyPositionBase
    public float getPositionY() {
        return this.mCalculatedPositionY;
    }

    @Override // androidx.constraintlayout.motion.widget.KeyPositionBase
    public boolean intersects(int r82, int r92, RectF rectF, RectF rectF2, float f, float f10) {
        calcPosition(r82, r92, rectF.centerX(), rectF.centerY(), rectF2.centerX(), rectF2.centerY());
        return Math.abs(f - this.mCalculatedPositionX) < 20.0f && Math.abs(f10 - this.mCalculatedPositionY) < 20.0f;
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    public void load(Context context, AttributeSet attributeSet) {
        Loader.read(this, context.obtainStyledAttributes(attributeSet, R.styleable.KeyPosition));
    }

    @Override // androidx.constraintlayout.motion.widget.KeyPositionBase
    public void positionAttributes(View view, RectF rectF, RectF rectF2, float f, float f10, String[] strArr, float[] fArr) {
        int r02 = this.mPositionType;
        if (r02 == 1) {
            positionPathAttributes(rectF, rectF2, f, f10, strArr, fArr);
        } else if (r02 != 2) {
            positionCartAttributes(rectF, rectF2, f, f10, strArr, fArr);
        } else {
            positionScreenAttributes(view, rectF, rectF2, f, f10, strArr, fArr);
        }
    }

    public void positionCartAttributes(RectF rectF, RectF rectF2, float f, float f10, String[] strArr, float[] fArr) {
        float fCenterX = rectF.centerX();
        float fCenterY = rectF.centerY();
        float fCenterX2 = rectF2.centerX() - fCenterX;
        float fCenterY2 = rectF2.centerY() - fCenterY;
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

    public void positionPathAttributes(RectF rectF, RectF rectF2, float f, float f10, String[] strArr, float[] fArr) {
        float fCenterX = rectF.centerX();
        float fCenterY = rectF.centerY();
        float fCenterX2 = rectF2.centerX() - fCenterX;
        float fCenterY2 = rectF2.centerY() - fCenterY;
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

    public void positionScreenAttributes(View view, RectF rectF, RectF rectF2, float f, float f10, String[] strArr, float[] fArr) {
        rectF.centerX();
        rectF.centerY();
        rectF2.centerX();
        rectF2.centerY();
        ViewGroup viewGroup = (ViewGroup) view.getParent();
        int width = viewGroup.getWidth();
        int height = viewGroup.getHeight();
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

    public void setType(int r12) {
        this.mPositionType = r12;
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    public void setValue(String str, Object obj) {
        float f;
        str.getClass();
        switch (str) {
            case "transitionEasing":
                this.mTransitionEasing = obj.toString();
                return;
            case "percentWidth":
                this.mPercentWidth = toFloat(obj);
                return;
            case "percentHeight":
                f = toFloat(obj);
                break;
            case "drawPath":
                this.mDrawPath = toInt(obj);
                return;
            case "sizePercent":
                f = toFloat(obj);
                this.mPercentWidth = f;
                break;
            case "percentX":
                this.mPercentX = toFloat(obj);
                return;
            case "percentY":
                this.mPercentY = toFloat(obj);
                return;
            default:
                return;
        }
        this.mPercentHeight = f;
    }
}
