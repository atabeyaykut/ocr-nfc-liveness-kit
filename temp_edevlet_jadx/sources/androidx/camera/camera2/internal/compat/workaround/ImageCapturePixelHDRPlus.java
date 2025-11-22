package androidx.camera.camera2.internal.compat.workaround;

import android.annotation.SuppressLint;
import android.hardware.camera2.CaptureRequest;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.camera.camera2.impl.Camera2ImplConfig;
import androidx.camera.camera2.internal.compat.quirk.DeviceQuirks;
import androidx.camera.camera2.internal.compat.quirk.ImageCapturePixelHDRPlusQuirk;

@RequiresApi(21)
/* loaded from: classes.dex */
public class ImageCapturePixelHDRPlus {
    @SuppressLint({"NewApi"})
    public void toggleHDRPlus(int r22, @NonNull Camera2ImplConfig.Builder builder) {
        CaptureRequest.Key key;
        Boolean bool;
        if (((ImageCapturePixelHDRPlusQuirk) DeviceQuirks.get(ImageCapturePixelHDRPlusQuirk.class)) == null) {
            return;
        }
        if (r22 == 0) {
            key = CaptureRequest.CONTROL_ENABLE_ZSL;
            bool = Boolean.TRUE;
        } else {
            if (r22 != 1) {
                return;
            }
            key = CaptureRequest.CONTROL_ENABLE_ZSL;
            bool = Boolean.FALSE;
        }
        builder.setCaptureRequestOption(key, bool);
    }
}
