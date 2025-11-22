package androidx.core.view;

import androidx.annotation.Nullable;

/* loaded from: classes.dex */
public interface NestedScrollingChild2 extends NestedScrollingChild {
    boolean dispatchNestedPreScroll(int r12, int r22, @Nullable int[] r32, @Nullable int[] r42, int r52);

    boolean dispatchNestedScroll(int r12, int r22, int r32, int r42, @Nullable int[] r52, int r6);

    boolean hasNestedScrollingParent(int r12);

    boolean startNestedScroll(int r12, int r22);

    void stopNestedScroll(int r12);
}
