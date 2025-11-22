package androidx.camera.core.internal.utils;

import android.util.Size;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.camera.core.impl.ImageOutputConfig;
import androidx.camera.core.impl.UseCaseConfig;
import androidx.camera.core.impl.utils.CameraOrientationUtil;

@RequiresApi(21)
/* loaded from: classes.dex */
public final class UseCaseConfigUtil {
    private UseCaseConfigUtil() {
    }

    public static void updateTargetRotationAndRelatedConfigs(@NonNull UseCaseConfig.Builder<?, ?, ?> builder, int r52) {
        Size targetResolution;
        ImageOutputConfig imageOutputConfig = (ImageOutputConfig) builder.getUseCaseConfig();
        int targetRotation = imageOutputConfig.getTargetRotation(-1);
        if (targetRotation == -1 || targetRotation != r52) {
            ((ImageOutputConfig.Builder) builder).setTargetRotation(r52);
        }
        if (targetRotation == -1 || r52 == -1 || targetRotation == r52) {
            return;
        }
        if (Math.abs(CameraOrientationUtil.surfaceRotationToDegrees(r52) - CameraOrientationUtil.surfaceRotationToDegrees(targetRotation)) % 180 != 90 || (targetResolution = imageOutputConfig.getTargetResolution(null)) == null) {
            return;
        }
        ((ImageOutputConfig.Builder) builder).setTargetResolution(new Size(targetResolution.getHeight(), targetResolution.getWidth()));
    }
}
