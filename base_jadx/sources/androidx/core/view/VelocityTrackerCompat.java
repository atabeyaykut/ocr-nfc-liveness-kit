package androidx.core.view;

import android.view.VelocityTracker;

@Deprecated
/* loaded from: classes.dex */
public final class VelocityTrackerCompat {
    private VelocityTrackerCompat() {
    }

    @Deprecated
    public static float getXVelocity(VelocityTracker velocityTracker, int r12) {
        return velocityTracker.getXVelocity(r12);
    }

    @Deprecated
    public static float getYVelocity(VelocityTracker velocityTracker, int r12) {
        return velocityTracker.getYVelocity(r12);
    }
}
