package androidx.camera.core;

import android.graphics.Matrix;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.camera.core.impl.TagBundle;
import androidx.camera.core.impl.utils.ExifData;

@RequiresApi(21)
/* loaded from: classes.dex */
abstract class ImmutableImageInfo implements ImageInfo {
    public static ImageInfo create(@NonNull TagBundle tagBundle, long j10, int r10, Matrix matrix) {
        return new AutoValue_ImmutableImageInfo(tagBundle, j10, r10, matrix);
    }

    @Override // androidx.camera.core.ImageInfo
    public abstract int getRotationDegrees();

    @Override // androidx.camera.core.ImageInfo
    @NonNull
    public abstract Matrix getSensorToBufferTransformMatrix();

    @Override // androidx.camera.core.ImageInfo
    @NonNull
    public abstract TagBundle getTagBundle();

    @Override // androidx.camera.core.ImageInfo
    public abstract long getTimestamp();

    @Override // androidx.camera.core.ImageInfo
    public void populateExifData(@NonNull ExifData.Builder builder) {
        builder.setOrientationDegrees(getRotationDegrees());
    }
}
