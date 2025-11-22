package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import android.view.View;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.constraintlayout.motion.utils.ViewSpline;
import androidx.constraintlayout.widget.ConstraintAttribute;
import androidx.constraintlayout.widget.R;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Locale;

/* loaded from: classes.dex */
public class KeyTrigger extends Key {
    public static final String CROSS = "CROSS";
    public static final int KEY_TYPE = 5;
    static final String NAME = "KeyTrigger";
    public static final String NEGATIVE_CROSS = "negativeCross";
    public static final String POSITIVE_CROSS = "positiveCross";
    public static final String POST_LAYOUT = "postLayout";
    private static final String TAG = "KeyTrigger";
    public static final String TRIGGER_COLLISION_ID = "triggerCollisionId";
    public static final String TRIGGER_COLLISION_VIEW = "triggerCollisionView";
    public static final String TRIGGER_ID = "triggerID";
    public static final String TRIGGER_RECEIVER = "triggerReceiver";
    public static final String TRIGGER_SLACK = "triggerSlack";
    public static final String VIEW_TRANSITION_ON_CROSS = "viewTransitionOnCross";
    public static final String VIEW_TRANSITION_ON_NEGATIVE_CROSS = "viewTransitionOnNegativeCross";
    public static final String VIEW_TRANSITION_ON_POSITIVE_CROSS = "viewTransitionOnPositiveCross";
    RectF mCollisionRect;
    private boolean mFireCrossReset;
    private float mFireLastPos;
    private boolean mFireNegativeReset;
    private boolean mFirePositiveReset;
    private float mFireThreshold;
    HashMap<String, Method> mMethodHashMap;
    private String mNegativeCross;
    private String mPositiveCross;
    private boolean mPostLayout;
    RectF mTargetRect;
    private int mTriggerCollisionId;
    private View mTriggerCollisionView;
    private int mTriggerID;
    private int mTriggerReceiver;
    float mTriggerSlack;
    int mViewTransitionOnCross;
    int mViewTransitionOnNegativeCross;
    int mViewTransitionOnPositiveCross;
    private int mCurveFit = -1;
    private String mCross = null;

    public static class Loader {
        private static final int COLLISION = 9;
        private static final int CROSS = 4;
        private static final int FRAME_POS = 8;
        private static final int NEGATIVE_CROSS = 1;
        private static final int POSITIVE_CROSS = 2;
        private static final int POST_LAYOUT = 10;
        private static final int TARGET_ID = 7;
        private static final int TRIGGER_ID = 6;
        private static final int TRIGGER_RECEIVER = 11;
        private static final int TRIGGER_SLACK = 5;
        private static final int VT_CROSS = 12;
        private static final int VT_NEGATIVE_CROSS = 13;
        private static final int VT_POSITIVE_CROSS = 14;
        private static SparseIntArray mAttrMap;

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            mAttrMap = sparseIntArray;
            sparseIntArray.append(R.styleable.KeyTrigger_framePosition, 8);
            mAttrMap.append(R.styleable.KeyTrigger_onCross, 4);
            mAttrMap.append(R.styleable.KeyTrigger_onNegativeCross, 1);
            mAttrMap.append(R.styleable.KeyTrigger_onPositiveCross, 2);
            mAttrMap.append(R.styleable.KeyTrigger_motionTarget, 7);
            mAttrMap.append(R.styleable.KeyTrigger_triggerId, 6);
            mAttrMap.append(R.styleable.KeyTrigger_triggerSlack, 5);
            mAttrMap.append(R.styleable.KeyTrigger_motion_triggerOnCollision, 9);
            mAttrMap.append(R.styleable.KeyTrigger_motion_postLayoutCollision, 10);
            mAttrMap.append(R.styleable.KeyTrigger_triggerReceiver, 11);
            mAttrMap.append(R.styleable.KeyTrigger_viewTransitionOnCross, 12);
            mAttrMap.append(R.styleable.KeyTrigger_viewTransitionOnNegativeCross, 13);
            mAttrMap.append(R.styleable.KeyTrigger_viewTransitionOnPositiveCross, 14);
        }

