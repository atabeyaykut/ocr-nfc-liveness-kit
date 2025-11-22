package androidx.constraintlayout.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.Color;
import android.support.v4.media.a;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.util.Xml;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.camera.camera2.internal.c;
import androidx.constraintlayout.core.motion.utils.Easing;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.core.widgets.HelperWidget;
import androidx.constraintlayout.motion.widget.Debug;
import androidx.constraintlayout.motion.widget.MotionScene;
import androidx.constraintlayout.widget.ConstraintAttribute;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Constraints;
import androidx.constraintlayout.widget.R;
import androidx.core.os.EnvironmentCompat;
import androidx.exifinterface.media.ExifInterface;
import java.io.IOException;
import java.io.Writer;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes.dex */
public class ConstraintSet {
    private static final int ALPHA = 43;
    private static final int ANIMATE_CIRCLE_ANGLE_TO = 82;
    private static final int ANIMATE_RELATIVE_TO = 64;
    private static final int BARRIER_ALLOWS_GONE_WIDGETS = 75;
    private static final int BARRIER_DIRECTION = 72;
    private static final int BARRIER_MARGIN = 73;
    private static final int BARRIER_TYPE = 1;
    public static final int BASELINE = 5;
    private static final int BASELINE_MARGIN = 93;
    private static final int BASELINE_TO_BASELINE = 1;
    private static final int BASELINE_TO_BOTTOM = 92;
    private static final int BASELINE_TO_TOP = 91;
    public static final int BOTTOM = 4;
    private static final int BOTTOM_MARGIN = 2;
    private static final int BOTTOM_TO_BOTTOM = 3;
    private static final int BOTTOM_TO_TOP = 4;
    public static final int CHAIN_PACKED = 2;
    public static final int CHAIN_SPREAD = 0;
    public static final int CHAIN_SPREAD_INSIDE = 1;
    private static final int CHAIN_USE_RTL = 71;
    private static final int CIRCLE = 61;
    private static final int CIRCLE_ANGLE = 63;
    private static final int CIRCLE_RADIUS = 62;
    public static final int CIRCLE_REFERENCE = 8;
    private static final int CONSTRAINED_HEIGHT = 81;
    private static final int CONSTRAINED_WIDTH = 80;
    private static final int CONSTRAINT_REFERENCED_IDS = 74;
    private static final int CONSTRAINT_TAG = 77;
    private static final boolean DEBUG = false;
    private static final int DIMENSION_RATIO = 5;
    private static final int DRAW_PATH = 66;
    private static final int EDITOR_ABSOLUTE_X = 6;
    private static final int EDITOR_ABSOLUTE_Y = 7;
    private static final int ELEVATION = 44;
    public static final int END = 7;
    private static final int END_MARGIN = 8;
    private static final int END_TO_END = 9;
    private static final int END_TO_START = 10;
    private static final String ERROR_MESSAGE = "XML parser error must be within a Constraint ";
    public static final int GONE = 8;
    private static final int GONE_BASELINE_MARGIN = 94;
    private static final int GONE_BOTTOM_MARGIN = 11;
    private static final int GONE_END_MARGIN = 12;
    private static final int GONE_LEFT_MARGIN = 13;
    private static final int GONE_RIGHT_MARGIN = 14;
    private static final int GONE_START_MARGIN = 15;
    private static final int GONE_TOP_MARGIN = 16;
    private static final int GUIDELINE_USE_RTL = 99;
    private static final int GUIDE_BEGIN = 17;
    private static final int GUIDE_END = 18;
    private static final int GUIDE_PERCENT = 19;
    private static final int HEIGHT_DEFAULT = 55;
    private static final int HEIGHT_MAX = 57;
    private static final int HEIGHT_MIN = 59;
    private static final int HEIGHT_PERCENT = 70;
    public static final int HORIZONTAL = 0;
    private static final int HORIZONTAL_BIAS = 20;
    public static final int HORIZONTAL_GUIDELINE = 0;
    private static final int HORIZONTAL_STYLE = 41;
    private static final int HORIZONTAL_WEIGHT = 39;
    private static final int INTERNAL_MATCH_CONSTRAINT = -3;
    private static final int INTERNAL_MATCH_PARENT = -1;
    private static final int INTERNAL_WRAP_CONTENT = -2;
    private static final int INTERNAL_WRAP_CONTENT_CONSTRAINED = -4;
    public static final int INVISIBLE = 4;
    private static final String KEY_PERCENT_PARENT = "parent";
    private static final String KEY_RATIO = "ratio";
    private static final String KEY_WEIGHT = "weight";
    private static final int LAYOUT_CONSTRAINT_HEIGHT = 96;
    private static final int LAYOUT_CONSTRAINT_WIDTH = 95;
    private static final int LAYOUT_HEIGHT = 21;
    private static final int LAYOUT_VISIBILITY = 22;
    private static final int LAYOUT_WIDTH = 23;
    private static final int LAYOUT_WRAP_BEHAVIOR = 97;
    public static final int LEFT = 1;
    private static final int LEFT_MARGIN = 24;
    private static final int LEFT_TO_LEFT = 25;
    private static final int LEFT_TO_RIGHT = 26;
    public static final int MATCH_CONSTRAINT = 0;
    public static final int MATCH_CONSTRAINT_PERCENT = 2;
    public static final int MATCH_CONSTRAINT_SPREAD = 0;
    public static final int MATCH_CONSTRAINT_WRAP = 1;
    private static final int MOTION_STAGGER = 79;
    private static final int MOTION_TARGET = 98;
    private static final int ORIENTATION = 27;
    public static final int PARENT_ID = 0;
    private static final int PATH_MOTION_ARC = 76;
    private static final int PROGRESS = 68;
    private static final int QUANTIZE_MOTION_INTERPOLATOR = 86;
    private static final int QUANTIZE_MOTION_INTERPOLATOR_ID = 89;
    private static final int QUANTIZE_MOTION_INTERPOLATOR_STR = 90;
    private static final int QUANTIZE_MOTION_INTERPOLATOR_TYPE = 88;
    private static final int QUANTIZE_MOTION_PHASE = 85;
    private static final int QUANTIZE_MOTION_STEPS = 84;
    public static final int RIGHT = 2;
    private static final int RIGHT_MARGIN = 28;
    private static final int RIGHT_TO_LEFT = 29;
    private static final int RIGHT_TO_RIGHT = 30;
    public static final int ROTATE_LEFT_OF_PORTRATE = 4;
    public static final int ROTATE_NONE = 0;
    public static final int ROTATE_PORTRATE_OF_LEFT = 2;
    public static final int ROTATE_PORTRATE_OF_RIGHT = 1;
    public static final int ROTATE_RIGHT_OF_PORTRATE = 3;
    private static final int ROTATION = 60;
    private static final int ROTATION_X = 45;
    private static final int ROTATION_Y = 46;
    private static final int SCALE_X = 47;
    private static final int SCALE_Y = 48;
    public static final int START = 6;
    private static final int START_MARGIN = 31;
    private static final int START_TO_END = 32;
    private static final int START_TO_START = 33;
    private static final String TAG = "ConstraintSet";
    public static final int TOP = 3;
    private static final int TOP_MARGIN = 34;
    private static final int TOP_TO_BOTTOM = 35;
    private static final int TOP_TO_TOP = 36;
    private static final int TRANSFORM_PIVOT_TARGET = 83;
    private static final int TRANSFORM_PIVOT_X = 49;
    private static final int TRANSFORM_PIVOT_Y = 50;
    private static final int TRANSITION_EASING = 65;
    private static final int TRANSITION_PATH_ROTATE = 67;
    private static final int TRANSLATION_X = 51;
    private static final int TRANSLATION_Y = 52;
    private static final int TRANSLATION_Z = 53;
    public static final int UNSET = -1;
    private static final int UNUSED = 87;
    public static final int VERTICAL = 1;
    private static final int VERTICAL_BIAS = 37;
    public static final int VERTICAL_GUIDELINE = 1;
    private static final int VERTICAL_STYLE = 42;
    private static final int VERTICAL_WEIGHT = 40;
    private static final int VIEW_ID = 38;
    private static final int VISIBILITY_MODE = 78;
    public static final int VISIBILITY_MODE_IGNORE = 1;
    public static final int VISIBILITY_MODE_NORMAL = 0;
    public static final int VISIBLE = 0;
    private static final int WIDTH_DEFAULT = 54;
    private static final int WIDTH_MAX = 56;
    private static final int WIDTH_MIN = 58;
    private static final int WIDTH_PERCENT = 69;
    public static final int WRAP_CONTENT = -2;
    public String mIdString;
    private boolean mValidate;
    private static final int[] VISIBILITY_FLAGS = {0, 4, 8};
    private static SparseIntArray mapToConstant = new SparseIntArray();
    private static SparseIntArray overrideMapToConstant = new SparseIntArray();
    public String derivedState = "";
    public int mRotate = 0;
    private HashMap<String, ConstraintAttribute> mSavedAttributes = new HashMap<>();
    private boolean mForceId = true;
    private HashMap<Integer, Constraint> mConstraints = new HashMap<>();

    public static class Constraint {
        Delta mDelta;
        String mTargetString;
        int mViewId;
        public final PropertySet propertySet = new PropertySet();
        public final Motion motion = new Motion();
        public final Layout layout = new Layout();
        public final Transform transform = new Transform();
        public HashMap<String, ConstraintAttribute> mCustomConstraints = new HashMap<>();

        public static class Delta {
            private static final int INITIAL_BOOLEAN = 4;
            private static final int INITIAL_FLOAT = 10;
            private static final int INITIAL_INT = 10;
            private static final int INITIAL_STRING = 5;
            int[] mTypeInt = new int[10];
            int[] mValueInt = new int[10];
            int mCountInt = 0;
            int[] mTypeFloat = new int[10];
            float[] mValueFloat = new float[10];
            int mCountFloat = 0;
            int[] mTypeString = new int[5];
            String[] mValueString = new String[5];
            int mCountString = 0;
            int[] mTypeBoolean = new int[4];
            boolean[] mValueBoolean = new boolean[4];
            int mCountBoolean = 0;

            public void add(int r42, float f) {
                int r02 = this.mCountFloat;
                int[] r12 = this.mTypeFloat;
                if (r02 >= r12.length) {
                    this.mTypeFloat = Arrays.copyOf(r12, r12.length * 2);
                    float[] fArr = this.mValueFloat;
                    this.mValueFloat = Arrays.copyOf(fArr, fArr.length * 2);
                }
                int[] r03 = this.mTypeFloat;
                int r13 = this.mCountFloat;
                r03[r13] = r42;
                float[] fArr2 = this.mValueFloat;
                this.mCountFloat = r13 + 1;
                fArr2[r13] = f;
            }

            public void add(int r42, int r52) {
                int r02 = this.mCountInt;
                int[] r12 = this.mTypeInt;
                if (r02 >= r12.length) {
                    this.mTypeInt = Arrays.copyOf(r12, r12.length * 2);
                    int[] r03 = this.mValueInt;
                    this.mValueInt = Arrays.copyOf(r03, r03.length * 2);
                }
                int[] r04 = this.mTypeInt;
                int r13 = this.mCountInt;
                r04[r13] = r42;
                int[] r43 = this.mValueInt;
                this.mCountInt = r13 + 1;
                r43[r13] = r52;
            }

            public void add(int r42, String str) {
                int r02 = this.mCountString;
                int[] r12 = this.mTypeString;
                if (r02 >= r12.length) {
                    this.mTypeString = Arrays.copyOf(r12, r12.length * 2);
                    String[] strArr = this.mValueString;
                    this.mValueString = (String[]) Arrays.copyOf(strArr, strArr.length * 2);
                }
                int[] r03 = this.mTypeString;
                int r13 = this.mCountString;
                r03[r13] = r42;
                String[] strArr2 = this.mValueString;
                this.mCountString = r13 + 1;
                strArr2[r13] = str;
            }

            public void add(int r42, boolean z10) {
                int r02 = this.mCountBoolean;
                int[] r12 = this.mTypeBoolean;
                if (r02 >= r12.length) {
                    this.mTypeBoolean = Arrays.copyOf(r12, r12.length * 2);
                    boolean[] zArr = this.mValueBoolean;
                    this.mValueBoolean = Arrays.copyOf(zArr, zArr.length * 2);
                }
                int[] r03 = this.mTypeBoolean;
                int r13 = this.mCountBoolean;
                r03[r13] = r42;
                boolean[] zArr2 = this.mValueBoolean;
                this.mCountBoolean = r13 + 1;
                zArr2[r13] = z10;
            }

            public void applyDelta(Constraint constraint) {
                for (int r12 = 0; r12 < this.mCountInt; r12++) {
                    ConstraintSet.setDeltaValue(constraint, this.mTypeInt[r12], this.mValueInt[r12]);
                }
                for (int r13 = 0; r13 < this.mCountFloat; r13++) {
                    ConstraintSet.setDeltaValue(constraint, this.mTypeFloat[r13], this.mValueFloat[r13]);
                }
                for (int r14 = 0; r14 < this.mCountString; r14++) {
                    ConstraintSet.setDeltaValue(constraint, this.mTypeString[r14], this.mValueString[r14]);
                }
                for (int r02 = 0; r02 < this.mCountBoolean; r02++) {
                    ConstraintSet.setDeltaValue(constraint, this.mTypeBoolean[r02], this.mValueBoolean[r02]);
                }
            }

