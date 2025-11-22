package com.google.android.material.bottomnavigation;

import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.core.view.ViewCompat;
import com.google.android.material.R;
import com.google.android.material.navigation.NavigationBarItemView;
import com.google.android.material.navigation.NavigationBarMenuView;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes2.dex */
public class BottomNavigationMenuView extends NavigationBarMenuView {
    private final int activeItemMaxWidth;
    private final int activeItemMinWidth;
    private final int inactiveItemMaxWidth;
    private final int inactiveItemMinWidth;
    private final int itemHeight;
    private boolean itemHorizontalTranslationEnabled;
    private int[] tempChildWidths;

    public BottomNavigationMenuView(@NonNull Context context) {
        super(context);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
        layoutParams.gravity = 17;
        setLayoutParams(layoutParams);
        Resources resources = getResources();
        this.inactiveItemMaxWidth = resources.getDimensionPixelSize(R.dimen.design_bottom_navigation_item_max_width);
        this.inactiveItemMinWidth = resources.getDimensionPixelSize(R.dimen.design_bottom_navigation_item_min_width);
        this.activeItemMaxWidth = resources.getDimensionPixelSize(R.dimen.design_bottom_navigation_active_item_max_width);
        this.activeItemMinWidth = resources.getDimensionPixelSize(R.dimen.design_bottom_navigation_active_item_min_width);
        this.itemHeight = resources.getDimensionPixelSize(R.dimen.design_bottom_navigation_height);
        this.tempChildWidths = new int[5];
    }

    @Override // com.google.android.material.navigation.NavigationBarMenuView
    @NonNull
    public NavigationBarItemView createNavigationBarItemView(@NonNull Context context) {
        return new BottomNavigationItemView(context);
    }

    public boolean isItemHorizontalTranslationEnabled() {
        return this.itemHorizontalTranslationEnabled;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z10, int r6, int r72, int r82, int r92) {
        int childCount = getChildCount();
        int r83 = r82 - r6;
        int r93 = r92 - r72;
        int measuredWidth = 0;
        for (int r73 = 0; r73 < childCount; r73++) {
            View childAt = getChildAt(r73);
            if (childAt.getVisibility() != 8) {
                if (ViewCompat.getLayoutDirection(this) == 1) {
                    int r22 = r83 - measuredWidth;
                    childAt.layout(r22 - childAt.getMeasuredWidth(), 0, r22, r93);
                } else {
                    childAt.layout(measuredWidth, 0, childAt.getMeasuredWidth() + measuredWidth, r93);
                }
                measuredWidth += childAt.getMeasuredWidth();
            }
        }
    }

    @Override // android.view.View
    public void onMeasure(int r11, int r12) {
        MenuBuilder menu = getMenu();
        int size = View.MeasureSpec.getSize(r11);
        int size2 = menu.getVisibleItems().size();
        int childCount = getChildCount();
        int r13 = View.MeasureSpec.makeMeasureSpec(this.itemHeight, 1073741824);
        if (isShifting(getLabelVisibilityMode(), size2) && isItemHorizontalTranslationEnabled()) {
            View childAt = getChildAt(getSelectedItemPosition());
            int r72 = this.activeItemMinWidth;
            if (childAt.getVisibility() != 8) {
                childAt.measure(View.MeasureSpec.makeMeasureSpec(this.activeItemMaxWidth, Integer.MIN_VALUE), r13);
                r72 = Math.max(r72, childAt.getMeasuredWidth());
            }
            int r122 = size2 - (childAt.getVisibility() != 8 ? 1 : 0);
            int r32 = Math.min(size - (this.inactiveItemMinWidth * r122), Math.min(r72, this.activeItemMaxWidth));
            int r112 = size - r32;
            int r73 = Math.min(r112 / (r122 == 0 ? 1 : r122), this.inactiveItemMaxWidth);
            int r113 = r112 - (r122 * r73);
            int r123 = 0;
            while (r123 < childCount) {
                if (getChildAt(r123).getVisibility() != 8) {
                    this.tempChildWidths[r123] = r123 == getSelectedItemPosition() ? r32 : r73;
                    if (r113 > 0) {
                        int[] r82 = this.tempChildWidths;
                        r82[r123] = r82[r123] + 1;
                        r113--;
                    }
                } else {
                    this.tempChildWidths[r123] = 0;
                }
                r123++;
            }
        } else {
            int r33 = Math.min(size / (size2 != 0 ? size2 : 1), this.activeItemMaxWidth);
            int r114 = size - (size2 * r33);
            for (int r124 = 0; r124 < childCount; r124++) {
                if (getChildAt(r124).getVisibility() != 8) {
                    int[] r52 = this.tempChildWidths;
                    r52[r124] = r33;
                    if (r114 > 0) {
                        r52[r124] = r33 + 1;
                        r114--;
                    }
                } else {
                    this.tempChildWidths[r124] = 0;
                }
            }
        }
        int measuredWidth = 0;
        for (int r115 = 0; r115 < childCount; r115++) {
            View childAt2 = getChildAt(r115);
            if (childAt2.getVisibility() != 8) {
                childAt2.measure(View.MeasureSpec.makeMeasureSpec(this.tempChildWidths[r115], 1073741824), r13);
                childAt2.getLayoutParams().width = childAt2.getMeasuredWidth();
                measuredWidth += childAt2.getMeasuredWidth();
            }
        }
        setMeasuredDimension(View.resolveSizeAndState(measuredWidth, View.MeasureSpec.makeMeasureSpec(measuredWidth, 1073741824), 0), View.resolveSizeAndState(this.itemHeight, r13, 0));
    }

    public void setItemHorizontalTranslationEnabled(boolean z10) {
        this.itemHorizontalTranslationEnabled = z10;
    }
}
