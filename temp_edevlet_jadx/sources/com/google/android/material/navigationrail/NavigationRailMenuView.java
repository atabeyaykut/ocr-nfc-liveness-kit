package com.google.android.material.navigationrail;

import android.content.Context;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import com.google.android.material.navigation.NavigationBarItemView;
import com.google.android.material.navigation.NavigationBarMenuView;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes2.dex */
public class NavigationRailMenuView extends NavigationBarMenuView {
    private final FrameLayout.LayoutParams layoutParams;

    public NavigationRailMenuView(@NonNull Context context) {
        super(context);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2);
        this.layoutParams = layoutParams;
        layoutParams.gravity = 49;
        setLayoutParams(layoutParams);
    }

    private int makeSharedHeightSpec(int r22, int r32, int r42) {
        return View.MeasureSpec.makeMeasureSpec(Math.min(View.MeasureSpec.getSize(r22), r32 / Math.max(1, r42)), 0);
    }

    private int measureChildHeight(View view, int r42, int r52) {
        if (view.getVisibility() == 8) {
            return 0;
        }
        view.measure(r42, r52);
        return view.getMeasuredHeight();
    }

    private int measureSharedChildHeights(int r42, int r52, int r6, View view) {
        makeSharedHeightSpec(r42, r52, r6);
        int r53 = view == null ? makeSharedHeightSpec(r42, r52, r6) : View.MeasureSpec.makeMeasureSpec(view.getMeasuredHeight(), 0);
        int childCount = getChildCount();
        int r12 = 0;
        for (int r02 = 0; r02 < childCount; r02++) {
            View childAt = getChildAt(r02);
            if (childAt != view) {
                r12 += measureChildHeight(childAt, r42, r53);
            }
        }
        return r12;
    }

    private int measureShiftingChildHeights(int r32, int r42, int r52) {
        int r12;
        View childAt = getChildAt(getSelectedItemPosition());
        if (childAt != null) {
            r12 = measureChildHeight(childAt, r32, makeSharedHeightSpec(r32, r42, r52));
            r42 -= r12;
            r52--;
        } else {
            r12 = 0;
        }
        return r12 + measureSharedChildHeights(r32, r42, r52, childAt);
    }

    @Override // com.google.android.material.navigation.NavigationBarMenuView
    @NonNull
    public NavigationBarItemView createNavigationBarItemView(@NonNull Context context) {
        return new NavigationRailItemView(context);
    }

    public int getMenuGravity() {
        return this.layoutParams.gravity;
    }

    public boolean isTopGravity() {
        return (this.layoutParams.gravity & 112) == 48;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z10, int r52, int r6, int r72, int r82) {
        int childCount = getChildCount();
        int r73 = r72 - r52;
        int r83 = 0;
        for (int r62 = 0; r62 < childCount; r62++) {
            View childAt = getChildAt(r62);
            if (childAt.getVisibility() != 8) {
                int measuredHeight = childAt.getMeasuredHeight() + r83;
                childAt.layout(0, r83, r73, measuredHeight);
                r83 = measuredHeight;
            }
        }
    }

    @Override // android.view.View
    public void onMeasure(int r42, int r52) {
        int size = View.MeasureSpec.getSize(r52);
        int size2 = getMenu().getVisibleItems().size();
        setMeasuredDimension(View.resolveSizeAndState(View.MeasureSpec.getSize(r42), r42, 0), View.resolveSizeAndState((size2 <= 1 || !isShifting(getLabelVisibilityMode(), size2)) ? measureSharedChildHeights(r42, size, size2, null) : measureShiftingChildHeights(r42, size, size2), r52, 0));
    }

    public void setMenuGravity(int r32) {
        FrameLayout.LayoutParams layoutParams = this.layoutParams;
        if (layoutParams.gravity != r32) {
            layoutParams.gravity = r32;
            setLayoutParams(layoutParams);
        }
    }
}
