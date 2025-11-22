package androidx.constraintlayout.core.state;

import androidx.constraintlayout.core.widgets.ConstraintWidget;

/* loaded from: classes.dex */
public class Dimension {
    private final int WRAP_CONTENT;
    Object mInitialValue;
    boolean mIsSuggested;
    int mMax;
    int mMin;
    float mPercent;
    String mRatioString;
    int mValue;
    public static final Object FIXED_DIMENSION = new Object();
    public static final Object WRAP_DIMENSION = new Object();
    public static final Object SPREAD_DIMENSION = new Object();
    public static final Object PARENT_DIMENSION = new Object();
    public static final Object PERCENT_DIMENSION = new Object();
    public static final Object RATIO_DIMENSION = new Object();

    public enum Type {
        FIXED,
        WRAP,
        MATCH_PARENT,
        MATCH_CONSTRAINT
    }

    private Dimension() {
        this.WRAP_CONTENT = -2;
        this.mMin = 0;
        this.mMax = Integer.MAX_VALUE;
        this.mPercent = 1.0f;
        this.mValue = 0;
        this.mRatioString = null;
        this.mInitialValue = WRAP_DIMENSION;
        this.mIsSuggested = false;
    }

    private Dimension(Object obj) {
        this.WRAP_CONTENT = -2;
        this.mMin = 0;
        this.mMax = Integer.MAX_VALUE;
        this.mPercent = 1.0f;
        this.mValue = 0;
        this.mRatioString = null;
        this.mIsSuggested = false;
        this.mInitialValue = obj;
    }

    public static Dimension Fixed(int r22) {
        Dimension dimension = new Dimension(FIXED_DIMENSION);
        dimension.fixed(r22);
        return dimension;
    }

    public static Dimension Fixed(Object obj) {
        Dimension dimension = new Dimension(FIXED_DIMENSION);
        dimension.fixed(obj);
        return dimension;
    }

    public static Dimension Parent() {
        return new Dimension(PARENT_DIMENSION);
    }

    public static Dimension Percent(Object obj, float f) {
        Dimension dimension = new Dimension(PERCENT_DIMENSION);
        dimension.percent(obj, f);
        return dimension;
    }

    public static Dimension Ratio(String str) {
        Dimension dimension = new Dimension(RATIO_DIMENSION);
        dimension.ratio(str);
        return dimension;
    }

    public static Dimension Spread() {
        return new Dimension(SPREAD_DIMENSION);
    }

    public static Dimension Suggested(int r12) {
        Dimension dimension = new Dimension();
        dimension.suggested(r12);
        return dimension;
    }

    public static Dimension Suggested(Object obj) {
        Dimension dimension = new Dimension();
        dimension.suggested(obj);
        return dimension;
    }

    public static Dimension Wrap() {
        return new Dimension(WRAP_DIMENSION);
    }

    public void apply(State state, ConstraintWidget constraintWidget, int r6) {
        ConstraintWidget.DimensionBehaviour dimensionBehaviour;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour2;
        String str = this.mRatioString;
        if (str != null) {
            constraintWidget.setDimensionRatio(str);
        }
        int r42 = 2;
        if (r6 == 0) {
            if (this.mIsSuggested) {
                constraintWidget.setHorizontalDimensionBehaviour(ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT);
                Object obj = this.mInitialValue;
                if (obj == WRAP_DIMENSION) {
                    r42 = 1;
                } else if (obj != PERCENT_DIMENSION) {
                    r42 = 0;
                }
                constraintWidget.setHorizontalMatchStyle(r42, this.mMin, this.mMax, this.mPercent);
                return;
            }
            int r43 = this.mMin;
            if (r43 > 0) {
                constraintWidget.setMinWidth(r43);
            }
            int r44 = this.mMax;
            if (r44 < Integer.MAX_VALUE) {
                constraintWidget.setMaxWidth(r44);
            }
            Object obj2 = this.mInitialValue;
            if (obj2 == WRAP_DIMENSION) {
                dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
            } else {
                if (obj2 != PARENT_DIMENSION) {
                    if (obj2 == null) {
                        constraintWidget.setHorizontalDimensionBehaviour(ConstraintWidget.DimensionBehaviour.FIXED);
                        constraintWidget.setWidth(this.mValue);
                        return;
                    }
                    return;
                }
                dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.MATCH_PARENT;
            }
            constraintWidget.setHorizontalDimensionBehaviour(dimensionBehaviour2);
            return;
        }
        if (this.mIsSuggested) {
            constraintWidget.setVerticalDimensionBehaviour(ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT);
            Object obj3 = this.mInitialValue;
            if (obj3 == WRAP_DIMENSION) {
                r42 = 1;
            } else if (obj3 != PERCENT_DIMENSION) {
                r42 = 0;
            }
            constraintWidget.setVerticalMatchStyle(r42, this.mMin, this.mMax, this.mPercent);
            return;
        }
        int r45 = this.mMin;
        if (r45 > 0) {
            constraintWidget.setMinHeight(r45);
        }
        int r46 = this.mMax;
        if (r46 < Integer.MAX_VALUE) {
            constraintWidget.setMaxHeight(r46);
        }
        Object obj4 = this.mInitialValue;
        if (obj4 == WRAP_DIMENSION) {
            dimensionBehaviour = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
        } else {
            if (obj4 != PARENT_DIMENSION) {
                if (obj4 == null) {
                    constraintWidget.setVerticalDimensionBehaviour(ConstraintWidget.DimensionBehaviour.FIXED);
                    constraintWidget.setHeight(this.mValue);
                    return;
                }
                return;
            }
            dimensionBehaviour = ConstraintWidget.DimensionBehaviour.MATCH_PARENT;
        }
        constraintWidget.setVerticalDimensionBehaviour(dimensionBehaviour);
    }

    public boolean equalsFixedValue(int r22) {
        return this.mInitialValue == null && this.mValue == r22;
    }

    public Dimension fixed(int r22) {
        this.mInitialValue = null;
        this.mValue = r22;
        return this;
    }

    public Dimension fixed(Object obj) {
        this.mInitialValue = obj;
        if (obj instanceof Integer) {
            this.mValue = ((Integer) obj).intValue();
            this.mInitialValue = null;
        }
        return this;
    }

    public int getValue() {
        return this.mValue;
    }

    public Dimension max(int r22) {
        if (this.mMax >= 0) {
            this.mMax = r22;
        }
        return this;
    }

    public Dimension max(Object obj) {
        Object obj2 = WRAP_DIMENSION;
        if (obj == obj2 && this.mIsSuggested) {
            this.mInitialValue = obj2;
            this.mMax = Integer.MAX_VALUE;
        }
        return this;
    }

    public Dimension min(int r12) {
        if (r12 >= 0) {
            this.mMin = r12;
        }
        return this;
    }

    public Dimension min(Object obj) {
        if (obj == WRAP_DIMENSION) {
            this.mMin = -2;
        }
        return this;
    }

    public Dimension percent(Object obj, float f) {
        this.mPercent = f;
        return this;
    }

    public Dimension ratio(String str) {
        this.mRatioString = str;
        return this;
    }

    public void setValue(int r22) {
        this.mIsSuggested = false;
        this.mInitialValue = null;
        this.mValue = r22;
    }

    public Dimension suggested(int r22) {
        this.mIsSuggested = true;
        if (r22 >= 0) {
            this.mMax = r22;
        }
        return this;
    }

    public Dimension suggested(Object obj) {
        this.mInitialValue = obj;
        this.mIsSuggested = true;
        return this;
    }
}