        private Loader() {
        }

        /* JADX WARN: Removed duplicated region for block: B:21:0x00ab  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static void read(androidx.constraintlayout.motion.widget.KeyTrigger r4, android.content.res.TypedArray r5, android.content.Context r6) {
            /*
                int r6 = r5.getIndexCount()
                r0 = 0
            L5:
                if (r0 >= r6) goto Leb
                int r1 = r5.getIndex(r0)
                android.util.SparseIntArray r2 = androidx.constraintlayout.motion.widget.KeyTrigger.Loader.mAttrMap
                int r2 = r2.get(r1)
                switch(r2) {
                    case 1: goto Le0;
                    case 2: goto Ld8;
                    case 3: goto L14;
                    case 4: goto Ld0;
                    case 5: goto Lc7;
                    case 6: goto Lbb;
                    case 7: goto L92;
                    case 8: goto L7f;
                    case 9: goto L73;
                    case 10: goto L66;
                    case 11: goto L59;
                    case 12: goto L4f;
                    case 13: goto L45;
                    case 14: goto L3b;
                    default: goto L14;
                }
            L14:
                java.lang.StringBuilder r2 = new java.lang.StringBuilder
                java.lang.String r3 = "unused attribute 0x"
                r2.<init>(r3)
                java.lang.String r3 = java.lang.Integer.toHexString(r1)
                r2.append(r3)
                java.lang.String r3 = "   "
                r2.append(r3)
                android.util.SparseIntArray r3 = androidx.constraintlayout.motion.widget.KeyTrigger.Loader.mAttrMap
                int r1 = r3.get(r1)
                r2.append(r1)
                java.lang.String r1 = r2.toString()
                java.lang.String r2 = "KeyTrigger"
                android.util.Log.e(r2, r1)
                goto Le7
            L3b:
                int r2 = r4.mViewTransitionOnPositiveCross
                int r1 = r5.getResourceId(r1, r2)
                r4.mViewTransitionOnPositiveCross = r1
                goto Le7
            L45:
                int r2 = r4.mViewTransitionOnNegativeCross
                int r1 = r5.getResourceId(r1, r2)
                r4.mViewTransitionOnNegativeCross = r1
                goto Le7
            L4f:
                int r2 = r4.mViewTransitionOnCross
                int r1 = r5.getResourceId(r1, r2)
                r4.mViewTransitionOnCross = r1
                goto Le7
            L59:
                int r2 = androidx.constraintlayout.motion.widget.KeyTrigger.access$700(r4)
                int r1 = r5.getResourceId(r1, r2)
                androidx.constraintlayout.motion.widget.KeyTrigger.access$702(r4, r1)
                goto Le7
            L66:
                boolean r2 = androidx.constraintlayout.motion.widget.KeyTrigger.access$600(r4)
                boolean r1 = r5.getBoolean(r1, r2)
                androidx.constraintlayout.motion.widget.KeyTrigger.access$602(r4, r1)
                goto Le7
            L73:
                int r2 = androidx.constraintlayout.motion.widget.KeyTrigger.access$500(r4)
                int r1 = r5.getResourceId(r1, r2)
                androidx.constraintlayout.motion.widget.KeyTrigger.access$502(r4, r1)
                goto Le7
            L7f:
                int r2 = r4.mFramePosition
                int r1 = r5.getInteger(r1, r2)
                r4.mFramePosition = r1
                float r1 = (float) r1
                r2 = 1056964608(0x3f000000, float:0.5)
                float r1 = r1 + r2
                r2 = 1120403456(0x42c80000, float:100.0)
                float r1 = r1 / r2
                androidx.constraintlayout.motion.widget.KeyTrigger.access$002(r4, r1)
                goto Le7
            L92:
                boolean r2 = androidx.constraintlayout.motion.widget.MotionLayout.IS_IN_EDIT_MODE
                if (r2 == 0) goto La2
                int r2 = r4.mTargetId
                int r2 = r5.getResourceId(r1, r2)
                r4.mTargetId = r2
                r3 = -1
                if (r2 != r3) goto Le7
                goto Lab
            La2:
                android.util.TypedValue r2 = r5.peekValue(r1)
                int r2 = r2.type
                r3 = 3
                if (r2 != r3) goto Lb2
            Lab:
                java.lang.String r1 = r5.getString(r1)
                r4.mTargetString = r1
                goto Le7
            Lb2:
                int r2 = r4.mTargetId
                int r1 = r5.getResourceId(r1, r2)
                r4.mTargetId = r1
                goto Le7
            Lbb:
                int r2 = androidx.constraintlayout.motion.widget.KeyTrigger.access$400(r4)
                int r1 = r5.getResourceId(r1, r2)
                androidx.constraintlayout.motion.widget.KeyTrigger.access$402(r4, r1)
                goto Le7
            Lc7:
                float r2 = r4.mTriggerSlack
                float r1 = r5.getFloat(r1, r2)
                r4.mTriggerSlack = r1
                goto Le7
            Ld0:
                java.lang.String r1 = r5.getString(r1)
                androidx.constraintlayout.motion.widget.KeyTrigger.access$302(r4, r1)
                goto Le7
            Ld8:
                java.lang.String r1 = r5.getString(r1)
                androidx.constraintlayout.motion.widget.KeyTrigger.access$202(r4, r1)
                goto Le7
            Le0:
                java.lang.String r1 = r5.getString(r1)
                androidx.constraintlayout.motion.widget.KeyTrigger.access$102(r4, r1)
            Le7:
                int r0 = r0 + 1
                goto L5
            Leb:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.motion.widget.KeyTrigger.Loader.read(androidx.constraintlayout.motion.widget.KeyTrigger, android.content.res.TypedArray, android.content.Context):void");
        }
    }

    public KeyTrigger() {
        int r12 = Key.UNSET;
        this.mTriggerReceiver = r12;
        this.mNegativeCross = null;
        this.mPositiveCross = null;
        this.mTriggerID = r12;
        this.mTriggerCollisionId = r12;
        this.mTriggerCollisionView = null;
        this.mTriggerSlack = 0.1f;
        this.mFireCrossReset = true;
        this.mFireNegativeReset = true;
        this.mFirePositiveReset = true;
        this.mFireThreshold = Float.NaN;
        this.mPostLayout = false;
        this.mViewTransitionOnNegativeCross = r12;
        this.mViewTransitionOnPositiveCross = r12;
        this.mViewTransitionOnCross = r12;
        this.mCollisionRect = new RectF();
        this.mTargetRect = new RectF();
        this.mMethodHashMap = new HashMap<>();
        this.mType = 5;
        this.mCustomConstraints = new HashMap<>();
    }

    private void fire(String str, View view) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        Method method;
        if (str == null) {
            return;
        }
        if (str.startsWith(".")) {
            fireCustom(str, view);
            return;
        }
        if (this.mMethodHashMap.containsKey(str)) {
            method = this.mMethodHashMap.get(str);
            if (method == null) {
                return;
            }
        } else {
            method = null;
        }
        if (method == null) {
            try {
                method = view.getClass().getMethod(str, new Class[0]);
                this.mMethodHashMap.put(str, method);
            } catch (NoSuchMethodException unused) {
                this.mMethodHashMap.put(str, null);
                Log.e(TypedValues.TriggerType.NAME, "Could not find method \"" + str + "\"on class " + view.getClass().getSimpleName() + " " + Debug.getName(view));
                return;
            }
        }
        try {
            method.invoke(view, new Object[0]);
        } catch (Exception unused2) {
            Log.e(TypedValues.TriggerType.NAME, "Exception in call \"" + this.mCross + "\"on class " + view.getClass().getSimpleName() + " " + Debug.getName(view));
        }
    }

    private void fireCustom(String str, View view) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        boolean z10 = str.length() == 1;
        if (!z10) {
            str = str.substring(1).toLowerCase(Locale.ROOT);
        }
        for (String str2 : this.mCustomConstraints.keySet()) {
            String lowerCase = str2.toLowerCase(Locale.ROOT);
            if (z10 || lowerCase.matches(str)) {
                ConstraintAttribute constraintAttribute = this.mCustomConstraints.get(str2);
                if (constraintAttribute != null) {
                    constraintAttribute.applyCustom(view);
                }
            }
        }
    }

    private void setUpRect(RectF rectF, View view, boolean z10) {
        rectF.top = view.getTop();
        rectF.bottom = view.getBottom();
        rectF.left = view.getLeft();
        rectF.right = view.getRight();
        if (z10) {
            view.getMatrix().mapRect(rectF);
        }
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    public void addValues(HashMap<String, ViewSpline> map) {
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    /* renamed from: clone */
    public Key mo10clone() {
        return new KeyTrigger().copy(this);
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x008d  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00a2  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00b7  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00d1  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void conditionallyFire(float r10, android.view.View r11) throws java.lang.IllegalAccessException, java.lang.NoSuchMethodException, java.lang.SecurityException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
        /*
            Method dump skipped, instructions count: 357
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.motion.widget.KeyTrigger.conditionallyFire(float, android.view.View):void");
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    public Key copy(Key key) {
        super.copy(key);
        KeyTrigger keyTrigger = (KeyTrigger) key;
        this.mCurveFit = keyTrigger.mCurveFit;
        this.mCross = keyTrigger.mCross;
        this.mTriggerReceiver = keyTrigger.mTriggerReceiver;
        this.mNegativeCross = keyTrigger.mNegativeCross;
        this.mPositiveCross = keyTrigger.mPositiveCross;
        this.mTriggerID = keyTrigger.mTriggerID;
        this.mTriggerCollisionId = keyTrigger.mTriggerCollisionId;
        this.mTriggerCollisionView = keyTrigger.mTriggerCollisionView;
        this.mTriggerSlack = keyTrigger.mTriggerSlack;
        this.mFireCrossReset = keyTrigger.mFireCrossReset;
        this.mFireNegativeReset = keyTrigger.mFireNegativeReset;
        this.mFirePositiveReset = keyTrigger.mFirePositiveReset;
        this.mFireThreshold = keyTrigger.mFireThreshold;
        this.mFireLastPos = keyTrigger.mFireLastPos;
        this.mPostLayout = keyTrigger.mPostLayout;
        this.mCollisionRect = keyTrigger.mCollisionRect;
        this.mTargetRect = keyTrigger.mTargetRect;
        this.mMethodHashMap = keyTrigger.mMethodHashMap;
        return this;
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    public void getAttributeNames(HashSet<String> hashSet) {
    }

    public int getCurveFit() {
        return this.mCurveFit;
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    public void load(Context context, AttributeSet attributeSet) {
        Loader.read(this, context.obtainStyledAttributes(attributeSet, R.styleable.KeyTrigger), context);
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    public void setValue(String str, Object obj) {
        str.getClass();
        switch (str) {
            case "positiveCross":
                this.mPositiveCross = obj.toString();
                break;
            case "viewTransitionOnPositiveCross":
                this.mViewTransitionOnPositiveCross = toInt(obj);
                break;
            case "triggerCollisionId":
                this.mTriggerCollisionId = toInt(obj);
                break;
            case "triggerID":
                this.mTriggerID = toInt(obj);
                break;
            case "negativeCross":
                this.mNegativeCross = obj.toString();
                break;
            case "triggerCollisionView":
                this.mTriggerCollisionView = (View) obj;
                break;
            case "viewTransitionOnNegativeCross":
                this.mViewTransitionOnNegativeCross = toInt(obj);
                break;
            case "CROSS":
                this.mCross = obj.toString();
                break;
            case "triggerSlack":
                this.mTriggerSlack = toFloat(obj);
                break;
            case "viewTransitionOnCross":
                this.mViewTransitionOnCross = toInt(obj);
                break;
            case "postLayout":
                this.mPostLayout = toBoolean(obj);
                break;
            case "triggerReceiver":
                this.mTriggerReceiver = toInt(obj);
                break;
        }
    }
}
