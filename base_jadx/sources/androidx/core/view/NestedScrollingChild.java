package androidx.core.view;

import androidx.annotation.Nullable;

/* loaded from: classes.dex */
public interface NestedScrollingChild {
    boolean dispatchNestedFling(float f, float f10, boolean z10);

    boolean dispatchNestedPreFling(float f, float f10);

    boolean dispatchNestedPreScroll(int r12, int r22, @Nullable int[] r32, @Nullable int[] r42);

    boolean dispatchNestedScroll(int r12, int r22, int r32, int r42, @Nullable int[] r52);

    boolean hasNestedScrollingParent();

    boolean isNestedScrollingEnabled();

    void setNestedScrollingEnabled(boolean z10);

    boolean startNestedScroll(int r12);

    void stopNestedScroll();
}
