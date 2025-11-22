package androidx.constraintlayout.core.widgets;

import androidx.constraintlayout.core.LinearSystem;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import java.util.ArrayList;
import java.util.HashMap;

/* loaded from: classes.dex */
public class Flow extends VirtualLayout {
    public static final int HORIZONTAL_ALIGN_CENTER = 2;
    public static final int HORIZONTAL_ALIGN_END = 1;
    public static final int HORIZONTAL_ALIGN_START = 0;
    public static final int VERTICAL_ALIGN_BASELINE = 3;
    public static final int VERTICAL_ALIGN_BOTTOM = 1;
    public static final int VERTICAL_ALIGN_CENTER = 2;
    public static final int VERTICAL_ALIGN_TOP = 0;
    public static final int WRAP_ALIGNED = 2;
    public static final int WRAP_CHAIN = 1;
    public static final int WRAP_CHAIN_NEW = 3;
    public static final int WRAP_NONE = 0;
    private ConstraintWidget[] mDisplayedWidgets;
    private int mHorizontalStyle = -1;
    private int mVerticalStyle = -1;
    private int mFirstHorizontalStyle = -1;
    private int mFirstVerticalStyle = -1;
    private int mLastHorizontalStyle = -1;
    private int mLastVerticalStyle = -1;
    private float mHorizontalBias = 0.5f;
    private float mVerticalBias = 0.5f;
    private float mFirstHorizontalBias = 0.5f;
    private float mFirstVerticalBias = 0.5f;
    private float mLastHorizontalBias = 0.5f;
    private float mLastVerticalBias = 0.5f;
    private int mHorizontalGap = 0;
    private int mVerticalGap = 0;
    private int mHorizontalAlign = 2;
    private int mVerticalAlign = 2;
    private int mWrapMode = 0;
    private int mMaxElementsWrap = -1;
    private int mOrientation = 0;
    private ArrayList<WidgetsList> mChainList = new ArrayList<>();
    private ConstraintWidget[] mAlignedBiggestElementsInRows = null;
    private ConstraintWidget[] mAlignedBiggestElementsInCols = null;
    private int[] mAlignedDimensions = null;
    private int mDisplayedWidgetsCount = 0;

    public class WidgetsList {
        private ConstraintAnchor mBottom;
        private ConstraintAnchor mLeft;
        private int mMax;
        private int mOrientation;
        private int mPaddingBottom;
        private int mPaddingLeft;
        private int mPaddingRight;
        private int mPaddingTop;
        private ConstraintAnchor mRight;
        private ConstraintAnchor mTop;
        private ConstraintWidget biggest = null;
        int biggestDimension = 0;
        private int mWidth = 0;
        private int mHeight = 0;
        private int mStartIndex = 0;
        private int mCount = 0;
        private int mNbMatchConstraintsWidgets = 0;

        public WidgetsList(int r32, ConstraintAnchor constraintAnchor, ConstraintAnchor constraintAnchor2, ConstraintAnchor constraintAnchor3, ConstraintAnchor constraintAnchor4, int r82) {
            this.mPaddingLeft = 0;
            this.mPaddingTop = 0;
            this.mPaddingRight = 0;
            this.mPaddingBottom = 0;
            this.mMax = 0;
            this.mOrientation = r32;
            this.mLeft = constraintAnchor;
            this.mTop = constraintAnchor2;
            this.mRight = constraintAnchor3;
            this.mBottom = constraintAnchor4;
            this.mPaddingLeft = Flow.this.getPaddingLeft();
            this.mPaddingTop = Flow.this.getPaddingTop();
            this.mPaddingRight = Flow.this.getPaddingRight();
            this.mPaddingBottom = Flow.this.getPaddingBottom();
            this.mMax = r82;
        }

        private void recomputeDimensions() {
            this.mWidth = 0;
            this.mHeight = 0;
            this.biggest = null;
            this.biggestDimension = 0;
            int r12 = this.mCount;
            for (int r22 = 0; r22 < r12 && this.mStartIndex + r22 < Flow.this.mDisplayedWidgetsCount; r22++) {
                ConstraintWidget constraintWidget = Flow.this.mDisplayedWidgets[this.mStartIndex + r22];
                if (this.mOrientation == 0) {
                    int width = constraintWidget.getWidth();
                    int r6 = Flow.this.mHorizontalGap;
                    if (constraintWidget.getVisibility() == 8) {
                        r6 = 0;
                    }
                    this.mWidth = width + r6 + this.mWidth;
                    int widgetHeight = Flow.this.getWidgetHeight(constraintWidget, this.mMax);
                    if (this.biggest == null || this.biggestDimension < widgetHeight) {
                        this.biggest = constraintWidget;
                        this.biggestDimension = widgetHeight;
                        this.mHeight = widgetHeight;
                    }
                } else {
                    int widgetWidth = Flow.this.getWidgetWidth(constraintWidget, this.mMax);
                    int widgetHeight2 = Flow.this.getWidgetHeight(constraintWidget, this.mMax);
                    int r72 = Flow.this.mVerticalGap;
                    if (constraintWidget.getVisibility() == 8) {
                        r72 = 0;
                    }
                    this.mHeight = widgetHeight2 + r72 + this.mHeight;
                    if (this.biggest == null || this.biggestDimension < widgetWidth) {
                        this.biggest = constraintWidget;
                        this.biggestDimension = widgetWidth;
                        this.mWidth = widgetWidth;
                    }
                }
            }
        }

        public void add(ConstraintWidget constraintWidget) {
            if (this.mOrientation == 0) {
                int widgetWidth = Flow.this.getWidgetWidth(constraintWidget, this.mMax);
                if (constraintWidget.getHorizontalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                    this.mNbMatchConstraintsWidgets++;
                    widgetWidth = 0;
                }
                this.mWidth = widgetWidth + (constraintWidget.getVisibility() != 8 ? Flow.this.mHorizontalGap : 0) + this.mWidth;
                int widgetHeight = Flow.this.getWidgetHeight(constraintWidget, this.mMax);
                if (this.biggest == null || this.biggestDimension < widgetHeight) {
                    this.biggest = constraintWidget;
                    this.biggestDimension = widgetHeight;
                    this.mHeight = widgetHeight;
                }
            } else {
                int widgetWidth2 = Flow.this.getWidgetWidth(constraintWidget, this.mMax);
                int widgetHeight2 = Flow.this.getWidgetHeight(constraintWidget, this.mMax);
                if (constraintWidget.getVerticalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                    this.mNbMatchConstraintsWidgets++;
                    widgetHeight2 = 0;
                }
                this.mHeight = widgetHeight2 + (constraintWidget.getVisibility() != 8 ? Flow.this.mVerticalGap : 0) + this.mHeight;
                if (this.biggest == null || this.biggestDimension < widgetWidth2) {
                    this.biggest = constraintWidget;
                    this.biggestDimension = widgetWidth2;
                    this.mWidth = widgetWidth2;
                }
            }
            this.mCount++;
        }

