package androidx.camera.core.impl;

import android.util.Size;
import android.view.Surface;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;

@RequiresApi(21)
/* loaded from: classes.dex */
public abstract class OutputSurface {
    @NonNull
    public static OutputSurface create(@NonNull Surface surface, @NonNull Size size, int r32) {
        return new AutoValue_OutputSurface(surface, size, r32);
    }

    public abstract int getImageFormat();

    @NonNull
    public abstract Size getSize();

    @NonNull
    public abstract Surface getSurface();
}
