package androidx.core.view;

import android.view.View;
import androidx.annotation.NonNull;

/* loaded from: classes.dex */
public interface NestedScrollingParent {
    int getNestedScrollAxes();

    boolean onNestedFling(@NonNull View view, float f, float f10, boolean z10);

    boolean onNestedPreFling(@NonNull View view, float f, float f10);

    void onNestedPreScroll(@NonNull View view, int r22, int r32, @NonNull int[] r42);

    void onNestedScroll(@NonNull View view, int r22, int r32, int r42, int r52);

    void onNestedScrollAccepted(@NonNull View view, @NonNull View view2, int r32);

    boolean onStartNestedScroll(@NonNull View view, @NonNull View view2, int r32);

    void onStopNestedScroll(@NonNull View view);
}