        public void clear() {
            this.biggestDimension = 0;
            this.biggest = null;
            this.mWidth = 0;
            this.mHeight = 0;
            this.mStartIndex = 0;
            this.mCount = 0;
            this.mNbMatchConstraintsWidgets = 0;
        }

        public void createConstraints(boolean z10, int r18, boolean z11) {
            ConstraintAnchor constraintAnchor;
            ConstraintAnchor constraintAnchor2;
            ConstraintAnchor constraintAnchor3;
            ConstraintAnchor constraintAnchor4;
            ConstraintAnchor constraintAnchor5;
            ConstraintAnchor constraintAnchor6;
            ConstraintWidget constraintWidget;
            ConstraintAnchor constraintAnchor7;
            ConstraintAnchor constraintAnchor8;
            float f;
            float f10;
            int r12 = this.mCount;
            for (int r32 = 0; r32 < r12 && this.mStartIndex + r32 < Flow.this.mDisplayedWidgetsCount; r32++) {
                ConstraintWidget constraintWidget2 = Flow.this.mDisplayedWidgets[this.mStartIndex + r32];
                if (constraintWidget2 != null) {
                    constraintWidget2.resetAnchors();
                }
            }
            if (r12 == 0 || this.biggest == null) {
                return;
            }
            boolean z12 = z11 && r18 == 0;
            int r72 = -1;
            int r82 = -1;
            for (int r6 = 0; r6 < r12; r6++) {
                int r92 = z10 ? (r12 - 1) - r6 : r6;
                if (this.mStartIndex + r92 >= Flow.this.mDisplayedWidgetsCount) {
                    break;
                }
                ConstraintWidget constraintWidget3 = Flow.this.mDisplayedWidgets[this.mStartIndex + r92];
                if (constraintWidget3 != null && constraintWidget3.getVisibility() == 0) {
                    if (r72 == -1) {
                        r72 = r6;
                    }
                    r82 = r6;
                }
            }
            ConstraintWidget constraintWidget4 = null;
            if (this.mOrientation != 0) {
                ConstraintWidget constraintWidget5 = this.biggest;
                constraintWidget5.setHorizontalChainStyle(Flow.this.mHorizontalStyle);
                int r62 = this.mPaddingLeft;
                if (r18 > 0) {
                    r62 += Flow.this.mHorizontalGap;
                }
                if (z10) {
                    constraintWidget5.mRight.connect(this.mRight, r62);
                    if (z11) {
                        constraintWidget5.mLeft.connect(this.mLeft, this.mPaddingRight);
                    }
                    if (r18 > 0) {
                        constraintAnchor = this.mRight.mOwner.mLeft;
                        constraintAnchor2 = constraintWidget5.mRight;
                        constraintAnchor.connect(constraintAnchor2, 0);
                    }
                } else {
                    constraintWidget5.mLeft.connect(this.mLeft, r62);
                    if (z11) {
                        constraintWidget5.mRight.connect(this.mRight, this.mPaddingRight);
                    }
                    if (r18 > 0) {
                        constraintAnchor = this.mLeft.mOwner.mRight;
                        constraintAnchor2 = constraintWidget5.mLeft;
                        constraintAnchor.connect(constraintAnchor2, 0);
                    }
                }
                for (int r63 = 0; r63 < r12 && this.mStartIndex + r63 < Flow.this.mDisplayedWidgetsCount; r63++) {
                    ConstraintWidget constraintWidget6 = Flow.this.mDisplayedWidgets[this.mStartIndex + r63];
                    if (constraintWidget6 != null) {
                        if (r63 == 0) {
                            constraintWidget6.connect(constraintWidget6.mTop, this.mTop, this.mPaddingTop);
                            int r11 = Flow.this.mVerticalStyle;
                            float f11 = Flow.this.mVerticalBias;
                            if (this.mStartIndex == 0 && Flow.this.mFirstVerticalStyle != -1) {
                                r11 = Flow.this.mFirstVerticalStyle;
                                f11 = Flow.this.mFirstVerticalBias;
                            } else if (z11 && Flow.this.mLastVerticalStyle != -1) {
                                r11 = Flow.this.mLastVerticalStyle;
                                f11 = Flow.this.mLastVerticalBias;
                            }
                            constraintWidget6.setVerticalChainStyle(r11);
                            constraintWidget6.setVerticalBiasPercent(f11);
                        }
                        if (r63 == r12 - 1) {
                            constraintWidget6.connect(constraintWidget6.mBottom, this.mBottom, this.mPaddingBottom);
                        }
                        if (constraintWidget4 != null) {
                            constraintWidget6.mTop.connect(constraintWidget4.mBottom, Flow.this.mVerticalGap);
                            if (r63 == r72) {
                                constraintWidget6.mTop.setGoneMargin(this.mPaddingTop);
                            }
                            constraintWidget4.mBottom.connect(constraintWidget6.mTop, 0);
                            if (r63 == r82 + 1) {
                                constraintWidget4.mBottom.setGoneMargin(this.mPaddingBottom);
                            }
                        }
                        if (constraintWidget6 != constraintWidget5) {
                            int r112 = Flow.this.mHorizontalAlign;
                            if (!z10) {
                                if (r112 != 0) {
                                    if (r112 != 1) {
                                        if (r112 == 2) {
                                            ConstraintAnchor constraintAnchor9 = constraintWidget6.mLeft;
                                            if (z12) {
                                                constraintAnchor9.connect(this.mLeft, this.mPaddingLeft);
                                                constraintWidget6.mRight.connect(this.mRight, this.mPaddingRight);
                                            } else {
                                                constraintAnchor9.connect(constraintWidget5.mLeft, 0);
                                            }
                                        }
                                        constraintWidget4 = constraintWidget6;
                                    }
                                    constraintAnchor3 = constraintWidget6.mRight;
                                    constraintAnchor4 = constraintWidget5.mRight;
                                } else {
                                    constraintAnchor3 = constraintWidget6.mLeft;
                                    constraintAnchor4 = constraintWidget5.mLeft;
                                }
                                constraintAnchor3.connect(constraintAnchor4, 0);
                                constraintWidget4 = constraintWidget6;
                            } else if (r112 == 0) {
                                constraintAnchor5 = constraintWidget6.mRight;
                                constraintAnchor6 = constraintWidget5.mRight;
                                constraintAnchor5.connect(constraintAnchor6, 0);
                                constraintWidget4 = constraintWidget6;
                            } else if (r112 != 1) {
                                if (r112 == 2) {
                                    constraintWidget6.mLeft.connect(constraintWidget5.mLeft, 0);
                                    constraintAnchor5 = constraintWidget6.mRight;
                                    constraintAnchor6 = constraintWidget5.mRight;
                                    constraintAnchor5.connect(constraintAnchor6, 0);
                                }
                                constraintWidget4 = constraintWidget6;
                            } else {
                                constraintAnchor5 = constraintWidget6.mLeft;
                                constraintAnchor6 = constraintWidget5.mLeft;
                                constraintAnchor5.connect(constraintAnchor6, 0);
                                constraintWidget4 = constraintWidget6;
                            }
                        } else {
                            constraintWidget4 = constraintWidget6;
                        }
                    }
                }
                return;
            }
            ConstraintWidget constraintWidget7 = this.biggest;
            constraintWidget7.setVerticalChainStyle(Flow.this.mVerticalStyle);
            int r10 = this.mPaddingTop;
            if (r18 > 0) {
                r10 += Flow.this.mVerticalGap;
            }
            constraintWidget7.mTop.connect(this.mTop, r10);
            if (z11) {
                constraintWidget7.mBottom.connect(this.mBottom, this.mPaddingBottom);
            }
            if (r18 > 0) {
                this.mTop.mOwner.mBottom.connect(constraintWidget7.mTop, 0);
            }
            if (Flow.this.mVerticalAlign != 3 || constraintWidget7.hasBaseline()) {
                constraintWidget = constraintWidget7;
            } else {
                for (int r102 = 0; r102 < r12; r102++) {
                    int r122 = z10 ? (r12 - 1) - r102 : r102;
                    if (this.mStartIndex + r122 >= Flow.this.mDisplayedWidgetsCount) {
                        break;
                    }
                    constraintWidget = Flow.this.mDisplayedWidgets[this.mStartIndex + r122];
                    if (constraintWidget.hasBaseline()) {
                        break;
                    }
                }
                constraintWidget = constraintWidget7;
            }
            int r103 = 0;
            while (r103 < r12) {
                int r13 = z10 ? (r12 - 1) - r103 : r103;
                if (this.mStartIndex + r13 >= Flow.this.mDisplayedWidgetsCount) {
                    return;
                }
                ConstraintWidget constraintWidget8 = Flow.this.mDisplayedWidgets[this.mStartIndex + r13];
                if (constraintWidget8 == null) {
                    constraintWidget8 = constraintWidget4;
                } else {
                    if (r103 == 0) {
                        constraintWidget8.connect(constraintWidget8.mLeft, this.mLeft, this.mPaddingLeft);
                    }
                    if (r13 == 0) {
                        int r33 = Flow.this.mHorizontalStyle;
                        float f12 = Flow.this.mHorizontalBias;
                        if (z10) {
                            f12 = 1.0f - f12;
                        }
                        if (this.mStartIndex != 0 || Flow.this.mFirstHorizontalStyle == -1) {
                            if (z11 && Flow.this.mLastHorizontalStyle != -1) {
                                r33 = Flow.this.mLastHorizontalStyle;
                                if (z10) {
                                    f10 = Flow.this.mLastHorizontalBias;
                                    f = 1.0f - f10;
                                    f12 = f;
                                } else {
                                    f = Flow.this.mLastHorizontalBias;
                                    f12 = f;
                                }
                            }
                            constraintWidget8.setHorizontalChainStyle(r33);
                            constraintWidget8.setHorizontalBiasPercent(f12);
                        } else {
                            r33 = Flow.this.mFirstHorizontalStyle;
                            if (z10) {
                                f10 = Flow.this.mFirstHorizontalBias;
                                f = 1.0f - f10;
                                f12 = f;
                                constraintWidget8.setHorizontalChainStyle(r33);
                                constraintWidget8.setHorizontalBiasPercent(f12);
                            } else {
                                f = Flow.this.mFirstHorizontalBias;
                                f12 = f;
                                constraintWidget8.setHorizontalChainStyle(r33);
                                constraintWidget8.setHorizontalBiasPercent(f12);
                            }
                        }
                        r103++;
                        constraintWidget4 = constraintWidget8;
                    }
                    if (r103 == r12 - 1) {
                        constraintWidget8.connect(constraintWidget8.mRight, this.mRight, this.mPaddingRight);
                    }
                    if (constraintWidget4 != null) {
                        constraintWidget8.mLeft.connect(constraintWidget4.mRight, Flow.this.mHorizontalGap);
                        if (r103 == r72) {
                            constraintWidget8.mLeft.setGoneMargin(this.mPaddingLeft);
                        }
                        constraintWidget4.mRight.connect(constraintWidget8.mLeft, 0);
                        if (r103 == r82 + 1) {
                            constraintWidget4.mRight.setGoneMargin(this.mPaddingRight);
                        }
                    }
                    if (constraintWidget8 != constraintWidget7) {
                        if (Flow.this.mVerticalAlign == 3 && constraintWidget.hasBaseline() && constraintWidget8 != constraintWidget && constraintWidget8.hasBaseline()) {
                            constraintAnchor7 = constraintWidget8.mBaseline;
                            constraintAnchor8 = constraintWidget.mBaseline;
                        } else {
                            int r34 = Flow.this.mVerticalAlign;
                            if (r34 != 0) {
                                if (r34 != 1) {
                                    ConstraintAnchor constraintAnchor10 = constraintWidget8.mTop;
                                    if (z12) {
                                        constraintAnchor10.connect(this.mTop, this.mPaddingTop);
                                        constraintWidget8.mBottom.connect(this.mBottom, this.mPaddingBottom);
                                    } else {
                                        constraintAnchor10.connect(constraintWidget7.mTop, 0);
                                    }
                                }
                                constraintAnchor7 = constraintWidget8.mBottom;
                                constraintAnchor8 = constraintWidget7.mBottom;
                            } else {
                                constraintAnchor7 = constraintWidget8.mTop;
                                constraintAnchor8 = constraintWidget7.mTop;
                            }
                        }
                        constraintAnchor7.connect(constraintAnchor8, 0);
                    }
                    r103++;
                    constraintWidget4 = constraintWidget8;
                }
                r103++;
                constraintWidget4 = constraintWidget8;
            }
        }

