package androidx.camera.core;

import android.graphics.Rect;
import android.util.Size;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;

@RequiresApi(21)
/* loaded from: classes.dex */
public abstract class ResolutionInfo {
    @NonNull
    public static ResolutionInfo create(@NonNull Size size, @NonNull Rect rect, int r32) {
        return new AutoValue_ResolutionInfo(size, rect, r32);
    }

    @NonNull
    public abstract Rect getCropRect();

    @NonNull
    public abstract Size getResolution();

    public abstract int getRotationDegrees();
}
