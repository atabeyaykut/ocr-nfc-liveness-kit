package androidx.camera.camera2.internal.compat.workaround;

import android.hardware.camera2.CaptureRequest;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.camera.camera2.internal.compat.quirk.DeviceQuirks;
import androidx.camera.camera2.internal.compat.quirk.StillCaptureFlashStopRepeatingQuirk;
import java.util.Iterator;
import java.util.List;

@RequiresApi(21)
/* loaded from: classes.dex */
public class StillCaptureFlow {
    private final boolean mShouldStopRepeatingBeforeStillCapture;

    public StillCaptureFlow() {
        this.mShouldStopRepeatingBeforeStillCapture = ((StillCaptureFlashStopRepeatingQuirk) DeviceQuirks.get(StillCaptureFlashStopRepeatingQuirk.class)) != null;
    }

    public boolean shouldStopRepeatingBeforeCapture(@NonNull List<CaptureRequest> list, boolean z10) {
        if (this.mShouldStopRepeatingBeforeStillCapture && z10) {
            Iterator<CaptureRequest> it = list.iterator();
            while (it.hasNext()) {
                int r42 = ((Integer) it.next().get(CaptureRequest.CONTROL_AE_MODE)).intValue();
                if (r42 == 2 || r42 == 3) {
                    return true;
                }
            }
        }
        return false;
    }
}
