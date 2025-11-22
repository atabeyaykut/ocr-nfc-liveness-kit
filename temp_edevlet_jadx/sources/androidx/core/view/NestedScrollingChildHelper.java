package androidx.core.view;

import android.view.View;
import android.view.ViewParent;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* loaded from: classes.dex */
public class NestedScrollingChildHelper {
    private boolean mIsNestedScrollingEnabled;
    private ViewParent mNestedScrollingParentNonTouch;
    private ViewParent mNestedScrollingParentTouch;
    private int[] mTempNestedScrollConsumed;
    private final View mView;

    public NestedScrollingChildHelper(@NonNull View view) {
        this.mView = view;
    }

    private boolean dispatchNestedScrollInternal(int r16, int r17, int r18, int r19, @Nullable int[] r20, int r21, @Nullable int[] r22) {
        ViewParent nestedScrollingParentForType;
        int r13;
        int r14;
        int[] r11;
        if (!isNestedScrollingEnabled() || (nestedScrollingParentForType = getNestedScrollingParentForType(r21)) == null) {
            return false;
        }
        if (r16 == 0 && r17 == 0 && r18 == 0 && r19 == 0) {
            if (r20 != null) {
                r20[0] = 0;
                r20[1] = 0;
            }
            return false;
        }
        if (r20 != null) {
            this.mView.getLocationInWindow(r20);
            r13 = r20[0];
            r14 = r20[1];
        } else {
            r13 = 0;
            r14 = 0;
        }
        if (r22 == null) {
            int[] tempNestedScrollConsumed = getTempNestedScrollConsumed();
            tempNestedScrollConsumed[0] = 0;
            tempNestedScrollConsumed[1] = 0;
            r11 = tempNestedScrollConsumed;
        } else {
            r11 = r22;
        }
        ViewParentCompat.onNestedScroll(nestedScrollingParentForType, this.mView, r16, r17, r18, r19, r21, r11);
        if (r20 != null) {
            this.mView.getLocationInWindow(r20);
            r20[0] = r20[0] - r13;
            r20[1] = r20[1] - r14;
        }
        return true;
    }

    private ViewParent getNestedScrollingParentForType(int r22) {
        if (r22 == 0) {
            return this.mNestedScrollingParentTouch;
        }
        if (r22 != 1) {
            return null;
        }
        return this.mNestedScrollingParentNonTouch;
    }

    private int[] getTempNestedScrollConsumed() {
        if (this.mTempNestedScrollConsumed == null) {
            this.mTempNestedScrollConsumed = new int[2];
        }
        return this.mTempNestedScrollConsumed;
    }

    private void setNestedScrollingParentForType(int r22, ViewParent viewParent) {
        if (r22 == 0) {
            this.mNestedScrollingParentTouch = viewParent;
        } else {
            if (r22 != 1) {
                return;
            }
            this.mNestedScrollingParentNonTouch = viewParent;
        }
    }

    public boolean dispatchNestedFling(float f, float f10, boolean z10) {
        ViewParent nestedScrollingParentForType;
        if (!isNestedScrollingEnabled() || (nestedScrollingParentForType = getNestedScrollingParentForType(0)) == null) {
            return false;
        }
        return ViewParentCompat.onNestedFling(nestedScrollingParentForType, this.mView, f, f10, z10);
    }

    public boolean dispatchNestedPreFling(float f, float f10) {
        ViewParent nestedScrollingParentForType;
        if (!isNestedScrollingEnabled() || (nestedScrollingParentForType = getNestedScrollingParentForType(0)) == null) {
            return false;
        }
        return ViewParentCompat.onNestedPreFling(nestedScrollingParentForType, this.mView, f, f10);
    }

    public boolean dispatchNestedPreScroll(int r72, int r82, @Nullable int[] r92, @Nullable int[] r10) {
        return dispatchNestedPreScroll(r72, r82, r92, r10, 0);
    }

