package androidx.camera.extensions.internal.sessionprocessor;

import android.util.Size;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;

@RequiresApi(21)
/* loaded from: classes.dex */
public interface ImageReaderOutputConfig extends Camera2OutputConfig {
    int getImageFormat();

    int getMaxImages();

    @NonNull
    Size getSize();
}
