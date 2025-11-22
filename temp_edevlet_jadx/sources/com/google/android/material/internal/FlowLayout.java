package com.google.android.material.internal;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.view.MarginLayoutParamsCompat;
import androidx.core.view.ViewCompat;
import com.google.android.material.R;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes2.dex */
public class FlowLayout extends ViewGroup {
    private int itemSpacing;
    private int lineSpacing;
    private int rowCount;
    private boolean singleLine;

    public FlowLayout(@NonNull Context context) {
        this(context, null);
    }

    public FlowLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public FlowLayout(@NonNull Context context, @Nullable AttributeSet attributeSet, int r32) {
        super(context, attributeSet, r32);
        this.singleLine = false;
        loadFromAttributes(context, attributeSet);
    }

    @TargetApi(21)
    public FlowLayout(@NonNull Context context, @Nullable AttributeSet attributeSet, int r32, int r42) {
        super(context, attributeSet, r32, r42);
        this.singleLine = false;
        loadFromAttributes(context, attributeSet);
    }

    private static int getMeasuredDimension(int r12, int r22, int r32) {
        return r22 != Integer.MIN_VALUE ? r22 != 1073741824 ? r32 : r12 : Math.min(r32, r12);
    }

    private void loadFromAttributes(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, R.styleable.FlowLayout, 0, 0);
        this.lineSpacing = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.FlowLayout_lineSpacing, 0);
        this.itemSpacing = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.FlowLayout_itemSpacing, 0);
        typedArrayObtainStyledAttributes.recycle();
    }

    public int getItemSpacing() {
        return this.itemSpacing;
    }

    public int getLineSpacing() {
        return this.lineSpacing;
    }

    public int getRowCount() {
        return this.rowCount;
    }

    public int getRowIndex(@NonNull View view) {
        Object tag = view.getTag(R.id.row_index_key);
        if (tag instanceof Integer) {
            return ((Integer) tag).intValue();
        }
        return -1;
    }

    public boolean isSingleLine() {
        return this.singleLine;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z10, int r11, int r12, int r13, int r14) {
        int marginEnd;
        int marginStart;
        if (getChildCount() == 0) {
            this.rowCount = 0;
            return;
        }
        this.rowCount = 1;
        boolean z11 = ViewCompat.getLayoutDirection(this) == 1;
        int paddingRight = z11 ? getPaddingRight() : getPaddingLeft();
        int paddingLeft = z11 ? getPaddingLeft() : getPaddingRight();
        int paddingTop = getPaddingTop();
        int r132 = (r13 - r11) - paddingLeft;
        int measuredWidth = paddingRight;
        int r112 = paddingTop;
        for (int r15 = 0; r15 < getChildCount(); r15++) {
            View childAt = getChildAt(r15);
            if (childAt.getVisibility() == 8) {
                childAt.setTag(R.id.row_index_key, -1);
            } else {
                ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
                if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                    ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
                    marginStart = MarginLayoutParamsCompat.getMarginStart(marginLayoutParams);
                    marginEnd = MarginLayoutParamsCompat.getMarginEnd(marginLayoutParams);
                } else {
                    marginEnd = 0;
                    marginStart = 0;
                }
                int measuredWidth2 = childAt.getMeasuredWidth() + measuredWidth + marginStart;
                if (!this.singleLine && measuredWidth2 > r132) {
                    r112 = this.lineSpacing + paddingTop;
                    this.rowCount++;
                    measuredWidth = paddingRight;
                }
                childAt.setTag(R.id.row_index_key, Integer.valueOf(this.rowCount - 1));
                int r22 = measuredWidth + marginStart;
                int measuredWidth3 = childAt.getMeasuredWidth() + r22;
                int measuredHeight = childAt.getMeasuredHeight() + r112;
                if (z11) {
                    r22 = r132 - measuredWidth3;
                    measuredWidth3 = (r132 - measuredWidth) - marginStart;
                }
                childAt.layout(r22, r112, measuredWidth3, measuredHeight);
                measuredWidth += childAt.getMeasuredWidth() + marginStart + marginEnd + this.itemSpacing;
                paddingTop = measuredHeight;
            }
        }
    }

    @Override // android.view.View
    public void onMeasure(int r21, int r22) {
        int r82;
        int r15;
        int paddingLeft;
        int size = View.MeasureSpec.getSize(r21);
        int mode = View.MeasureSpec.getMode(r21);
        int size2 = View.MeasureSpec.getSize(r22);
        int mode2 = View.MeasureSpec.getMode(r22);
        int r52 = (mode == Integer.MIN_VALUE || mode == 1073741824) ? size : Integer.MAX_VALUE;
        int paddingLeft2 = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int paddingRight = r52 - getPaddingRight();
        int r92 = paddingTop;
        int r11 = 0;
        for (int r10 = 0; r10 < getChildCount(); r10++) {
            View childAt = getChildAt(r10);
            if (childAt.getVisibility() != 8) {
                measureChild(childAt, r21, r22);
                ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
                if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                    ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
                    r82 = marginLayoutParams.leftMargin + 0;
                    r15 = marginLayoutParams.rightMargin + 0;
                } else {
                    r82 = 0;
                    r15 = 0;
                }
                int r19 = paddingLeft2;
                if (childAt.getMeasuredWidth() + paddingLeft2 + r82 <= paddingRight || isSingleLine()) {
                    paddingLeft = r19;
                } else {
                    paddingLeft = getPaddingLeft();
                    r92 = this.lineSpacing + paddingTop;
                }
                int measuredWidth = childAt.getMeasuredWidth() + paddingLeft + r82;
                int measuredHeight = childAt.getMeasuredHeight() + r92;
                if (measuredWidth > r11) {
                    r11 = measuredWidth;
                }
                int measuredWidth2 = childAt.getMeasuredWidth() + r82 + r15 + this.itemSpacing + paddingLeft;
                if (r10 == getChildCount() - 1) {
                    r11 += r15;
                }
                paddingLeft2 = measuredWidth2;
                paddingTop = measuredHeight;
            }
        }
        setMeasuredDimension(getMeasuredDimension(size, mode, getPaddingRight() + r11), getMeasuredDimension(size2, mode2, getPaddingBottom() + paddingTop));
    }

    public void setItemSpacing(int r12) {
        this.itemSpacing = r12;
    }

    public void setLineSpacing(int r12) {
        this.lineSpacing = r12;
    }

    public void setSingleLine(boolean z10) {
        this.singleLine = z10;
    }
}
