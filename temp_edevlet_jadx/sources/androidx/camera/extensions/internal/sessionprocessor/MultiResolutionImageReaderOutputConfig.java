package androidx.camera.extensions.internal.sessionprocessor;

import androidx.annotation.RequiresApi;

@RequiresApi(21)
/* loaded from: classes.dex */
public interface MultiResolutionImageReaderOutputConfig extends Camera2OutputConfig {
    int getImageFormat();

    int getMaxImages();
}
