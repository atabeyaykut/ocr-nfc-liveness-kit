package androidx.camera.extensions.internal.compat.workaround;

import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.camera.extensions.internal.compat.quirk.DeviceQuirks;
import androidx.camera.extensions.internal.compat.quirk.ExtensionDisabledQuirk;

@RequiresApi(21)
/* loaded from: classes.dex */
public class ExtensionDisabledValidator {
    private final ExtensionDisabledQuirk mQuirk = (ExtensionDisabledQuirk) DeviceQuirks.get(ExtensionDisabledQuirk.class);

    public boolean shouldDisableExtension(@NonNull String str, int r32) {
        ExtensionDisabledQuirk extensionDisabledQuirk = this.mQuirk;
        return extensionDisabledQuirk != null && extensionDisabledQuirk.shouldDisableExtension(str, r32);
    }
}
