package androidx.core.view;

import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;

/* loaded from: classes.dex */
public class NestedScrollingParentHelper {
    private int mNestedScrollAxesNonTouch;
    private int mNestedScrollAxesTouch;

    public NestedScrollingParentHelper(@NonNull ViewGroup viewGroup) {
    }

    public int getNestedScrollAxes() {
        return this.mNestedScrollAxesTouch | this.mNestedScrollAxesNonTouch;
    }

    public void onNestedScrollAccepted(@NonNull View view, @NonNull View view2, int r42) {
        onNestedScrollAccepted(view, view2, r42, 0);
    }

    public void onNestedScrollAccepted(@NonNull View view, @NonNull View view2, int r32, int r42) {
        if (r42 == 1) {
            this.mNestedScrollAxesNonTouch = r32;
        } else {
            this.mNestedScrollAxesTouch = r32;
        }
    }

    public void onStopNestedScroll(@NonNull View view) {
        onStopNestedScroll(view, 0);
    }

    public void onStopNestedScroll(@NonNull View view, int r32) {
        if (r32 == 1) {
            this.mNestedScrollAxesNonTouch = 0;
        } else {
            this.mNestedScrollAxesTouch = 0;
        }
    }
}
