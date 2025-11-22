package androidx.camera.camera2.internal;

import android.hardware.camera2.CameraCharacteristics;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.camera.camera2.internal.compat.CameraCharacteristicsCompat;

/* loaded from: classes.dex */
final class ZslUtil {
    private ZslUtil() {
    }

    @RequiresApi(21)
    public static boolean isCapabilitySupported(@NonNull CameraCharacteristicsCompat cameraCharacteristicsCompat, int r52) {
        int[] r42 = (int[]) cameraCharacteristicsCompat.get(CameraCharacteristics.REQUEST_AVAILABLE_CAPABILITIES);
        if (r42 != null) {
            for (int r02 : r42) {
                if (r02 == r52) {
                    return true;
                }
            }
        }
        return false;
    }
}