        public int getHeight() {
            return this.mOrientation == 1 ? this.mHeight - Flow.this.mVerticalGap : this.mHeight;
        }

        public int getWidth() {
            return this.mOrientation == 0 ? this.mWidth - Flow.this.mHorizontalGap : this.mWidth;
        }

        public void measureMatchConstraints(int r92) {
            Flow flow;
            ConstraintWidget.DimensionBehaviour horizontalDimensionBehaviour;
            int width;
            ConstraintWidget.DimensionBehaviour verticalDimensionBehaviour;
            int height;
            int r02 = this.mNbMatchConstraintsWidgets;
            if (r02 == 0) {
                return;
            }
            int r12 = this.mCount;
            int r93 = r92 / r02;
            for (int r03 = 0; r03 < r12 && this.mStartIndex + r03 < Flow.this.mDisplayedWidgetsCount; r03++) {
                ConstraintWidget constraintWidget = Flow.this.mDisplayedWidgets[this.mStartIndex + r03];
                if (this.mOrientation == 0) {
                    if (constraintWidget != null && constraintWidget.getHorizontalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && constraintWidget.mMatchConstraintDefaultWidth == 0) {
                        flow = Flow.this;
                        horizontalDimensionBehaviour = ConstraintWidget.DimensionBehaviour.FIXED;
                        verticalDimensionBehaviour = constraintWidget.getVerticalDimensionBehaviour();
                        height = constraintWidget.getHeight();
                        width = r93;
                        flow.measure(constraintWidget, horizontalDimensionBehaviour, width, verticalDimensionBehaviour, height);
                    }
                } else if (constraintWidget != null && constraintWidget.getVerticalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && constraintWidget.mMatchConstraintDefaultHeight == 0) {
                    flow = Flow.this;
                    horizontalDimensionBehaviour = constraintWidget.getHorizontalDimensionBehaviour();
                    width = constraintWidget.getWidth();
                    verticalDimensionBehaviour = ConstraintWidget.DimensionBehaviour.FIXED;
                    height = r93;
                    flow.measure(constraintWidget, horizontalDimensionBehaviour, width, verticalDimensionBehaviour, height);
                }
            }
            recomputeDimensions();
        }

