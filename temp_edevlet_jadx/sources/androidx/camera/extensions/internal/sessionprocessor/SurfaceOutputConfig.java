package androidx.camera.extensions.internal.sessionprocessor;

import android.view.Surface;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;

@RequiresApi(21)
/* loaded from: classes.dex */
public interface SurfaceOutputConfig extends Camera2OutputConfig {
    @NonNull
    Surface getSurface();
}
