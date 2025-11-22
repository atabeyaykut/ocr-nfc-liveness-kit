package androidx.camera.camera2.internal.compat.workaround;

import androidx.annotation.RequiresApi;
import androidx.camera.camera2.internal.compat.quirk.CrashWhenTakingPhotoWithAutoFlashAEModeQuirk;
import androidx.camera.camera2.internal.compat.quirk.DeviceQuirks;

@RequiresApi(21)
/* loaded from: classes.dex */
public class AutoFlashAEModeDisabler {
    public int getCorrectedAeMode(int r22) {
        if (((CrashWhenTakingPhotoWithAutoFlashAEModeQuirk) DeviceQuirks.get(CrashWhenTakingPhotoWithAutoFlashAEModeQuirk.class)) == null || r22 != 2) {
            return r22;
        }
        return 1;
    }
}