        public void setStartIndex(int r12) {
            this.mStartIndex = r12;
        }

        public void setup(int r12, ConstraintAnchor constraintAnchor, ConstraintAnchor constraintAnchor2, ConstraintAnchor constraintAnchor3, ConstraintAnchor constraintAnchor4, int r6, int r72, int r82, int r92, int r10) {
            this.mOrientation = r12;
            this.mLeft = constraintAnchor;
            this.mTop = constraintAnchor2;
            this.mRight = constraintAnchor3;
            this.mBottom = constraintAnchor4;
            this.mPaddingLeft = r6;
            this.mPaddingTop = r72;
            this.mPaddingRight = r82;
            this.mPaddingBottom = r92;
            this.mMax = r10;
        }
    }

    private void createAlignedConstraints(boolean z10) {
        ConstraintWidget constraintWidget;
        float f;
        int r42;
        if (this.mAlignedDimensions == null || this.mAlignedBiggestElementsInCols == null || this.mAlignedBiggestElementsInRows == null) {
            return;
        }
        for (int r12 = 0; r12 < this.mDisplayedWidgetsCount; r12++) {
            this.mDisplayedWidgets[r12].resetAnchors();
        }
        int[] r13 = this.mAlignedDimensions;
        int r22 = r13[0];
        int r14 = r13[1];
        float f10 = this.mHorizontalBias;
        ConstraintWidget constraintWidget2 = null;
        int r6 = 0;
        while (r6 < r22) {
            if (z10) {
                r42 = (r22 - r6) - 1;
                f = 1.0f - this.mHorizontalBias;
            } else {
                f = f10;
                r42 = r6;
            }
            ConstraintWidget constraintWidget3 = this.mAlignedBiggestElementsInCols[r42];
            if (constraintWidget3 != null && constraintWidget3.getVisibility() != 8) {
                if (r6 == 0) {
                    constraintWidget3.connect(constraintWidget3.mLeft, this.mLeft, getPaddingLeft());
                    constraintWidget3.setHorizontalChainStyle(this.mHorizontalStyle);
                    constraintWidget3.setHorizontalBiasPercent(f);
                }
                if (r6 == r22 - 1) {
                    constraintWidget3.connect(constraintWidget3.mRight, this.mRight, getPaddingRight());
                }
                if (r6 > 0 && constraintWidget2 != null) {
                    constraintWidget3.connect(constraintWidget3.mLeft, constraintWidget2.mRight, this.mHorizontalGap);
                    constraintWidget2.connect(constraintWidget2.mRight, constraintWidget3.mLeft, 0);
                }
                constraintWidget2 = constraintWidget3;
            }
            r6++;
            f10 = f;
        }
        for (int r122 = 0; r122 < r14; r122++) {
            ConstraintWidget constraintWidget4 = this.mAlignedBiggestElementsInRows[r122];
            if (constraintWidget4 != null && constraintWidget4.getVisibility() != 8) {
                if (r122 == 0) {
                    constraintWidget4.connect(constraintWidget4.mTop, this.mTop, getPaddingTop());
                    constraintWidget4.setVerticalChainStyle(this.mVerticalStyle);
                    constraintWidget4.setVerticalBiasPercent(this.mVerticalBias);
                }
                if (r122 == r14 - 1) {
                    constraintWidget4.connect(constraintWidget4.mBottom, this.mBottom, getPaddingBottom());
                }
                if (r122 > 0 && constraintWidget2 != null) {
                    constraintWidget4.connect(constraintWidget4.mTop, constraintWidget2.mBottom, this.mVerticalGap);
                    constraintWidget2.connect(constraintWidget2.mBottom, constraintWidget4.mTop, 0);
                }
                constraintWidget2 = constraintWidget4;
            }
        }
        for (int r123 = 0; r123 < r22; r123++) {
            for (int r43 = 0; r43 < r14; r43++) {
                int r52 = (r43 * r22) + r123;
                if (this.mOrientation == 1) {
                    r52 = (r123 * r14) + r43;
                }
                ConstraintWidget[] constraintWidgetArr = this.mDisplayedWidgets;
                if (r52 < constraintWidgetArr.length && (constraintWidget = constraintWidgetArr[r52]) != null && constraintWidget.getVisibility() != 8) {
                    ConstraintWidget constraintWidget5 = this.mAlignedBiggestElementsInCols[r123];
                    ConstraintWidget constraintWidget6 = this.mAlignedBiggestElementsInRows[r43];
                    if (constraintWidget != constraintWidget5) {
                        constraintWidget.connect(constraintWidget.mLeft, constraintWidget5.mLeft, 0);
                        constraintWidget.connect(constraintWidget.mRight, constraintWidget5.mRight, 0);
                    }
                    if (constraintWidget != constraintWidget6) {
                        constraintWidget.connect(constraintWidget.mTop, constraintWidget6.mTop, 0);
                        constraintWidget.connect(constraintWidget.mBottom, constraintWidget6.mBottom, 0);
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int getWidgetHeight(ConstraintWidget constraintWidget, int r11) {
        if (constraintWidget == null) {
            return 0;
        }
        if (constraintWidget.getVerticalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
            int r12 = constraintWidget.mMatchConstraintDefaultHeight;
            if (r12 == 0) {
                return 0;
            }
            if (r12 == 2) {
                int r112 = (int) (constraintWidget.mMatchConstraintPercentHeight * r11);
                if (r112 != constraintWidget.getHeight()) {
                    constraintWidget.setMeasureRequested(true);
                    measure(constraintWidget, constraintWidget.getHorizontalDimensionBehaviour(), constraintWidget.getWidth(), ConstraintWidget.DimensionBehaviour.FIXED, r112);
                }
                return r112;
            }
            if (r12 == 1) {
                return constraintWidget.getHeight();
            }
            if (r12 == 3) {
                return (int) ((constraintWidget.getWidth() * constraintWidget.mDimensionRatio) + 0.5f);
            }
        }
        return constraintWidget.getHeight();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int getWidgetWidth(ConstraintWidget constraintWidget, int r11) {
        if (constraintWidget == null) {
            return 0;
        }
        if (constraintWidget.getHorizontalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
            int r12 = constraintWidget.mMatchConstraintDefaultWidth;
            if (r12 == 0) {
                return 0;
            }
            if (r12 == 2) {
                int r112 = (int) (constraintWidget.mMatchConstraintPercentWidth * r11);
                if (r112 != constraintWidget.getWidth()) {
                    constraintWidget.setMeasureRequested(true);
                    measure(constraintWidget, ConstraintWidget.DimensionBehaviour.FIXED, r112, constraintWidget.getVerticalDimensionBehaviour(), constraintWidget.getHeight());
                }
                return r112;
            }
            if (r12 == 1) {
                return constraintWidget.getWidth();
            }
            if (r12 == 3) {
                return (int) ((constraintWidget.getHeight() * constraintWidget.mDimensionRatio) + 0.5f);
            }
        }
        return constraintWidget.getWidth();
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x005c  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:103:0x010b -> B:40:0x0057). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:104:0x010d -> B:40:0x0057). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:106:0x0113 -> B:40:0x0057). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:107:0x0115 -> B:40:0x0057). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void measureAligned(androidx.constraintlayout.core.widgets.ConstraintWidget[] r11, int r12, int r13, int r14, int[] r15) {
        /*
            Method dump skipped, instructions count: 290
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.core.widgets.Flow.measureAligned(androidx.constraintlayout.core.widgets.ConstraintWidget[], int, int, int, int[]):void");
    }

    private void measureChainWrap(ConstraintWidget[] constraintWidgetArr, int r30, int r31, int r32, int[] r33) {
        int r22;
        int r42;
        ConstraintAnchor constraintAnchor;
        int paddingRight;
        ConstraintAnchor constraintAnchor2;
        int paddingBottom;
        int r23;
        if (r30 == 0) {
            return;
        }
        this.mChainList.clear();
        WidgetsList widgetsList = new WidgetsList(r31, this.mLeft, this.mTop, this.mRight, this.mBottom, r32);
        this.mChainList.add(widgetsList);
        int r02 = 0;
        int r12 = 0;
        int r11 = 0;
        if (r31 == 0) {
            while (r11 < r30) {
                ConstraintWidget constraintWidget = constraintWidgetArr[r11];
                int widgetWidth = getWidgetWidth(constraintWidget, r32);
                if (constraintWidget.getHorizontalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                    r02++;
                }
                int r14 = r02;
                boolean z10 = (r12 == r32 || (this.mHorizontalGap + r12) + widgetWidth > r32) && widgetsList.biggest != null;
                if (!z10 && r11 > 0 && (r23 = this.mMaxElementsWrap) > 0 && r11 % r23 == 0) {
                    z10 = true;
                }
                if (z10) {
                    widgetsList = new WidgetsList(r31, this.mLeft, this.mTop, this.mRight, this.mBottom, r32);
                    widgetsList.setStartIndex(r11);
                    this.mChainList.add(widgetsList);
                } else {
                    if (r11 > 0) {
                        r12 = this.mHorizontalGap + widgetWidth + r12;
                    }
                    widgetsList.add(constraintWidget);
                    r11++;
                    r02 = r14;
                }
                r12 = widgetWidth;
                widgetsList.add(constraintWidget);
                r11++;
                r02 = r14;
            }
        } else {
            while (r11 < r30) {
                ConstraintWidget constraintWidget2 = constraintWidgetArr[r11];
                int widgetHeight = getWidgetHeight(constraintWidget2, r32);
                if (constraintWidget2.getVerticalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                    r02++;
                }
                int r142 = r02;
                boolean z11 = (r12 == r32 || (this.mVerticalGap + r12) + widgetHeight > r32) && widgetsList.biggest != null;
                if (!z11 && r11 > 0 && (r22 = this.mMaxElementsWrap) > 0 && r11 % r22 == 0) {
                    z11 = true;
                }
                if (z11) {
                    widgetsList = new WidgetsList(r31, this.mLeft, this.mTop, this.mRight, this.mBottom, r32);
                    widgetsList.setStartIndex(r11);
                    this.mChainList.add(widgetsList);
                } else {
                    if (r11 > 0) {
                        r12 = this.mVerticalGap + widgetHeight + r12;
                    }
                    widgetsList.add(constraintWidget2);
                    r11++;
                    r02 = r142;
                }
                r12 = widgetHeight;
                widgetsList.add(constraintWidget2);
                r11++;
                r02 = r142;
            }
        }
        int size = this.mChainList.size();
        ConstraintAnchor constraintAnchor3 = this.mLeft;
        ConstraintAnchor constraintAnchor4 = this.mTop;
        ConstraintAnchor constraintAnchor5 = this.mRight;
        ConstraintAnchor constraintAnchor6 = this.mBottom;
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int paddingRight2 = getPaddingRight();
        int paddingBottom2 = getPaddingBottom();
        ConstraintWidget.DimensionBehaviour horizontalDimensionBehaviour = getHorizontalDimensionBehaviour();
        ConstraintWidget.DimensionBehaviour dimensionBehaviour = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
        boolean z12 = horizontalDimensionBehaviour == dimensionBehaviour || getVerticalDimensionBehaviour() == dimensionBehaviour;
        if (r02 > 0 && z12) {
            for (int r03 = 0; r03 < size; r03++) {
                WidgetsList widgetsList2 = this.mChainList.get(r03);
                widgetsList2.measureMatchConstraints(r32 - (r31 == 0 ? widgetsList2.getWidth() : widgetsList2.getHeight()));
            }
        }
        int r222 = paddingTop;
        int r04 = paddingRight2;
        int height = 0;
        int width = 0;
        int r143 = 0;
        int r72 = paddingLeft;
        ConstraintAnchor constraintAnchor7 = constraintAnchor4;
        ConstraintAnchor constraintAnchor8 = constraintAnchor3;
        int r24 = paddingBottom2;
        while (r143 < size) {
            WidgetsList widgetsList3 = this.mChainList.get(r143);
            if (r31 == 0) {
                if (r143 < size - 1) {
                    constraintAnchor2 = this.mChainList.get(r143 + 1).biggest.mTop;
                    paddingBottom = 0;
                } else {
                    constraintAnchor2 = this.mBottom;
                    paddingBottom = getPaddingBottom();
                }
                ConstraintAnchor constraintAnchor9 = widgetsList3.biggest.mBottom;
                ConstraintAnchor constraintAnchor10 = constraintAnchor8;
                ConstraintAnchor constraintAnchor11 = constraintAnchor8;
                int r34 = height;
                ConstraintAnchor constraintAnchor12 = constraintAnchor7;
                int r6 = width;
                ConstraintAnchor constraintAnchor13 = constraintAnchor5;
                ConstraintAnchor constraintAnchor14 = constraintAnchor5;
                r42 = r143;
                widgetsList3.setup(r31, constraintAnchor10, constraintAnchor12, constraintAnchor13, constraintAnchor2, r72, r222, r04, paddingBottom, r32);
                int r62 = Math.max(r6, widgetsList3.getWidth());
                height = r34 + widgetsList3.getHeight();
                if (r42 > 0) {
                    height += this.mVerticalGap;
                }
                constraintAnchor8 = constraintAnchor11;
                width = r62;
                constraintAnchor7 = constraintAnchor9;
                r222 = 0;
                constraintAnchor = constraintAnchor14;
                int r27 = paddingBottom;
                constraintAnchor6 = constraintAnchor2;
                r24 = r27;
            } else {
                ConstraintAnchor constraintAnchor15 = constraintAnchor8;
                int r35 = height;
                int r05 = width;
                r42 = r143;
                if (r42 < size - 1) {
                    constraintAnchor = this.mChainList.get(r42 + 1).biggest.mLeft;
                    paddingRight = 0;
                } else {
                    constraintAnchor = this.mRight;
                    paddingRight = getPaddingRight();
                }
                ConstraintAnchor constraintAnchor16 = widgetsList3.biggest.mRight;
                widgetsList3.setup(r31, constraintAnchor15, constraintAnchor7, constraintAnchor, constraintAnchor6, r72, r222, paddingRight, r24, r32);
                width = r05 + widgetsList3.getWidth();
                int r06 = Math.max(r35, widgetsList3.getHeight());
                if (r42 > 0) {
                    width += this.mHorizontalGap;
                }
                height = r06;
                r04 = paddingRight;
                constraintAnchor8 = constraintAnchor16;
                r72 = 0;
            }
            r143 = r42 + 1;
            constraintAnchor5 = constraintAnchor;
        }
        r33[0] = width;
        r33[1] = height;
    }

    private void measureChainWrap_new(ConstraintWidget[] constraintWidgetArr, int r30, int r31, int r32, int[] r33) {
        int r22;
        int r42;
        ConstraintAnchor constraintAnchor;
        int paddingRight;
        ConstraintAnchor constraintAnchor2;
        int paddingBottom;
        int r12;
        if (r30 == 0) {
            return;
        }
        this.mChainList.clear();
        WidgetsList widgetsList = new WidgetsList(r31, this.mLeft, this.mTop, this.mRight, this.mBottom, r32);
        this.mChainList.add(widgetsList);
        int r02 = 0;
        int r13 = 0;
        if (r31 == 0) {
            int r23 = 0;
            int r11 = 0;
            while (r11 < r30) {
                int r122 = r02 + 1;
                ConstraintWidget constraintWidget = constraintWidgetArr[r11];
                int widgetWidth = getWidgetWidth(constraintWidget, r32);
                if (constraintWidget.getHorizontalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                    r13++;
                }
                int r16 = r13;
                boolean z10 = (r23 == r32 || (this.mHorizontalGap + r23) + widgetWidth > r32) && widgetsList.biggest != null;
                if (!z10 && r11 > 0 && (r12 = this.mMaxElementsWrap) > 0 && r122 > r12) {
                    z10 = true;
                }
                if (z10) {
                    widgetsList = new WidgetsList(r31, this.mLeft, this.mTop, this.mRight, this.mBottom, r32);
                    widgetsList.setStartIndex(r11);
                    this.mChainList.add(widgetsList);
                    r02 = r122;
                    r23 = widgetWidth;
                } else {
                    r23 = r11 > 0 ? this.mHorizontalGap + widgetWidth + r23 : widgetWidth;
                    r02 = 0;
                }
                widgetsList.add(constraintWidget);
                r11++;
                r13 = r16;
            }
        } else {
            int r112 = 0;
            while (r112 < r30) {
                ConstraintWidget constraintWidget2 = constraintWidgetArr[r112];
                int widgetHeight = getWidgetHeight(constraintWidget2, r32);
                if (constraintWidget2.getVerticalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                    r13++;
                }
                int r14 = r13;
                boolean z11 = (r02 == r32 || (this.mVerticalGap + r02) + widgetHeight > r32) && widgetsList.biggest != null;
                if (!z11 && r112 > 0 && (r22 = this.mMaxElementsWrap) > 0 && r22 < 0) {
                    z11 = true;
                }
                if (z11) {
                    widgetsList = new WidgetsList(r31, this.mLeft, this.mTop, this.mRight, this.mBottom, r32);
                    widgetsList.setStartIndex(r112);
                    this.mChainList.add(widgetsList);
                } else {
                    if (r112 > 0) {
                        r02 = this.mVerticalGap + widgetHeight + r02;
                    }
                    widgetsList.add(constraintWidget2);
                    r112++;
                    r13 = r14;
                }
                r02 = widgetHeight;
                widgetsList.add(constraintWidget2);
                r112++;
                r13 = r14;
            }
        }
        int size = this.mChainList.size();
        ConstraintAnchor constraintAnchor3 = this.mLeft;
        ConstraintAnchor constraintAnchor4 = this.mTop;
        ConstraintAnchor constraintAnchor5 = this.mRight;
        ConstraintAnchor constraintAnchor6 = this.mBottom;
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int paddingRight2 = getPaddingRight();
        int paddingBottom2 = getPaddingBottom();
        ConstraintWidget.DimensionBehaviour horizontalDimensionBehaviour = getHorizontalDimensionBehaviour();
        ConstraintWidget.DimensionBehaviour dimensionBehaviour = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
        boolean z12 = horizontalDimensionBehaviour == dimensionBehaviour || getVerticalDimensionBehaviour() == dimensionBehaviour;
        if (r13 > 0 && z12) {
            for (int r15 = 0; r15 < size; r15++) {
                WidgetsList widgetsList2 = this.mChainList.get(r15);
                widgetsList2.measureMatchConstraints(r32 - (r31 == 0 ? widgetsList2.getWidth() : widgetsList2.getHeight()));
            }
        }
        int r222 = paddingTop;
        int r17 = paddingRight2;
        int height = 0;
        int width = 0;
        int r142 = 0;
        int r72 = paddingLeft;
        ConstraintAnchor constraintAnchor7 = constraintAnchor4;
        ConstraintAnchor constraintAnchor8 = constraintAnchor3;
        int r24 = paddingBottom2;
        while (r142 < size) {
            WidgetsList widgetsList3 = this.mChainList.get(r142);
            if (r31 == 0) {
                if (r142 < size - 1) {
                    constraintAnchor2 = this.mChainList.get(r142 + 1).biggest.mTop;
                    paddingBottom = 0;
                } else {
                    constraintAnchor2 = this.mBottom;
                    paddingBottom = getPaddingBottom();
                }
                ConstraintAnchor constraintAnchor9 = widgetsList3.biggest.mBottom;
                ConstraintAnchor constraintAnchor10 = constraintAnchor8;
                ConstraintAnchor constraintAnchor11 = constraintAnchor8;
                int r34 = height;
                ConstraintAnchor constraintAnchor12 = constraintAnchor7;
                int r6 = width;
                ConstraintAnchor constraintAnchor13 = constraintAnchor5;
                ConstraintAnchor constraintAnchor14 = constraintAnchor5;
                r42 = r142;
                widgetsList3.setup(r31, constraintAnchor10, constraintAnchor12, constraintAnchor13, constraintAnchor2, r72, r222, r17, paddingBottom, r32);
                int r62 = Math.max(r6, widgetsList3.getWidth());
                height = r34 + widgetsList3.getHeight();
                if (r42 > 0) {
                    height += this.mVerticalGap;
                }
                constraintAnchor8 = constraintAnchor11;
                width = r62;
                constraintAnchor7 = constraintAnchor9;
                r222 = 0;
                constraintAnchor = constraintAnchor14;
                int r27 = paddingBottom;
                constraintAnchor6 = constraintAnchor2;
                r24 = r27;
            } else {
                ConstraintAnchor constraintAnchor15 = constraintAnchor8;
                int r35 = height;
                int r18 = width;
                r42 = r142;
                if (r42 < size - 1) {
                    constraintAnchor = this.mChainList.get(r42 + 1).biggest.mLeft;
                    paddingRight = 0;
                } else {
                    constraintAnchor = this.mRight;
                    paddingRight = getPaddingRight();
                }
                ConstraintAnchor constraintAnchor16 = widgetsList3.biggest.mRight;
                widgetsList3.setup(r31, constraintAnchor15, constraintAnchor7, constraintAnchor, constraintAnchor6, r72, r222, paddingRight, r24, r32);
                width = r18 + widgetsList3.getWidth();
                int r19 = Math.max(r35, widgetsList3.getHeight());
                if (r42 > 0) {
                    width += this.mHorizontalGap;
                }
                height = r19;
                r17 = paddingRight;
                constraintAnchor8 = constraintAnchor16;
                r72 = 0;
            }
            r142 = r42 + 1;
            constraintAnchor5 = constraintAnchor;
        }
        r33[0] = width;
        r33[1] = height;
    }

    private void measureNoWrap(ConstraintWidget[] constraintWidgetArr, int r24, int r25, int r26, int[] r27) {
        WidgetsList widgetsList;
        if (r24 == 0) {
            return;
        }
        if (this.mChainList.size() == 0) {
            widgetsList = new WidgetsList(r25, this.mLeft, this.mTop, this.mRight, this.mBottom, r26);
            this.mChainList.add(widgetsList);
        } else {
            WidgetsList widgetsList2 = this.mChainList.get(0);
            widgetsList2.clear();
            widgetsList = widgetsList2;
            widgetsList.setup(r25, this.mLeft, this.mTop, this.mRight, this.mBottom, getPaddingLeft(), getPaddingTop(), getPaddingRight(), getPaddingBottom(), r26);
        }
        for (int r02 = 0; r02 < r24; r02++) {
            widgetsList.add(constraintWidgetArr[r02]);
        }
        r27[0] = widgetsList.getWidth();
        r27[1] = widgetsList.getHeight();
    }

    @Override // androidx.constraintlayout.core.widgets.ConstraintWidget
    public void addToSolver(LinearSystem linearSystem, boolean z10) {
        super.addToSolver(linearSystem, z10);
        boolean z11 = getParent() != null && ((ConstraintWidgetContainer) getParent()).isRtl();
        int r12 = this.mWrapMode;
        if (r12 != 0) {
            if (r12 == 1) {
                int size = this.mChainList.size();
                int r22 = 0;
                while (r22 < size) {
                    this.mChainList.get(r22).createConstraints(z11, r22, r22 == size + (-1));
                    r22++;
                }
            } else if (r12 == 2) {
                createAlignedConstraints(z11);
            } else if (r12 == 3) {
                int size2 = this.mChainList.size();
                int r23 = 0;
                while (r23 < size2) {
                    this.mChainList.get(r23).createConstraints(z11, r23, r23 == size2 + (-1));
                    r23++;
                }
            }
        } else if (this.mChainList.size() > 0) {
            this.mChainList.get(0).createConstraints(z11, 0, true);
        }
        needsCallbackFromSolver(false);
    }

    @Override // androidx.constraintlayout.core.widgets.HelperWidget, androidx.constraintlayout.core.widgets.ConstraintWidget
    public void copy(ConstraintWidget constraintWidget, HashMap<ConstraintWidget, ConstraintWidget> map) {
        super.copy(constraintWidget, map);
        Flow flow = (Flow) constraintWidget;
        this.mHorizontalStyle = flow.mHorizontalStyle;
        this.mVerticalStyle = flow.mVerticalStyle;
        this.mFirstHorizontalStyle = flow.mFirstHorizontalStyle;
        this.mFirstVerticalStyle = flow.mFirstVerticalStyle;
        this.mLastHorizontalStyle = flow.mLastHorizontalStyle;
        this.mLastVerticalStyle = flow.mLastVerticalStyle;
        this.mHorizontalBias = flow.mHorizontalBias;
        this.mVerticalBias = flow.mVerticalBias;
        this.mFirstHorizontalBias = flow.mFirstHorizontalBias;
        this.mFirstVerticalBias = flow.mFirstVerticalBias;
        this.mLastHorizontalBias = flow.mLastHorizontalBias;
        this.mLastVerticalBias = flow.mLastVerticalBias;
        this.mHorizontalGap = flow.mHorizontalGap;
        this.mVerticalGap = flow.mVerticalGap;
        this.mHorizontalAlign = flow.mHorizontalAlign;
        this.mVerticalAlign = flow.mVerticalAlign;
        this.mWrapMode = flow.mWrapMode;
        this.mMaxElementsWrap = flow.mMaxElementsWrap;
        this.mOrientation = flow.mOrientation;
    }

    public float getMaxElementsWrap() {
        return this.mMaxElementsWrap;
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0054  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00e8  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x00ea  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x00f7  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x00f9  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0112  */
    @Override // androidx.constraintlayout.core.widgets.VirtualLayout
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void measure(int r19, int r20, int r21, int r22) {
        /*
            Method dump skipped, instructions count: 279
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.core.widgets.Flow.measure(int, int, int, int):void");
    }

    public void setFirstHorizontalBias(float f) {
        this.mFirstHorizontalBias = f;
    }

    public void setFirstHorizontalStyle(int r12) {
        this.mFirstHorizontalStyle = r12;
    }

    public void setFirstVerticalBias(float f) {
        this.mFirstVerticalBias = f;
    }

    public void setFirstVerticalStyle(int r12) {
        this.mFirstVerticalStyle = r12;
    }

    public void setHorizontalAlign(int r12) {
        this.mHorizontalAlign = r12;
    }

    public void setHorizontalBias(float f) {
        this.mHorizontalBias = f;
    }

    public void setHorizontalGap(int r12) {
        this.mHorizontalGap = r12;
    }

    public void setHorizontalStyle(int r12) {
        this.mHorizontalStyle = r12;
    }

    public void setLastHorizontalBias(float f) {
        this.mLastHorizontalBias = f;
    }

    public void setLastHorizontalStyle(int r12) {
        this.mLastHorizontalStyle = r12;
    }

    public void setLastVerticalBias(float f) {
        this.mLastVerticalBias = f;
    }

    public void setLastVerticalStyle(int r12) {
        this.mLastVerticalStyle = r12;
    }

    public void setMaxElementsWrap(int r12) {
        this.mMaxElementsWrap = r12;
    }

    public void setOrientation(int r12) {
        this.mOrientation = r12;
    }

    public void setVerticalAlign(int r12) {
        this.mVerticalAlign = r12;
    }

    public void setVerticalBias(float f) {
        this.mVerticalBias = f;
    }

    public void setVerticalGap(int r12) {
        this.mVerticalGap = r12;
    }

    public void setVerticalStyle(int r12) {
        this.mVerticalStyle = r12;
    }

    public void setWrapMode(int r12) {
        this.mWrapMode = r12;
    }
}
