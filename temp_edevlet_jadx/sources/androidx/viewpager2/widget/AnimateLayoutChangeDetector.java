package androidx.viewpager2.widget;

import android.animation.LayoutTransition;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.LinearLayoutManager;
import java.lang.reflect.Array;
import java.util.Arrays;
import java.util.Comparator;

/* loaded from: classes.dex */
final class AnimateLayoutChangeDetector {
    private static final ViewGroup.MarginLayoutParams ZERO_MARGIN_LAYOUT_PARAMS;
    private LinearLayoutManager mLayoutManager;

    static {
        ViewGroup.MarginLayoutParams marginLayoutParams = new ViewGroup.MarginLayoutParams(-1, -1);
        ZERO_MARGIN_LAYOUT_PARAMS = marginLayoutParams;
        marginLayoutParams.setMargins(0, 0, 0, 0);
    }

    public AnimateLayoutChangeDetector(@NonNull LinearLayoutManager linearLayoutManager) {
        this.mLayoutManager = linearLayoutManager;
    }

    private boolean arePagesLaidOutContiguously() {
        int top;
        int r10;
        int bottom;
        int r72;
        int childCount = this.mLayoutManager.getChildCount();
        if (childCount == 0) {
            return true;
        }
        boolean z10 = this.mLayoutManager.getOrientation() == 0;
        int[][] r42 = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, childCount, 2);
        for (int r52 = 0; r52 < childCount; r52++) {
            View childAt = this.mLayoutManager.getChildAt(r52);
            if (childAt == null) {
                throw new IllegalStateException("null view contained in the view hierarchy");
            }
            ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
            ViewGroup.MarginLayoutParams marginLayoutParams = layoutParams instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams : ZERO_MARGIN_LAYOUT_PARAMS;
            int[] r82 = r42[r52];
            if (z10) {
                top = childAt.getLeft();
                r10 = marginLayoutParams.leftMargin;
            } else {
                top = childAt.getTop();
                r10 = marginLayoutParams.topMargin;
            }
            r82[0] = top - r10;
            int[] r83 = r42[r52];
            if (z10) {
                bottom = childAt.getRight();
                r72 = marginLayoutParams.rightMargin;
            } else {
                bottom = childAt.getBottom();
                r72 = marginLayoutParams.bottomMargin;
            }
            r83[1] = bottom + r72;
        }
        Arrays.sort(r42, new Comparator<int[]>() { // from class: androidx.viewpager2.widget.AnimateLayoutChangeDetector.1
            @Override // java.util.Comparator
            public int compare(int[] r22, int[] r32) {
                return r22[0] - r32[0];
            }
        });
        for (int r22 = 1; r22 < childCount; r22++) {
            if (r42[r22 - 1][1] != r42[r22][0]) {
                return false;
            }
        }
        int[] r23 = r42[0];
        int r53 = r23[1];
        int r24 = r23[0];
        return r24 <= 0 && r42[childCount - 1][1] >= r53 - r24;
    }

    private boolean hasRunningChangingLayoutTransition() {
        int childCount = this.mLayoutManager.getChildCount();
        for (int r22 = 0; r22 < childCount; r22++) {
            if (hasRunningChangingLayoutTransition(this.mLayoutManager.getChildAt(r22))) {
                return true;
            }
        }
        return false;
    }

    private static boolean hasRunningChangingLayoutTransition(View view) {
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            LayoutTransition layoutTransition = viewGroup.getLayoutTransition();
            if (layoutTransition != null && layoutTransition.isChangingLayout()) {
                return true;
            }
            int childCount = viewGroup.getChildCount();
            for (int r32 = 0; r32 < childCount; r32++) {
                if (hasRunningChangingLayoutTransition(viewGroup.getChildAt(r32))) {
                    return true;
                }
            }
        }
        return false;
    }

    public boolean mayHaveInterferingAnimations() {
        return (!arePagesLaidOutContiguously() || this.mLayoutManager.getChildCount() <= 1) && hasRunningChangingLayoutTransition();
    }
}
