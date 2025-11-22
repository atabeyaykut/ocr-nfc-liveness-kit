package androidx.camera.extensions.internal.sessionprocessor;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import java.util.List;

@RequiresApi(21)
/* loaded from: classes.dex */
interface Camera2OutputConfig {
    int getId();

    @Nullable
    String getPhysicalCameraId();

    int getSurfaceGroupId();

    @NonNull
    List<Camera2OutputConfig> getSurfaceSharingOutputConfigs();
}
