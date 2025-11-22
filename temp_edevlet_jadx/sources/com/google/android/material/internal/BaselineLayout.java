package com.google.android.material.internal;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;

/* loaded from: classes2.dex */
public class BaselineLayout extends ViewGroup {
    private int baseline;

    public BaselineLayout(Context context) {
        super(context, null, 0);
        this.baseline = -1;
    }

    public BaselineLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        this.baseline = -1;
    }

    public BaselineLayout(Context context, AttributeSet attributeSet, int r32) {
        super(context, attributeSet, r32);
        this.baseline = -1;
    }

    @Override // android.view.View
    public int getBaseline() {
        return this.baseline;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z10, int r82, int r92, int r10, int r11) {
        int childCount = getChildCount();
        int paddingLeft = getPaddingLeft();
        int paddingRight = ((r10 - r82) - getPaddingRight()) - paddingLeft;
        int paddingTop = getPaddingTop();
        for (int r112 = 0; r112 < childCount; r112++) {
            View childAt = getChildAt(r112);
            if (childAt.getVisibility() != 8) {
                int measuredWidth = childAt.getMeasuredWidth();
                int measuredHeight = childAt.getMeasuredHeight();
                int r32 = ((paddingRight - measuredWidth) / 2) + paddingLeft;
                int baseline = (this.baseline == -1 || childAt.getBaseline() == -1) ? paddingTop : (this.baseline + paddingTop) - childAt.getBaseline();
                childAt.layout(r32, baseline, measuredWidth + r32, measuredHeight + baseline);
            }
        }
    }

    @Override // android.view.View
    public void onMeasure(int r12, int r13) {
        int childCount = getChildCount();
        int r32 = 0;
        int r42 = 0;
        int r52 = 0;
        int r6 = -1;
        int r72 = -1;
        for (int r14 = 0; r14 < childCount; r14++) {
            View childAt = getChildAt(r14);
            if (childAt.getVisibility() != 8) {
                measureChild(childAt, r12, r13);
                int baseline = childAt.getBaseline();
                if (baseline != -1) {
                    r6 = Math.max(r6, baseline);
                    r72 = Math.max(r72, childAt.getMeasuredHeight() - baseline);
                }
                r42 = Math.max(r42, childAt.getMeasuredWidth());
                r32 = Math.max(r32, childAt.getMeasuredHeight());
                r52 = View.combineMeasuredStates(r52, childAt.getMeasuredState());
            }
        }
        if (r6 != -1) {
            r32 = Math.max(r32, Math.max(r72, getPaddingBottom()) + r6);
            this.baseline = r6;
        }
        setMeasuredDimension(View.resolveSizeAndState(Math.max(r42, getSuggestedMinimumWidth()), r12, r52), View.resolveSizeAndState(Math.max(r32, getSuggestedMinimumHeight()), r13, r52 << 16));
    }
}