    public boolean dispatchNestedPreScroll(int r11, int r12, @Nullable int[] r13, @Nullable int[] r14, int r15) {
        ViewParent nestedScrollingParentForType;
        int r82;
        int r92;
        if (!isNestedScrollingEnabled() || (nestedScrollingParentForType = getNestedScrollingParentForType(r15)) == null) {
            return false;
        }
        if (r11 == 0 && r12 == 0) {
            if (r14 == null) {
                return false;
            }
            r14[0] = 0;
            r14[1] = 0;
            return false;
        }
        if (r14 != null) {
            this.mView.getLocationInWindow(r14);
            r82 = r14[0];
            r92 = r14[1];
        } else {
            r82 = 0;
            r92 = 0;
        }
        if (r13 == null) {
            r13 = getTempNestedScrollConsumed();
        }
        r13[0] = 0;
        r13[1] = 0;
        ViewParentCompat.onNestedPreScroll(nestedScrollingParentForType, this.mView, r11, r12, r13, r15);
        if (r14 != null) {
            this.mView.getLocationInWindow(r14);
            r14[0] = r14[0] - r82;
            r14[1] = r14[1] - r92;
        }
        return (r13[0] == 0 && r13[1] == 0) ? false : true;
    }

    public void dispatchNestedScroll(int r12, int r22, int r32, int r42, @Nullable int[] r52, int r6, @Nullable int[] r72) {
        dispatchNestedScrollInternal(r12, r22, r32, r42, r52, r6, r72);
    }

    public boolean dispatchNestedScroll(int r92, int r10, int r11, int r12, @Nullable int[] r13) {
        return dispatchNestedScrollInternal(r92, r10, r11, r12, r13, 0, null);
    }

    public boolean dispatchNestedScroll(int r92, int r10, int r11, int r12, @Nullable int[] r13, int r14) {
        return dispatchNestedScrollInternal(r92, r10, r11, r12, r13, r14, null);
    }

    public boolean hasNestedScrollingParent() {
        return hasNestedScrollingParent(0);
    }

    public boolean hasNestedScrollingParent(int r12) {
        return getNestedScrollingParentForType(r12) != null;
    }

    public boolean isNestedScrollingEnabled() {
        return this.mIsNestedScrollingEnabled;
    }

    public void onDetachedFromWindow() {
        ViewCompat.stopNestedScroll(this.mView);
    }

    public void onStopNestedScroll(@NonNull View view) {
        ViewCompat.stopNestedScroll(this.mView);
    }

    public void setNestedScrollingEnabled(boolean z10) {
        if (this.mIsNestedScrollingEnabled) {
            ViewCompat.stopNestedScroll(this.mView);
        }
        this.mIsNestedScrollingEnabled = z10;
    }

    public boolean startNestedScroll(int r22) {
        return startNestedScroll(r22, 0);
    }

    public boolean startNestedScroll(int r52, int r6) {
        if (hasNestedScrollingParent(r6)) {
            return true;
        }
        if (!isNestedScrollingEnabled()) {
            return false;
        }
        View view = this.mView;
        for (ViewParent parent = this.mView.getParent(); parent != null; parent = parent.getParent()) {
            if (ViewParentCompat.onStartNestedScroll(parent, view, this.mView, r52, r6)) {
                setNestedScrollingParentForType(r6, parent);
                ViewParentCompat.onNestedScrollAccepted(parent, view, this.mView, r52, r6);
                return true;
            }
            if (parent instanceof View) {
                view = (View) parent;
            }
        }
        return false;
    }

    public void stopNestedScroll() {
        stopNestedScroll(0);
    }

    public void stopNestedScroll(int r32) {
        ViewParent nestedScrollingParentForType = getNestedScrollingParentForType(r32);
        if (nestedScrollingParentForType != null) {
            ViewParentCompat.onStopNestedScroll(nestedScrollingParentForType, this.mView, r32);
            setNestedScrollingParentForType(r32, null);
        }
    }
}
