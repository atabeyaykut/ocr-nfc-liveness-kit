package androidx.core.view;

import android.view.View;
import androidx.annotation.NonNull;

/* loaded from: classes.dex */
public interface NestedScrollingParent2 extends NestedScrollingParent {
    void onNestedPreScroll(@NonNull View view, int r22, int r32, @NonNull int[] r42, int r52);

    void onNestedScroll(@NonNull View view, int r22, int r32, int r42, int r52, int r6);

    void onNestedScrollAccepted(@NonNull View view, @NonNull View view2, int r32, int r42);

    boolean onStartNestedScroll(@NonNull View view, @NonNull View view2, int r32, int r42);

    void onStopNestedScroll(@NonNull View view, int r22);
}