            @SuppressLint({"LogConditional"})
            public void printDelta(String str) {
                Log.v(str, "int");
                for (int r12 = 0; r12 < this.mCountInt; r12++) {
                    Log.v(str, this.mTypeInt[r12] + " = " + this.mValueInt[r12]);
                }
                Log.v(str, TypedValues.Custom.S_FLOAT);
                for (int r13 = 0; r13 < this.mCountFloat; r13++) {
                    Log.v(str, this.mTypeFloat[r13] + " = " + this.mValueFloat[r13]);
                }
                Log.v(str, "strings");
                for (int r14 = 0; r14 < this.mCountString; r14++) {
                    Log.v(str, this.mTypeString[r14] + " = " + this.mValueString[r14]);
                }
                Log.v(str, TypedValues.Custom.S_BOOLEAN);
                for (int r02 = 0; r02 < this.mCountBoolean; r02++) {
                    Log.v(str, this.mTypeBoolean[r02] + " = " + this.mValueBoolean[r02]);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void fillFrom(int r22, ConstraintLayout.LayoutParams layoutParams) {
            this.mViewId = r22;
            Layout layout = this.layout;
            layout.leftToLeft = layoutParams.leftToLeft;
            layout.leftToRight = layoutParams.leftToRight;
            layout.rightToLeft = layoutParams.rightToLeft;
            layout.rightToRight = layoutParams.rightToRight;
            layout.topToTop = layoutParams.topToTop;
            layout.topToBottom = layoutParams.topToBottom;
            layout.bottomToTop = layoutParams.bottomToTop;
            layout.bottomToBottom = layoutParams.bottomToBottom;
            layout.baselineToBaseline = layoutParams.baselineToBaseline;
            layout.baselineToTop = layoutParams.baselineToTop;
            layout.baselineToBottom = layoutParams.baselineToBottom;
            layout.startToEnd = layoutParams.startToEnd;
            layout.startToStart = layoutParams.startToStart;
            layout.endToStart = layoutParams.endToStart;
            layout.endToEnd = layoutParams.endToEnd;
            layout.horizontalBias = layoutParams.horizontalBias;
            layout.verticalBias = layoutParams.verticalBias;
            layout.dimensionRatio = layoutParams.dimensionRatio;
            layout.circleConstraint = layoutParams.circleConstraint;
            layout.circleRadius = layoutParams.circleRadius;
            layout.circleAngle = layoutParams.circleAngle;
            layout.editorAbsoluteX = layoutParams.editorAbsoluteX;
            layout.editorAbsoluteY = layoutParams.editorAbsoluteY;
            layout.orientation = layoutParams.orientation;
            layout.guidePercent = layoutParams.guidePercent;
            layout.guideBegin = layoutParams.guideBegin;
            layout.guideEnd = layoutParams.guideEnd;
            layout.mWidth = ((ViewGroup.MarginLayoutParams) layoutParams).width;
            layout.mHeight = ((ViewGroup.MarginLayoutParams) layoutParams).height;
            layout.leftMargin = ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin;
            layout.rightMargin = ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
            layout.topMargin = ((ViewGroup.MarginLayoutParams) layoutParams).topMargin;
            layout.bottomMargin = ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
            layout.baselineMargin = layoutParams.baselineMargin;
            layout.verticalWeight = layoutParams.verticalWeight;
            layout.horizontalWeight = layoutParams.horizontalWeight;
            layout.verticalChainStyle = layoutParams.verticalChainStyle;
            layout.horizontalChainStyle = layoutParams.horizontalChainStyle;
            layout.constrainedWidth = layoutParams.constrainedWidth;
            layout.constrainedHeight = layoutParams.constrainedHeight;
            layout.widthDefault = layoutParams.matchConstraintDefaultWidth;
            layout.heightDefault = layoutParams.matchConstraintDefaultHeight;
            layout.widthMax = layoutParams.matchConstraintMaxWidth;
            layout.heightMax = layoutParams.matchConstraintMaxHeight;
            layout.widthMin = layoutParams.matchConstraintMinWidth;
            layout.heightMin = layoutParams.matchConstraintMinHeight;
            layout.widthPercent = layoutParams.matchConstraintPercentWidth;
            layout.heightPercent = layoutParams.matchConstraintPercentHeight;
            layout.mConstraintTag = layoutParams.constraintTag;
            layout.goneTopMargin = layoutParams.goneTopMargin;
            layout.goneBottomMargin = layoutParams.goneBottomMargin;
            layout.goneLeftMargin = layoutParams.goneLeftMargin;
            layout.goneRightMargin = layoutParams.goneRightMargin;
            layout.goneStartMargin = layoutParams.goneStartMargin;
            layout.goneEndMargin = layoutParams.goneEndMargin;
            layout.goneBaselineMargin = layoutParams.goneBaselineMargin;
            layout.mWrapBehavior = layoutParams.wrapBehaviorInParent;
            layout.endMargin = layoutParams.getMarginEnd();
            this.layout.startMargin = layoutParams.getMarginStart();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void fillFromConstraints(int r22, Constraints.LayoutParams layoutParams) {
            fillFrom(r22, layoutParams);
            this.propertySet.alpha = layoutParams.alpha;
            Transform transform = this.transform;
            transform.rotation = layoutParams.rotation;
            transform.rotationX = layoutParams.rotationX;
            transform.rotationY = layoutParams.rotationY;
            transform.scaleX = layoutParams.scaleX;
            transform.scaleY = layoutParams.scaleY;
            transform.transformPivotX = layoutParams.transformPivotX;
            transform.transformPivotY = layoutParams.transformPivotY;
            transform.translationX = layoutParams.translationX;
            transform.translationY = layoutParams.translationY;
            transform.translationZ = layoutParams.translationZ;
            transform.elevation = layoutParams.elevation;
            transform.applyElevation = layoutParams.applyElevation;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void fillFromConstraints(ConstraintHelper constraintHelper, int r22, Constraints.LayoutParams layoutParams) {
            fillFromConstraints(r22, layoutParams);
            if (constraintHelper instanceof Barrier) {
                Layout layout = this.layout;
                layout.mHelperType = 1;
                Barrier barrier = (Barrier) constraintHelper;
                layout.mBarrierDirection = barrier.getType();
                this.layout.mReferenceIds = barrier.getReferencedIds();
                this.layout.mBarrierMargin = barrier.getMargin();
            }
        }

        private ConstraintAttribute get(String str, ConstraintAttribute.AttributeType attributeType) {
            if (!this.mCustomConstraints.containsKey(str)) {
                ConstraintAttribute constraintAttribute = new ConstraintAttribute(str, attributeType);
                this.mCustomConstraints.put(str, constraintAttribute);
                return constraintAttribute;
            }
            ConstraintAttribute constraintAttribute2 = this.mCustomConstraints.get(str);
            if (constraintAttribute2.getType() == attributeType) {
                return constraintAttribute2;
            }
            throw new IllegalArgumentException("ConstraintAttribute is already a " + constraintAttribute2.getType().name());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setColorValue(String str, int r32) {
            get(str, ConstraintAttribute.AttributeType.COLOR_TYPE).setColorValue(r32);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setFloatValue(String str, float f) {
            get(str, ConstraintAttribute.AttributeType.FLOAT_TYPE).setFloatValue(f);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setIntValue(String str, int r32) {
            get(str, ConstraintAttribute.AttributeType.INT_TYPE).setIntValue(r32);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setStringValue(String str, String str2) {
            get(str, ConstraintAttribute.AttributeType.STRING_TYPE).setStringValue(str2);
        }

        public void applyDelta(Constraint constraint) {
            Delta delta = this.mDelta;
            if (delta != null) {
                delta.applyDelta(constraint);
            }
        }

        public void applyTo(ConstraintLayout.LayoutParams layoutParams) {
            Layout layout = this.layout;
            layoutParams.leftToLeft = layout.leftToLeft;
            layoutParams.leftToRight = layout.leftToRight;
            layoutParams.rightToLeft = layout.rightToLeft;
            layoutParams.rightToRight = layout.rightToRight;
            layoutParams.topToTop = layout.topToTop;
            layoutParams.topToBottom = layout.topToBottom;
            layoutParams.bottomToTop = layout.bottomToTop;
            layoutParams.bottomToBottom = layout.bottomToBottom;
            layoutParams.baselineToBaseline = layout.baselineToBaseline;
            layoutParams.baselineToTop = layout.baselineToTop;
            layoutParams.baselineToBottom = layout.baselineToBottom;
            layoutParams.startToEnd = layout.startToEnd;
            layoutParams.startToStart = layout.startToStart;
            layoutParams.endToStart = layout.endToStart;
            layoutParams.endToEnd = layout.endToEnd;
            ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin = layout.leftMargin;
            ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin = layout.rightMargin;
            ((ViewGroup.MarginLayoutParams) layoutParams).topMargin = layout.topMargin;
            ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin = layout.bottomMargin;
            layoutParams.goneStartMargin = layout.goneStartMargin;
            layoutParams.goneEndMargin = layout.goneEndMargin;
            layoutParams.goneTopMargin = layout.goneTopMargin;
            layoutParams.goneBottomMargin = layout.goneBottomMargin;
            layoutParams.horizontalBias = layout.horizontalBias;
            layoutParams.verticalBias = layout.verticalBias;
            layoutParams.circleConstraint = layout.circleConstraint;
            layoutParams.circleRadius = layout.circleRadius;
            layoutParams.circleAngle = layout.circleAngle;
            layoutParams.dimensionRatio = layout.dimensionRatio;
            layoutParams.editorAbsoluteX = layout.editorAbsoluteX;
            layoutParams.editorAbsoluteY = layout.editorAbsoluteY;
            layoutParams.verticalWeight = layout.verticalWeight;
            layoutParams.horizontalWeight = layout.horizontalWeight;
            layoutParams.verticalChainStyle = layout.verticalChainStyle;
            layoutParams.horizontalChainStyle = layout.horizontalChainStyle;
            layoutParams.constrainedWidth = layout.constrainedWidth;
            layoutParams.constrainedHeight = layout.constrainedHeight;
            layoutParams.matchConstraintDefaultWidth = layout.widthDefault;
            layoutParams.matchConstraintDefaultHeight = layout.heightDefault;
            layoutParams.matchConstraintMaxWidth = layout.widthMax;
            layoutParams.matchConstraintMaxHeight = layout.heightMax;
            layoutParams.matchConstraintMinWidth = layout.widthMin;
            layoutParams.matchConstraintMinHeight = layout.heightMin;
            layoutParams.matchConstraintPercentWidth = layout.widthPercent;
            layoutParams.matchConstraintPercentHeight = layout.heightPercent;
            layoutParams.orientation = layout.orientation;
            layoutParams.guidePercent = layout.guidePercent;
            layoutParams.guideBegin = layout.guideBegin;
            layoutParams.guideEnd = layout.guideEnd;
            ((ViewGroup.MarginLayoutParams) layoutParams).width = layout.mWidth;
            ((ViewGroup.MarginLayoutParams) layoutParams).height = layout.mHeight;
            String str = layout.mConstraintTag;
            if (str != null) {
                layoutParams.constraintTag = str;
            }
            layoutParams.wrapBehaviorInParent = layout.mWrapBehavior;
            layoutParams.setMarginStart(layout.startMargin);
            layoutParams.setMarginEnd(this.layout.endMargin);
            layoutParams.validate();
        }

        /* renamed from: clone, reason: merged with bridge method [inline-methods] */
        public Constraint m11clone() {
            Constraint constraint = new Constraint();
            constraint.layout.copyFrom(this.layout);
            constraint.motion.copyFrom(this.motion);
            constraint.propertySet.copyFrom(this.propertySet);
            constraint.transform.copyFrom(this.transform);
            constraint.mViewId = this.mViewId;
            constraint.mDelta = this.mDelta;
            return constraint;
        }

        public void printDelta(String str) {
            Delta delta = this.mDelta;
            if (delta != null) {
                delta.printDelta(str);
            } else {
                Log.v(str, "DELTA IS NULL");
            }
        }
    }

    public static class Layout {
        private static final int BARRIER_ALLOWS_GONE_WIDGETS = 75;
        private static final int BARRIER_DIRECTION = 72;
        private static final int BARRIER_MARGIN = 73;
        private static final int BASELINE_MARGIN = 80;
        private static final int BASELINE_TO_BASELINE = 1;
        private static final int BASELINE_TO_BOTTOM = 78;
        private static final int BASELINE_TO_TOP = 77;
        private static final int BOTTOM_MARGIN = 2;
        private static final int BOTTOM_TO_BOTTOM = 3;
        private static final int BOTTOM_TO_TOP = 4;
        private static final int CHAIN_USE_RTL = 71;
        private static final int CIRCLE = 61;
        private static final int CIRCLE_ANGLE = 63;
        private static final int CIRCLE_RADIUS = 62;
        private static final int CONSTRAINED_HEIGHT = 88;
        private static final int CONSTRAINED_WIDTH = 87;
        private static final int CONSTRAINT_REFERENCED_IDS = 74;
        private static final int CONSTRAINT_TAG = 89;
        private static final int DIMENSION_RATIO = 5;
        private static final int EDITOR_ABSOLUTE_X = 6;
        private static final int EDITOR_ABSOLUTE_Y = 7;
        private static final int END_MARGIN = 8;
        private static final int END_TO_END = 9;
        private static final int END_TO_START = 10;
        private static final int GONE_BASELINE_MARGIN = 79;
        private static final int GONE_BOTTOM_MARGIN = 11;
        private static final int GONE_END_MARGIN = 12;
        private static final int GONE_LEFT_MARGIN = 13;
        private static final int GONE_RIGHT_MARGIN = 14;
        private static final int GONE_START_MARGIN = 15;
        private static final int GONE_TOP_MARGIN = 16;
        private static final int GUIDE_BEGIN = 17;
        private static final int GUIDE_END = 18;
        private static final int GUIDE_PERCENT = 19;
        private static final int GUIDE_USE_RTL = 90;
        private static final int HEIGHT_DEFAULT = 82;
        private static final int HEIGHT_MAX = 83;
        private static final int HEIGHT_MIN = 85;
        private static final int HEIGHT_PERCENT = 70;
        private static final int HORIZONTAL_BIAS = 20;
        private static final int HORIZONTAL_STYLE = 39;
        private static final int HORIZONTAL_WEIGHT = 37;
        private static final int LAYOUT_CONSTRAINT_HEIGHT = 42;
        private static final int LAYOUT_CONSTRAINT_WIDTH = 41;
        private static final int LAYOUT_HEIGHT = 21;
        private static final int LAYOUT_WIDTH = 22;
        private static final int LAYOUT_WRAP_BEHAVIOR = 76;
        private static final int LEFT_MARGIN = 23;
        private static final int LEFT_TO_LEFT = 24;
        private static final int LEFT_TO_RIGHT = 25;
        private static final int ORIENTATION = 26;
        private static final int RIGHT_MARGIN = 27;
        private static final int RIGHT_TO_LEFT = 28;
        private static final int RIGHT_TO_RIGHT = 29;
        private static final int START_MARGIN = 30;
        private static final int START_TO_END = 31;
        private static final int START_TO_START = 32;
        private static final int TOP_MARGIN = 33;
        private static final int TOP_TO_BOTTOM = 34;
        private static final int TOP_TO_TOP = 35;
        public static final int UNSET = -1;
        public static final int UNSET_GONE_MARGIN = Integer.MIN_VALUE;
        private static final int UNUSED = 91;
        private static final int VERTICAL_BIAS = 36;
        private static final int VERTICAL_STYLE = 40;
        private static final int VERTICAL_WEIGHT = 38;
        private static final int WIDTH_DEFAULT = 81;
        private static final int WIDTH_MAX = 84;
        private static final int WIDTH_MIN = 86;
        private static final int WIDTH_PERCENT = 69;
        private static SparseIntArray mapToConstant;
        public String mConstraintTag;
        public int mHeight;
        public String mReferenceIdString;
        public int[] mReferenceIds;
        public int mWidth;
        public boolean mIsGuideline = false;
        public boolean mApply = false;
        public boolean mOverride = false;
        public int guideBegin = -1;
        public int guideEnd = -1;
        public float guidePercent = -1.0f;
        public boolean guidelineUseRtl = true;
        public int leftToLeft = -1;
        public int leftToRight = -1;
        public int rightToLeft = -1;
        public int rightToRight = -1;
        public int topToTop = -1;
        public int topToBottom = -1;
        public int bottomToTop = -1;
        public int bottomToBottom = -1;
        public int baselineToBaseline = -1;
        public int baselineToTop = -1;
        public int baselineToBottom = -1;
        public int startToEnd = -1;
        public int startToStart = -1;
        public int endToStart = -1;
        public int endToEnd = -1;
        public float horizontalBias = 0.5f;
        public float verticalBias = 0.5f;
        public String dimensionRatio = null;
        public int circleConstraint = -1;
        public int circleRadius = 0;
        public float circleAngle = 0.0f;
        public int editorAbsoluteX = -1;
        public int editorAbsoluteY = -1;
        public int orientation = -1;
        public int leftMargin = 0;
        public int rightMargin = 0;
        public int topMargin = 0;
        public int bottomMargin = 0;
        public int endMargin = 0;
        public int startMargin = 0;
        public int baselineMargin = 0;
        public int goneLeftMargin = Integer.MIN_VALUE;
        public int goneTopMargin = Integer.MIN_VALUE;
        public int goneRightMargin = Integer.MIN_VALUE;
        public int goneBottomMargin = Integer.MIN_VALUE;
        public int goneEndMargin = Integer.MIN_VALUE;
        public int goneStartMargin = Integer.MIN_VALUE;
        public int goneBaselineMargin = Integer.MIN_VALUE;
        public float verticalWeight = -1.0f;
        public float horizontalWeight = -1.0f;
        public int horizontalChainStyle = 0;
        public int verticalChainStyle = 0;
        public int widthDefault = 0;
        public int heightDefault = 0;
        public int widthMax = 0;
        public int heightMax = 0;
        public int widthMin = 0;
        public int heightMin = 0;
        public float widthPercent = 1.0f;
        public float heightPercent = 1.0f;
        public int mBarrierDirection = -1;
        public int mBarrierMargin = 0;
        public int mHelperType = -1;
        public boolean constrainedWidth = false;
        public boolean constrainedHeight = false;
        public boolean mBarrierAllowsGoneWidgets = true;
        public int mWrapBehavior = 0;

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            mapToConstant = sparseIntArray;
            sparseIntArray.append(R.styleable.Layout_layout_constraintLeft_toLeftOf, 24);
            mapToConstant.append(R.styleable.Layout_layout_constraintLeft_toRightOf, 25);
            mapToConstant.append(R.styleable.Layout_layout_constraintRight_toLeftOf, 28);
            mapToConstant.append(R.styleable.Layout_layout_constraintRight_toRightOf, 29);
            mapToConstant.append(R.styleable.Layout_layout_constraintTop_toTopOf, 35);
            mapToConstant.append(R.styleable.Layout_layout_constraintTop_toBottomOf, 34);
            mapToConstant.append(R.styleable.Layout_layout_constraintBottom_toTopOf, 4);
            mapToConstant.append(R.styleable.Layout_layout_constraintBottom_toBottomOf, 3);
            mapToConstant.append(R.styleable.Layout_layout_constraintBaseline_toBaselineOf, 1);
            mapToConstant.append(R.styleable.Layout_layout_editor_absoluteX, 6);
            mapToConstant.append(R.styleable.Layout_layout_editor_absoluteY, 7);
            mapToConstant.append(R.styleable.Layout_layout_constraintGuide_begin, 17);
            mapToConstant.append(R.styleable.Layout_layout_constraintGuide_end, 18);
            mapToConstant.append(R.styleable.Layout_layout_constraintGuide_percent, 19);
            mapToConstant.append(R.styleable.Layout_guidelineUseRtl, 90);
            mapToConstant.append(R.styleable.Layout_android_orientation, 26);
            mapToConstant.append(R.styleable.Layout_layout_constraintStart_toEndOf, 31);
            mapToConstant.append(R.styleable.Layout_layout_constraintStart_toStartOf, 32);
            mapToConstant.append(R.styleable.Layout_layout_constraintEnd_toStartOf, 10);
            mapToConstant.append(R.styleable.Layout_layout_constraintEnd_toEndOf, 9);
            mapToConstant.append(R.styleable.Layout_layout_goneMarginLeft, 13);
            mapToConstant.append(R.styleable.Layout_layout_goneMarginTop, 16);
            mapToConstant.append(R.styleable.Layout_layout_goneMarginRight, 14);
            mapToConstant.append(R.styleable.Layout_layout_goneMarginBottom, 11);
            mapToConstant.append(R.styleable.Layout_layout_goneMarginStart, 15);
            mapToConstant.append(R.styleable.Layout_layout_goneMarginEnd, 12);
            mapToConstant.append(R.styleable.Layout_layout_constraintVertical_weight, 38);
            mapToConstant.append(R.styleable.Layout_layout_constraintHorizontal_weight, 37);
            mapToConstant.append(R.styleable.Layout_layout_constraintHorizontal_chainStyle, 39);
            mapToConstant.append(R.styleable.Layout_layout_constraintVertical_chainStyle, 40);
            mapToConstant.append(R.styleable.Layout_layout_constraintHorizontal_bias, 20);
            mapToConstant.append(R.styleable.Layout_layout_constraintVertical_bias, 36);
            mapToConstant.append(R.styleable.Layout_layout_constraintDimensionRatio, 5);
            mapToConstant.append(R.styleable.Layout_layout_constraintLeft_creator, 91);
            mapToConstant.append(R.styleable.Layout_layout_constraintTop_creator, 91);
            mapToConstant.append(R.styleable.Layout_layout_constraintRight_creator, 91);
            mapToConstant.append(R.styleable.Layout_layout_constraintBottom_creator, 91);
            mapToConstant.append(R.styleable.Layout_layout_constraintBaseline_creator, 91);
            mapToConstant.append(R.styleable.Layout_android_layout_marginLeft, 23);
            mapToConstant.append(R.styleable.Layout_android_layout_marginRight, 27);
            mapToConstant.append(R.styleable.Layout_android_layout_marginStart, 30);
            mapToConstant.append(R.styleable.Layout_android_layout_marginEnd, 8);
            mapToConstant.append(R.styleable.Layout_android_layout_marginTop, 33);
            mapToConstant.append(R.styleable.Layout_android_layout_marginBottom, 2);
            mapToConstant.append(R.styleable.Layout_android_layout_width, 22);
            mapToConstant.append(R.styleable.Layout_android_layout_height, 21);
            mapToConstant.append(R.styleable.Layout_layout_constraintWidth, 41);
            mapToConstant.append(R.styleable.Layout_layout_constraintHeight, 42);
            mapToConstant.append(R.styleable.Layout_layout_constrainedWidth, 41);
            mapToConstant.append(R.styleable.Layout_layout_constrainedHeight, 42);
            mapToConstant.append(R.styleable.Layout_layout_wrapBehaviorInParent, 76);
            mapToConstant.append(R.styleable.Layout_layout_constraintCircle, 61);
            mapToConstant.append(R.styleable.Layout_layout_constraintCircleRadius, 62);
            mapToConstant.append(R.styleable.Layout_layout_constraintCircleAngle, 63);
            mapToConstant.append(R.styleable.Layout_layout_constraintWidth_percent, 69);
            mapToConstant.append(R.styleable.Layout_layout_constraintHeight_percent, 70);
            mapToConstant.append(R.styleable.Layout_chainUseRtl, 71);
            mapToConstant.append(R.styleable.Layout_barrierDirection, 72);
            mapToConstant.append(R.styleable.Layout_barrierMargin, 73);
            mapToConstant.append(R.styleable.Layout_constraint_referenced_ids, 74);
            mapToConstant.append(R.styleable.Layout_barrierAllowsGoneWidgets, 75);
        }

        public void copyFrom(Layout layout) {
            this.mIsGuideline = layout.mIsGuideline;
            this.mWidth = layout.mWidth;
            this.mApply = layout.mApply;
            this.mHeight = layout.mHeight;
            this.guideBegin = layout.guideBegin;
            this.guideEnd = layout.guideEnd;
            this.guidePercent = layout.guidePercent;
            this.guidelineUseRtl = layout.guidelineUseRtl;
            this.leftToLeft = layout.leftToLeft;
            this.leftToRight = layout.leftToRight;
            this.rightToLeft = layout.rightToLeft;
            this.rightToRight = layout.rightToRight;
            this.topToTop = layout.topToTop;
            this.topToBottom = layout.topToBottom;
            this.bottomToTop = layout.bottomToTop;
            this.bottomToBottom = layout.bottomToBottom;
            this.baselineToBaseline = layout.baselineToBaseline;
            this.baselineToTop = layout.baselineToTop;
            this.baselineToBottom = layout.baselineToBottom;
            this.startToEnd = layout.startToEnd;
            this.startToStart = layout.startToStart;
            this.endToStart = layout.endToStart;
            this.endToEnd = layout.endToEnd;
            this.horizontalBias = layout.horizontalBias;
            this.verticalBias = layout.verticalBias;
            this.dimensionRatio = layout.dimensionRatio;
            this.circleConstraint = layout.circleConstraint;
            this.circleRadius = layout.circleRadius;
            this.circleAngle = layout.circleAngle;
            this.editorAbsoluteX = layout.editorAbsoluteX;
            this.editorAbsoluteY = layout.editorAbsoluteY;
            this.orientation = layout.orientation;
            this.leftMargin = layout.leftMargin;
            this.rightMargin = layout.rightMargin;
            this.topMargin = layout.topMargin;
            this.bottomMargin = layout.bottomMargin;
            this.endMargin = layout.endMargin;
            this.startMargin = layout.startMargin;
            this.baselineMargin = layout.baselineMargin;
            this.goneLeftMargin = layout.goneLeftMargin;
            this.goneTopMargin = layout.goneTopMargin;
            this.goneRightMargin = layout.goneRightMargin;
            this.goneBottomMargin = layout.goneBottomMargin;
            this.goneEndMargin = layout.goneEndMargin;
            this.goneStartMargin = layout.goneStartMargin;
            this.goneBaselineMargin = layout.goneBaselineMargin;
            this.verticalWeight = layout.verticalWeight;
            this.horizontalWeight = layout.horizontalWeight;
            this.horizontalChainStyle = layout.horizontalChainStyle;
            this.verticalChainStyle = layout.verticalChainStyle;
            this.widthDefault = layout.widthDefault;
            this.heightDefault = layout.heightDefault;
            this.widthMax = layout.widthMax;
            this.heightMax = layout.heightMax;
            this.widthMin = layout.widthMin;
            this.heightMin = layout.heightMin;
            this.widthPercent = layout.widthPercent;
            this.heightPercent = layout.heightPercent;
            this.mBarrierDirection = layout.mBarrierDirection;
            this.mBarrierMargin = layout.mBarrierMargin;
            this.mHelperType = layout.mHelperType;
            this.mConstraintTag = layout.mConstraintTag;
            int[] r02 = layout.mReferenceIds;
            if (r02 == null || layout.mReferenceIdString != null) {
                this.mReferenceIds = null;
            } else {
                this.mReferenceIds = Arrays.copyOf(r02, r02.length);
            }
            this.mReferenceIdString = layout.mReferenceIdString;
            this.constrainedWidth = layout.constrainedWidth;
            this.constrainedHeight = layout.constrainedHeight;
            this.mBarrierAllowsGoneWidgets = layout.mBarrierAllowsGoneWidgets;
            this.mWrapBehavior = layout.mWrapBehavior;
        }

        public void dump(MotionScene motionScene, StringBuilder sb2) throws IllegalAccessException, IllegalArgumentException {
            Field[] declaredFields = getClass().getDeclaredFields();
            sb2.append("\n");
            for (Field field : declaredFields) {
                String name = field.getName();
                if (!Modifier.isStatic(field.getModifiers())) {
                    try {
                        Object obj = field.get(this);
                        Class<?> type = field.getType();
                        if (type == Integer.TYPE) {
                            Integer num = (Integer) obj;
                            if (num.intValue() != -1) {
                                Object objLookUpConstraintName = motionScene.lookUpConstraintName(num.intValue());
                                sb2.append("    ");
                                sb2.append(name);
                                sb2.append(" = \"");
                                sb2.append(objLookUpConstraintName == null ? num : objLookUpConstraintName);
                                sb2.append("\"\n");
                            }
                        } else if (type == Float.TYPE) {
                            Float f = (Float) obj;
                            if (f.floatValue() != -1.0f) {
                                sb2.append("    ");
                                sb2.append(name);
                                sb2.append(" = \"");
                                sb2.append(f);
                                sb2.append("\"\n");
                            }
                        }
                    } catch (IllegalAccessException e10) {
                        e10.printStackTrace();
                    }
                }
            }
        }

        public void fillFromAttributeList(Context context, AttributeSet attributeSet) {
            StringBuilder sb2;
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.Layout);
            this.mApply = true;
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int r22 = 0; r22 < indexCount; r22++) {
                int index = typedArrayObtainStyledAttributes.getIndex(r22);
                int r42 = mapToConstant.get(index);
                switch (r42) {
                    case 1:
                        this.baselineToBaseline = ConstraintSet.lookupID(typedArrayObtainStyledAttributes, index, this.baselineToBaseline);
                        break;
                    case 2:
                        this.bottomMargin = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.bottomMargin);
                        break;
                    case 3:
                        this.bottomToBottom = ConstraintSet.lookupID(typedArrayObtainStyledAttributes, index, this.bottomToBottom);
                        break;
                    case 4:
                        this.bottomToTop = ConstraintSet.lookupID(typedArrayObtainStyledAttributes, index, this.bottomToTop);
                        break;
                    case 5:
                        this.dimensionRatio = typedArrayObtainStyledAttributes.getString(index);
                        break;
                    case 6:
                        this.editorAbsoluteX = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.editorAbsoluteX);
                        break;
                    case 7:
                        this.editorAbsoluteY = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.editorAbsoluteY);
                        break;
                    case 8:
                        this.endMargin = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.endMargin);
                        break;
                    case 9:
                        this.endToEnd = ConstraintSet.lookupID(typedArrayObtainStyledAttributes, index, this.endToEnd);
                        break;
                    case 10:
                        this.endToStart = ConstraintSet.lookupID(typedArrayObtainStyledAttributes, index, this.endToStart);
                        break;
                    case 11:
                        this.goneBottomMargin = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.goneBottomMargin);
                        break;
                    case 12:
                        this.goneEndMargin = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.goneEndMargin);
                        break;
                    case 13:
                        this.goneLeftMargin = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.goneLeftMargin);
                        break;
                    case 14:
                        this.goneRightMargin = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.goneRightMargin);
                        break;
                    case 15:
                        this.goneStartMargin = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.goneStartMargin);
                        break;
                    case 16:
                        this.goneTopMargin = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.goneTopMargin);
                        break;
                    case 17:
                        this.guideBegin = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.guideBegin);
                        break;
                    case 18:
                        this.guideEnd = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.guideEnd);
                        break;
                    case 19:
                        this.guidePercent = typedArrayObtainStyledAttributes.getFloat(index, this.guidePercent);
                        break;
                    case 20:
                        this.horizontalBias = typedArrayObtainStyledAttributes.getFloat(index, this.horizontalBias);
                        break;
                    case 21:
                        this.mHeight = typedArrayObtainStyledAttributes.getLayoutDimension(index, this.mHeight);
                        break;
                    case 22:
                        this.mWidth = typedArrayObtainStyledAttributes.getLayoutDimension(index, this.mWidth);
                        break;
                    case 23:
                        this.leftMargin = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.leftMargin);
                        break;
                    case 24:
                        this.leftToLeft = ConstraintSet.lookupID(typedArrayObtainStyledAttributes, index, this.leftToLeft);
                        break;
                    case 25:
                        this.leftToRight = ConstraintSet.lookupID(typedArrayObtainStyledAttributes, index, this.leftToRight);
                        break;
                    case 26:
                        this.orientation = typedArrayObtainStyledAttributes.getInt(index, this.orientation);
                        break;
                    case 27:
                        this.rightMargin = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.rightMargin);
                        break;
                    case 28:
                        this.rightToLeft = ConstraintSet.lookupID(typedArrayObtainStyledAttributes, index, this.rightToLeft);
                        break;
                    case 29:
                        this.rightToRight = ConstraintSet.lookupID(typedArrayObtainStyledAttributes, index, this.rightToRight);
                        break;
                    case 30:
                        this.startMargin = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.startMargin);
                        break;
                    case 31:
                        this.startToEnd = ConstraintSet.lookupID(typedArrayObtainStyledAttributes, index, this.startToEnd);
                        break;
                    case 32:
                        this.startToStart = ConstraintSet.lookupID(typedArrayObtainStyledAttributes, index, this.startToStart);
                        break;
                    case 33:
                        this.topMargin = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.topMargin);
                        break;
                    case 34:
                        this.topToBottom = ConstraintSet.lookupID(typedArrayObtainStyledAttributes, index, this.topToBottom);
                        break;
                    case 35:
                        this.topToTop = ConstraintSet.lookupID(typedArrayObtainStyledAttributes, index, this.topToTop);
                        break;
                    case 36:
                        this.verticalBias = typedArrayObtainStyledAttributes.getFloat(index, this.verticalBias);
                        break;
                    case 37:
                        this.horizontalWeight = typedArrayObtainStyledAttributes.getFloat(index, this.horizontalWeight);
                        break;
                    case 38:
                        this.verticalWeight = typedArrayObtainStyledAttributes.getFloat(index, this.verticalWeight);
                        break;
                    case 39:
                        this.horizontalChainStyle = typedArrayObtainStyledAttributes.getInt(index, this.horizontalChainStyle);
                        break;
                    case 40:
                        this.verticalChainStyle = typedArrayObtainStyledAttributes.getInt(index, this.verticalChainStyle);
                        break;
                    case 41:
                        ConstraintSet.parseDimensionConstraints(this, typedArrayObtainStyledAttributes, index, 0);
                        break;
                    case 42:
                        ConstraintSet.parseDimensionConstraints(this, typedArrayObtainStyledAttributes, index, 1);
                        break;
                    default:
                        switch (r42) {
                            case 61:
                                this.circleConstraint = ConstraintSet.lookupID(typedArrayObtainStyledAttributes, index, this.circleConstraint);
                                break;
                            case 62:
                                this.circleRadius = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.circleRadius);
                                break;
                            case 63:
                                this.circleAngle = typedArrayObtainStyledAttributes.getFloat(index, this.circleAngle);
                                break;
                            default:
                                switch (r42) {
                                    case 69:
                                        this.widthPercent = typedArrayObtainStyledAttributes.getFloat(index, 1.0f);
                                        continue;
                                    case 70:
                                        this.heightPercent = typedArrayObtainStyledAttributes.getFloat(index, 1.0f);
                                        continue;
                                    case 71:
                                        Log.e(ConstraintSet.TAG, "CURRENTLY UNSUPPORTED");
                                        continue;
                                    case 72:
                                        this.mBarrierDirection = typedArrayObtainStyledAttributes.getInt(index, this.mBarrierDirection);
                                        continue;
                                    case 73:
                                        this.mBarrierMargin = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.mBarrierMargin);
                                        continue;
                                    case 74:
                                        this.mReferenceIdString = typedArrayObtainStyledAttributes.getString(index);
                                        continue;
                                    case 75:
                                        this.mBarrierAllowsGoneWidgets = typedArrayObtainStyledAttributes.getBoolean(index, this.mBarrierAllowsGoneWidgets);
                                        continue;
                                    case 76:
                                        this.mWrapBehavior = typedArrayObtainStyledAttributes.getInt(index, this.mWrapBehavior);
                                        continue;
                                    case 77:
                                        this.baselineToTop = ConstraintSet.lookupID(typedArrayObtainStyledAttributes, index, this.baselineToTop);
                                        continue;
                                    case 78:
                                        this.baselineToBottom = ConstraintSet.lookupID(typedArrayObtainStyledAttributes, index, this.baselineToBottom);
                                        continue;
                                    case 79:
                                        this.goneBaselineMargin = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.goneBaselineMargin);
                                        continue;
                                    case 80:
                                        this.baselineMargin = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.baselineMargin);
                                        continue;
                                    case 81:
                                        this.widthDefault = typedArrayObtainStyledAttributes.getInt(index, this.widthDefault);
                                        continue;
                                    case 82:
                                        this.heightDefault = typedArrayObtainStyledAttributes.getInt(index, this.heightDefault);
                                        continue;
                                    case 83:
                                        this.heightMax = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.heightMax);
                                        continue;
                                    case 84:
                                        this.widthMax = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.widthMax);
                                        continue;
                                    case 85:
                                        this.heightMin = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.heightMin);
                                        continue;
                                    case 86:
                                        this.widthMin = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.widthMin);
                                        continue;
                                    case 87:
                                        this.constrainedWidth = typedArrayObtainStyledAttributes.getBoolean(index, this.constrainedWidth);
                                        continue;
                                    case 88:
                                        this.constrainedHeight = typedArrayObtainStyledAttributes.getBoolean(index, this.constrainedHeight);
                                        continue;
                                    case 89:
                                        this.mConstraintTag = typedArrayObtainStyledAttributes.getString(index);
                                        continue;
                                    case 90:
                                        this.guidelineUseRtl = typedArrayObtainStyledAttributes.getBoolean(index, this.guidelineUseRtl);
                                        continue;
                                    case 91:
                                        sb2 = new StringBuilder("unused attribute 0x");
                                        break;
                                    default:
                                        sb2 = new StringBuilder("Unknown attribute 0x");
                                        break;
                                }
                                sb2.append(Integer.toHexString(index));
                                sb2.append("   ");
                                sb2.append(mapToConstant.get(index));
                                Log.w(ConstraintSet.TAG, sb2.toString());
                                break;
                        }
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    public static class Motion {
        private static final int ANIMATE_CIRCLE_ANGLE_TO = 6;
        private static final int ANIMATE_RELATIVE_TO = 5;
        private static final int INTERPOLATOR_REFERENCE_ID = -2;
        private static final int INTERPOLATOR_UNDEFINED = -3;
        private static final int MOTION_DRAW_PATH = 4;
        private static final int MOTION_STAGGER = 7;
        private static final int PATH_MOTION_ARC = 2;
        private static final int QUANTIZE_MOTION_INTERPOLATOR = 10;
        private static final int QUANTIZE_MOTION_PHASE = 9;
        private static final int QUANTIZE_MOTION_STEPS = 8;
        private static final int SPLINE_STRING = -1;
        private static final int TRANSITION_EASING = 3;
        private static final int TRANSITION_PATH_ROTATE = 1;
        private static SparseIntArray mapToConstant;
        public boolean mApply = false;
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

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            mapToConstant = sparseIntArray;
            sparseIntArray.append(R.styleable.Motion_motionPathRotate, 1);
            mapToConstant.append(R.styleable.Motion_pathMotionArc, 2);
            mapToConstant.append(R.styleable.Motion_transitionEasing, 3);
            mapToConstant.append(R.styleable.Motion_drawPath, 4);
            mapToConstant.append(R.styleable.Motion_animateRelativeTo, 5);
            mapToConstant.append(R.styleable.Motion_animateCircleAngleTo, 6);
            mapToConstant.append(R.styleable.Motion_motionStagger, 7);
            mapToConstant.append(R.styleable.Motion_quantizeMotionSteps, 8);
            mapToConstant.append(R.styleable.Motion_quantizeMotionPhase, 9);
            mapToConstant.append(R.styleable.Motion_quantizeMotionInterpolator, 10);
        }

        public void copyFrom(Motion motion) {
            this.mApply = motion.mApply;
            this.mAnimateRelativeTo = motion.mAnimateRelativeTo;
            this.mTransitionEasing = motion.mTransitionEasing;
            this.mPathMotionArc = motion.mPathMotionArc;
            this.mDrawPath = motion.mDrawPath;
            this.mPathRotate = motion.mPathRotate;
            this.mMotionStagger = motion.mMotionStagger;
            this.mPolarRelativeTo = motion.mPolarRelativeTo;
        }

        public void fillFromAttributeList(Context context, AttributeSet attributeSet) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.Motion);
            this.mApply = true;
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int r22 = 0; r22 < indexCount; r22++) {
                int index = typedArrayObtainStyledAttributes.getIndex(r22);
                switch (mapToConstant.get(index)) {
                    case 1:
                        this.mPathRotate = typedArrayObtainStyledAttributes.getFloat(index, this.mPathRotate);
                        break;
                    case 2:
                        this.mPathMotionArc = typedArrayObtainStyledAttributes.getInt(index, this.mPathMotionArc);
                        break;
                    case 3:
                        this.mTransitionEasing = typedArrayObtainStyledAttributes.peekValue(index).type == 3 ? typedArrayObtainStyledAttributes.getString(index) : Easing.NAMED_EASING[typedArrayObtainStyledAttributes.getInteger(index, 0)];
                        break;
                    case 4:
                        this.mDrawPath = typedArrayObtainStyledAttributes.getInt(index, 0);
                        break;
                    case 5:
                        this.mAnimateRelativeTo = ConstraintSet.lookupID(typedArrayObtainStyledAttributes, index, this.mAnimateRelativeTo);
                        break;
                    case 6:
                        this.mAnimateCircleAngleTo = typedArrayObtainStyledAttributes.getInteger(index, this.mAnimateCircleAngleTo);
                        break;
                    case 7:
                        this.mMotionStagger = typedArrayObtainStyledAttributes.getFloat(index, this.mMotionStagger);
                        break;
                    case 8:
                        this.mQuantizeMotionSteps = typedArrayObtainStyledAttributes.getInteger(index, this.mQuantizeMotionSteps);
                        break;
                    case 9:
                        this.mQuantizeMotionPhase = typedArrayObtainStyledAttributes.getFloat(index, this.mQuantizeMotionPhase);
                        break;
                    case 10:
                        int r42 = typedArrayObtainStyledAttributes.peekValue(index).type;
                        if (r42 == 1) {
                            int resourceId = typedArrayObtainStyledAttributes.getResourceId(index, -1);
                            this.mQuantizeInterpolatorID = resourceId;
                            if (resourceId != -1) {
                                this.mQuantizeInterpolatorType = -2;
                                break;
                            } else {
                                break;
                            }
                        } else if (r42 != 3) {
                            this.mQuantizeInterpolatorType = typedArrayObtainStyledAttributes.getInteger(index, this.mQuantizeInterpolatorID);
                            break;
                        } else {
                            String string = typedArrayObtainStyledAttributes.getString(index);
                            this.mQuantizeInterpolatorString = string;
                            if (string.indexOf("/") <= 0) {
                                this.mQuantizeInterpolatorType = -1;
                                break;
                            } else {
                                this.mQuantizeInterpolatorID = typedArrayObtainStyledAttributes.getResourceId(index, -1);
                                this.mQuantizeInterpolatorType = -2;
                            }
                        }
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    public static class PropertySet {
        public boolean mApply = false;
        public int visibility = 0;
        public int mVisibilityMode = 0;
        public float alpha = 1.0f;
        public float mProgress = Float.NaN;

        public void copyFrom(PropertySet propertySet) {
            this.mApply = propertySet.mApply;
            this.visibility = propertySet.visibility;
            this.alpha = propertySet.alpha;
            this.mProgress = propertySet.mProgress;
            this.mVisibilityMode = propertySet.mVisibilityMode;
        }

        public void fillFromAttributeList(Context context, AttributeSet attributeSet) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.PropertySet);
            this.mApply = true;
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int r02 = 0; r02 < indexCount; r02++) {
                int index = typedArrayObtainStyledAttributes.getIndex(r02);
                if (index == R.styleable.PropertySet_android_alpha) {
                    this.alpha = typedArrayObtainStyledAttributes.getFloat(index, this.alpha);
                } else if (index == R.styleable.PropertySet_android_visibility) {
                    this.visibility = typedArrayObtainStyledAttributes.getInt(index, this.visibility);
                    this.visibility = ConstraintSet.VISIBILITY_FLAGS[this.visibility];
                } else if (index == R.styleable.PropertySet_visibilityMode) {
                    this.mVisibilityMode = typedArrayObtainStyledAttributes.getInt(index, this.mVisibilityMode);
                } else if (index == R.styleable.PropertySet_motionProgress) {
                    this.mProgress = typedArrayObtainStyledAttributes.getFloat(index, this.mProgress);
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    public static class Transform {
        private static final int ELEVATION = 11;
        private static final int ROTATION = 1;
        private static final int ROTATION_X = 2;
        private static final int ROTATION_Y = 3;
        private static final int SCALE_X = 4;
        private static final int SCALE_Y = 5;
        private static final int TRANSFORM_PIVOT_TARGET = 12;
        private static final int TRANSFORM_PIVOT_X = 6;
        private static final int TRANSFORM_PIVOT_Y = 7;
        private static final int TRANSLATION_X = 8;
        private static final int TRANSLATION_Y = 9;
        private static final int TRANSLATION_Z = 10;
        private static SparseIntArray mapToConstant;
        public boolean mApply = false;
        public float rotation = 0.0f;
        public float rotationX = 0.0f;
        public float rotationY = 0.0f;
        public float scaleX = 1.0f;
        public float scaleY = 1.0f;
        public float transformPivotX = Float.NaN;
        public float transformPivotY = Float.NaN;
        public int transformPivotTarget = -1;
        public float translationX = 0.0f;
        public float translationY = 0.0f;
        public float translationZ = 0.0f;
        public boolean applyElevation = false;
        public float elevation = 0.0f;

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            mapToConstant = sparseIntArray;
            sparseIntArray.append(R.styleable.Transform_android_rotation, 1);
            mapToConstant.append(R.styleable.Transform_android_rotationX, 2);
            mapToConstant.append(R.styleable.Transform_android_rotationY, 3);
            mapToConstant.append(R.styleable.Transform_android_scaleX, 4);
            mapToConstant.append(R.styleable.Transform_android_scaleY, 5);
            mapToConstant.append(R.styleable.Transform_android_transformPivotX, 6);
            mapToConstant.append(R.styleable.Transform_android_transformPivotY, 7);
            mapToConstant.append(R.styleable.Transform_android_translationX, 8);
            mapToConstant.append(R.styleable.Transform_android_translationY, 9);
            mapToConstant.append(R.styleable.Transform_android_translationZ, 10);
            mapToConstant.append(R.styleable.Transform_android_elevation, 11);
            mapToConstant.append(R.styleable.Transform_transformPivotTarget, 12);
        }

        public void copyFrom(Transform transform) {
            this.mApply = transform.mApply;
            this.rotation = transform.rotation;
            this.rotationX = transform.rotationX;
            this.rotationY = transform.rotationY;
            this.scaleX = transform.scaleX;
            this.scaleY = transform.scaleY;
            this.transformPivotX = transform.transformPivotX;
            this.transformPivotY = transform.transformPivotY;
            this.transformPivotTarget = transform.transformPivotTarget;
            this.translationX = transform.translationX;
            this.translationY = transform.translationY;
            this.translationZ = transform.translationZ;
            this.applyElevation = transform.applyElevation;
            this.elevation = transform.elevation;
        }

        public void fillFromAttributeList(Context context, AttributeSet attributeSet) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.Transform);
            this.mApply = true;
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int r12 = 0; r12 < indexCount; r12++) {
                int index = typedArrayObtainStyledAttributes.getIndex(r12);
                switch (mapToConstant.get(index)) {
                    case 1:
                        this.rotation = typedArrayObtainStyledAttributes.getFloat(index, this.rotation);
                        break;
                    case 2:
                        this.rotationX = typedArrayObtainStyledAttributes.getFloat(index, this.rotationX);
                        break;
                    case 3:
                        this.rotationY = typedArrayObtainStyledAttributes.getFloat(index, this.rotationY);
                        break;
                    case 4:
                        this.scaleX = typedArrayObtainStyledAttributes.getFloat(index, this.scaleX);
                        break;
                    case 5:
                        this.scaleY = typedArrayObtainStyledAttributes.getFloat(index, this.scaleY);
                        break;
                    case 6:
                        this.transformPivotX = typedArrayObtainStyledAttributes.getDimension(index, this.transformPivotX);
                        break;
                    case 7:
                        this.transformPivotY = typedArrayObtainStyledAttributes.getDimension(index, this.transformPivotY);
                        break;
                    case 8:
                        this.translationX = typedArrayObtainStyledAttributes.getDimension(index, this.translationX);
                        break;
                    case 9:
                        this.translationY = typedArrayObtainStyledAttributes.getDimension(index, this.translationY);
                        break;
                    case 10:
                        this.translationZ = typedArrayObtainStyledAttributes.getDimension(index, this.translationZ);
                        break;
                    case 11:
                        this.applyElevation = true;
                        this.elevation = typedArrayObtainStyledAttributes.getDimension(index, this.elevation);
                        break;
                    case 12:
                        this.transformPivotTarget = ConstraintSet.lookupID(typedArrayObtainStyledAttributes, index, this.transformPivotTarget);
                        break;
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    public class WriteJsonEngine {
        private static final String SPACE = "       ";
        Context context;
        int flags;
        ConstraintLayout layout;
        Writer writer;
        int unknownCount = 0;
        final String LEFT = "'left'";
        final String RIGHT = "'right'";
        final String BASELINE = "'baseline'";
        final String BOTTOM = "'bottom'";
        final String TOP = "'top'";
        final String START = "'start'";
        final String END = "'end'";
        HashMap<Integer, String> idMap = new HashMap<>();

        public WriteJsonEngine(Writer writer, ConstraintLayout constraintLayout, int r42) throws IOException {
            this.writer = writer;
            this.layout = constraintLayout;
            this.context = constraintLayout.getContext();
            this.flags = r42;
        }

        private void writeDimension(String str, int r52, int r6, float f, int r82, int r92, boolean z10) throws IOException {
            Writer writer;
            StringBuilder sb2;
            String str2;
            Writer writer2;
            StringBuilder sb3;
            String str3;
            String str4;
            if (r52 != 0) {
                if (r52 == -2) {
                    writer = this.writer;
                    sb2 = new StringBuilder(SPACE);
                    sb2.append(str);
                    str2 = ": 'wrap'\n";
                } else {
                    if (r52 != -1) {
                        this.writer.write(SPACE + str + ": " + r52 + ",\n");
                        return;
                    }
                    writer = this.writer;
                    sb2 = new StringBuilder(SPACE);
                    sb2.append(str);
                    str2 = ": 'parent'\n";
                }
                sb2.append(str2);
                writer.write(sb2.toString());
                return;
            }
            if (r92 == -1 && r82 == -1) {
                if (r6 == 1) {
                    writer2 = this.writer;
                    sb3 = new StringBuilder(SPACE);
                    sb3.append(str);
                    str4 = ": '???????????',\n";
                } else {
                    if (r6 != 2) {
                        return;
                    }
                    writer2 = this.writer;
                    sb3 = new StringBuilder(SPACE);
                    sb3.append(str);
                    sb3.append(": '");
                    sb3.append(f);
                    str4 = "%',\n";
                }
                sb3.append(str4);
            } else {
                if (r6 == 0) {
                    this.writer.write(SPACE + str + ": {'spread' ," + r82 + ", " + r92 + "}\n");
                    return;
                }
                if (r6 == 1) {
                    writer2 = this.writer;
                    sb3 = new StringBuilder(SPACE);
                    sb3.append(str);
                    str3 = ": {'wrap' ,";
                } else {
                    if (r6 != 2) {
                        return;
                    }
                    writer2 = this.writer;
                    sb3 = new StringBuilder(SPACE);
                    sb3.append(str);
                    sb3.append(": {'");
                    sb3.append(f);
                    str3 = "'% ,";
                }
                sb3.append(str3);
                sb3.append(r82);
                sb3.append(", ");
                sb3.append(r92);
                sb3.append("}\n");
            }
            writer2.write(sb3.toString());
        }

        private void writeGuideline(int r12, int r22, int r32, float f) {
        }

        public String getName(int r42) {
            if (this.idMap.containsKey(Integer.valueOf(r42))) {
                return c.h(new StringBuilder("'"), this.idMap.get(Integer.valueOf(r42)), "'");
            }
            if (r42 == 0) {
                return "'parent'";
            }
            String strLookup = lookup(r42);
            this.idMap.put(Integer.valueOf(r42), strLookup);
            return "'" + strLookup + "'";
        }

        public String lookup(int r32) {
            try {
                if (r32 != -1) {
                    return this.context.getResources().getResourceEntryName(r32);
                }
                StringBuilder sb2 = new StringBuilder(EnvironmentCompat.MEDIA_UNKNOWN);
                int r02 = this.unknownCount + 1;
                this.unknownCount = r02;
                sb2.append(r02);
                return sb2.toString();
            } catch (Exception unused) {
                StringBuilder sb3 = new StringBuilder(EnvironmentCompat.MEDIA_UNKNOWN);
                int r03 = this.unknownCount + 1;
                this.unknownCount = r03;
                sb3.append(r03);
                return sb3.toString();
            }
        }

        public void writeCircle(int r32, float f, int r52) throws IOException {
            if (r32 == -1) {
                return;
            }
            this.writer.write("       circle");
            this.writer.write(":[");
            this.writer.write(getName(r32));
            this.writer.write(", " + f);
            this.writer.write(r52 + "]");
        }

        public void writeConstraint(String str, int r42, String str2, int r6, int r72) throws IOException {
            if (r42 == -1) {
                return;
            }
            this.writer.write(SPACE + str);
            this.writer.write(":[");
            this.writer.write(getName(r42));
            this.writer.write(" , ");
            this.writer.write(str2);
            if (r6 != 0) {
                this.writer.write(" , " + r6);
            }
            this.writer.write("],\n");
        }

        public void writeLayout() throws IOException {
            this.writer.write("\n'ConstraintSet':{\n");
            for (Integer num : ConstraintSet.this.mConstraints.keySet()) {
                Constraint constraint = (Constraint) ConstraintSet.this.mConstraints.get(num);
                String name = getName(num.intValue());
                this.writer.write(name + ":{\n");
                Layout layout = constraint.layout;
                writeDimension("height", layout.mHeight, layout.heightDefault, layout.heightPercent, layout.heightMin, layout.heightMax, layout.constrainedHeight);
                writeDimension("width", layout.mWidth, layout.widthDefault, layout.widthPercent, layout.widthMin, layout.widthMax, layout.constrainedWidth);
                writeConstraint("'left'", layout.leftToLeft, "'left'", layout.leftMargin, layout.goneLeftMargin);
                writeConstraint("'left'", layout.leftToRight, "'right'", layout.leftMargin, layout.goneLeftMargin);
                writeConstraint("'right'", layout.rightToLeft, "'left'", layout.rightMargin, layout.goneRightMargin);
                writeConstraint("'right'", layout.rightToRight, "'right'", layout.rightMargin, layout.goneRightMargin);
                writeConstraint("'baseline'", layout.baselineToBaseline, "'baseline'", -1, layout.goneBaselineMargin);
                writeConstraint("'baseline'", layout.baselineToTop, "'top'", -1, layout.goneBaselineMargin);
                writeConstraint("'baseline'", layout.baselineToBottom, "'bottom'", -1, layout.goneBaselineMargin);
                writeConstraint("'top'", layout.topToBottom, "'bottom'", layout.topMargin, layout.goneTopMargin);
                writeConstraint("'top'", layout.topToTop, "'top'", layout.topMargin, layout.goneTopMargin);
                writeConstraint("'bottom'", layout.bottomToBottom, "'bottom'", layout.bottomMargin, layout.goneBottomMargin);
                writeConstraint("'bottom'", layout.bottomToTop, "'top'", layout.bottomMargin, layout.goneBottomMargin);
                writeConstraint("'start'", layout.startToStart, "'start'", layout.startMargin, layout.goneStartMargin);
                writeConstraint("'start'", layout.startToEnd, "'end'", layout.startMargin, layout.goneStartMargin);
                writeConstraint("'end'", layout.endToStart, "'start'", layout.endMargin, layout.goneEndMargin);
                writeConstraint("'end'", layout.endToEnd, "'end'", layout.endMargin, layout.goneEndMargin);
                writeVariable("'horizontalBias'", layout.horizontalBias, 0.5f);
                writeVariable("'verticalBias'", layout.verticalBias, 0.5f);
                writeCircle(layout.circleConstraint, layout.circleAngle, layout.circleRadius);
                writeGuideline(layout.orientation, layout.guideBegin, layout.guideEnd, layout.guidePercent);
                writeVariable("'dimensionRatio'", layout.dimensionRatio);
                writeVariable("'barrierMargin'", layout.mBarrierMargin);
                writeVariable("'type'", layout.mHelperType);
                writeVariable("'ReferenceId'", layout.mReferenceIdString);
                writeVariable("'mBarrierAllowsGoneWidgets'", layout.mBarrierAllowsGoneWidgets, true);
                writeVariable("'WrapBehavior'", layout.mWrapBehavior);
                writeVariable("'verticalWeight'", layout.verticalWeight);
                writeVariable("'horizontalWeight'", layout.horizontalWeight);
                writeVariable("'horizontalChainStyle'", layout.horizontalChainStyle);
                writeVariable("'verticalChainStyle'", layout.verticalChainStyle);
                writeVariable("'barrierDirection'", layout.mBarrierDirection);
                int[] r02 = layout.mReferenceIds;
                if (r02 != null) {
                    writeVariable("'ReferenceIds'", r02);
                }
                this.writer.write("}\n");
            }
            this.writer.write("}\n");
        }

        public void writeVariable(String str, float f) throws IOException {
            if (f == -1.0f) {
                return;
            }
            this.writer.write(SPACE + str);
            this.writer.write(": " + f);
            this.writer.write(",\n");
        }

        public void writeVariable(String str, float f, float f10) throws IOException {
            if (f == f10) {
                return;
            }
            this.writer.write(SPACE + str);
            this.writer.write(": " + f);
            this.writer.write(",\n");
        }

        public void writeVariable(String str, int r52) throws IOException {
            if (r52 == 0 || r52 == -1) {
                return;
            }
            this.writer.write(SPACE + str);
            this.writer.write(":");
            this.writer.write(", " + r52);
            this.writer.write("\n");
        }

        public void writeVariable(String str, String str2) throws IOException {
            if (str2 == null) {
                return;
            }
            this.writer.write(SPACE + str);
            this.writer.write(":");
            this.writer.write(", ".concat(str2));
            this.writer.write("\n");
        }

        public void writeVariable(String str, boolean z10) throws IOException {
            if (z10) {
                this.writer.write(SPACE + str);
                this.writer.write(": " + z10);
                this.writer.write(",\n");
            }
        }

        public void writeVariable(String str, boolean z10, boolean z11) throws IOException {
            if (z10 == z11) {
                return;
            }
            this.writer.write(SPACE + str);
            this.writer.write(": " + z10);
            this.writer.write(",\n");
        }

        public void writeVariable(String str, int[] r52) throws IOException {
            if (r52 == null) {
                return;
            }
            this.writer.write(SPACE + str);
            this.writer.write(": ");
            int r42 = 0;
            while (r42 < r52.length) {
                Writer writer = this.writer;
                StringBuilder sb2 = new StringBuilder();
                sb2.append(r42 == 0 ? "[" : ", ");
                sb2.append(getName(r52[r42]));
                writer.write(sb2.toString());
                r42++;
            }
            this.writer.write("],\n");
        }
    }

    public class WriteXmlEngine {
        private static final String SPACE = "\n       ";
        Context context;
        int flags;
        ConstraintLayout layout;
        Writer writer;
        int unknownCount = 0;
        final String LEFT = "'left'";
        final String RIGHT = "'right'";
        final String BASELINE = "'baseline'";
        final String BOTTOM = "'bottom'";
        final String TOP = "'top'";
        final String START = "'start'";
        final String END = "'end'";
        HashMap<Integer, String> idMap = new HashMap<>();

        public WriteXmlEngine(Writer writer, ConstraintLayout constraintLayout, int r42) throws IOException {
            this.writer = writer;
            this.layout = constraintLayout;
            this.context = constraintLayout.getContext();
            this.flags = r42;
        }

        private void writeBaseDimension(String str, int r42, int r52) throws IOException {
            Writer writer;
            StringBuilder sb2;
            String str2;
            if (r42 != r52) {
                if (r42 == -2) {
                    writer = this.writer;
                    sb2 = new StringBuilder(SPACE);
                    sb2.append(str);
                    str2 = "=\"wrap_content\"";
                } else {
                    if (r42 != -1) {
                        this.writer.write(SPACE + str + "=\"" + r42 + "dp\"");
                        return;
                    }
                    writer = this.writer;
                    sb2 = new StringBuilder(SPACE);
                    sb2.append(str);
                    str2 = "=\"match_parent\"";
                }
                sb2.append(str2);
                writer.write(sb2.toString());
            }
        }

        private void writeBoolen(String str, boolean z10, boolean z11) throws IOException {
            if (z10 != z11) {
                this.writer.write(SPACE + str + "=\"" + z10 + "dp\"");
            }
        }

        private void writeDimension(String str, int r42, int r52) throws IOException {
            if (r42 != r52) {
                this.writer.write(SPACE + str + "=\"" + r42 + "dp\"");
            }
        }

        private void writeEnum(String str, int r42, String[] strArr, int r6) throws IOException {
            if (r42 != r6) {
                Writer writer = this.writer;
                StringBuilder sbL = a.l(SPACE, str, "=\"");
                sbL.append(strArr[r42]);
                sbL.append("\"");
                writer.write(sbL.toString());
            }
        }

        public String getName(int r52) {
            if (this.idMap.containsKey(Integer.valueOf(r52))) {
                return c.h(new StringBuilder("@+id/"), this.idMap.get(Integer.valueOf(r52)), "");
            }
            if (r52 == 0) {
                return ConstraintSet.KEY_PERCENT_PARENT;
            }
            String strLookup = lookup(r52);
            this.idMap.put(Integer.valueOf(r52), strLookup);
            return "@+id/" + strLookup + "";
        }

        public String lookup(int r32) {
            try {
                if (r32 != -1) {
                    return this.context.getResources().getResourceEntryName(r32);
                }
                StringBuilder sb2 = new StringBuilder(EnvironmentCompat.MEDIA_UNKNOWN);
                int r02 = this.unknownCount + 1;
                this.unknownCount = r02;
                sb2.append(r02);
                return sb2.toString();
            } catch (Exception unused) {
                StringBuilder sb3 = new StringBuilder(EnvironmentCompat.MEDIA_UNKNOWN);
                int r03 = this.unknownCount + 1;
                this.unknownCount = r03;
                sb3.append(r03);
                return sb3.toString();
            }
        }

        public void writeCircle(int r32, float f, int r52) throws IOException {
            if (r32 == -1) {
                return;
            }
            this.writer.write("circle");
            this.writer.write(":[");
            this.writer.write(getName(r32));
            this.writer.write(", " + f);
            this.writer.write(r52 + "]");
        }

        public void writeConstraint(String str, int r42, String str2, int r6, int r72) throws IOException {
            if (r42 == -1) {
                return;
            }
            this.writer.write(SPACE + str);
            this.writer.write(":[");
            this.writer.write(getName(r42));
            this.writer.write(" , ");
            this.writer.write(str2);
            if (r6 != 0) {
                this.writer.write(" , " + r6);
            }
            this.writer.write("],\n");
        }

        public void writeLayout() throws IOException {
            this.writer.write("\n<ConstraintSet>\n");
            for (Integer num : ConstraintSet.this.mConstraints.keySet()) {
                Constraint constraint = (Constraint) ConstraintSet.this.mConstraints.get(num);
                String name = getName(num.intValue());
                this.writer.write("  <Constraint");
                this.writer.write("\n       android:id=\"" + name + "\"");
                Layout layout = constraint.layout;
                writeBaseDimension("android:layout_width", layout.mWidth, -5);
                writeBaseDimension("android:layout_height", layout.mHeight, -5);
                writeVariable("app:layout_constraintGuide_begin", layout.guideBegin, -1.0f);
                writeVariable("app:layout_constraintGuide_end", layout.guideEnd, -1.0f);
                writeVariable("app:layout_constraintGuide_percent", layout.guidePercent, -1.0f);
                writeVariable("app:layout_constraintHorizontal_bias", layout.horizontalBias, 0.5f);
                writeVariable("app:layout_constraintVertical_bias", layout.verticalBias, 0.5f);
                writeVariable("app:layout_constraintDimensionRatio", layout.dimensionRatio, (String) null);
                writeXmlConstraint("app:layout_constraintCircle", layout.circleConstraint);
                writeVariable("app:layout_constraintCircleRadius", layout.circleRadius, 0.0f);
                writeVariable("app:layout_constraintCircleAngle", layout.circleAngle, 0.0f);
                writeVariable("android:orientation", layout.orientation, -1.0f);
                writeVariable("app:layout_constraintVertical_weight", layout.verticalWeight, -1.0f);
                writeVariable("app:layout_constraintHorizontal_weight", layout.horizontalWeight, -1.0f);
                writeVariable("app:layout_constraintHorizontal_chainStyle", layout.horizontalChainStyle, 0.0f);
                writeVariable("app:layout_constraintVertical_chainStyle", layout.verticalChainStyle, 0.0f);
                writeVariable("app:barrierDirection", layout.mBarrierDirection, -1.0f);
                writeVariable("app:barrierMargin", layout.mBarrierMargin, 0.0f);
                writeDimension("app:layout_marginLeft", layout.leftMargin, 0);
                writeDimension("app:layout_goneMarginLeft", layout.goneLeftMargin, Integer.MIN_VALUE);
                writeDimension("app:layout_marginRight", layout.rightMargin, 0);
                writeDimension("app:layout_goneMarginRight", layout.goneRightMargin, Integer.MIN_VALUE);
                writeDimension("app:layout_marginStart", layout.startMargin, 0);
                writeDimension("app:layout_goneMarginStart", layout.goneStartMargin, Integer.MIN_VALUE);
                writeDimension("app:layout_marginEnd", layout.endMargin, 0);
                writeDimension("app:layout_goneMarginEnd", layout.goneEndMargin, Integer.MIN_VALUE);
                writeDimension("app:layout_marginTop", layout.topMargin, 0);
                writeDimension("app:layout_goneMarginTop", layout.goneTopMargin, Integer.MIN_VALUE);
                writeDimension("app:layout_marginBottom", layout.bottomMargin, 0);
                writeDimension("app:layout_goneMarginBottom", layout.goneBottomMargin, Integer.MIN_VALUE);
                writeDimension("app:goneBaselineMargin", layout.goneBaselineMargin, Integer.MIN_VALUE);
                writeDimension("app:baselineMargin", layout.baselineMargin, 0);
                writeBoolen("app:layout_constrainedWidth", layout.constrainedWidth, false);
                writeBoolen("app:layout_constrainedHeight", layout.constrainedHeight, false);
                writeBoolen("app:barrierAllowsGoneWidgets", layout.mBarrierAllowsGoneWidgets, true);
                writeVariable("app:layout_wrapBehaviorInParent", layout.mWrapBehavior, 0.0f);
                writeXmlConstraint("app:baselineToBaseline", layout.baselineToBaseline);
                writeXmlConstraint("app:baselineToBottom", layout.baselineToBottom);
                writeXmlConstraint("app:baselineToTop", layout.baselineToTop);
                writeXmlConstraint("app:layout_constraintBottom_toBottomOf", layout.bottomToBottom);
                writeXmlConstraint("app:layout_constraintBottom_toTopOf", layout.bottomToTop);
                writeXmlConstraint("app:layout_constraintEnd_toEndOf", layout.endToEnd);
                writeXmlConstraint("app:layout_constraintEnd_toStartOf", layout.endToStart);
                writeXmlConstraint("app:layout_constraintLeft_toLeftOf", layout.leftToLeft);
                writeXmlConstraint("app:layout_constraintLeft_toRightOf", layout.leftToRight);
                writeXmlConstraint("app:layout_constraintRight_toLeftOf", layout.rightToLeft);
                writeXmlConstraint("app:layout_constraintRight_toRightOf", layout.rightToRight);
                writeXmlConstraint("app:layout_constraintStart_toEndOf", layout.startToEnd);
                writeXmlConstraint("app:layout_constraintStart_toStartOf", layout.startToStart);
                writeXmlConstraint("app:layout_constraintTop_toBottomOf", layout.topToBottom);
                writeXmlConstraint("app:layout_constraintTop_toTopOf", layout.topToTop);
                String[] strArr = {"spread", "wrap", "percent"};
                writeEnum("app:layout_constraintHeight_default", layout.heightDefault, strArr, 0);
                writeVariable("app:layout_constraintHeight_percent", layout.heightPercent, 1.0f);
                writeDimension("app:layout_constraintHeight_min", layout.heightMin, 0);
                writeDimension("app:layout_constraintHeight_max", layout.heightMax, 0);
                writeBoolen("android:layout_constrainedHeight", layout.constrainedHeight, false);
                writeEnum("app:layout_constraintWidth_default", layout.widthDefault, strArr, 0);
                writeVariable("app:layout_constraintWidth_percent", layout.widthPercent, 1.0f);
                writeDimension("app:layout_constraintWidth_min", layout.widthMin, 0);
                writeDimension("app:layout_constraintWidth_max", layout.widthMax, 0);
                writeBoolen("android:layout_constrainedWidth", layout.constrainedWidth, false);
                writeVariable("app:layout_constraintVertical_weight", layout.verticalWeight, -1.0f);
                writeVariable("app:layout_constraintHorizontal_weight", layout.horizontalWeight, -1.0f);
                writeVariable("app:layout_constraintHorizontal_chainStyle", layout.horizontalChainStyle);
                writeVariable("app:layout_constraintVertical_chainStyle", layout.verticalChainStyle);
                writeEnum("app:barrierDirection", layout.mBarrierDirection, new String[]{"left", "right", "top", "bottom", "start", "end"}, -1);
                writeVariable("app:layout_constraintTag", layout.mConstraintTag, (String) null);
                int[] r22 = layout.mReferenceIds;
                if (r22 != null) {
                    writeVariable("'ReferenceIds'", r22);
                }
                this.writer.write(" />\n");
            }
            this.writer.write("</ConstraintSet>\n");
        }

        public void writeVariable(String str, float f, float f10) throws IOException {
            if (f == f10) {
                return;
            }
            this.writer.write(SPACE + str);
            this.writer.write("=\"" + f + "\"");
        }

        public void writeVariable(String str, int r52) throws IOException {
            if (r52 == 0 || r52 == -1) {
                return;
            }
            this.writer.write(SPACE + str + "=\"" + r52 + "\"\n");
        }

        public void writeVariable(String str, String str2) throws IOException {
            if (str2 == null) {
                return;
            }
            this.writer.write(str);
            this.writer.write(":");
            this.writer.write(", ".concat(str2));
            this.writer.write("\n");
        }

        public void writeVariable(String str, String str2, String str3) throws IOException {
            if (str2 == null || str2.equals(str3)) {
                return;
            }
            this.writer.write(SPACE + str);
            this.writer.write("=\"" + str2 + "\"");
        }

        public void writeVariable(String str, int[] r52) throws IOException {
            if (r52 == null) {
                return;
            }
            this.writer.write(SPACE + str);
            this.writer.write(":");
            int r42 = 0;
            while (r42 < r52.length) {
                Writer writer = this.writer;
                StringBuilder sb2 = new StringBuilder();
                sb2.append(r42 == 0 ? "[" : ", ");
                sb2.append(getName(r52[r42]));
                writer.write(sb2.toString());
                r42++;
            }
            this.writer.write("],\n");
        }

        public void writeXmlConstraint(String str, int r52) throws IOException {
            if (r52 == -1) {
                return;
            }
            this.writer.write(SPACE + str);
            this.writer.write("=\"" + getName(r52) + "\"");
        }
    }

    static {
        mapToConstant.append(R.styleable.Constraint_layout_constraintLeft_toLeftOf, 25);
        mapToConstant.append(R.styleable.Constraint_layout_constraintLeft_toRightOf, 26);
        mapToConstant.append(R.styleable.Constraint_layout_constraintRight_toLeftOf, 29);
        mapToConstant.append(R.styleable.Constraint_layout_constraintRight_toRightOf, 30);
        mapToConstant.append(R.styleable.Constraint_layout_constraintTop_toTopOf, 36);
        mapToConstant.append(R.styleable.Constraint_layout_constraintTop_toBottomOf, 35);
        mapToConstant.append(R.styleable.Constraint_layout_constraintBottom_toTopOf, 4);
        mapToConstant.append(R.styleable.Constraint_layout_constraintBottom_toBottomOf, 3);
        mapToConstant.append(R.styleable.Constraint_layout_constraintBaseline_toBaselineOf, 1);
        mapToConstant.append(R.styleable.Constraint_layout_constraintBaseline_toTopOf, 91);
        mapToConstant.append(R.styleable.Constraint_layout_constraintBaseline_toBottomOf, 92);
        mapToConstant.append(R.styleable.Constraint_layout_editor_absoluteX, 6);
        mapToConstant.append(R.styleable.Constraint_layout_editor_absoluteY, 7);
        mapToConstant.append(R.styleable.Constraint_layout_constraintGuide_begin, 17);
        mapToConstant.append(R.styleable.Constraint_layout_constraintGuide_end, 18);
        mapToConstant.append(R.styleable.Constraint_layout_constraintGuide_percent, 19);
        mapToConstant.append(R.styleable.Constraint_guidelineUseRtl, 99);
        mapToConstant.append(R.styleable.Constraint_android_orientation, 27);
        mapToConstant.append(R.styleable.Constraint_layout_constraintStart_toEndOf, 32);
        mapToConstant.append(R.styleable.Constraint_layout_constraintStart_toStartOf, 33);
        mapToConstant.append(R.styleable.Constraint_layout_constraintEnd_toStartOf, 10);
        mapToConstant.append(R.styleable.Constraint_layout_constraintEnd_toEndOf, 9);
        mapToConstant.append(R.styleable.Constraint_layout_goneMarginLeft, 13);
        mapToConstant.append(R.styleable.Constraint_layout_goneMarginTop, 16);
        mapToConstant.append(R.styleable.Constraint_layout_goneMarginRight, 14);
        mapToConstant.append(R.styleable.Constraint_layout_goneMarginBottom, 11);
        mapToConstant.append(R.styleable.Constraint_layout_goneMarginStart, 15);
        mapToConstant.append(R.styleable.Constraint_layout_goneMarginEnd, 12);
        mapToConstant.append(R.styleable.Constraint_layout_constraintVertical_weight, 40);
        mapToConstant.append(R.styleable.Constraint_layout_constraintHorizontal_weight, 39);
        mapToConstant.append(R.styleable.Constraint_layout_constraintHorizontal_chainStyle, 41);
        mapToConstant.append(R.styleable.Constraint_layout_constraintVertical_chainStyle, 42);
        mapToConstant.append(R.styleable.Constraint_layout_constraintHorizontal_bias, 20);
        mapToConstant.append(R.styleable.Constraint_layout_constraintVertical_bias, 37);
        mapToConstant.append(R.styleable.Constraint_layout_constraintDimensionRatio, 5);
        mapToConstant.append(R.styleable.Constraint_layout_constraintLeft_creator, 87);
        mapToConstant.append(R.styleable.Constraint_layout_constraintTop_creator, 87);
        mapToConstant.append(R.styleable.Constraint_layout_constraintRight_creator, 87);
        mapToConstant.append(R.styleable.Constraint_layout_constraintBottom_creator, 87);
        mapToConstant.append(R.styleable.Constraint_layout_constraintBaseline_creator, 87);
        mapToConstant.append(R.styleable.Constraint_android_layout_marginLeft, 24);
        mapToConstant.append(R.styleable.Constraint_android_layout_marginRight, 28);
        mapToConstant.append(R.styleable.Constraint_android_layout_marginStart, 31);
        mapToConstant.append(R.styleable.Constraint_android_layout_marginEnd, 8);
        mapToConstant.append(R.styleable.Constraint_android_layout_marginTop, 34);
        mapToConstant.append(R.styleable.Constraint_android_layout_marginBottom, 2);
        mapToConstant.append(R.styleable.Constraint_android_layout_width, 23);
        mapToConstant.append(R.styleable.Constraint_android_layout_height, 21);
        mapToConstant.append(R.styleable.Constraint_layout_constraintWidth, 95);
        mapToConstant.append(R.styleable.Constraint_layout_constraintHeight, 96);
        mapToConstant.append(R.styleable.Constraint_android_visibility, 22);
        mapToConstant.append(R.styleable.Constraint_android_alpha, 43);
        mapToConstant.append(R.styleable.Constraint_android_elevation, 44);
        mapToConstant.append(R.styleable.Constraint_android_rotationX, 45);
        mapToConstant.append(R.styleable.Constraint_android_rotationY, 46);
        mapToConstant.append(R.styleable.Constraint_android_rotation, 60);
        mapToConstant.append(R.styleable.Constraint_android_scaleX, 47);
        mapToConstant.append(R.styleable.Constraint_android_scaleY, 48);
        mapToConstant.append(R.styleable.Constraint_android_transformPivotX, 49);
        mapToConstant.append(R.styleable.Constraint_android_transformPivotY, 50);
        mapToConstant.append(R.styleable.Constraint_android_translationX, 51);
        mapToConstant.append(R.styleable.Constraint_android_translationY, 52);
        mapToConstant.append(R.styleable.Constraint_android_translationZ, 53);
        mapToConstant.append(R.styleable.Constraint_layout_constraintWidth_default, 54);
        mapToConstant.append(R.styleable.Constraint_layout_constraintHeight_default, 55);
        mapToConstant.append(R.styleable.Constraint_layout_constraintWidth_max, 56);
        mapToConstant.append(R.styleable.Constraint_layout_constraintHeight_max, 57);
        mapToConstant.append(R.styleable.Constraint_layout_constraintWidth_min, 58);
        mapToConstant.append(R.styleable.Constraint_layout_constraintHeight_min, 59);
        mapToConstant.append(R.styleable.Constraint_layout_constraintCircle, 61);
        mapToConstant.append(R.styleable.Constraint_layout_constraintCircleRadius, 62);
        mapToConstant.append(R.styleable.Constraint_layout_constraintCircleAngle, 63);
        mapToConstant.append(R.styleable.Constraint_animateRelativeTo, 64);
        mapToConstant.append(R.styleable.Constraint_transitionEasing, 65);
        mapToConstant.append(R.styleable.Constraint_drawPath, 66);
        mapToConstant.append(R.styleable.Constraint_transitionPathRotate, 67);
        mapToConstant.append(R.styleable.Constraint_motionStagger, 79);
        mapToConstant.append(R.styleable.Constraint_android_id, 38);
        mapToConstant.append(R.styleable.Constraint_motionProgress, 68);
        mapToConstant.append(R.styleable.Constraint_layout_constraintWidth_percent, 69);
        mapToConstant.append(R.styleable.Constraint_layout_constraintHeight_percent, 70);
        mapToConstant.append(R.styleable.Constraint_layout_wrapBehaviorInParent, 97);
        mapToConstant.append(R.styleable.Constraint_chainUseRtl, 71);
        mapToConstant.append(R.styleable.Constraint_barrierDirection, 72);
        mapToConstant.append(R.styleable.Constraint_barrierMargin, 73);
        mapToConstant.append(R.styleable.Constraint_constraint_referenced_ids, 74);
        mapToConstant.append(R.styleable.Constraint_barrierAllowsGoneWidgets, 75);
        mapToConstant.append(R.styleable.Constraint_pathMotionArc, 76);
        mapToConstant.append(R.styleable.Constraint_layout_constraintTag, 77);
        mapToConstant.append(R.styleable.Constraint_visibilityMode, 78);
        mapToConstant.append(R.styleable.Constraint_layout_constrainedWidth, 80);
        mapToConstant.append(R.styleable.Constraint_layout_constrainedHeight, 81);
        mapToConstant.append(R.styleable.Constraint_polarRelativeTo, 82);
        mapToConstant.append(R.styleable.Constraint_transformPivotTarget, 83);
        mapToConstant.append(R.styleable.Constraint_quantizeMotionSteps, 84);
        mapToConstant.append(R.styleable.Constraint_quantizeMotionPhase, 85);
        mapToConstant.append(R.styleable.Constraint_quantizeMotionInterpolator, 86);
        SparseIntArray sparseIntArray = overrideMapToConstant;
        int r12 = R.styleable.ConstraintOverride_layout_editor_absoluteY;
        sparseIntArray.append(r12, 6);
        overrideMapToConstant.append(r12, 7);
        overrideMapToConstant.append(R.styleable.ConstraintOverride_android_orientation, 27);
        overrideMapToConstant.append(R.styleable.ConstraintOverride_layout_goneMarginLeft, 13);
        overrideMapToConstant.append(R.styleable.ConstraintOverride_layout_goneMarginTop, 16);
        overrideMapToConstant.append(R.styleable.ConstraintOverride_layout_goneMarginRight, 14);
        overrideMapToConstant.append(R.styleable.ConstraintOverride_layout_goneMarginBottom, 11);
        overrideMapToConstant.append(R.styleable.ConstraintOverride_layout_goneMarginStart, 15);
        overrideMapToConstant.append(R.styleable.ConstraintOverride_layout_goneMarginEnd, 12);
        overrideMapToConstant.append(R.styleable.ConstraintOverride_layout_constraintVertical_weight, 40);
        overrideMapToConstant.append(R.styleable.ConstraintOverride_layout_constraintHorizontal_weight, 39);
        overrideMapToConstant.append(R.styleable.ConstraintOverride_layout_constraintHorizontal_chainStyle, 41);
        overrideMapToConstant.append(R.styleable.ConstraintOverride_layout_constraintVertical_chainStyle, 42);
        overrideMapToConstant.append(R.styleable.ConstraintOverride_layout_constraintHorizontal_bias, 20);
        overrideMapToConstant.append(R.styleable.ConstraintOverride_layout_constraintVertical_bias, 37);
        overrideMapToConstant.append(R.styleable.ConstraintOverride_layout_constraintDimensionRatio, 5);
        overrideMapToConstant.append(R.styleable.ConstraintOverride_layout_constraintLeft_creator, 87);
        overrideMapToConstant.append(R.styleable.ConstraintOverride_layout_constraintTop_creator, 87);
        overrideMapToConstant.append(R.styleable.ConstraintOverride_layout_constraintRight_creator, 87);
        overrideMapToConstant.append(R.styleable.ConstraintOverride_layout_constraintBottom_creator, 87);
        overrideMapToConstant.append(R.styleable.ConstraintOverride_layout_constraintBaseline_creator, 87);
        overrideMapToConstant.append(R.styleable.ConstraintOverride_android_layout_marginLeft, 24);
        overrideMapToConstant.append(R.styleable.ConstraintOverride_android_layout_marginRight, 28);
        overrideMapToConstant.append(R.styleable.ConstraintOverride_android_layout_marginStart, 31);
        overrideMapToConstant.append(R.styleable.ConstraintOverride_android_layout_marginEnd, 8);
        overrideMapToConstant.append(R.styleable.ConstraintOverride_android_layout_marginTop, 34);
        overrideMapToConstant.append(R.styleable.ConstraintOverride_android_layout_marginBottom, 2);
        overrideMapToConstant.append(R.styleable.ConstraintOverride_android_layout_width, 23);
        overrideMapToConstant.append(R.styleable.ConstraintOverride_android_layout_height, 21);
        overrideMapToConstant.append(R.styleable.ConstraintOverride_layout_constraintWidth, 95);
        overrideMapToConstant.append(R.styleable.ConstraintOverride_layout_constraintHeight, 96);
        overrideMapToConstant.append(R.styleable.ConstraintOverride_android_visibility, 22);
        overrideMapToConstant.append(R.styleable.ConstraintOverride_android_alpha, 43);
        overrideMapToConstant.append(R.styleable.ConstraintOverride_android_elevation, 44);
        overrideMapToConstant.append(R.styleable.ConstraintOverride_android_rotationX, 45);
        overrideMapToConstant.append(R.styleable.ConstraintOverride_android_rotationY, 46);
        overrideMapToConstant.append(R.styleable.ConstraintOverride_android_rotation, 60);
        overrideMapToConstant.append(R.styleable.ConstraintOverride_android_scaleX, 47);
        overrideMapToConstant.append(R.styleable.ConstraintOverride_android_scaleY, 48);
        overrideMapToConstant.append(R.styleable.ConstraintOverride_android_transformPivotX, 49);
        overrideMapToConstant.append(R.styleable.ConstraintOverride_android_transformPivotY, 50);
        overrideMapToConstant.append(R.styleable.ConstraintOverride_android_translationX, 51);
        overrideMapToConstant.append(R.styleable.ConstraintOverride_android_translationY, 52);
        overrideMapToConstant.append(R.styleable.ConstraintOverride_android_translationZ, 53);
        overrideMapToConstant.append(R.styleable.ConstraintOverride_layout_constraintWidth_default, 54);
        overrideMapToConstant.append(R.styleable.ConstraintOverride_layout_constraintHeight_default, 55);
        overrideMapToConstant.append(R.styleable.ConstraintOverride_layout_constraintWidth_max, 56);
        overrideMapToConstant.append(R.styleable.ConstraintOverride_layout_constraintHeight_max, 57);
        overrideMapToConstant.append(R.styleable.ConstraintOverride_layout_constraintWidth_min, 58);
        overrideMapToConstant.append(R.styleable.ConstraintOverride_layout_constraintHeight_min, 59);
        overrideMapToConstant.append(R.styleable.ConstraintOverride_layout_constraintCircleRadius, 62);
        overrideMapToConstant.append(R.styleable.ConstraintOverride_layout_constraintCircleAngle, 63);
        overrideMapToConstant.append(R.styleable.ConstraintOverride_animateRelativeTo, 64);
        overrideMapToConstant.append(R.styleable.ConstraintOverride_transitionEasing, 65);
        overrideMapToConstant.append(R.styleable.ConstraintOverride_drawPath, 66);
        overrideMapToConstant.append(R.styleable.ConstraintOverride_transitionPathRotate, 67);
        overrideMapToConstant.append(R.styleable.ConstraintOverride_motionStagger, 79);
        overrideMapToConstant.append(R.styleable.ConstraintOverride_android_id, 38);
        overrideMapToConstant.append(R.styleable.ConstraintOverride_motionTarget, 98);
        overrideMapToConstant.append(R.styleable.ConstraintOverride_motionProgress, 68);
        overrideMapToConstant.append(R.styleable.ConstraintOverride_layout_constraintWidth_percent, 69);
        overrideMapToConstant.append(R.styleable.ConstraintOverride_layout_constraintHeight_percent, 70);
        overrideMapToConstant.append(R.styleable.ConstraintOverride_chainUseRtl, 71);
        overrideMapToConstant.append(R.styleable.ConstraintOverride_barrierDirection, 72);
        overrideMapToConstant.append(R.styleable.ConstraintOverride_barrierMargin, 73);
        overrideMapToConstant.append(R.styleable.ConstraintOverride_constraint_referenced_ids, 74);
        overrideMapToConstant.append(R.styleable.ConstraintOverride_barrierAllowsGoneWidgets, 75);
        overrideMapToConstant.append(R.styleable.ConstraintOverride_pathMotionArc, 76);
        overrideMapToConstant.append(R.styleable.ConstraintOverride_layout_constraintTag, 77);
        overrideMapToConstant.append(R.styleable.ConstraintOverride_visibilityMode, 78);
        overrideMapToConstant.append(R.styleable.ConstraintOverride_layout_constrainedWidth, 80);
        overrideMapToConstant.append(R.styleable.ConstraintOverride_layout_constrainedHeight, 81);
        overrideMapToConstant.append(R.styleable.ConstraintOverride_polarRelativeTo, 82);
        overrideMapToConstant.append(R.styleable.ConstraintOverride_transformPivotTarget, 83);
        overrideMapToConstant.append(R.styleable.ConstraintOverride_quantizeMotionSteps, 84);
        overrideMapToConstant.append(R.styleable.ConstraintOverride_quantizeMotionPhase, 85);
        overrideMapToConstant.append(R.styleable.ConstraintOverride_quantizeMotionInterpolator, 86);
        overrideMapToConstant.append(R.styleable.ConstraintOverride_layout_wrapBehaviorInParent, 97);
    }

    private void addAttributes(ConstraintAttribute.AttributeType attributeType, String... strArr) {
        for (int r02 = 0; r02 < strArr.length; r02++) {
            if (this.mSavedAttributes.containsKey(strArr[r02])) {
                ConstraintAttribute constraintAttribute = this.mSavedAttributes.get(strArr[r02]);
                if (constraintAttribute != null && constraintAttribute.getType() != attributeType) {
                    throw new IllegalArgumentException("ConstraintAttribute is already a " + constraintAttribute.getType().name());
                }
            } else {
                this.mSavedAttributes.put(strArr[r02], new ConstraintAttribute(strArr[r02], attributeType));
            }
        }
    }

    public static Constraint buildDelta(Context context, XmlPullParser xmlPullParser) {
        AttributeSet attributeSetAsAttributeSet = Xml.asAttributeSet(xmlPullParser);
        Constraint constraint = new Constraint();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSetAsAttributeSet, R.styleable.ConstraintOverride);
        populateOverride(context, constraint, typedArrayObtainStyledAttributes);
        typedArrayObtainStyledAttributes.recycle();
        return constraint;
    }

    private int[] convertReferenceString(View view, String str) throws IllegalAccessException, IllegalArgumentException {
        int identifier;
        Object designInformation;
        String[] strArrSplit = str.split(",");
        Context context = view.getContext();
        int[] r12 = new int[strArrSplit.length];
        int r32 = 0;
        int r42 = 0;
        while (r32 < strArrSplit.length) {
            String strTrim = strArrSplit[r32].trim();
            try {
                identifier = R.id.class.getField(strTrim).getInt(null);
            } catch (Exception unused) {
                identifier = 0;
            }
            if (identifier == 0) {
                identifier = context.getResources().getIdentifier(strTrim, "id", context.getPackageName());
            }
            if (identifier == 0 && view.isInEditMode() && (view.getParent() instanceof ConstraintLayout) && (designInformation = ((ConstraintLayout) view.getParent()).getDesignInformation(0, strTrim)) != null && (designInformation instanceof Integer)) {
                identifier = ((Integer) designInformation).intValue();
            }
            r12[r42] = identifier;
            r32++;
            r42++;
        }
        return r42 != strArrSplit.length ? Arrays.copyOf(r12, r42) : r12;
    }

    private void createHorizontalChain(int r13, int r14, int r15, int r16, int[] r17, float[] fArr, int r19, int r20, int r21) {
        if (r17.length < 2) {
            throw new IllegalArgumentException("must have 2 or more widgets in a chain");
        }
        if (fArr != null && fArr.length != r17.length) {
            throw new IllegalArgumentException("must have 2 or more widgets in a chain");
        }
        if (fArr != null) {
            get(r17[0]).layout.horizontalWeight = fArr[0];
        }
        get(r17[0]).layout.horizontalChainStyle = r19;
        connect(r17[0], r20, r13, r14, -1);
        for (int r10 = 1; r10 < r17.length; r10++) {
            int r11 = r10 - 1;
            connect(r17[r10], r20, r17[r11], r21, -1);
            connect(r17[r11], r21, r17[r10], r20, -1);
            if (fArr != null) {
                get(r17[r10]).layout.horizontalWeight = fArr[r10];
            }
        }
        connect(r17[r17.length - 1], r21, r15, r16, -1);
    }

    private Constraint fillFromAttributeList(Context context, AttributeSet attributeSet, boolean z10) {
        Constraint constraint = new Constraint();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, z10 ? R.styleable.ConstraintOverride : R.styleable.Constraint);
        populateConstraint(context, constraint, typedArrayObtainStyledAttributes, z10);
        typedArrayObtainStyledAttributes.recycle();
        return constraint;
    }

    private Constraint get(int r42) {
        if (!this.mConstraints.containsKey(Integer.valueOf(r42))) {
            this.mConstraints.put(Integer.valueOf(r42), new Constraint());
        }
        return this.mConstraints.get(Integer.valueOf(r42));
    }

    public static String getDebugName(int r6) {
        for (Field field : ConstraintSet.class.getDeclaredFields()) {
            if (field.getName().contains("_") && field.getType() == Integer.TYPE && Modifier.isStatic(field.getModifiers()) && Modifier.isFinal(field.getModifiers())) {
                try {
                    if (field.getInt(null) == r6) {
                        return field.getName();
                    }
                    continue;
                } catch (IllegalAccessException e10) {
                    e10.printStackTrace();
                }
            }
        }
        return "UNKNOWN";
    }

    public static String getLine(Context context, int r32, XmlPullParser xmlPullParser) {
        return ".(" + Debug.getName(context, r32) + ".xml:" + xmlPullParser.getLineNumber() + ") \"" + xmlPullParser.getName() + "\"";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int lookupID(TypedArray typedArray, int r22, int r32) {
        int resourceId = typedArray.getResourceId(r22, r32);
        return resourceId == -1 ? typedArray.getInt(r22, -1) : resourceId;
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x002f  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x003d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void parseDimensionConstraints(java.lang.Object r3, android.content.res.TypedArray r4, int r5, int r6) {
        /*
            if (r3 != 0) goto L3
            return
        L3:
            android.util.TypedValue r0 = r4.peekValue(r5)
            int r0 = r0.type
            r1 = 3
            if (r0 == r1) goto L6a
            r1 = 5
            r2 = 0
            if (r0 == r1) goto L25
            int r4 = r4.getInt(r5, r2)
            r5 = -4
            r0 = -2
            if (r4 == r5) goto L21
            r5 = -3
            if (r4 == r5) goto L2a
            if (r4 == r0) goto L29
            r5 = -1
            if (r4 == r5) goto L29
            goto L2a
        L21:
            r2 = 1
            r4 = 1
            r2 = -2
            goto L2b
        L25:
            int r4 = r4.getDimensionPixelSize(r5, r2)
        L29:
            r2 = r4
        L2a:
            r4 = 0
        L2b:
            boolean r5 = r3 instanceof androidx.constraintlayout.widget.ConstraintLayout.LayoutParams
            if (r5 == 0) goto L3d
            androidx.constraintlayout.widget.ConstraintLayout$LayoutParams r3 = (androidx.constraintlayout.widget.ConstraintLayout.LayoutParams) r3
            if (r6 != 0) goto L38
            r3.width = r2
            r3.constrainedWidth = r4
            goto L69
        L38:
            r3.height = r2
            r3.constrainedHeight = r4
            goto L69
        L3d:
            boolean r5 = r3 instanceof androidx.constraintlayout.widget.ConstraintSet.Layout
            if (r5 == 0) goto L4f
            androidx.constraintlayout.widget.ConstraintSet$Layout r3 = (androidx.constraintlayout.widget.ConstraintSet.Layout) r3
            if (r6 != 0) goto L4a
            r3.mWidth = r2
            r3.constrainedWidth = r4
            goto L69
        L4a:
            r3.mHeight = r2
            r3.constrainedHeight = r4
            goto L69
        L4f:
            boolean r5 = r3 instanceof androidx.constraintlayout.widget.ConstraintSet.Constraint.Delta
            if (r5 == 0) goto L69
            androidx.constraintlayout.widget.ConstraintSet$Constraint$Delta r3 = (androidx.constraintlayout.widget.ConstraintSet.Constraint.Delta) r3
            if (r6 != 0) goto L5f
            r5 = 23
            r3.add(r5, r2)
            r5 = 80
            goto L66
        L5f:
            r5 = 21
            r3.add(r5, r2)
            r5 = 81
        L66:
            r3.add(r5, r4)
        L69:
            return
        L6a:
            java.lang.String r4 = r4.getString(r5)
            parseDimensionConstraintsString(r3, r4, r6)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.widget.ConstraintSet.parseDimensionConstraints(java.lang.Object, android.content.res.TypedArray, int, int):void");
    }

    public static void parseDimensionConstraintsString(Object obj, String str, int r72) throws NumberFormatException {
        int r6;
        int r73;
        if (str == null) {
            return;
        }
        int r02 = str.indexOf(61);
        int length = str.length();
        if (r02 <= 0 || r02 >= length - 1) {
            return;
        }
        String strSubstring = str.substring(0, r02);
        String strSubstring2 = str.substring(r02 + 1);
        if (strSubstring2.length() > 0) {
            String strTrim = strSubstring.trim();
            String strTrim2 = strSubstring2.trim();
            if (KEY_RATIO.equalsIgnoreCase(strTrim)) {
                if (obj instanceof ConstraintLayout.LayoutParams) {
                    ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) obj;
                    if (r72 == 0) {
                        ((ViewGroup.MarginLayoutParams) layoutParams).width = 0;
                    } else {
                        ((ViewGroup.MarginLayoutParams) layoutParams).height = 0;
                    }
                    parseDimensionRatioString(layoutParams, strTrim2);
                    return;
                }
                if (obj instanceof Layout) {
                    ((Layout) obj).dimensionRatio = strTrim2;
                    return;
                } else {
                    if (obj instanceof Constraint.Delta) {
                        ((Constraint.Delta) obj).add(5, strTrim2);
                        return;
                    }
                    return;
                }
            }
            try {
                if (KEY_WEIGHT.equalsIgnoreCase(strTrim)) {
                    float f = Float.parseFloat(strTrim2);
                    if (obj instanceof ConstraintLayout.LayoutParams) {
                        ConstraintLayout.LayoutParams layoutParams2 = (ConstraintLayout.LayoutParams) obj;
                        if (r72 == 0) {
                            ((ViewGroup.MarginLayoutParams) layoutParams2).width = 0;
                            layoutParams2.horizontalWeight = f;
                            return;
                        } else {
                            ((ViewGroup.MarginLayoutParams) layoutParams2).height = 0;
                            layoutParams2.verticalWeight = f;
                            return;
                        }
                    }
                    if (obj instanceof Layout) {
                        Layout layout = (Layout) obj;
                        if (r72 == 0) {
                            layout.mWidth = 0;
                            layout.horizontalWeight = f;
                            return;
                        } else {
                            layout.mHeight = 0;
                            layout.verticalWeight = f;
                            return;
                        }
                    }
                    if (obj instanceof Constraint.Delta) {
                        Constraint.Delta delta = (Constraint.Delta) obj;
                        if (r72 == 0) {
                            delta.add(23, 0);
                            r73 = 39;
                        } else {
                            delta.add(21, 0);
                            r73 = 40;
                        }
                        delta.add(r73, f);
                        return;
                    }
                    return;
                }
                if (KEY_PERCENT_PARENT.equalsIgnoreCase(strTrim)) {
                    float fMax = Math.max(0.0f, Math.min(1.0f, Float.parseFloat(strTrim2)));
                    if (obj instanceof ConstraintLayout.LayoutParams) {
                        ConstraintLayout.LayoutParams layoutParams3 = (ConstraintLayout.LayoutParams) obj;
                        if (r72 == 0) {
                            ((ViewGroup.MarginLayoutParams) layoutParams3).width = 0;
                            layoutParams3.matchConstraintPercentWidth = fMax;
                            layoutParams3.matchConstraintDefaultWidth = 2;
                            return;
                        } else {
                            ((ViewGroup.MarginLayoutParams) layoutParams3).height = 0;
                            layoutParams3.matchConstraintPercentHeight = fMax;
                            layoutParams3.matchConstraintDefaultHeight = 2;
                            return;
                        }
                    }
                    if (obj instanceof Layout) {
                        Layout layout2 = (Layout) obj;
                        if (r72 == 0) {
                            layout2.mWidth = 0;
                            layout2.widthPercent = fMax;
                            layout2.widthDefault = 2;
                            return;
                        } else {
                            layout2.mHeight = 0;
                            layout2.heightPercent = fMax;
                            layout2.heightDefault = 2;
                            return;
                        }
                    }
                    if (obj instanceof Constraint.Delta) {
                        Constraint.Delta delta2 = (Constraint.Delta) obj;
                        if (r72 == 0) {
                            delta2.add(23, 0);
                            r6 = 54;
                        } else {
                            delta2.add(21, 0);
                            r6 = 55;
                        }
                        delta2.add(r6, 2);
                    }
                }
            } catch (NumberFormatException unused) {
            }
        }
    }

    public static void parseDimensionRatioString(ConstraintLayout.LayoutParams layoutParams, String str) {
        float fAbs = Float.NaN;
        int r12 = -1;
        if (str != null) {
            int length = str.length();
            int r32 = str.indexOf(44);
            int r42 = 0;
            if (r32 > 0 && r32 < length - 1) {
                String strSubstring = str.substring(0, r32);
                if (strSubstring.equalsIgnoreCase(ExifInterface.LONGITUDE_WEST)) {
                    r12 = 0;
                } else if (strSubstring.equalsIgnoreCase("H")) {
                    r12 = 1;
                }
                r42 = r32 + 1;
            }
            int r33 = str.indexOf(58);
            try {
                if (r33 < 0 || r33 >= length - 1) {
                    String strSubstring2 = str.substring(r42);
                    if (strSubstring2.length() > 0) {
                        fAbs = Float.parseFloat(strSubstring2);
                    }
                } else {
                    String strSubstring3 = str.substring(r42, r33);
                    String strSubstring4 = str.substring(r33 + 1);
                    if (strSubstring3.length() > 0 && strSubstring4.length() > 0) {
                        float f = Float.parseFloat(strSubstring3);
                        float f10 = Float.parseFloat(strSubstring4);
                        if (f > 0.0f && f10 > 0.0f) {
                            fAbs = r12 == 1 ? Math.abs(f10 / f) : Math.abs(f / f10);
                        }
                    }
                }
            } catch (NumberFormatException unused) {
            }
        }
        layoutParams.dimensionRatio = str;
        layoutParams.dimensionRatioValue = fAbs;
        layoutParams.dimensionRatioSide = r12;
    }

    private void populateConstraint(Context context, Constraint constraint, TypedArray typedArray, boolean z10) {
        Motion motion;
        String string;
        Motion motion2;
        StringBuilder sb2;
        if (z10) {
            populateOverride(context, constraint, typedArray);
            return;
        }
        int indexCount = typedArray.getIndexCount();
        for (int r02 = 0; r02 < indexCount; r02++) {
            int index = typedArray.getIndex(r02);
            if (index != R.styleable.Constraint_android_id && R.styleable.Constraint_android_layout_marginStart != index && R.styleable.Constraint_android_layout_marginEnd != index) {
                constraint.motion.mApply = true;
                constraint.layout.mApply = true;
                constraint.propertySet.mApply = true;
                constraint.transform.mApply = true;
            }
            switch (mapToConstant.get(index)) {
                case 1:
                    Layout layout = constraint.layout;
                    layout.baselineToBaseline = lookupID(typedArray, index, layout.baselineToBaseline);
                    continue;
                case 2:
                    Layout layout2 = constraint.layout;
                    layout2.bottomMargin = typedArray.getDimensionPixelSize(index, layout2.bottomMargin);
                    continue;
                case 3:
                    Layout layout3 = constraint.layout;
                    layout3.bottomToBottom = lookupID(typedArray, index, layout3.bottomToBottom);
                    continue;
                case 4:
                    Layout layout4 = constraint.layout;
                    layout4.bottomToTop = lookupID(typedArray, index, layout4.bottomToTop);
                    continue;
                case 5:
                    constraint.layout.dimensionRatio = typedArray.getString(index);
                    continue;
                case 6:
                    Layout layout5 = constraint.layout;
                    layout5.editorAbsoluteX = typedArray.getDimensionPixelOffset(index, layout5.editorAbsoluteX);
                    continue;
                case 7:
                    Layout layout6 = constraint.layout;
                    layout6.editorAbsoluteY = typedArray.getDimensionPixelOffset(index, layout6.editorAbsoluteY);
                    continue;
                case 8:
                    Layout layout7 = constraint.layout;
                    layout7.endMargin = typedArray.getDimensionPixelSize(index, layout7.endMargin);
                    continue;
                case 9:
                    Layout layout8 = constraint.layout;
                    layout8.endToEnd = lookupID(typedArray, index, layout8.endToEnd);
                    continue;
                case 10:
                    Layout layout9 = constraint.layout;
                    layout9.endToStart = lookupID(typedArray, index, layout9.endToStart);
                    continue;
                case 11:
                    Layout layout10 = constraint.layout;
                    layout10.goneBottomMargin = typedArray.getDimensionPixelSize(index, layout10.goneBottomMargin);
                    continue;
                case 12:
                    Layout layout11 = constraint.layout;
                    layout11.goneEndMargin = typedArray.getDimensionPixelSize(index, layout11.goneEndMargin);
                    continue;
                case 13:
                    Layout layout12 = constraint.layout;
                    layout12.goneLeftMargin = typedArray.getDimensionPixelSize(index, layout12.goneLeftMargin);
                    continue;
                case 14:
                    Layout layout13 = constraint.layout;
                    layout13.goneRightMargin = typedArray.getDimensionPixelSize(index, layout13.goneRightMargin);
                    continue;
                case 15:
                    Layout layout14 = constraint.layout;
                    layout14.goneStartMargin = typedArray.getDimensionPixelSize(index, layout14.goneStartMargin);
                    continue;
                case 16:
                    Layout layout15 = constraint.layout;
                    layout15.goneTopMargin = typedArray.getDimensionPixelSize(index, layout15.goneTopMargin);
                    continue;
                case 17:
                    Layout layout16 = constraint.layout;
                    layout16.guideBegin = typedArray.getDimensionPixelOffset(index, layout16.guideBegin);
                    continue;
                case 18:
                    Layout layout17 = constraint.layout;
                    layout17.guideEnd = typedArray.getDimensionPixelOffset(index, layout17.guideEnd);
                    continue;
                case 19:
                    Layout layout18 = constraint.layout;
                    layout18.guidePercent = typedArray.getFloat(index, layout18.guidePercent);
                    continue;
                case 20:
                    Layout layout19 = constraint.layout;
                    layout19.horizontalBias = typedArray.getFloat(index, layout19.horizontalBias);
                    continue;
                case 21:
                    Layout layout20 = constraint.layout;
                    layout20.mHeight = typedArray.getLayoutDimension(index, layout20.mHeight);
                    continue;
                case 22:
                    PropertySet propertySet = constraint.propertySet;
                    propertySet.visibility = typedArray.getInt(index, propertySet.visibility);
                    PropertySet propertySet2 = constraint.propertySet;
                    propertySet2.visibility = VISIBILITY_FLAGS[propertySet2.visibility];
                    continue;
                case 23:
                    Layout layout21 = constraint.layout;
                    layout21.mWidth = typedArray.getLayoutDimension(index, layout21.mWidth);
                    continue;
                case 24:
                    Layout layout22 = constraint.layout;
                    layout22.leftMargin = typedArray.getDimensionPixelSize(index, layout22.leftMargin);
                    continue;
                case 25:
                    Layout layout23 = constraint.layout;
                    layout23.leftToLeft = lookupID(typedArray, index, layout23.leftToLeft);
                    continue;
                case 26:
                    Layout layout24 = constraint.layout;
                    layout24.leftToRight = lookupID(typedArray, index, layout24.leftToRight);
                    continue;
                case 27:
                    Layout layout25 = constraint.layout;
                    layout25.orientation = typedArray.getInt(index, layout25.orientation);
                    continue;
                case 28:
                    Layout layout26 = constraint.layout;
                    layout26.rightMargin = typedArray.getDimensionPixelSize(index, layout26.rightMargin);
                    continue;
                case 29:
                    Layout layout27 = constraint.layout;
                    layout27.rightToLeft = lookupID(typedArray, index, layout27.rightToLeft);
                    continue;
                case 30:
                    Layout layout28 = constraint.layout;
                    layout28.rightToRight = lookupID(typedArray, index, layout28.rightToRight);
                    continue;
                case 31:
                    Layout layout29 = constraint.layout;
                    layout29.startMargin = typedArray.getDimensionPixelSize(index, layout29.startMargin);
                    continue;
                case 32:
                    Layout layout30 = constraint.layout;
                    layout30.startToEnd = lookupID(typedArray, index, layout30.startToEnd);
                    continue;
                case 33:
                    Layout layout31 = constraint.layout;
                    layout31.startToStart = lookupID(typedArray, index, layout31.startToStart);
                    continue;
                case 34:
                    Layout layout32 = constraint.layout;
                    layout32.topMargin = typedArray.getDimensionPixelSize(index, layout32.topMargin);
                    continue;
                case 35:
                    Layout layout33 = constraint.layout;
                    layout33.topToBottom = lookupID(typedArray, index, layout33.topToBottom);
                    continue;
                case 36:
                    Layout layout34 = constraint.layout;
                    layout34.topToTop = lookupID(typedArray, index, layout34.topToTop);
                    continue;
                case 37:
                    Layout layout35 = constraint.layout;
                    layout35.verticalBias = typedArray.getFloat(index, layout35.verticalBias);
                    continue;
                case 38:
                    constraint.mViewId = typedArray.getResourceId(index, constraint.mViewId);
                    continue;
                case 39:
                    Layout layout36 = constraint.layout;
                    layout36.horizontalWeight = typedArray.getFloat(index, layout36.horizontalWeight);
                    continue;
                case 40:
                    Layout layout37 = constraint.layout;
                    layout37.verticalWeight = typedArray.getFloat(index, layout37.verticalWeight);
                    continue;
                case 41:
                    Layout layout38 = constraint.layout;
                    layout38.horizontalChainStyle = typedArray.getInt(index, layout38.horizontalChainStyle);
                    continue;
                case 42:
                    Layout layout39 = constraint.layout;
                    layout39.verticalChainStyle = typedArray.getInt(index, layout39.verticalChainStyle);
                    continue;
                case 43:
                    PropertySet propertySet3 = constraint.propertySet;
                    propertySet3.alpha = typedArray.getFloat(index, propertySet3.alpha);
                    continue;
                case 44:
                    Transform transform = constraint.transform;
                    transform.applyElevation = true;
                    transform.elevation = typedArray.getDimension(index, transform.elevation);
                    continue;
                case 45:
                    Transform transform2 = constraint.transform;
                    transform2.rotationX = typedArray.getFloat(index, transform2.rotationX);
                    continue;
                case 46:
                    Transform transform3 = constraint.transform;
                    transform3.rotationY = typedArray.getFloat(index, transform3.rotationY);
                    continue;
                case 47:
                    Transform transform4 = constraint.transform;
                    transform4.scaleX = typedArray.getFloat(index, transform4.scaleX);
                    continue;
                case 48:
                    Transform transform5 = constraint.transform;
                    transform5.scaleY = typedArray.getFloat(index, transform5.scaleY);
                    continue;
                case 49:
                    Transform transform6 = constraint.transform;
                    transform6.transformPivotX = typedArray.getDimension(index, transform6.transformPivotX);
                    continue;
                case 50:
                    Transform transform7 = constraint.transform;
                    transform7.transformPivotY = typedArray.getDimension(index, transform7.transformPivotY);
                    continue;
                case 51:
                    Transform transform8 = constraint.transform;
                    transform8.translationX = typedArray.getDimension(index, transform8.translationX);
                    continue;
                case 52:
                    Transform transform9 = constraint.transform;
                    transform9.translationY = typedArray.getDimension(index, transform9.translationY);
                    continue;
                case 53:
                    Transform transform10 = constraint.transform;
                    transform10.translationZ = typedArray.getDimension(index, transform10.translationZ);
                    continue;
                case 54:
                    Layout layout40 = constraint.layout;
                    layout40.widthDefault = typedArray.getInt(index, layout40.widthDefault);
                    continue;
                case 55:
                    Layout layout41 = constraint.layout;
                    layout41.heightDefault = typedArray.getInt(index, layout41.heightDefault);
                    continue;
                case 56:
                    Layout layout42 = constraint.layout;
                    layout42.widthMax = typedArray.getDimensionPixelSize(index, layout42.widthMax);
                    continue;
                case 57:
                    Layout layout43 = constraint.layout;
                    layout43.heightMax = typedArray.getDimensionPixelSize(index, layout43.heightMax);
                    continue;
                case 58:
                    Layout layout44 = constraint.layout;
                    layout44.widthMin = typedArray.getDimensionPixelSize(index, layout44.widthMin);
                    continue;
                case 59:
                    Layout layout45 = constraint.layout;
                    layout45.heightMin = typedArray.getDimensionPixelSize(index, layout45.heightMin);
                    continue;
                case 60:
                    Transform transform11 = constraint.transform;
                    transform11.rotation = typedArray.getFloat(index, transform11.rotation);
                    continue;
                case 61:
                    Layout layout46 = constraint.layout;
                    layout46.circleConstraint = lookupID(typedArray, index, layout46.circleConstraint);
                    continue;
                case 62:
                    Layout layout47 = constraint.layout;
                    layout47.circleRadius = typedArray.getDimensionPixelSize(index, layout47.circleRadius);
                    continue;
                case 63:
                    Layout layout48 = constraint.layout;
                    layout48.circleAngle = typedArray.getFloat(index, layout48.circleAngle);
                    continue;
                case 64:
                    Motion motion3 = constraint.motion;
                    motion3.mAnimateRelativeTo = lookupID(typedArray, index, motion3.mAnimateRelativeTo);
                    continue;
                case 65:
                    if (typedArray.peekValue(index).type == 3) {
                        motion = constraint.motion;
                        string = typedArray.getString(index);
                    } else {
                        motion = constraint.motion;
                        string = Easing.NAMED_EASING[typedArray.getInteger(index, 0)];
                    }
                    motion.mTransitionEasing = string;
                    continue;
                case 66:
                    constraint.motion.mDrawPath = typedArray.getInt(index, 0);
                    continue;
                case 67:
                    Motion motion4 = constraint.motion;
                    motion4.mPathRotate = typedArray.getFloat(index, motion4.mPathRotate);
                    continue;
                case 68:
                    PropertySet propertySet4 = constraint.propertySet;
                    propertySet4.mProgress = typedArray.getFloat(index, propertySet4.mProgress);
                    continue;
                case 69:
                    constraint.layout.widthPercent = typedArray.getFloat(index, 1.0f);
                    continue;
                case 70:
                    constraint.layout.heightPercent = typedArray.getFloat(index, 1.0f);
                    continue;
                case 71:
                    Log.e(TAG, "CURRENTLY UNSUPPORTED");
                    continue;
                case 72:
                    Layout layout49 = constraint.layout;
                    layout49.mBarrierDirection = typedArray.getInt(index, layout49.mBarrierDirection);
                    continue;
                case 73:
                    Layout layout50 = constraint.layout;
                    layout50.mBarrierMargin = typedArray.getDimensionPixelSize(index, layout50.mBarrierMargin);
                    continue;
                case 74:
                    constraint.layout.mReferenceIdString = typedArray.getString(index);
                    continue;
                case 75:
                    Layout layout51 = constraint.layout;
                    layout51.mBarrierAllowsGoneWidgets = typedArray.getBoolean(index, layout51.mBarrierAllowsGoneWidgets);
                    continue;
                case 76:
                    Motion motion5 = constraint.motion;
                    motion5.mPathMotionArc = typedArray.getInt(index, motion5.mPathMotionArc);
                    continue;
                case 77:
                    constraint.layout.mConstraintTag = typedArray.getString(index);
                    continue;
                case 78:
                    PropertySet propertySet5 = constraint.propertySet;
                    propertySet5.mVisibilityMode = typedArray.getInt(index, propertySet5.mVisibilityMode);
                    continue;
                case 79:
                    Motion motion6 = constraint.motion;
                    motion6.mMotionStagger = typedArray.getFloat(index, motion6.mMotionStagger);
                    continue;
                case 80:
                    Layout layout52 = constraint.layout;
                    layout52.constrainedWidth = typedArray.getBoolean(index, layout52.constrainedWidth);
                    continue;
                case 81:
                    Layout layout53 = constraint.layout;
                    layout53.constrainedHeight = typedArray.getBoolean(index, layout53.constrainedHeight);
                    continue;
                case 82:
                    Motion motion7 = constraint.motion;
                    motion7.mAnimateCircleAngleTo = typedArray.getInteger(index, motion7.mAnimateCircleAngleTo);
                    continue;
                case 83:
                    Transform transform12 = constraint.transform;
                    transform12.transformPivotTarget = lookupID(typedArray, index, transform12.transformPivotTarget);
                    continue;
                case 84:
                    Motion motion8 = constraint.motion;
                    motion8.mQuantizeMotionSteps = typedArray.getInteger(index, motion8.mQuantizeMotionSteps);
                    continue;
                case 85:
                    Motion motion9 = constraint.motion;
                    motion9.mQuantizeMotionPhase = typedArray.getFloat(index, motion9.mQuantizeMotionPhase);
                    continue;
                case 86:
                    int r22 = typedArray.peekValue(index).type;
                    if (r22 == 1) {
                        constraint.motion.mQuantizeInterpolatorID = typedArray.getResourceId(index, -1);
                        motion2 = constraint.motion;
                        if (motion2.mQuantizeInterpolatorID != -1) {
                            motion2.mQuantizeInterpolatorType = -2;
                        } else {
                            continue;
                        }
                    } else if (r22 == 3) {
                        constraint.motion.mQuantizeInterpolatorString = typedArray.getString(index);
                        if (constraint.motion.mQuantizeInterpolatorString.indexOf("/") > 0) {
                            constraint.motion.mQuantizeInterpolatorID = typedArray.getResourceId(index, -1);
                            motion2 = constraint.motion;
                            motion2.mQuantizeInterpolatorType = -2;
                        } else {
                            constraint.motion.mQuantizeInterpolatorType = -1;
                        }
                    } else {
                        Motion motion10 = constraint.motion;
                        motion10.mQuantizeInterpolatorType = typedArray.getInteger(index, motion10.mQuantizeInterpolatorID);
                    }
                case 87:
                    sb2 = new StringBuilder("unused attribute 0x");
                    break;
                case 88:
                case 89:
                case 90:
                default:
                    sb2 = new StringBuilder("Unknown attribute 0x");
                    break;
                case 91:
                    Layout layout54 = constraint.layout;
                    layout54.baselineToTop = lookupID(typedArray, index, layout54.baselineToTop);
                    continue;
                case 92:
                    Layout layout55 = constraint.layout;
                    layout55.baselineToBottom = lookupID(typedArray, index, layout55.baselineToBottom);
                    continue;
                case 93:
                    Layout layout56 = constraint.layout;
                    layout56.baselineMargin = typedArray.getDimensionPixelSize(index, layout56.baselineMargin);
                    continue;
                case 94:
                    Layout layout57 = constraint.layout;
                    layout57.goneBaselineMargin = typedArray.getDimensionPixelSize(index, layout57.goneBaselineMargin);
                    continue;
                case 95:
                    parseDimensionConstraints(constraint.layout, typedArray, index, 0);
                    continue;
                case 96:
                    parseDimensionConstraints(constraint.layout, typedArray, index, 1);
                    continue;
                case 97:
                    Layout layout58 = constraint.layout;
                    layout58.mWrapBehavior = typedArray.getInt(index, layout58.mWrapBehavior);
                    continue;
            }
            sb2.append(Integer.toHexString(index));
            sb2.append("   ");
            sb2.append(mapToConstant.get(index));
            Log.w(TAG, sb2.toString());
        }
        Layout layout59 = constraint.layout;
        if (layout59.mReferenceIdString != null) {
            layout59.mReferenceIds = null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x007b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void populateOverride(android.content.Context r11, androidx.constraintlayout.widget.ConstraintSet.Constraint r12, android.content.res.TypedArray r13) {
        /*
            Method dump skipped, instructions count: 1346
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.widget.ConstraintSet.populateOverride(android.content.Context, androidx.constraintlayout.widget.ConstraintSet$Constraint, android.content.res.TypedArray):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void setDeltaValue(Constraint constraint, int r22, float f) {
        if (r22 == 19) {
            constraint.layout.guidePercent = f;
        }
        if (r22 == 20) {
            constraint.layout.horizontalBias = f;
            return;
        }
        if (r22 == 37) {
            constraint.layout.verticalBias = f;
            return;
        }
        if (r22 == 60) {
            constraint.transform.rotation = f;
            return;
        }
        if (r22 == 63) {
            constraint.layout.circleAngle = f;
            return;
        }
        if (r22 == 79) {
            constraint.motion.mMotionStagger = f;
            return;
        }
        if (r22 == 85) {
            constraint.motion.mQuantizeMotionPhase = f;
            return;
        }
        if (r22 != 87) {
            if (r22 == 39) {
                constraint.layout.horizontalWeight = f;
                return;
            }
            if (r22 == 40) {
                constraint.layout.verticalWeight = f;
                return;
            }
            switch (r22) {
                case 43:
                    constraint.propertySet.alpha = f;
                    break;
                case 44:
                    Transform transform = constraint.transform;
                    transform.elevation = f;
                    transform.applyElevation = true;
                    break;
                case 45:
                    constraint.transform.rotationX = f;
                    break;
                case 46:
                    constraint.transform.rotationY = f;
                    break;
                case 47:
                    constraint.transform.scaleX = f;
                    break;
                case 48:
                    constraint.transform.scaleY = f;
                    break;
                case 49:
                    constraint.transform.transformPivotX = f;
                    break;
                case 50:
                    constraint.transform.transformPivotY = f;
                    break;
                case 51:
                    constraint.transform.translationX = f;
                    break;
                case 52:
                    constraint.transform.translationY = f;
                    break;
                case 53:
                    constraint.transform.translationZ = f;
                    break;
                default:
                    switch (r22) {
                        case 67:
                            constraint.motion.mPathRotate = f;
                            break;
                        case 68:
                            constraint.propertySet.mProgress = f;
                            break;
                        case 69:
                            constraint.layout.widthPercent = f;
                            break;
                        case 70:
                            constraint.layout.heightPercent = f;
                            break;
                        default:
                            Log.w(TAG, "Unknown attribute 0x");
                            break;
                    }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void setDeltaValue(Constraint constraint, int r22, int r32) {
        if (r22 == 6) {
            constraint.layout.editorAbsoluteX = r32;
        }
        if (r22 == 7) {
            constraint.layout.editorAbsoluteY = r32;
            return;
        }
        if (r22 == 8) {
            constraint.layout.endMargin = r32;
            return;
        }
        if (r22 == 27) {
            constraint.layout.orientation = r32;
            return;
        }
        if (r22 == 28) {
            constraint.layout.rightMargin = r32;
            return;
        }
        if (r22 == 41) {
            constraint.layout.horizontalChainStyle = r32;
            return;
        }
        if (r22 == 42) {
            constraint.layout.verticalChainStyle = r32;
            return;
        }
        if (r22 == 61) {
            constraint.layout.circleConstraint = r32;
            return;
        }
        if (r22 == 62) {
            constraint.layout.circleRadius = r32;
            return;
        }
        if (r22 == 72) {
            constraint.layout.mBarrierDirection = r32;
            return;
        }
        if (r22 == 73) {
            constraint.layout.mBarrierMargin = r32;
            return;
        }
        switch (r22) {
            case 2:
                constraint.layout.bottomMargin = r32;
                break;
            case 11:
                constraint.layout.goneBottomMargin = r32;
                break;
            case 12:
                constraint.layout.goneEndMargin = r32;
                break;
            case 13:
                constraint.layout.goneLeftMargin = r32;
                break;
            case 14:
                constraint.layout.goneRightMargin = r32;
                break;
            case 15:
                constraint.layout.goneStartMargin = r32;
                break;
            case 16:
                constraint.layout.goneTopMargin = r32;
                break;
            case 17:
                constraint.layout.guideBegin = r32;
                break;
            case 18:
                constraint.layout.guideEnd = r32;
                break;
            case 31:
                constraint.layout.startMargin = r32;
                break;
            case 34:
                constraint.layout.topMargin = r32;
                break;
            case 38:
                constraint.mViewId = r32;
                break;
            case 64:
                constraint.motion.mAnimateRelativeTo = r32;
                break;
            case 66:
                constraint.motion.mDrawPath = r32;
                break;
            case 76:
                constraint.motion.mPathMotionArc = r32;
                break;
            case 78:
                constraint.propertySet.mVisibilityMode = r32;
                break;
            case 93:
                constraint.layout.baselineMargin = r32;
                break;
            case 94:
                constraint.layout.goneBaselineMargin = r32;
                break;
            case 97:
                constraint.layout.mWrapBehavior = r32;
                break;
            default:
                switch (r22) {
                    case 21:
                        constraint.layout.mHeight = r32;
                        break;
                    case 22:
                        constraint.propertySet.visibility = r32;
                        break;
                    case 23:
                        constraint.layout.mWidth = r32;
                        break;
                    case 24:
                        constraint.layout.leftMargin = r32;
                        break;
                    default:
                        switch (r22) {
                            case 54:
                                constraint.layout.widthDefault = r32;
                                break;
                            case 55:
                                constraint.layout.heightDefault = r32;
                                break;
                            case 56:
                                constraint.layout.widthMax = r32;
                                break;
                            case 57:
                                constraint.layout.heightMax = r32;
                                break;
                            case 58:
                                constraint.layout.widthMin = r32;
                                break;
                            case 59:
                                constraint.layout.heightMin = r32;
                                break;
                            default:
                                switch (r22) {
                                    case 82:
                                        constraint.motion.mAnimateCircleAngleTo = r32;
                                        break;
                                    case 83:
                                        constraint.transform.transformPivotTarget = r32;
                                        break;
                                    case 84:
                                        constraint.motion.mQuantizeMotionSteps = r32;
                                        break;
                                    default:
                                        switch (r22) {
                                            case 87:
                                                break;
                                            case 88:
                                                constraint.motion.mQuantizeInterpolatorType = r32;
                                                break;
                                            case 89:
                                                constraint.motion.mQuantizeInterpolatorID = r32;
                                                break;
                                            default:
                                                Log.w(TAG, "Unknown attribute 0x");
                                                break;
                                        }
                                }
                        }
                }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void setDeltaValue(Constraint constraint, int r22, String str) {
        if (r22 == 5) {
            constraint.layout.dimensionRatio = str;
            return;
        }
        if (r22 == 65) {
            constraint.motion.mTransitionEasing = str;
            return;
        }
        if (r22 == 74) {
            Layout layout = constraint.layout;
            layout.mReferenceIdString = str;
            layout.mReferenceIds = null;
        } else if (r22 == 77) {
            constraint.layout.mConstraintTag = str;
        } else if (r22 != 87) {
            if (r22 != 90) {
                Log.w(TAG, "Unknown attribute 0x");
            } else {
                constraint.motion.mQuantizeInterpolatorString = str;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void setDeltaValue(Constraint constraint, int r22, boolean z10) {
        if (r22 == 44) {
            constraint.transform.applyElevation = z10;
            return;
        }
        if (r22 == 75) {
            constraint.layout.mBarrierAllowsGoneWidgets = z10;
            return;
        }
        if (r22 != 87) {
            if (r22 == 80) {
                constraint.layout.constrainedWidth = z10;
            } else if (r22 != 81) {
                Log.w(TAG, "Unknown attribute 0x");
            } else {
                constraint.layout.constrainedHeight = z10;
            }
        }
    }

    private String sideToString(int r12) {
        switch (r12) {
            case 1:
                return "left";
            case 2:
                return "right";
            case 3:
                return "top";
            case 4:
                return "bottom";
            case 5:
                return "baseline";
            case 6:
                return "start";
            case 7:
                return "end";
            default:
                return "undefined";
        }
    }

    private static String[] splitString(String str) {
        char[] charArray = str.toCharArray();
        ArrayList arrayList = new ArrayList();
        int r22 = 0;
        boolean z10 = false;
        for (int r12 = 0; r12 < charArray.length; r12++) {
            char c10 = charArray[r12];
            if (c10 == ',' && !z10) {
                arrayList.add(new String(charArray, r22, r12 - r22));
                r22 = r12 + 1;
            } else if (c10 == '\"') {
                z10 = !z10;
            }
        }
        arrayList.add(new String(charArray, r22, charArray.length - r22));
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    public void addColorAttributes(String... strArr) {
        addAttributes(ConstraintAttribute.AttributeType.COLOR_TYPE, strArr);
    }

    public void addFloatAttributes(String... strArr) {
        addAttributes(ConstraintAttribute.AttributeType.FLOAT_TYPE, strArr);
    }

    public void addIntAttributes(String... strArr) {
        addAttributes(ConstraintAttribute.AttributeType.INT_TYPE, strArr);
    }

    public void addStringAttributes(String... strArr) {
        addAttributes(ConstraintAttribute.AttributeType.STRING_TYPE, strArr);
    }

    public void addToHorizontalChain(int r92, int r10, int r11) {
        connect(r92, 1, r10, r10 == 0 ? 1 : 2, 0);
        connect(r92, 2, r11, r11 == 0 ? 2 : 1, 0);
        if (r10 != 0) {
            connect(r10, 2, r92, 1, 0);
        }
        if (r11 != 0) {
            connect(r11, 1, r92, 2, 0);
        }
    }

    public void addToHorizontalChainRTL(int r92, int r10, int r11) {
        connect(r92, 6, r10, r10 == 0 ? 6 : 7, 0);
        connect(r92, 7, r11, r11 == 0 ? 7 : 6, 0);
        if (r10 != 0) {
            connect(r10, 7, r92, 6, 0);
        }
        if (r11 != 0) {
            connect(r11, 6, r92, 7, 0);
        }
    }

    public void addToVerticalChain(int r92, int r10, int r11) {
        connect(r92, 3, r10, r10 == 0 ? 3 : 4, 0);
        connect(r92, 4, r11, r11 == 0 ? 4 : 3, 0);
        if (r10 != 0) {
            connect(r10, 4, r92, 3, 0);
        }
        if (r11 != 0) {
            connect(r11, 3, r92, 4, 0);
        }
    }

    public void applyCustomAttributes(ConstraintLayout constraintLayout) {
        Constraint constraint;
        int childCount = constraintLayout.getChildCount();
        for (int r12 = 0; r12 < childCount; r12++) {
            View childAt = constraintLayout.getChildAt(r12);
            int id2 = childAt.getId();
            if (!this.mConstraints.containsKey(Integer.valueOf(id2))) {
                Log.w(TAG, "id unknown " + Debug.getName(childAt));
            } else {
                if (this.mForceId && id2 == -1) {
                    throw new RuntimeException("All children of ConstraintLayout must have ids to use ConstraintSet");
                }
                if (this.mConstraints.containsKey(Integer.valueOf(id2)) && (constraint = this.mConstraints.get(Integer.valueOf(id2))) != null) {
                    ConstraintAttribute.setAttributes(childAt, constraint.mCustomConstraints);
                }
            }
        }
    }

    public void applyDeltaFrom(ConstraintSet constraintSet) {
        for (Constraint constraint : constraintSet.mConstraints.values()) {
            if (constraint.mDelta != null) {
                if (constraint.mTargetString != null) {
                    Iterator<Integer> it = this.mConstraints.keySet().iterator();
                    while (it.hasNext()) {
                        Constraint constraint2 = getConstraint(it.next().intValue());
                        String str = constraint2.layout.mConstraintTag;
                        if (str != null && constraint.mTargetString.matches(str)) {
                            constraint.mDelta.applyDelta(constraint2);
                            constraint2.mCustomConstraints.putAll((HashMap) constraint.mCustomConstraints.clone());
                        }
                    }
                } else {
                    constraint.mDelta.applyDelta(getConstraint(constraint.mViewId));
                }
            }
        }
    }

    public void applyTo(ConstraintLayout constraintLayout) {
        applyToInternal(constraintLayout, true);
        constraintLayout.setConstraintSet(null);
        constraintLayout.requestLayout();
    }

    public void applyToHelper(ConstraintHelper constraintHelper, ConstraintWidget constraintWidget, ConstraintLayout.LayoutParams layoutParams, SparseArray<ConstraintWidget> sparseArray) {
        Constraint constraint;
        int id2 = constraintHelper.getId();
        if (this.mConstraints.containsKey(Integer.valueOf(id2)) && (constraint = this.mConstraints.get(Integer.valueOf(id2))) != null && (constraintWidget instanceof HelperWidget)) {
            constraintHelper.loadParameters(constraint, (HelperWidget) constraintWidget, layoutParams, sparseArray);
        }
    }

    public void applyToInternal(ConstraintLayout constraintLayout, boolean z10) {
        int childCount = constraintLayout.getChildCount();
        HashSet hashSet = new HashSet(this.mConstraints.keySet());
        for (int r32 = 0; r32 < childCount; r32++) {
            View childAt = constraintLayout.getChildAt(r32);
            int id2 = childAt.getId();
            if (!this.mConstraints.containsKey(Integer.valueOf(id2))) {
                Log.w(TAG, "id unknown " + Debug.getName(childAt));
            } else {
                if (this.mForceId && id2 == -1) {
                    throw new RuntimeException("All children of ConstraintLayout must have ids to use ConstraintSet");
                }
                if (id2 != -1) {
                    if (this.mConstraints.containsKey(Integer.valueOf(id2))) {
                        hashSet.remove(Integer.valueOf(id2));
                        Constraint constraint = this.mConstraints.get(Integer.valueOf(id2));
                        if (constraint != null) {
                            if (childAt instanceof Barrier) {
                                constraint.layout.mHelperType = 1;
                                Barrier barrier = (Barrier) childAt;
                                barrier.setId(id2);
                                barrier.setType(constraint.layout.mBarrierDirection);
                                barrier.setMargin(constraint.layout.mBarrierMargin);
                                barrier.setAllowsGoneWidget(constraint.layout.mBarrierAllowsGoneWidgets);
                                Layout layout = constraint.layout;
                                int[] r82 = layout.mReferenceIds;
                                if (r82 != null) {
                                    barrier.setReferencedIds(r82);
                                } else {
                                    String str = layout.mReferenceIdString;
                                    if (str != null) {
                                        layout.mReferenceIds = convertReferenceString(barrier, str);
                                        barrier.setReferencedIds(constraint.layout.mReferenceIds);
                                    }
                                }
                            }
                            ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) childAt.getLayoutParams();
                            layoutParams.validate();
                            constraint.applyTo(layoutParams);
                            if (z10) {
                                ConstraintAttribute.setAttributes(childAt, constraint.mCustomConstraints);
                            }
                            childAt.setLayoutParams(layoutParams);
                            PropertySet propertySet = constraint.propertySet;
                            if (propertySet.mVisibilityMode == 0) {
                                childAt.setVisibility(propertySet.visibility);
                            }
                            childAt.setAlpha(constraint.propertySet.alpha);
                            childAt.setRotation(constraint.transform.rotation);
                            childAt.setRotationX(constraint.transform.rotationX);
                            childAt.setRotationY(constraint.transform.rotationY);
                            childAt.setScaleX(constraint.transform.scaleX);
                            childAt.setScaleY(constraint.transform.scaleY);
                            Transform transform = constraint.transform;
                            if (transform.transformPivotTarget != -1) {
                                if (((View) childAt.getParent()).findViewById(constraint.transform.transformPivotTarget) != null) {
                                    float bottom = (r4.getBottom() + r4.getTop()) / 2.0f;
                                    float right = (r4.getRight() + r4.getLeft()) / 2.0f;
                                    if (childAt.getRight() - childAt.getLeft() > 0 && childAt.getBottom() - childAt.getTop() > 0) {
                                        childAt.setPivotX(right - childAt.getLeft());
                                        childAt.setPivotY(bottom - childAt.getTop());
                                    }
                                }
                            } else {
                                if (!Float.isNaN(transform.transformPivotX)) {
                                    childAt.setPivotX(constraint.transform.transformPivotX);
                                }
                                if (!Float.isNaN(constraint.transform.transformPivotY)) {
                                    childAt.setPivotY(constraint.transform.transformPivotY);
                                }
                            }
                            childAt.setTranslationX(constraint.transform.translationX);
                            childAt.setTranslationY(constraint.transform.translationY);
                            childAt.setTranslationZ(constraint.transform.translationZ);
                            Transform transform2 = constraint.transform;
                            if (transform2.applyElevation) {
                                childAt.setElevation(transform2.elevation);
                            }
                        }
                    } else {
                        Log.v(TAG, "WARNING NO CONSTRAINTS for view " + id2);
                    }
                }
            }
        }
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            Integer num = (Integer) it.next();
            Constraint constraint2 = this.mConstraints.get(num);
            if (constraint2 != null) {
                if (constraint2.layout.mHelperType == 1) {
                    Barrier barrier2 = new Barrier(constraintLayout.getContext());
                    barrier2.setId(num.intValue());
                    Layout layout2 = constraint2.layout;
                    int[] r72 = layout2.mReferenceIds;
                    if (r72 != null) {
                        barrier2.setReferencedIds(r72);
                    } else {
                        String str2 = layout2.mReferenceIdString;
                        if (str2 != null) {
                            layout2.mReferenceIds = convertReferenceString(barrier2, str2);
                            barrier2.setReferencedIds(constraint2.layout.mReferenceIds);
                        }
                    }
                    barrier2.setType(constraint2.layout.mBarrierDirection);
                    barrier2.setMargin(constraint2.layout.mBarrierMargin);
                    ConstraintLayout.LayoutParams layoutParamsGenerateDefaultLayoutParams = constraintLayout.generateDefaultLayoutParams();
                    barrier2.validateParams();
                    constraint2.applyTo(layoutParamsGenerateDefaultLayoutParams);
                    constraintLayout.addView(barrier2, layoutParamsGenerateDefaultLayoutParams);
                }
                if (constraint2.layout.mIsGuideline) {
                    View guideline = new Guideline(constraintLayout.getContext());
                    guideline.setId(num.intValue());
                    ConstraintLayout.LayoutParams layoutParamsGenerateDefaultLayoutParams2 = constraintLayout.generateDefaultLayoutParams();
                    constraint2.applyTo(layoutParamsGenerateDefaultLayoutParams2);
                    constraintLayout.addView(guideline, layoutParamsGenerateDefaultLayoutParams2);
                }
            }
        }
        for (int r22 = 0; r22 < childCount; r22++) {
            View childAt2 = constraintLayout.getChildAt(r22);
            if (childAt2 instanceof ConstraintHelper) {
                ((ConstraintHelper) childAt2).applyLayoutFeaturesInConstraintSet(constraintLayout);
            }
        }
    }

    public void applyToLayoutParams(int r32, ConstraintLayout.LayoutParams layoutParams) {
        Constraint constraint;
        if (!this.mConstraints.containsKey(Integer.valueOf(r32)) || (constraint = this.mConstraints.get(Integer.valueOf(r32))) == null) {
            return;
        }
        constraint.applyTo(layoutParams);
    }

    public void applyToWithoutCustom(ConstraintLayout constraintLayout) {
        applyToInternal(constraintLayout, false);
        constraintLayout.setConstraintSet(null);
    }

    public void center(int r92, int r10, int r11, int r12, int r13, int r14, int r15, float f) {
        Constraint constraint;
        if (r12 < 0) {
            throw new IllegalArgumentException("margin must be > 0");
        }
        if (r15 < 0) {
            throw new IllegalArgumentException("margin must be > 0");
        }
        if (f <= 0.0f || f > 1.0f) {
            throw new IllegalArgumentException("bias must be between 0 and 1 inclusive");
        }
        if (r11 == 1 || r11 == 2) {
            connect(r92, 1, r10, r11, r12);
            connect(r92, 2, r13, r14, r15);
            constraint = this.mConstraints.get(Integer.valueOf(r92));
            if (constraint == null) {
                return;
            }
        } else {
            if (r11 != 6 && r11 != 7) {
                connect(r92, 3, r10, r11, r12);
                connect(r92, 4, r13, r14, r15);
                Constraint constraint2 = this.mConstraints.get(Integer.valueOf(r92));
                if (constraint2 != null) {
                    constraint2.layout.verticalBias = f;
                    return;
                }
                return;
            }
            connect(r92, 6, r10, r11, r12);
            connect(r92, 7, r13, r14, r15);
            constraint = this.mConstraints.get(Integer.valueOf(r92));
            if (constraint == null) {
                return;
            }
        }
        constraint.layout.horizontalBias = f;
    }

    public void centerHorizontally(int r10, int r11) {
        int r32;
        int r42;
        int r6;
        int r72;
        float f;
        ConstraintSet constraintSet;
        int r12;
        int r22;
        int r52;
        if (r11 == 0) {
            r22 = 0;
            r32 = 1;
            r42 = 0;
            r52 = 0;
            r6 = 2;
            r72 = 0;
            f = 0.5f;
            constraintSet = this;
            r12 = r10;
        } else {
            r32 = 2;
            r42 = 0;
            r6 = 1;
            r72 = 0;
            f = 0.5f;
            constraintSet = this;
            r12 = r10;
            r22 = r11;
            r52 = r11;
        }
        constraintSet.center(r12, r22, r32, r42, r52, r6, r72, f);
    }

    public void centerHorizontally(int r10, int r11, int r12, int r13, int r14, int r15, int r16, float f) {
        connect(r10, 1, r11, r12, r13);
        connect(r10, 2, r14, r15, r16);
        Constraint constraint = this.mConstraints.get(Integer.valueOf(r10));
        if (constraint != null) {
            constraint.layout.horizontalBias = f;
        }
    }

    public void centerHorizontallyRtl(int r10, int r11) {
        int r32;
        int r42;
        int r6;
        int r72;
        float f;
        ConstraintSet constraintSet;
        int r12;
        int r22;
        int r52;
        if (r11 == 0) {
            r22 = 0;
            r32 = 6;
            r42 = 0;
            r52 = 0;
            r6 = 7;
            r72 = 0;
            f = 0.5f;
            constraintSet = this;
            r12 = r10;
        } else {
            r32 = 7;
            r42 = 0;
            r6 = 6;
            r72 = 0;
            f = 0.5f;
            constraintSet = this;
            r12 = r10;
            r22 = r11;
            r52 = r11;
        }
        constraintSet.center(r12, r22, r32, r42, r52, r6, r72, f);
    }

    public void centerHorizontallyRtl(int r10, int r11, int r12, int r13, int r14, int r15, int r16, float f) {
        connect(r10, 6, r11, r12, r13);
        connect(r10, 7, r14, r15, r16);
        Constraint constraint = this.mConstraints.get(Integer.valueOf(r10));
        if (constraint != null) {
            constraint.layout.horizontalBias = f;
        }
    }

    public void centerVertically(int r10, int r11) {
        int r32;
        int r42;
        int r6;
        int r72;
        float f;
        ConstraintSet constraintSet;
        int r12;
        int r22;
        int r52;
        if (r11 == 0) {
            r22 = 0;
            r32 = 3;
            r42 = 0;
            r52 = 0;
            r6 = 4;
            r72 = 0;
            f = 0.5f;
            constraintSet = this;
            r12 = r10;
        } else {
            r32 = 4;
            r42 = 0;
            r6 = 3;
            r72 = 0;
            f = 0.5f;
            constraintSet = this;
            r12 = r10;
            r22 = r11;
            r52 = r11;
        }
        constraintSet.center(r12, r22, r32, r42, r52, r6, r72, f);
    }

    public void centerVertically(int r10, int r11, int r12, int r13, int r14, int r15, int r16, float f) {
        connect(r10, 3, r11, r12, r13);
        connect(r10, 4, r14, r15, r16);
        Constraint constraint = this.mConstraints.get(Integer.valueOf(r10));
        if (constraint != null) {
            constraint.layout.verticalBias = f;
        }
    }

    public void clear(int r22) {
        this.mConstraints.remove(Integer.valueOf(r22));
    }

    public void clear(int r42, int r52) {
        Constraint constraint;
        if (!this.mConstraints.containsKey(Integer.valueOf(r42)) || (constraint = this.mConstraints.get(Integer.valueOf(r42))) == null) {
            return;
        }
        switch (r52) {
            case 1:
                Layout layout = constraint.layout;
                layout.leftToRight = -1;
                layout.leftToLeft = -1;
                layout.leftMargin = -1;
                layout.goneLeftMargin = Integer.MIN_VALUE;
                return;
            case 2:
                Layout layout2 = constraint.layout;
                layout2.rightToRight = -1;
                layout2.rightToLeft = -1;
                layout2.rightMargin = -1;
                layout2.goneRightMargin = Integer.MIN_VALUE;
                return;
            case 3:
                Layout layout3 = constraint.layout;
                layout3.topToBottom = -1;
                layout3.topToTop = -1;
                layout3.topMargin = 0;
                layout3.goneTopMargin = Integer.MIN_VALUE;
                return;
            case 4:
                Layout layout4 = constraint.layout;
                layout4.bottomToTop = -1;
                layout4.bottomToBottom = -1;
                layout4.bottomMargin = 0;
                layout4.goneBottomMargin = Integer.MIN_VALUE;
                return;
            case 5:
                Layout layout5 = constraint.layout;
                layout5.baselineToBaseline = -1;
                layout5.baselineToTop = -1;
                layout5.baselineToBottom = -1;
                layout5.baselineMargin = 0;
                layout5.goneBaselineMargin = Integer.MIN_VALUE;
                return;
            case 6:
                Layout layout6 = constraint.layout;
                layout6.startToEnd = -1;
                layout6.startToStart = -1;
                layout6.startMargin = 0;
                layout6.goneStartMargin = Integer.MIN_VALUE;
                return;
            case 7:
                Layout layout7 = constraint.layout;
                layout7.endToStart = -1;
                layout7.endToEnd = -1;
                layout7.endMargin = 0;
                layout7.goneEndMargin = Integer.MIN_VALUE;
                return;
            case 8:
                Layout layout8 = constraint.layout;
                layout8.circleAngle = -1.0f;
                layout8.circleRadius = -1;
                layout8.circleConstraint = -1;
                return;
            default:
                throw new IllegalArgumentException("unknown constraint");
        }
    }

    public void clone(Context context, int r32) {
        clone((ConstraintLayout) LayoutInflater.from(context).inflate(r32, (ViewGroup) null));
    }

    public void clone(ConstraintLayout constraintLayout) {
        int childCount = constraintLayout.getChildCount();
        this.mConstraints.clear();
        for (int r12 = 0; r12 < childCount; r12++) {
            View childAt = constraintLayout.getChildAt(r12);
            ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) childAt.getLayoutParams();
            int id2 = childAt.getId();
            if (this.mForceId && id2 == -1) {
                throw new RuntimeException("All children of ConstraintLayout must have ids to use ConstraintSet");
            }
            if (!this.mConstraints.containsKey(Integer.valueOf(id2))) {
                this.mConstraints.put(Integer.valueOf(id2), new Constraint());
            }
            Constraint constraint = this.mConstraints.get(Integer.valueOf(id2));
            if (constraint != null) {
                constraint.mCustomConstraints = ConstraintAttribute.extractAttributes(this.mSavedAttributes, childAt);
                constraint.fillFrom(id2, layoutParams);
                constraint.propertySet.visibility = childAt.getVisibility();
                constraint.propertySet.alpha = childAt.getAlpha();
                constraint.transform.rotation = childAt.getRotation();
                constraint.transform.rotationX = childAt.getRotationX();
                constraint.transform.rotationY = childAt.getRotationY();
                constraint.transform.scaleX = childAt.getScaleX();
                constraint.transform.scaleY = childAt.getScaleY();
                float pivotX = childAt.getPivotX();
                float pivotY = childAt.getPivotY();
                if (pivotX != 0.0d || pivotY != 0.0d) {
                    Transform transform = constraint.transform;
                    transform.transformPivotX = pivotX;
                    transform.transformPivotY = pivotY;
                }
                constraint.transform.translationX = childAt.getTranslationX();
                constraint.transform.translationY = childAt.getTranslationY();
                constraint.transform.translationZ = childAt.getTranslationZ();
                Transform transform2 = constraint.transform;
                if (transform2.applyElevation) {
                    transform2.elevation = childAt.getElevation();
                }
                if (childAt instanceof Barrier) {
                    Barrier barrier = (Barrier) childAt;
                    constraint.layout.mBarrierAllowsGoneWidgets = barrier.getAllowsGoneWidget();
                    constraint.layout.mReferenceIds = barrier.getReferencedIds();
                    constraint.layout.mBarrierDirection = barrier.getType();
                    constraint.layout.mBarrierMargin = barrier.getMargin();
                }
            }
        }
    }

    public void clone(ConstraintSet constraintSet) {
        this.mConstraints.clear();
        for (Integer num : constraintSet.mConstraints.keySet()) {
            Constraint constraint = constraintSet.mConstraints.get(num);
            if (constraint != null) {
                this.mConstraints.put(num, constraint.m11clone());
            }
        }
    }

    public void clone(Constraints constraints) {
        int childCount = constraints.getChildCount();
        this.mConstraints.clear();
        for (int r12 = 0; r12 < childCount; r12++) {
            View childAt = constraints.getChildAt(r12);
            Constraints.LayoutParams layoutParams = (Constraints.LayoutParams) childAt.getLayoutParams();
            int id2 = childAt.getId();
            if (this.mForceId && id2 == -1) {
                throw new RuntimeException("All children of ConstraintLayout must have ids to use ConstraintSet");
            }
            if (!this.mConstraints.containsKey(Integer.valueOf(id2))) {
                this.mConstraints.put(Integer.valueOf(id2), new Constraint());
            }
            Constraint constraint = this.mConstraints.get(Integer.valueOf(id2));
            if (constraint != null) {
                if (childAt instanceof ConstraintHelper) {
                    constraint.fillFromConstraints((ConstraintHelper) childAt, id2, layoutParams);
                }
                constraint.fillFromConstraints(id2, layoutParams);
            }
        }
    }

    public void connect(int r10, int r11, int r12, int r13) {
        Layout layout;
        Layout layout2;
        if (!this.mConstraints.containsKey(Integer.valueOf(r10))) {
            this.mConstraints.put(Integer.valueOf(r10), new Constraint());
        }
        Constraint constraint = this.mConstraints.get(Integer.valueOf(r10));
        if (constraint == null) {
            return;
        }
        switch (r11) {
            case 1:
                if (r13 == 1) {
                    Layout layout3 = constraint.layout;
                    layout3.leftToLeft = r12;
                    layout3.leftToRight = -1;
                    return;
                } else {
                    if (r13 != 2) {
                        throw new IllegalArgumentException(c.h(new StringBuilder("left to "), sideToString(r13), " undefined"));
                    }
                    Layout layout4 = constraint.layout;
                    layout4.leftToRight = r12;
                    layout4.leftToLeft = -1;
                    return;
                }
            case 2:
                if (r13 == 1) {
                    Layout layout5 = constraint.layout;
                    layout5.rightToLeft = r12;
                    layout5.rightToRight = -1;
                    return;
                } else {
                    if (r13 != 2) {
                        throw new IllegalArgumentException(c.h(new StringBuilder("right to "), sideToString(r13), " undefined"));
                    }
                    Layout layout6 = constraint.layout;
                    layout6.rightToRight = r12;
                    layout6.rightToLeft = -1;
                    return;
                }
            case 3:
                if (r13 == 3) {
                    layout = constraint.layout;
                    layout.topToTop = r12;
                    layout.topToBottom = -1;
                    break;
                } else {
                    if (r13 != 4) {
                        throw new IllegalArgumentException(c.h(new StringBuilder("right to "), sideToString(r13), " undefined"));
                    }
                    layout = constraint.layout;
                    layout.topToBottom = r12;
                    layout.topToTop = -1;
                    break;
                }
            case 4:
                if (r13 == 4) {
                    layout = constraint.layout;
                    layout.bottomToBottom = r12;
                    layout.bottomToTop = -1;
                    break;
                } else {
                    if (r13 != 3) {
                        throw new IllegalArgumentException(c.h(new StringBuilder("right to "), sideToString(r13), " undefined"));
                    }
                    layout = constraint.layout;
                    layout.bottomToTop = r12;
                    layout.bottomToBottom = -1;
                    break;
                }
            case 5:
                if (r13 == 5) {
                    layout2 = constraint.layout;
                    layout2.baselineToBaseline = r12;
                } else if (r13 == 3) {
                    layout2 = constraint.layout;
                    layout2.baselineToTop = r12;
                } else {
                    if (r13 != 4) {
                        throw new IllegalArgumentException(c.h(new StringBuilder("right to "), sideToString(r13), " undefined"));
                    }
                    layout2 = constraint.layout;
                    layout2.baselineToBottom = r12;
                }
                layout2.bottomToBottom = -1;
                layout2.bottomToTop = -1;
                layout2.topToTop = -1;
                layout2.topToBottom = -1;
                return;
            case 6:
                if (r13 == 6) {
                    Layout layout7 = constraint.layout;
                    layout7.startToStart = r12;
                    layout7.startToEnd = -1;
                    return;
                } else {
                    if (r13 != 7) {
                        throw new IllegalArgumentException(c.h(new StringBuilder("right to "), sideToString(r13), " undefined"));
                    }
                    Layout layout8 = constraint.layout;
                    layout8.startToEnd = r12;
                    layout8.startToStart = -1;
                    return;
                }
            case 7:
                if (r13 == 7) {
                    Layout layout9 = constraint.layout;
                    layout9.endToEnd = r12;
                    layout9.endToStart = -1;
                    return;
                } else {
                    if (r13 != 6) {
                        throw new IllegalArgumentException(c.h(new StringBuilder("right to "), sideToString(r13), " undefined"));
                    }
                    Layout layout10 = constraint.layout;
                    layout10.endToStart = r12;
                    layout10.endToEnd = -1;
                    return;
                }
            default:
                StringBuilder sb2 = new StringBuilder();
                sb2.append(sideToString(r11));
                sb2.append(" to ");
                throw new IllegalArgumentException(c.h(sb2, sideToString(r13), " unknown"));
        }
        layout.baselineToBaseline = -1;
        layout.baselineToTop = -1;
        layout.baselineToBottom = -1;
    }

    public void constrainCircle(int r12, int r22, int r32, float f) {
        Layout layout = get(r12).layout;
        layout.circleConstraint = r22;
        layout.circleRadius = r32;
        layout.circleAngle = f;
    }

    public void constrainDefaultHeight(int r12, int r22) {
        get(r12).layout.heightDefault = r22;
    }

    public void constrainDefaultWidth(int r12, int r22) {
        get(r12).layout.widthDefault = r22;
    }

    public void constrainHeight(int r12, int r22) {
        get(r12).layout.mHeight = r22;
    }

    public void constrainMaxHeight(int r12, int r22) {
        get(r12).layout.heightMax = r22;
    }

    public void constrainMaxWidth(int r12, int r22) {
        get(r12).layout.widthMax = r22;
    }

    public void constrainMinHeight(int r12, int r22) {
        get(r12).layout.heightMin = r22;
    }

    public void constrainMinWidth(int r12, int r22) {
        get(r12).layout.widthMin = r22;
    }

    public void constrainPercentHeight(int r12, float f) {
        get(r12).layout.heightPercent = f;
    }

    public void constrainPercentWidth(int r12, float f) {
        get(r12).layout.widthPercent = f;
    }

    public void constrainWidth(int r12, int r22) {
        get(r12).layout.mWidth = r22;
    }

    public void constrainedHeight(int r12, boolean z10) {
        get(r12).layout.constrainedHeight = z10;
    }

    public void constrainedWidth(int r12, boolean z10) {
        get(r12).layout.constrainedWidth = z10;
    }

    public void create(int r22, int r32) {
        Layout layout = get(r22).layout;
        layout.mIsGuideline = true;
        layout.orientation = r32;
    }

    public void createBarrier(int r22, int r32, int r42, int... r52) {
        Layout layout = get(r22).layout;
        layout.mHelperType = 1;
        layout.mBarrierDirection = r32;
        layout.mBarrierMargin = r42;
        layout.mIsGuideline = false;
        layout.mReferenceIds = r52;
    }

    public void createHorizontalChain(int r11, int r12, int r13, int r14, int[] r15, float[] fArr, int r17) {
        createHorizontalChain(r11, r12, r13, r14, r15, fArr, r17, 1, 2);
    }

    public void createHorizontalChainRtl(int r11, int r12, int r13, int r14, int[] r15, float[] fArr, int r17) {
        createHorizontalChain(r11, r12, r13, r14, r15, fArr, r17, 6, 7);
    }

    public void createVerticalChain(int r13, int r14, int r15, int r16, int[] r17, float[] fArr, int r19) {
        if (r17.length < 2) {
            throw new IllegalArgumentException("must have 2 or more widgets in a chain");
        }
        if (fArr != null && fArr.length != r17.length) {
            throw new IllegalArgumentException("must have 2 or more widgets in a chain");
        }
        if (fArr != null) {
            get(r17[0]).layout.verticalWeight = fArr[0];
        }
        get(r17[0]).layout.verticalChainStyle = r19;
        connect(r17[0], 3, r13, r14, 0);
        for (int r10 = 1; r10 < r17.length; r10++) {
            int r11 = r10 - 1;
            connect(r17[r10], 3, r17[r11], 4, 0);
            connect(r17[r11], 4, r17[r10], 3, 0);
            if (fArr != null) {
                get(r17[r10]).layout.verticalWeight = fArr[r10];
            }
        }
        connect(r17[r17.length - 1], 4, r15, r16, 0);
    }

    public void dump(MotionScene motionScene, int... r82) throws IllegalAccessException, IllegalArgumentException {
        HashSet hashSet;
        Set<Integer> setKeySet = this.mConstraints.keySet();
        if (r82.length != 0) {
            hashSet = new HashSet();
            for (int r02 : r82) {
                hashSet.add(Integer.valueOf(r02));
            }
        } else {
            hashSet = new HashSet(setKeySet);
        }
        System.out.println(hashSet.size() + " constraints");
        StringBuilder sb2 = new StringBuilder();
        for (Integer num : (Integer[]) hashSet.toArray(new Integer[0])) {
            Constraint constraint = this.mConstraints.get(num);
            if (constraint != null) {
                sb2.append("<Constraint id=");
                sb2.append(num);
                sb2.append(" \n");
                constraint.layout.dump(motionScene, sb2);
                sb2.append("/>\n");
            }
        }
        System.out.println(sb2.toString());
    }

    public boolean getApplyElevation(int r12) {
        return get(r12).transform.applyElevation;
    }

    public Constraint getConstraint(int r32) {
        if (this.mConstraints.containsKey(Integer.valueOf(r32))) {
            return this.mConstraints.get(Integer.valueOf(r32));
        }
        return null;
    }

    public HashMap<String, ConstraintAttribute> getCustomAttributeSet() {
        return this.mSavedAttributes;
    }

    public int getHeight(int r12) {
        return get(r12).layout.mHeight;
    }

    public int[] getKnownIds() {
        Integer[] numArr = (Integer[]) this.mConstraints.keySet().toArray(new Integer[0]);
        int length = numArr.length;
        int[] r32 = new int[length];
        for (int r12 = 0; r12 < length; r12++) {
            r32[r12] = numArr[r12].intValue();
        }
        return r32;
    }

    public Constraint getParameters(int r12) {
        return get(r12);
    }

    public int[] getReferencedIds(int r22) {
        int[] r23 = get(r22).layout.mReferenceIds;
        return r23 == null ? new int[0] : Arrays.copyOf(r23, r23.length);
    }

    public int getVisibility(int r12) {
        return get(r12).propertySet.visibility;
    }

    public int getVisibilityMode(int r12) {
        return get(r12).propertySet.mVisibilityMode;
    }

    public int getWidth(int r12) {
        return get(r12).layout.mWidth;
    }

    public boolean isForceId() {
        return this.mForceId;
    }

    public void load(Context context, int r6) {
        XmlResourceParser xml = context.getResources().getXml(r6);
        try {
            for (int eventType = xml.getEventType(); eventType != 1; eventType = xml.next()) {
                if (eventType == 0) {
                    xml.getName();
                } else if (eventType == 2) {
                    String name = xml.getName();
                    Constraint constraintFillFromAttributeList = fillFromAttributeList(context, Xml.asAttributeSet(xml), false);
                    if (name.equalsIgnoreCase("Guideline")) {
                        constraintFillFromAttributeList.layout.mIsGuideline = true;
                    }
                    this.mConstraints.put(Integer.valueOf(constraintFillFromAttributeList.mViewId), constraintFillFromAttributeList);
                }
            }
        } catch (IOException e10) {
            e10.printStackTrace();
        } catch (XmlPullParserException e11) {
            e11.printStackTrace();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:119:0x01cb, code lost:
    
        continue;
     */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue
    java.lang.NullPointerException: Cannot invoke "java.util.List.iterator()" because the return value of "jadx.core.dex.visitors.regions.SwitchOverStringVisitor$SwitchData.getNewCases()" is null
    	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.restoreSwitchOverString(SwitchOverStringVisitor.java:109)
    	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.visitRegion(SwitchOverStringVisitor.java:66)
    	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseIterativeStepInternal(DepthRegionTraversal.java:77)
    	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseIterativeStepInternal(DepthRegionTraversal.java:82)
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void load(android.content.Context r10, org.xmlpull.v1.XmlPullParser r11) {
        /*
            Method dump skipped, instructions count: 560
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.widget.ConstraintSet.load(android.content.Context, org.xmlpull.v1.XmlPullParser):void");
    }

    public void parseColorAttributes(Constraint constraint, String str) {
        String[] strArrSplit = str.split(",");
        for (int r12 = 0; r12 < strArrSplit.length; r12++) {
            String[] strArrSplit2 = strArrSplit[r12].split("=");
            if (strArrSplit2.length != 2) {
                Log.w(TAG, " Unable to parse " + strArrSplit[r12]);
            } else {
                constraint.setColorValue(strArrSplit2[0], Color.parseColor(strArrSplit2[1]));
            }
        }
    }

    public void parseFloatAttributes(Constraint constraint, String str) {
        String[] strArrSplit = str.split(",");
        for (int r12 = 0; r12 < strArrSplit.length; r12++) {
            String[] strArrSplit2 = strArrSplit[r12].split("=");
            if (strArrSplit2.length != 2) {
                Log.w(TAG, " Unable to parse " + strArrSplit[r12]);
            } else {
                constraint.setFloatValue(strArrSplit2[0], Float.parseFloat(strArrSplit2[1]));
            }
        }
    }

    public void parseIntAttributes(Constraint constraint, String str) {
        String[] strArrSplit = str.split(",");
        for (int r12 = 0; r12 < strArrSplit.length; r12++) {
            String[] strArrSplit2 = strArrSplit[r12].split("=");
            if (strArrSplit2.length != 2) {
                Log.w(TAG, " Unable to parse " + strArrSplit[r12]);
            } else {
                constraint.setFloatValue(strArrSplit2[0], Integer.decode(strArrSplit2[1]).intValue());
            }
        }
    }

    public void parseStringAttributes(Constraint constraint, String str) {
        String[] strArrSplitString = splitString(str);
        for (int r12 = 0; r12 < strArrSplitString.length; r12++) {
            String[] strArrSplit = strArrSplitString[r12].split("=");
            Log.w(TAG, " Unable to parse " + strArrSplitString[r12]);
            constraint.setStringValue(strArrSplit[0], strArrSplit[1]);
        }
    }

    public void readFallback(ConstraintLayout constraintLayout) {
        int childCount = constraintLayout.getChildCount();
        for (int r12 = 0; r12 < childCount; r12++) {
            View childAt = constraintLayout.getChildAt(r12);
            ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) childAt.getLayoutParams();
            int id2 = childAt.getId();
            if (this.mForceId && id2 == -1) {
                throw new RuntimeException("All children of ConstraintLayout must have ids to use ConstraintSet");
            }
            if (!this.mConstraints.containsKey(Integer.valueOf(id2))) {
                this.mConstraints.put(Integer.valueOf(id2), new Constraint());
            }
            Constraint constraint = this.mConstraints.get(Integer.valueOf(id2));
            if (constraint != null) {
                if (!constraint.layout.mApply) {
                    constraint.fillFrom(id2, layoutParams);
                    if (childAt instanceof ConstraintHelper) {
                        constraint.layout.mReferenceIds = ((ConstraintHelper) childAt).getReferencedIds();
                        if (childAt instanceof Barrier) {
                            Barrier barrier = (Barrier) childAt;
                            constraint.layout.mBarrierAllowsGoneWidgets = barrier.getAllowsGoneWidget();
                            constraint.layout.mBarrierDirection = barrier.getType();
                            constraint.layout.mBarrierMargin = barrier.getMargin();
                        }
                    }
                    constraint.layout.mApply = true;
                }
                PropertySet propertySet = constraint.propertySet;
                if (!propertySet.mApply) {
                    propertySet.visibility = childAt.getVisibility();
                    constraint.propertySet.alpha = childAt.getAlpha();
                    constraint.propertySet.mApply = true;
                }
                Transform transform = constraint.transform;
                if (!transform.mApply) {
                    transform.mApply = true;
                    transform.rotation = childAt.getRotation();
                    constraint.transform.rotationX = childAt.getRotationX();
                    constraint.transform.rotationY = childAt.getRotationY();
                    constraint.transform.scaleX = childAt.getScaleX();
                    constraint.transform.scaleY = childAt.getScaleY();
                    float pivotX = childAt.getPivotX();
                    float pivotY = childAt.getPivotY();
                    if (pivotX != 0.0d || pivotY != 0.0d) {
                        Transform transform2 = constraint.transform;
                        transform2.transformPivotX = pivotX;
                        transform2.transformPivotY = pivotY;
                    }
                    constraint.transform.translationX = childAt.getTranslationX();
                    constraint.transform.translationY = childAt.getTranslationY();
                    constraint.transform.translationZ = childAt.getTranslationZ();
                    Transform transform3 = constraint.transform;
                    if (transform3.applyElevation) {
                        transform3.elevation = childAt.getElevation();
                    }
                }
            }
        }
    }

    public void readFallback(ConstraintSet constraintSet) {
        for (Integer num : constraintSet.mConstraints.keySet()) {
            int r22 = num.intValue();
            Constraint constraint = constraintSet.mConstraints.get(num);
            if (!this.mConstraints.containsKey(Integer.valueOf(r22))) {
                this.mConstraints.put(Integer.valueOf(r22), new Constraint());
            }
            Constraint constraint2 = this.mConstraints.get(Integer.valueOf(r22));
            if (constraint2 != null) {
                Layout layout = constraint2.layout;
                if (!layout.mApply) {
                    layout.copyFrom(constraint.layout);
                }
                PropertySet propertySet = constraint2.propertySet;
                if (!propertySet.mApply) {
                    propertySet.copyFrom(constraint.propertySet);
                }
                Transform transform = constraint2.transform;
                if (!transform.mApply) {
                    transform.copyFrom(constraint.transform);
                }
                Motion motion = constraint2.motion;
                if (!motion.mApply) {
                    motion.copyFrom(constraint.motion);
                }
                for (String str : constraint.mCustomConstraints.keySet()) {
                    if (!constraint2.mCustomConstraints.containsKey(str)) {
                        constraint2.mCustomConstraints.put(str, constraint.mCustomConstraints.get(str));
                    }
                }
            }
        }
    }

    public void removeAttribute(String str) {
        this.mSavedAttributes.remove(str);
    }

    public void removeFromHorizontalChain(int r92) {
        Constraint constraint;
        int r32;
        int r22;
        int r42;
        int r52;
        ConstraintSet constraintSet;
        int r12;
        int r02;
        int r33;
        int r23;
        int r43;
        int r53;
        ConstraintSet constraintSet2;
        int r13;
        if (!this.mConstraints.containsKey(Integer.valueOf(r92)) || (constraint = this.mConstraints.get(Integer.valueOf(r92))) == null) {
            return;
        }
        Layout layout = constraint.layout;
        int r6 = layout.leftToRight;
        int r72 = layout.rightToLeft;
        if (r6 == -1 && r72 == -1) {
            int r24 = layout.startToEnd;
            int r73 = layout.endToStart;
            if (r24 != -1 || r73 != -1) {
                if (r24 != -1 && r73 != -1) {
                    r53 = 0;
                    constraintSet2 = this;
                    constraintSet2.connect(r24, 7, r73, 6, 0);
                    r23 = 6;
                    r43 = 7;
                    r13 = r73;
                    r33 = r6;
                } else if (r73 != -1) {
                    r33 = layout.rightToRight;
                    if (r33 != -1) {
                        r23 = 7;
                        r43 = 7;
                        r53 = 0;
                        constraintSet2 = this;
                        r13 = r6;
                    } else {
                        r33 = layout.leftToLeft;
                        if (r33 != -1) {
                            r23 = 6;
                            r43 = 6;
                            r53 = 0;
                            constraintSet2 = this;
                            r13 = r73;
                        }
                    }
                }
                constraintSet2.connect(r13, r23, r33, r43, r53);
            }
            clear(r92, 6);
            r02 = 7;
        } else {
            if (r6 == -1 || r72 == -1) {
                r32 = layout.rightToRight;
                if (r32 != -1) {
                    r22 = 2;
                    r42 = 2;
                    r52 = 0;
                    constraintSet = this;
                    r12 = r6;
                } else {
                    r32 = layout.leftToLeft;
                    if (r32 != -1) {
                        r22 = 1;
                        r42 = 1;
                        r52 = 0;
                        constraintSet = this;
                        r12 = r72;
                    }
                    clear(r92, 1);
                    r02 = 2;
                }
            } else {
                r52 = 0;
                constraintSet = this;
                constraintSet.connect(r6, 2, r72, 1, 0);
                r22 = 1;
                r42 = 2;
                r12 = r72;
                r32 = r6;
            }
            constraintSet.connect(r12, r22, r32, r42, r52);
            clear(r92, 1);
            r02 = 2;
        }
        clear(r92, r02);
    }

    public void removeFromVerticalChain(int r10) {
        int r42;
        int r32;
        int r52;
        int r6;
        ConstraintSet constraintSet;
        int r22;
        if (this.mConstraints.containsKey(Integer.valueOf(r10))) {
            Constraint constraint = this.mConstraints.get(Integer.valueOf(r10));
            if (constraint == null) {
                return;
            }
            Layout layout = constraint.layout;
            int r72 = layout.topToBottom;
            int r82 = layout.bottomToTop;
            if (r72 != -1 || r82 != -1) {
                if (r72 == -1 || r82 == -1) {
                    r42 = layout.bottomToBottom;
                    if (r42 != -1) {
                        r32 = 4;
                        r52 = 4;
                        r6 = 0;
                        constraintSet = this;
                        r22 = r72;
                    } else {
                        r42 = layout.topToTop;
                        if (r42 != -1) {
                            r32 = 3;
                            r52 = 3;
                            r6 = 0;
                            constraintSet = this;
                            r22 = r82;
                        }
                    }
                } else {
                    r6 = 0;
                    constraintSet = this;
                    constraintSet.connect(r72, 4, r82, 3, 0);
                    r32 = 3;
                    r52 = 4;
                    r22 = r82;
                    r42 = r72;
                }
                constraintSet.connect(r22, r32, r42, r52, r6);
            }
        }
        clear(r10, 3);
        clear(r10, 4);
    }

    public void setAlpha(int r12, float f) {
        get(r12).propertySet.alpha = f;
    }

    public void setApplyElevation(int r12, boolean z10) {
        get(r12).transform.applyElevation = z10;
    }

    public void setBarrierType(int r12, int r22) {
        get(r12).layout.mHelperType = r22;
    }

    public void setColorValue(int r12, String str, int r32) {
        get(r12).setColorValue(str, r32);
    }

    public void setDimensionRatio(int r12, String str) {
        get(r12).layout.dimensionRatio = str;
    }

    public void setEditorAbsoluteX(int r12, int r22) {
        get(r12).layout.editorAbsoluteX = r22;
    }

    public void setEditorAbsoluteY(int r12, int r22) {
        get(r12).layout.editorAbsoluteY = r22;
    }

    public void setElevation(int r22, float f) {
        get(r22).transform.elevation = f;
        get(r22).transform.applyElevation = true;
    }

    public void setFloatValue(int r12, String str, float f) {
        get(r12).setFloatValue(str, f);
    }

    public void setForceId(boolean z10) {
        this.mForceId = z10;
    }

    public void setGoneMargin(int r12, int r22, int r32) {
        Constraint constraint = get(r12);
        switch (r22) {
            case 1:
                constraint.layout.goneLeftMargin = r32;
                return;
            case 2:
                constraint.layout.goneRightMargin = r32;
                return;
            case 3:
                constraint.layout.goneTopMargin = r32;
                return;
            case 4:
                constraint.layout.goneBottomMargin = r32;
                return;
            case 5:
                constraint.layout.goneBaselineMargin = r32;
                return;
            case 6:
                constraint.layout.goneStartMargin = r32;
                return;
            case 7:
                constraint.layout.goneEndMargin = r32;
                return;
            default:
                throw new IllegalArgumentException("unknown constraint");
        }
    }

    public void setGuidelineBegin(int r22, int r32) {
        get(r22).layout.guideBegin = r32;
        get(r22).layout.guideEnd = -1;
        get(r22).layout.guidePercent = -1.0f;
    }

    public void setGuidelineEnd(int r22, int r32) {
        get(r22).layout.guideEnd = r32;
        get(r22).layout.guideBegin = -1;
        get(r22).layout.guidePercent = -1.0f;
    }

    public void setGuidelinePercent(int r22, float f) {
        get(r22).layout.guidePercent = f;
        get(r22).layout.guideEnd = -1;
        get(r22).layout.guideBegin = -1;
    }

    public void setHorizontalBias(int r12, float f) {
        get(r12).layout.horizontalBias = f;
    }

    public void setHorizontalChainStyle(int r12, int r22) {
        get(r12).layout.horizontalChainStyle = r22;
    }

    public void setHorizontalWeight(int r12, float f) {
        get(r12).layout.horizontalWeight = f;
    }

    public void setIntValue(int r12, String str, int r32) {
        get(r12).setIntValue(str, r32);
    }

    public void setLayoutWrapBehavior(int r22, int r32) {
        if (r32 < 0 || r32 > 3) {
            return;
        }
        get(r22).layout.mWrapBehavior = r32;
    }

    public void setMargin(int r12, int r22, int r32) {
        Constraint constraint = get(r12);
        switch (r22) {
            case 1:
                constraint.layout.leftMargin = r32;
                return;
            case 2:
                constraint.layout.rightMargin = r32;
                return;
            case 3:
                constraint.layout.topMargin = r32;
                return;
            case 4:
                constraint.layout.bottomMargin = r32;
                return;
            case 5:
                constraint.layout.baselineMargin = r32;
                return;
            case 6:
                constraint.layout.startMargin = r32;
                return;
            case 7:
                constraint.layout.endMargin = r32;
                return;
            default:
                throw new IllegalArgumentException("unknown constraint");
        }
    }

    public void setReferencedIds(int r12, int... r22) {
        get(r12).layout.mReferenceIds = r22;
    }

    public void setRotation(int r12, float f) {
        get(r12).transform.rotation = f;
    }

    public void setRotationX(int r12, float f) {
        get(r12).transform.rotationX = f;
    }

    public void setRotationY(int r12, float f) {
        get(r12).transform.rotationY = f;
    }

    public void setScaleX(int r12, float f) {
        get(r12).transform.scaleX = f;
    }

    public void setScaleY(int r12, float f) {
        get(r12).transform.scaleY = f;
    }

    public void setStringValue(int r12, String str, String str2) {
        get(r12).setStringValue(str, str2);
    }

    public void setTransformPivot(int r12, float f, float f10) {
        Transform transform = get(r12).transform;
        transform.transformPivotY = f10;
        transform.transformPivotX = f;
    }

    public void setTransformPivotX(int r12, float f) {
        get(r12).transform.transformPivotX = f;
    }

    public void setTransformPivotY(int r12, float f) {
        get(r12).transform.transformPivotY = f;
    }

    public void setTranslation(int r12, float f, float f10) {
        Transform transform = get(r12).transform;
        transform.translationX = f;
        transform.translationY = f10;
    }

    public void setTranslationX(int r12, float f) {
        get(r12).transform.translationX = f;
    }

    public void setTranslationY(int r12, float f) {
        get(r12).transform.translationY = f;
    }

    public void setTranslationZ(int r12, float f) {
        get(r12).transform.translationZ = f;
    }

    public void setValidateOnParse(boolean z10) {
        this.mValidate = z10;
    }

    public void setVerticalBias(int r12, float f) {
        get(r12).layout.verticalBias = f;
    }

    public void setVerticalChainStyle(int r12, int r22) {
        get(r12).layout.verticalChainStyle = r22;
    }

    public void setVerticalWeight(int r12, float f) {
        get(r12).layout.verticalWeight = f;
    }

    public void setVisibility(int r12, int r22) {
        get(r12).propertySet.visibility = r22;
    }

    public void setVisibilityMode(int r12, int r22) {
        get(r12).propertySet.mVisibilityMode = r22;
    }

    public void writeState(Writer writer, ConstraintLayout constraintLayout, int r6) throws IOException {
        writer.write("\n---------------------------------------------\n");
        if ((r6 & 1) == 1) {
            new WriteXmlEngine(writer, constraintLayout, r6).writeLayout();
        } else {
            new WriteJsonEngine(writer, constraintLayout, r6).writeLayout();
        }
        writer.write("\n---------------------------------------------\n");
    }

    public void connect(int r10, int r11, int r12, int r13, int r14) {
        Layout layout;
        Layout layout2;
        Layout layout3;
        if (!this.mConstraints.containsKey(Integer.valueOf(r10))) {
            this.mConstraints.put(Integer.valueOf(r10), new Constraint());
        }
        Constraint constraint = this.mConstraints.get(Integer.valueOf(r10));
        if (constraint == null) {
            return;
        }
        switch (r11) {
            case 1:
                if (r13 == 1) {
                    Layout layout4 = constraint.layout;
                    layout4.leftToLeft = r12;
                    layout4.leftToRight = -1;
                } else {
                    if (r13 != 2) {
                        throw new IllegalArgumentException(c.h(new StringBuilder("Left to "), sideToString(r13), " undefined"));
                    }
                    Layout layout5 = constraint.layout;
                    layout5.leftToRight = r12;
                    layout5.leftToLeft = -1;
                }
                constraint.layout.leftMargin = r14;
                return;
            case 2:
                if (r13 == 1) {
                    Layout layout6 = constraint.layout;
                    layout6.rightToLeft = r12;
                    layout6.rightToRight = -1;
                } else {
                    if (r13 != 2) {
                        throw new IllegalArgumentException(c.h(new StringBuilder("right to "), sideToString(r13), " undefined"));
                    }
                    Layout layout7 = constraint.layout;
                    layout7.rightToRight = r12;
                    layout7.rightToLeft = -1;
                }
                constraint.layout.rightMargin = r14;
                return;
            case 3:
                if (r13 == 3) {
                    layout = constraint.layout;
                    layout.topToTop = r12;
                    layout.topToBottom = -1;
                } else {
                    if (r13 != 4) {
                        throw new IllegalArgumentException(c.h(new StringBuilder("right to "), sideToString(r13), " undefined"));
                    }
                    layout = constraint.layout;
                    layout.topToBottom = r12;
                    layout.topToTop = -1;
                }
                layout.baselineToBaseline = -1;
                layout.baselineToTop = -1;
                layout.baselineToBottom = -1;
                constraint.layout.topMargin = r14;
                return;
            case 4:
                if (r13 == 4) {
                    layout2 = constraint.layout;
                    layout2.bottomToBottom = r12;
                    layout2.bottomToTop = -1;
                } else {
                    if (r13 != 3) {
                        throw new IllegalArgumentException(c.h(new StringBuilder("right to "), sideToString(r13), " undefined"));
                    }
                    layout2 = constraint.layout;
                    layout2.bottomToTop = r12;
                    layout2.bottomToBottom = -1;
                }
                layout2.baselineToBaseline = -1;
                layout2.baselineToTop = -1;
                layout2.baselineToBottom = -1;
                constraint.layout.bottomMargin = r14;
                return;
            case 5:
                if (r13 == 5) {
                    layout3 = constraint.layout;
                    layout3.baselineToBaseline = r12;
                } else if (r13 == 3) {
                    layout3 = constraint.layout;
                    layout3.baselineToTop = r12;
                } else {
                    if (r13 != 4) {
                        throw new IllegalArgumentException(c.h(new StringBuilder("right to "), sideToString(r13), " undefined"));
                    }
                    layout3 = constraint.layout;
                    layout3.baselineToBottom = r12;
                }
                layout3.bottomToBottom = -1;
                layout3.bottomToTop = -1;
                layout3.topToTop = -1;
                layout3.topToBottom = -1;
                return;
            case 6:
                if (r13 == 6) {
                    Layout layout8 = constraint.layout;
                    layout8.startToStart = r12;
                    layout8.startToEnd = -1;
                } else {
                    if (r13 != 7) {
                        throw new IllegalArgumentException(c.h(new StringBuilder("right to "), sideToString(r13), " undefined"));
                    }
                    Layout layout9 = constraint.layout;
                    layout9.startToEnd = r12;
                    layout9.startToStart = -1;
                }
                constraint.layout.startMargin = r14;
                return;
            case 7:
                if (r13 == 7) {
                    Layout layout10 = constraint.layout;
                    layout10.endToEnd = r12;
                    layout10.endToStart = -1;
                } else {
                    if (r13 != 6) {
                        throw new IllegalArgumentException(c.h(new StringBuilder("right to "), sideToString(r13), " undefined"));
                    }
                    Layout layout11 = constraint.layout;
                    layout11.endToStart = r12;
                    layout11.endToEnd = -1;
                }
                constraint.layout.endMargin = r14;
                return;
            default:
                StringBuilder sb2 = new StringBuilder();
                sb2.append(sideToString(r11));
                sb2.append(" to ");
                throw new IllegalArgumentException(c.h(sb2, sideToString(r13), " unknown"));
        }
    }
}
