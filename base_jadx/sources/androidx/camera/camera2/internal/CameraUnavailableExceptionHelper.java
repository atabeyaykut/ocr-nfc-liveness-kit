package androidx.camera.camera2.internal;

import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.camera.camera2.internal.compat.CameraAccessExceptionCompat;
import androidx.camera.core.CameraUnavailableException;

@RequiresApi(21)
/* loaded from: classes.dex */
public final class CameraUnavailableExceptionHelper {
    private CameraUnavailableExceptionHelper() {
    }

    @NonNull
    public static CameraUnavailableException createFrom(@NonNull CameraAccessExceptionCompat cameraAccessExceptionCompat) {
        int reason = cameraAccessExceptionCompat.getReason();
        int r12 = 1;
        if (reason != 1) {
            r12 = 2;
            if (reason != 2) {
                r12 = 3;
                if (reason != 3) {
                    r12 = 4;
                    if (reason != 4) {
                        r12 = 5;
                        if (reason != 5) {
                            r12 = reason != 10001 ? 0 : 6;
                        }
                    }
                }
            }
        }
        return new CameraUnavailableException(r12, cameraAccessExceptionCompat);
    }
}
