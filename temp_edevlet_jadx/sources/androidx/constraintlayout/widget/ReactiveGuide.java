package androidx.constraintlayout.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.View;
import androidx.constraintlayout.motion.widget.MotionLayout;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.SharedValues;

/* loaded from: classes.dex */
public class ReactiveGuide extends View implements SharedValues.SharedValuesListener {
    private boolean mAnimateChange;
    private boolean mApplyToAllConstraintSets;
    private int mApplyToConstraintSetId;
    private int mAttributeId;

    public ReactiveGuide(Context context) {
        super(context);
        this.mAttributeId = -1;
        this.mAnimateChange = false;
        this.mApplyToConstraintSetId = 0;
        this.mApplyToAllConstraintSets = true;
        super.setVisibility(8);
        init(null);
    }

    public ReactiveGuide(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mAttributeId = -1;
        this.mAnimateChange = false;
        this.mApplyToConstraintSetId = 0;
        this.mApplyToAllConstraintSets = true;
        super.setVisibility(8);
        init(attributeSet);
    }

    public ReactiveGuide(Context context, AttributeSet attributeSet, int r32) {
        super(context, attributeSet, r32);
        this.mAttributeId = -1;
        this.mAnimateChange = false;
        this.mApplyToConstraintSetId = 0;
        this.mApplyToAllConstraintSets = true;
        super.setVisibility(8);
        init(attributeSet);
    }

    public ReactiveGuide(Context context, AttributeSet attributeSet, int r32, int r42) {
        super(context, attributeSet, r32);
        this.mAttributeId = -1;
        this.mAnimateChange = false;
        this.mApplyToConstraintSetId = 0;
        this.mApplyToAllConstraintSets = true;
        super.setVisibility(8);
        init(attributeSet);
    }

    private void changeValue(int r22, int r32, MotionLayout motionLayout, int r52) {
        ConstraintSet constraintSet = motionLayout.getConstraintSet(r52);
        constraintSet.setGuidelineEnd(r32, r22);
        motionLayout.updateState(r52, constraintSet);
    }

    private void init(AttributeSet attributeSet) {
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R.styleable.ConstraintLayout_ReactiveGuide);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int r12 = 0; r12 < indexCount; r12++) {
                int index = typedArrayObtainStyledAttributes.getIndex(r12);
                if (index == R.styleable.ConstraintLayout_ReactiveGuide_reactiveGuide_valueId) {
                    this.mAttributeId = typedArrayObtainStyledAttributes.getResourceId(index, this.mAttributeId);
                } else if (index == R.styleable.ConstraintLayout_ReactiveGuide_reactiveGuide_animateChange) {
                    this.mAnimateChange = typedArrayObtainStyledAttributes.getBoolean(index, this.mAnimateChange);
                } else if (index == R.styleable.ConstraintLayout_ReactiveGuide_reactiveGuide_applyToConstraintSet) {
                    this.mApplyToConstraintSetId = typedArrayObtainStyledAttributes.getResourceId(index, this.mApplyToConstraintSetId);
                } else if (index == R.styleable.ConstraintLayout_ReactiveGuide_reactiveGuide_applyToAllConstraintSets) {
                    this.mApplyToAllConstraintSets = typedArrayObtainStyledAttributes.getBoolean(index, this.mApplyToAllConstraintSets);
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
        if (this.mAttributeId != -1) {
            ConstraintLayout.getSharedValues().addListener(this.mAttributeId, this);
        }
    }

    @Override // android.view.View
    @SuppressLint({"MissingSuperCall"})
    public void draw(Canvas canvas) {
    }

    public int getApplyToConstraintSetId() {
        return this.mApplyToConstraintSetId;
    }

    public int getAttributeId() {
        return this.mAttributeId;
    }

    public boolean isAnimatingChange() {
        return this.mAnimateChange;
    }

    @Override // android.view.View
    public void onMeasure(int r12, int r22) {
        setMeasuredDimension(0, 0);
    }

    @Override // androidx.constraintlayout.widget.SharedValues.SharedValuesListener
    public void onNewValue(int r52, int r6, int r72) {
        setGuidelineBegin(r6);
        int id2 = getId();
        if (id2 > 0 && (getParent() instanceof MotionLayout)) {
            MotionLayout motionLayout = (MotionLayout) getParent();
            int currentState = motionLayout.getCurrentState();
            int r12 = this.mApplyToConstraintSetId;
            if (r12 != 0) {
                currentState = r12;
            }
            int r22 = 0;
            if (!this.mAnimateChange) {
                if (!this.mApplyToAllConstraintSets) {
                    changeValue(r6, id2, motionLayout, currentState);
                    return;
                }
                int[] constraintSetIds = motionLayout.getConstraintSetIds();
                while (r22 < constraintSetIds.length) {
                    changeValue(r6, id2, motionLayout, constraintSetIds[r22]);
                    r22++;
                }
                return;
            }
            if (this.mApplyToAllConstraintSets) {
                int[] constraintSetIds2 = motionLayout.getConstraintSetIds();
                while (r22 < constraintSetIds2.length) {
                    int r32 = constraintSetIds2[r22];
                    if (r32 != currentState) {
                        changeValue(r6, id2, motionLayout, r32);
                    }
                    r22++;
                }
            }
            ConstraintSet constraintSetCloneConstraintSet = motionLayout.cloneConstraintSet(currentState);
            constraintSetCloneConstraintSet.setGuidelineEnd(id2, r6);
            motionLayout.updateStateAnimate(currentState, constraintSetCloneConstraintSet, 1000);
        }
    }

    public void setAnimateChange(boolean z10) {
        this.mAnimateChange = z10;
    }

    public void setApplyToConstraintSetId(int r12) {
        this.mApplyToConstraintSetId = r12;
    }

    public void setAttributeId(int r42) {
        SharedValues sharedValues = ConstraintLayout.getSharedValues();
        int r12 = this.mAttributeId;
        if (r12 != -1) {
            sharedValues.removeListener(r12, this);
        }
        this.mAttributeId = r42;
        if (r42 != -1) {
            sharedValues.addListener(r42, this);
        }
    }

    public void setGuidelineBegin(int r22) {
        ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) getLayoutParams();
        layoutParams.guideBegin = r22;
        setLayoutParams(layoutParams);
    }

    public void setGuidelineEnd(int r22) {
        ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) getLayoutParams();
        layoutParams.guideEnd = r22;
        setLayoutParams(layoutParams);
    }

    public void setGuidelinePercent(float f) {
        ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) getLayoutParams();
        layoutParams.guidePercent = f;
        setLayoutParams(layoutParams);
    }

    @Override // android.view.View
    public void setVisibility(int r12) {
    }
}
