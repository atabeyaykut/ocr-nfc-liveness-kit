package androidx.camera.core.impl.utils;

import androidx.annotation.RequiresApi;
import androidx.camera.core.Logger;

@RequiresApi(21)
/* loaded from: classes.dex */
public final class CameraOrientationUtil {
    private static final String TAG = "CameraOrientationUtil";

    private CameraOrientationUtil() {
    }

    public static int degreesToSurfaceRotation(int r22) {
        if (r22 == 0) {
            return 0;
        }
        if (r22 == 90) {
            return 1;
        }
        if (r22 == 180) {
            return 2;
        }
        if (r22 == 270) {
            return 3;
        }
        throw new IllegalStateException(android.support.v4.media.a.d("Invalid sensor rotation: ", r22));
    }

    public static int getRelativeImageRotation(int r42, int r52, boolean z10) {
        int r02 = (z10 ? (r52 - r42) + 360 : r52 + r42) % 360;
        if (Logger.isDebugEnabled(TAG)) {
            Logger.d(TAG, String.format("getRelativeImageRotation: destRotationDegrees=%s, sourceRotationDegrees=%s, isOppositeFacing=%s, result=%s", Integer.valueOf(r42), Integer.valueOf(r52), Boolean.valueOf(z10), Integer.valueOf(r02)));
        }
        return r02;
    }

    public static int surfaceRotationToDegrees(int r22) {
        if (r22 == 0) {
            return 0;
        }
        if (r22 == 1) {
            return 90;
        }
        if (r22 == 2) {
            return 180;
        }
        if (r22 == 3) {
            return 270;
        }
        throw new IllegalArgumentException(android.support.v4.media.a.d("Unsupported surface rotation: ", r22));
    }
}
